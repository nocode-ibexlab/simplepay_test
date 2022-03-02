import 'dart:core';

import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'OperationBL.dart';
import 'SaleBL.dart';

/// Order 관련 로직
class OrderBL extends BaseBL {
  static const String _TAG = "OrderBL";

  static final OrderBL _singleton = OrderBL._internal();

  factory OrderBL() => _singleton;

  OrderBL._internal() {
    _basBL = BasBL();
  }

  late BasBL _basBL;

  ///
  /// 신규 주문번호 생성
  ///
  Future<CommonId> _getNewCommonId() async {
    String date = await _basBL.getCommonDate();
    List<CommonId> list = await commonIdDao!.findAllByDate(date);
    CommonId? commonId = list.length == 0 ? null : list[0];

    if (commonId == null) {
      // 신규 생성
      commonId = CommonId();
      commonId.setCommonDate(date);
      commonId.setCommonSerialNumber(getCommonSerialNumber());
      commonId.createId();
    } else {
      // 기존 번호 증가
      int hno = commonId.getCommonSerialNumber()!;
      hno++;
      commonId.setCommonSerialNumber(hno);
      commonId.createId();
    }

    // DB에 저장
    await commonIdDao!.insertOne(commonId);
    return commonId;
  }

  ///
  /// TableId 가 동일한 주문정보 조회
  ///
  Future<List<OrderHistory>> getOrderHistoryByTableId(String? tableId) async {
    return await orderHistoryDao!.findAllByTableId(tableId!);
  }

  ///
  /// 새전표 생성
  ///
  OrderCheck createNewOrderCheck(
      String tabCode, String bizSection, BaseBL_OPR_TP_CD operationTypeCode) {
    OrderCheck orderCheck = OrderCheck();
    OrderHistory orderHistory = OrderHistory();
    orderHistory.setTableId(tabCode);
    orderHistory.setOrderEmployeeId(BaseBL.employeeId);
    orderHistory.setServingEmployeeId(BaseBL.employeeId);
    orderHistory.setConflictYn(false);
    orderCheck.setOrderHistory(orderHistory);
    orderCheck.setOperationTypeCode(operationTypeCode.getCode());
    orderCheck.setBusiSection(bizSection);
    return orderCheck;
  }

  ///
  /// OrderHistory ID 로 주문정보 조회
  ///
  Future<OrderCheck?> getOrderByOrderHId(String? orderHId) async {
    OrderHistory? orderHistory = await orderHistoryDao!.findById(orderHId!);

    if (orderHistory == null) {
      return null;
    }

    OrderCheck orderCheck = OrderCheck(orderHistory);
    await orderCheck.setCurrentOrderItemList();
    return orderCheck;
  }

  ///
  /// 주문저장
  ///
  @transaction
  Future<OrderCheck> saveOrder(OrderCheck orderCheck) async {
    // 신규 주문일 떄만 hdate 생성 부여
    if (orderCheck.getOrderHistory()!.getId() == null) {
      CommonId commonId = await _getNewCommonId();
      orderCheck.addCommonIdToOrder(commonId);

      // 기타 주문 정보 저장
      OrderHistory orderHistory = orderCheck.getOrderHistory()!;
      orderHistory.setOperationTypeCode(orderCheck.getOperationTypeCode());
      orderHistory.setBusinessSectionCode(orderCheck.getBusiSection());
      orderCheck.setOrderHistory(orderHistory);
    }

    List<OrderHistoryItem> orderHistoryItemList = [];
    orderHistoryItemList.addAll(orderCheck.getCurrOrderItemList()!);
    orderCheck.addMemoAboutChangedList();

    // OrderHistory 저장
    OrderHistory orderHistory = orderCheck.getOrderHistory()!;
    orderHistory.createId();
    orderHistory.updateTime();
    await _insertOrReplaceOrderHistory(orderHistory);

    // 기존 OrderHistoryItem 삭제 - Split 으로인해 기존 주문건이 줄어든 경우 만 처리
    List<OrderHistoryItem> dbOrderHistoryItemList =
        await orderHistory.getOrderHistoryItemsForPayment();

    if (orderHistoryItemList.length < dbOrderHistoryItemList.length) {
      await orderHistoryItemDao!.deleteAll(dbOrderHistoryItemList);
    }

    // OrderItem 저장
    int orderItemIdx = 1;

    // 재부여 이전의 sno를 임시저장
    Map<int?, int> oldSnoMap = Map<int?, int>();

    for (OrderHistoryItem orderHistoryItem in orderHistoryItemList) {
      oldSnoMap[orderHistoryItem.getItemSerialNumber()] = orderItemIdx;
      orderItemIdx++;
    }

    orderItemIdx = 1;
    List<OrderHistoryItem> cancelOrderHistoryItemList = [];

    for (OrderHistoryItem orderHistoryItem in orderHistoryItemList) {
      orderHistoryItem.setCommonDate(orderHistory.getCommonDate());
      orderHistoryItem
          .setCommonSerialNumber(orderHistory.getCommonSerialNumber());
      orderHistoryItem.setItemSerialNumber(orderItemIdx);
      orderHistoryItem.createId();
      orderItemIdx++;

      // sno가 재부여될 경우에 대비 cancelsno를 변경된 sno로 update
      if (orderHistoryItem.getCancelSerialNumber() != null) {
        orderHistoryItem.setCancelSerialNumber(
            oldSnoMap[orderHistoryItem.getCancelSerialNumber()]);
        orderHistoryItem.setCancelEmployeeId(BaseBL.employeeId);
      }

      if (orderHistoryItem.getUpperItemSerialNumber() != 0) {
        orderHistoryItem.setUpperItemSerialNumber(
            oldSnoMap[orderHistoryItem.getUpperItemSerialNumber()]);
      }

      orderHistoryItem.setStoreTerminalId(BaseBL.storeTerminalId);
      orderHistoryItem.updateTime();
      await _insertOrReplaceOrderHistoryItem(orderHistoryItem);

      // 취소된 Item
      if (orderHistoryItem.getQuantity()! < 0) {
        OrderHistoryItem parentOrderHistoryItem = orderHistoryItem.clone();
        parentOrderHistoryItem
            .setItemSerialNumber(orderHistoryItem.getCancelSerialNumber());
        parentOrderHistoryItem.createId();
        cancelOrderHistoryItemList.add(parentOrderHistoryItem);
      }

      // KitchenMemo 추가
      await orderKitchenMemoDao!.deleteAll(await orderKitchenMemoDao!
          .findAllByOrderItem(
              orderHistoryItem.getCommonDate()!,
              orderHistoryItem.getCommonSerialNumber()!,
              orderHistoryItem.getItemSerialNumber()!));

      List<OrderHistoryKitchenMemo> orderHistoryKitchenMemoList =
          orderHistoryItem.getOrderHistoryKitchenMemoList()!;
      Log.d(_TAG,
          'orderHistoryKitchenMemoList ::: ${orderHistoryKitchenMemoList.length}');
      int tno = 0;

      for (OrderHistoryKitchenMemo orderHistoryKitchenMemo
          in orderHistoryKitchenMemoList) {
        orderHistoryKitchenMemo.setCommonDate(orderHistoryItem.getCommonDate());
        orderHistoryKitchenMemo
            .setCommonSerialNumber(orderHistoryItem.getCommonSerialNumber());
        orderHistoryKitchenMemo
            .setItemSerialNumber(orderHistoryItem.getItemSerialNumber());
        orderHistoryKitchenMemo.setKitchenMemoSerialNumber(tno++);
        orderHistoryKitchenMemo.createId();
        orderHistoryKitchenMemo.updateTime();
        await _insertOrReplaceOrderHistoryKitchenMemo(orderHistoryKitchenMemo);
      }
    }

    // Order Discount 정보 저장
    List<OrderHistoryDiscount> orderHistoryDiscounts =
        orderCheck.getOrderHistoryDiscounts()!;
    List<OrderHistoryDiscount> orderHistoryDiscountsCopy =
        List.from(orderHistoryDiscounts);
    for (OrderHistoryDiscount orderHistoryDiscount
        in orderHistoryDiscountsCopy) {
      Log.d(_TAG, orderHistoryDiscount.toString());
      double balance = await orderCheck.getBalance();
      orderHistoryDiscount.setCommonDate(orderHistory.getCommonDate());
      orderHistoryDiscount
          .setCommonSerialNumber(orderHistory.getCommonSerialNumber());
      orderHistoryDiscount.createId();

      if (orderHistoryDiscount.getDiscountAmount() != null && balance >= 0) {
        orderHistoryDiscount.setDiscountSerialNumber(0);
        orderHistoryDiscount.updateTime();
        await _insertOrReplaceOrderHistoryDiscount(orderHistoryDiscount);
      } else {
        // 금액정보가 없는 OrderDiscount는 discount 취소를 의미
        Log.d(_TAG, 'orderHistoryDiscount :: $orderHistoryDiscount');
        orderHistoryDiscounts.remove(orderHistoryDiscount);
        await orderHistoryDiscountDao!.deleteOne(orderHistoryDiscount);
      }
    }
    // table 정보 업데이트
    Table? table = await orderCheck.getOrderHistory()!.getTable();

    if (table != null) {
      TableProcess? tableProcess = await table.getTableProcess();

      if (tableProcess == null ||
          tableProcess.getTableProcessStateCode() !=
              TableProcess.SERVING_COMPLETE_STATE) {
        tableProcess = TableProcess(
            tableId: table.getTableId(),
            tableProcessStateCode: TableProcess.ORDER_COMPLETE_STATE,
            vipYn: false);
        await _insertOrReplaceTableProcess(tableProcess);
      }
    }

    // OrderCancelItem 에 취소된 데이터 저장
    await _insertOrdercancelItem(cancelOrderHistoryItemList);

    if (OperationBL().useOrderSync()) {
      await GRpcClient.instance.putOrder();
    }

    return orderCheck;
  }

  Future<void> _insertOrReplaceOrderHistory(OrderHistory value) async {
    await orderHistoryDao!.findById(value.getId()!) != null
        ? await orderHistoryDao!.updateOne(value)
        : await orderHistoryDao!.insertOne(value);
  }

  Future<void> _insertOrReplaceOrderHistoryItem(OrderHistoryItem value) async {
    await orderHistoryItemDao!.findById(value.getId()!) != null
        ? await orderHistoryItemDao!.updateOne(value)
        : await orderHistoryItemDao!.insertOne(value);
  }

  Future<void> _insertOrReplaceOrderHistoryKitchenMemo(
      OrderHistoryKitchenMemo value) async {
    await orderKitchenMemoDao!.findById(value.getId()!) != null
        ? await orderKitchenMemoDao!.updateOne(value)
        : await orderKitchenMemoDao!.insertOne(value);
  }

  Future<void> _insertOrReplaceOrderHistoryDiscount(
      OrderHistoryDiscount value) async {
    await orderHistoryDiscountDao!.findById(value.getId()!) != null
        ? await orderHistoryDiscountDao!.updateOne(value)
        : await orderHistoryDiscountDao!.insertOne(value);
  }

  Future<void> _insertOrReplaceTableProcess(TableProcess value) async {
    await tableProcessDao!.findById(value.getTableId()!) != null
        ? await tableProcessDao!.updateOne(value)
        : await tableProcessDao!.insertOne(value);
  }

  Future<void> updateOrderItem(
      List<OrderHistoryItem> orderHistoryItemList) async {
    for (OrderHistoryItem orderHistoryItem in orderHistoryItemList) {
      orderHistoryItem.updateTime();
      await _insertOrReplaceOrderHistoryItem(orderHistoryItem);
    }
  }

  ///
  /// 주문데이터 삭제(combine에 사용)
  ///
  @transaction
  Future<void> deleteOrder(String? orderHId,
      {bool bySync = false, bool finalized = false}) async {
    OrderHistory? order = await orderHistoryDao!.findById(orderHId!);
    if (order == null) {
      Log.e(_TAG, 'deleteOrder, OrderHistory is null');
      return;
    }
    await orderHistoryItemDao!.deleteAll(await order.getOrderHistoryItems());
    await orderHistoryDiscountDao!
        .deleteAll(await order.getOrderHistoryDiscounts());
    await orderKitchenMemoDao!
        .deleteAll(await order.getOrderHistoryKitchenMemos());
    await orderHistoryCancelItemDao!.deleteAll(await orderHistoryCancelItemDao!
        .findAllByOrder(
            order.getCommonDate()!, order.getCommonSerialNumber()!));
    String? tabCode = order.getTableId();

    if (tabCode != null) {
      // 해당 테이블에 한건의 주문이 있을때만 상태변경
      List<OrderHistory> orderHistoryList =
          await getOrderHistoryByTableId(tabCode);

      if (orderHistoryList.length == 1) {
        TableProcess? tableProcess =
            await (await order.getTable())!.getTableProcess();
        if (tableProcess != null) {
          await tableProcessDao!.deleteOne(tableProcess);
        }
      }
    }

    await orderHistoryDao!.deleteOne(order);

    if (OperationBL().useOrderSync()) {
      if (!bySync) {
        insertOrUpdateOrderHistoryDeletion(order.getId()!, finalized);
        await GRpcClient.instance.deleteOrder();
      }
    }
  }

  ///
  /// 주문 초기화 (해당 주문과 관련된 DB 데이터 모두 삭제
  ///
  @transaction
  Future<void> deleteOrderCheck(OrderCheck orderCheck) async {
    OrderHistory? order =
        await orderHistoryDao!.findById(orderCheck.getOrderHistory()!.getId()!);

    if (order == null) {
      return;
    }

    await orderHistoryItemDao!.deleteAll(await order.getOrderHistoryItems());
    await orderHistoryDiscountDao!
        .deleteAll(await order.getOrderHistoryDiscounts());
    await orderKitchenMemoDao!
        .deleteAll(await order.getOrderHistoryKitchenMemos());
    await orderHistoryCancelItemDao!.deleteAll(await orderHistoryCancelItemDao!
        .findAllByOrder(
            order.getCommonDate()!, order.getCommonSerialNumber()!));
    String? tableId = order.getTableId();

    if (tableId != null) {
      // 해당 테이블에 한건의 주문이 있을때만 상태변경
      List<OrderHistory> orderHistoryList =
          await getOrderHistoryByTableId(tableId);

      if (orderHistoryList.length == 1) {
        TableProcess? tableProcess =
            await (await order.getTable())!.getTableProcess();
        if (tableProcess != null) {
          await tableProcessDao!.deleteOne(tableProcess);
        }
      }
    }

    // 이미 부분 결제가 된 상태라면 common id 삭제하지 않음
    // 신규 주문은 이전 common id 에 1을 더하기에 부분 결제가 남아 있으면 충돌하게 됨
    if ((await order.getSalesAccountHistories()).length == 0) {
      CommonId? id = await commonIdDao!
          .findByKey(order.getCommonDate()!, order.getCommonSerialNumber()!);

      if (id != null) {
        await commonIdDao!.deleteOne(id);
      }
    }

    await orderHistoryDao!.deleteOne(order);

    if (OperationBL().useOrderSync()) {
      insertOrUpdateOrderHistoryDeletion(order.getId()!, false);
      await GRpcClient.instance.deleteOrder();
    }
  }

  ///
  /// Void 된 OrderHistoryItem 을 OrdercancelItem에 저장
  ///
  Future<void> _insertOrdercancelItem(
      List<OrderHistoryItem> cancelOrderHistoryItemList) async {
    // OrderCancelItem 에 취소된 데이터 저장
    for (OrderHistoryItem i in cancelOrderHistoryItemList) {
      OrderHistoryCancelItem item = OrderHistoryCancelItem();
      double qty = i.getQuantity()!;
      double? amt = i.getSupplyValue();
      double? supplyAmount = i.getSupplyAmount();

      // Void All 일 경우 +(plus) 수량일경우에만 저장
      // 단순 Void 일 경우
      // -(minus) 수량일경우에만 저장
      if (qty >= 0) {
        continue;
      } else {
        MonetaryCalculator moentaryCalc = MonetaryCalculator();
        qty = moentaryCalc.setValue(qty).multiply(-1.0).getValue();
        amt = moentaryCalc.setValue(amt).multiply(-1.0).getValue();
        supplyAmount =
            moentaryCalc.setValue(supplyAmount).multiply(-1.0).getValue();
      }

      item.setCommonDate(i.getCommonDate());
      item.setCommonSerialNumber(i.getCommonSerialNumber());
      item.setItemSerialNumber(i.getItemSerialNumber());
      item.setStoreTerminalId(i.getStoreTerminalId());
      item.setItemId(i.getItemId());
      item.setQuantity(qty);
      item.setPrice(i.getPrice());
      item.setSupplyValue(amt);
      item.setDiscountSectionCode(i.getDiscountSectionCode());
      item.setMenuDiscountAmount(i.getMenuDiscountAmount());
      item.setSupplyAmount(supplyAmount);
      item.setCancelReason(i.getCancelReason());
      item.setCancelEmployeeId(i.getCancelEmployeeId());
      item.setCancelDate(DateTime.now());
      item.setOrderDate(
          CommonUtil.convertStringToDate(i.getLastRevisionDatetime()));
      item.createId();

      // 신규 입력일때만 저장
      OrderHistoryCancelItem? checkInserted =
          await orderHistoryCancelItemDao!.findById(item.getId()!);
      Log.d(_TAG,
          'orderHistoryCancelItemDao.getKey(orderHistoryCancelItem); ::: $checkInserted');

      // 일반 void 일때 저장처리
      if (checkInserted == null) {
        await orderHistoryCancelItemDao!.insertOne(item);
      }
    }
  }

  Future<void> initOrderItemPaidSno(
      String? date, int? orderNum, int? paidSno) async {
    List<OrderHistoryItem> orderHistoryItemList =
        await _getOrderItemPaidSnoListToInit(date, orderNum, paidSno);

    for (OrderHistoryItem i in orderHistoryItemList) {
      i.setMenuPaymentSerialNumber(0);
      i.setMenuPaymentYn(0);
    }

    await updateOrderItem(orderHistoryItemList);
  }

  Future<List<OrderHistoryItem>> _getOrderItemPaidSnoListToInit(
      String? date, int? orderNum, int? paidSno) {
    return orderHistoryItemDao!.findAllPaid(date!, orderNum!, paidSno!);
  }

  ///
  /// Join/Combine 수행
  ///
  Future<OrderCheck> joinOrderCheck(
      OrderCheck targetCheck, List<OrderCheck> sourceChecks) async {
    List<OrderHistoryItem> newItems = [];
    newItems.addAll(targetCheck.getCurrOrderItemList()!);

    for (OrderCheck i in sourceChecks) {
      List<OrderHistoryItem> items = i.getCurrOrderItemList()!;
      newItems.addAll(items);

      // 기존 주문 삭제
      await deleteOrder(i.getOrderHistory()!.getId());
    }

    // org의 OrderHistoryItem list를 target 의 OrderCheck 신규 OrderItem으로 저장
    await targetCheck.setCurrOrderItem(newItems);

    // 주문 정보 저장
    saveOrder(targetCheck);
    return targetCheck;
  }

  /// 전체 주문리스트 GET
  Future<List<OrderHistory>> getOrderHListByCondition(
      String? tableId, String? date) {
    return orderHistoryDao!.findAllByDateTableId(date!, tableId!);
  }

  Future<OrderHistory?> getOrderHistory(String orderId) async {
    return await orderHistoryDao!.findById(orderId);
  }

  Future<List<OrderHistory>> getAllOrderHistory() async {
    return await orderHistoryDao!.findAll();
  }

  Future<void> insertOrUpdateOrderHistoryDeletion(
      String id, bool finalized) async {
    var order = await orderHistoryDeletionDao!.findById(id);

    if (order == null) {
      order = OrderHistoryDeletion(id: id)
        ..finalizedYn = finalized
        ..updateTime();
      await orderHistoryDeletionDao!.insertOne(order);
    } else {
      order
        ..finalizedYn = finalized
        ..updateTime();
      await orderHistoryDeletionDao!.updateOne(order);
    }
  }

  Future<List<OrderHistory?>> getOrderHistoriesToUpload() async {
    return await orderHistoryDao!.findAllNotSynced();
  }

  Future<List<OrderHistoryDeletion>> getOrderHistoryDeletionsToUpload() async {
    return await orderHistoryDeletionDao!.findAllNotSynced();
  }

  Future<bool> syncOrderHistory(
      String date, int sno, String time, String newTime) async {
    OrderHistory? entity = await orderHistoryDao!.findByKey(date, sno);

    if (entity != null && (entity.lastRevisionDatetime ?? '') == time) {
      entity.synchronizedYn = true;
      entity.lastRevisionDatetime = newTime;
      await orderHistoryDao!.updateOne(entity);
      return true;
    }

    return false;
  }

  Future<void> syncOrderHistoryItem(
      String date, int sno, int itemSno, String newTime) async {
    final fm = NumberFormat("00000");
    var id = '${date}_${sno}_${fm.format(itemSno)}';
    var entity = await orderHistoryItemDao!.findById(id);

    if (entity != null) {
      entity.lastRevisionDatetime = newTime;
      await orderHistoryItemDao!.updateOne(entity);
    }
  }

  Future<void> syncOrderHistoryKitchenMemo(
      String date, int sno, int itemSno, int memoSno, String newTime) async {
    final fm = NumberFormat("00000");
    var id = '${date}_${sno}_${fm.format(itemSno)}_${fm.format(memoSno)}';
    var entity = await orderKitchenMemoDao!.findById(id);

    if (entity != null) {
      entity.lastRevisionDatetime = newTime;
      await orderKitchenMemoDao!.updateOne(entity);
    }
  }

  Future<void> syncOrderHistoryDiscount(
      String date, int sno, String newTime) async {
    var id = '${date}_$sno';
    var entity = await orderHistoryDiscountDao!.findById(id);

    if (entity != null) {
      entity.lastRevisionDatetime = newTime;
      await orderHistoryDiscountDao!.updateOne(entity);
    }
  }

  Future<void> syncOrderHistoryDeletion(String id) async {
    OrderHistoryDeletion? entity = await orderHistoryDeletionDao!.findById(id);

    if (entity != null) {
      entity.synchronizedYn = true;
      await orderHistoryDeletionDao!.updateOne(entity);
    }
  }

  Future<void> saveAllSync(
      List<OrderHistory> orders,
      List<OrderHistoryItem> items,
      List<OrderHistoryKitchenMemo> memos,
      List<OrderHistoryDiscount> discounts) async {
    await _saveAllSyncTableProcess(orders);
    await _deleteAllSync();
    await orderHistoryDao!.insertAll(orders);
    await orderHistoryItemDao!.insertAll(items);
    await orderKitchenMemoDao!.insertAll(memos);
    await orderHistoryDiscountDao!.insertAll(discounts);
  }

  Future<void> saveSync(
    List<OrderHistory> orders,
    List<OrderHistoryItem> items,
    List<OrderHistoryKitchenMemo> memos,
    List<OrderHistoryDiscount> discounts,
  ) async {
    await _saveSyncTableProcess(orders);
    var inserts = [];
    var updates = [];

    for (var i in orders) {
      if (await orderHistoryDao!.findById(i.getId() ?? '') == null) {
        inserts.add(i);
      } else {
        updates.add(i);
      }
    }

    await orderHistoryDao!.insertAll(inserts.cast<OrderHistory>());
    await orderHistoryDao!.updateAll(updates.cast<OrderHistory>());
    inserts.clear();
    updates.clear();

    for (var i in items) {
      if (await orderHistoryItemDao!.findById(i.getId() ?? '') == null) {
        inserts.add(i);
      } else {
        updates.add(i);
      }
    }

    await orderHistoryItemDao!.insertAll(inserts.cast<OrderHistoryItem>());
    await orderHistoryItemDao!.updateAll(updates.cast<OrderHistoryItem>());
    inserts.clear();
    updates.clear();

    for (var i in memos) {
      if (await orderKitchenMemoDao!.findById(i.getId() ?? '') == null) {
        inserts.add(i);
      } else {
        updates.add(i);
      }
    }

    await orderKitchenMemoDao!
        .insertAll(inserts.cast<OrderHistoryKitchenMemo>());
    await orderKitchenMemoDao!
        .updateAll(updates.cast<OrderHistoryKitchenMemo>());
    inserts.clear();
    updates.clear();

    for (var i in discounts) {
      if (await orderHistoryDiscountDao!.findById(i.getId() ?? '') == null) {
        inserts.add(i);
      } else {
        updates.add(i);
      }
    }

    await orderHistoryDiscountDao!
        .insertAll(inserts.cast<OrderHistoryDiscount>());
    await orderHistoryDiscountDao!
        .updateAll(updates.cast<OrderHistoryDiscount>());
  }

  Future<void> _deleteAllSync() async {
    var orders = await orderHistoryDao!.findAllSynced();
    var items = <OrderHistoryItem>[];
    var memos = <OrderHistoryKitchenMemo>[];
    var discounts = <OrderHistoryDiscount>[];

    for (var i in orders) {
      items.addAll(await i.getOrderHistoryItems());
      memos.addAll(await i.getOrderHistoryKitchenMemos());
      discounts.addAll(await i.getOrderHistoryDiscounts());
    }

    await orderHistoryDao!.deleteAll(orders);
    await orderHistoryItemDao!.deleteAll(items);
    await orderKitchenMemoDao!.deleteAll(memos);
    await orderHistoryDiscountDao!.deleteAll(discounts);
  }

  /// 전체 주문이 저장되기 전에 호출되어야 함
  /// 변경될 주문은 [orders]에 기존 주문은 DB 테이블에 존재함
  Future<void> _saveAllSyncTableProcess(List<OrderHistory> orders) async {
    var deletedTableProcesses = await tableProcessDao!.findAll();
    var oldOrders = await orderHistoryDao!.findAll();

    for (var i in orders) {
      try {
        OrderHistory old = oldOrders.firstWhere((e) => e.id == i.id);

        // 테이블 이동인 주문
        if (old.tableId != i.tableId) {
          await _deleteTableProcess(old.tableId ?? '');
        }
      } on StateError {}

      await _addTableProcess(i.tableId ?? '');
      deletedTableProcesses.removeWhere((j) => j.tableId == i.tableId);
    }

    await tableProcessDao!.deleteAll(deletedTableProcesses);
  }

  Future<void> _saveSyncTableProcess(List<OrderHistory> orders) async {
    for (var i in orders) {
      OrderHistory? old = await orderHistoryDao!.findById(i.id ?? '');

      if (old != null) {
        if (old.tableId != i.tableId) {
          await _deleteTableProcess(old.tableId ?? '');
        }
      }

      await _addTableProcess(i.tableId ?? '');
    }
  }

  Future<void> _deleteTableProcess(String id) async {
    var orderSize = (await orderHistoryDao!.findAllByTableId(id)).length;

    if (orderSize <= 1) {
      TableProcess? process = await tableProcessDao!.findById(id);

      if (process != null) {
        await tableProcessDao!.deleteOne(process);
      }
    }
  }

  Future<void> _addTableProcess(String id) async {
    var process = await tableProcessDao!.findById(id);

    if (process != null) {
      if (process.tableProcessStateCode !=
          TableProcess.SERVING_COMPLETE_STATE) {
        await tableProcessDao!.updateOne(
            process..tableProcessStateCode = TableProcess.ORDER_COMPLETE_STATE);
      }
    } else {
      await tableProcessDao!.insertOne(TableProcess()
        ..tableId = id
        ..tableProcessStateCode = TableProcess.ORDER_COMPLETE_STATE);
    }
  }

  /// 부분 결제 중인 주문인 경우 OrderHistory.paymentInitiatorId를 현재 store terminal id로 설정
  /// 결제 시 현재 store terminal id와 paymentInitiatorId가 다르면 결제를 할 수 없게 함
  Future<void> updatePaymentInitiator(String date, int sno) async {
    final saleBL = SaleBL();
    final operationBL = OperationBL();
    OrderHistory? order = await orderHistoryDao!.findByKey(date, sno);

    if (order == null) {
      return;
    }

    List<SalesAccountHistory> acs =
        await saleBL.getOrderSalesAccountHistoryList(date, sno);
    bool paid = acs.indexWhere((i) =>
            i.cancelSerialNumber == null || i.cancelSerialNumber!.isEmpty) !=
        -1;
    bool dirty = false;

    if (paid && order.paymentInitiatorId == null) {
      order.paymentInitiatorId = BaseBL.storeTerminalId;
      dirty = true;
    } else if (!paid && order.paymentInitiatorId == BaseBL.storeTerminalId) {
      order.paymentInitiatorId = null;
      dirty = true;
    }

    if (dirty) {
      order.updateTime();
      await orderHistoryDao!.updateOne(order);

      if (operationBL.useOrderSync()) {
        await GRpcClient.instance.putOrder();
      }
    }
  }

  Future<List<OrderHistory>> getOrderHistoryOrderByDate() async {
    return await orderHistoryDao!.findAllOrderByDate();
  }

  Future<OrderHistory?> getOrderHistoryById(String id) async {
    return await orderHistoryDao!.findById(id);
  }

  Future<void> updateOrderHistory(OrderHistory orderHistory) async {
    orderHistory.updateTime();
    await _insertOrReplaceOrderHistory(orderHistory);

    if (OperationBL().useOrderSync()) {
      await GRpcClient.instance.putOrder();
    }
  }
}

import 'package:simple_pay_api/src/utils.dart';

import 'Database/BusinessLogic/bl.dart';
import 'Database/Model/CartOrderHistoryItem.dart';
import 'Database/Util/BuildConfig.dart';
import 'Database/Util/CommonUtil.dart';
import 'Database/Util/Log.dart';
import 'Database/Util/MonetaryCalculator.dart';
import 'Database/Util/OrderCheck.dart';
import 'Database/Util/TaxCalculator.dart';
import 'Database/Util/TenderConstants.dart';
import 'Database/db.dart';
import 'device.dart';
import 'device/serviceprint/PrintMapData.dart';
import 'exception.dart';
import 'simple.dart';

class Order with Utils {
  static const _tag = 'Order';

  static final Order _singleton = Order._internal();

  factory Order() => _singleton;

  Order._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'calculateTotal':
        return calculateTotal(data);
      case 'saveOrder':
        return saveOrder(data);
      case 'getOrder':
        return getOrder(data);
      case 'deleteOrder':
        return deleteOrder(data);
      case 'listOrders':
        return listOrders(data?['tableId']);
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> calculateTotal(Map data) async {
    OrderCheck? check = await getOrderCheckFromJson(data);

    if (check == null) {
      TLog.w(_tag, 'OrderCheck cannot be created');
      throw ApiException(400, 'OrderCheck cannot be created');
    }

    return bizResponse(200, 'success', {
      'totalDue': check.getTotalDue(),
      'totalTax': check.getTotalTax(),
      'totalDiscount': check.getTotalDiscount(),
    });
  }

  Future<Map> saveOrder(Map data) async {
    OrderCheck? check = await getOrderCheckFromJson(data);

    if (check == null) {
      TLog.w(_tag, 'OrderCheck cannot be created');
      throw ApiException(400, 'OrderCheck cannot be created');
    }

    // Verify total due
    double totalDue = CommonUtil.toDouble(data['totalDue']);

    if (totalDue != 0) {
      if (totalDue != check.getTotalDue()) {
        throw ApiException(500,
            'totalDue should be [${check.getTotalDue()}}] but is [$totalDue]');
      }
    }

    OrderHistory order = check.getOrderHistory()!;
    await submitOrder(check);
    return bizResponse(200, 'success', await _getOrderMap(order));
  }

  Future<OrderCheck?> getOrderCheckFromJson(Map data) async {
    String? orderId = data['orderId'];
    double discount = CommonUtil.toDouble(data['discount']);
    double markup = CommonUtil.toDouble(data['markup']);
    List<CartOrderHistoryItem> cartItems = _getCartItems(data['items']);
    String tableId = data['tableId'] ?? Simple.tableTakeout;
    String? operationType =
        data['operationType'] ?? BaseBL_OPR_TP_CD.OPERATION_TYPE_SELL.getCode();
    BaseBL_OPR_TP_CD? operationTypeCode =
        BaseBL_OPR_TP_CD.getType(operationType);
    discount = markup - discount;
    OrderCheck? check;

    if (orderId != null) {
      check = await _getOrderCheck(orderId, cartItems, discount);
    }

    if (check == null) {
      if (cartItems.isNotEmpty) {
        check = await _createOrderCheck(
          tableId,
          cartItems,
          discount,
          operationTypeCode!,
        );
      } else {
        double amount = CommonUtil.toDouble(data['amount']);
        double taxExempt = CommonUtil.toDouble(data['taxExempt']);
        check = await _createOrderCheck2(
          tableId,
          amount,
          taxExempt,
          discount,
          operationTypeCode!,
        );
      }
    }

    return check;
  }

  List<CartOrderHistoryItem> _getCartItems(List? items) {
    List<CartOrderHistoryItem> list = [];

    if (items == null || items.isEmpty) {
      return list;
    }

    for (Map item in items) {
      CartOrderHistoryItem cartItem = CartOrderHistoryItem();
      cartItem.fromMap(item);
      list.add(cartItem);
    }

    return list;
  }

  Future<OrderCheck?> _getOrderCheck(
    String orderId,
    List<CartOrderHistoryItem> cartItems,
    double discount,
  ) async {
    OrderBL orderBL = OrderBL();
    OrderCheck? check = await orderBL.getOrderByOrderHId(orderId);

    if (check == null) {
      return null;
    }

    await _updateOrderPayment2(check, cartItems, discount);
    return orderBL.saveOrder(check);
  }

  Future<void> _updateOrderPayment2(OrderCheck check,
      List<CartOrderHistoryItem> cartItems, double discount) async {
    bool isFirst = true;

    // 참고: 재주문을 하더라도 상품은 증가하기만 해야 함 (삭제된 주문은 취소 주문으로 처리됨)
    //       만약 상품 개수가 줄어들면 어딘가 문제가 발생할 것임
    if (cartItems.isNotEmpty) {
      // 카트 아이템 정보가 없다면 상품 업데이트가 일어나지 않는다고 판단 (CAT 결제의 경우)
      // 기존 주문 상품을 일단 모두 취소 상품으로 설정 후 cartItems 정보로 업데이트 함
      for (OrderHistoryItem orderItem in check.getCurrOrderItemList()!) {
        orderItem.setOrderOptionCode(OrderCheck.ORDER_OPTION_STORNO_ORDER);
      }

      for (CartOrderHistoryItem cartItem in cartItems) {
        OrderHistoryItem? orderItem = check.getOrderHistoryItem(
          cartItem.getId(),
          cartItem.getItemSerialNumber(),
          cartItem.getUpperItemSerialNumber(),
        );

        if (orderItem != null && cartItem.getItemId() == null) {
          cartItem.setItemId(orderItem.getItemId()!);
        }

        orderItem = await addOrderHistoryItem(
          check,
          orderItem,
          cartItem,
          discount,
        );

        if (orderItem != null && isFirst && !cartItem.getStorno()) {
          isFirst = false;
          orderItem.setOrderDiscountAmount(discount);
        }

        if (orderItem != null &&
            cartItem.option != null &&
            cartItem.option!.isNotEmpty) {
          for (CartOrderHistoryItem cartItem2 in cartItem.option!) {
            OrderHistoryItem? orderItem2 = check.getOrderHistoryItem(
              cartItem2.getId(),
              cartItem2.getItemSerialNumber(),
              cartItem2.getUpperItemSerialNumber(),
            );

            await addOrderHistoryItem(
              check,
              orderItem2,
              cartItem2,
              discount,
              orderItem.getItemSerialNumber() ?? -1,
            );
          }
        }
      }
    }

    // 주문 할인/인상 처리
    OrderHistoryDiscount tmp = OrderHistoryDiscount();
    tmp.setDiscountSectionCode(BasBL.USER_INPUT_DISCOUNT_CODE);
    tmp.setDiscountRate(0);
    // 기존 할인을 취소하기 위해서는 null 필요 (OrderBL.saveOrder() 참조)
    tmp.setDiscountAmount(discount != 0 ? -discount : null);
    await check.setOrderDiscount(tmp);
  }

  Future<OrderHistoryItem?> addOrderHistoryItem(
    OrderCheck check,
    OrderHistoryItem? orderItem,
    CartOrderHistoryItem cartItem,
    double discount, [
    int upperItemSno = -1,
  ]) async {
    ItemBL itemBL = ItemBL();
    SaleBL saleBL = SaleBL();
    Item? item = await itemBL.getItemById(cartItem.getItemId());

    if (item == null) {
      TLog.w(_tag,
          'item for cart item (${cartItem.getId()}) not found: ${cartItem.getItemId()}');
      return null;
    }

    if (orderItem == null) {
      if (item.isOpenPrice()) {
        item.setSellingPrice(cartItem.getPrice());
        item.setApplyTax0Yn(TaxCalculator.TaxFree);
      }

      item.setQty(cartItem.getQty()); // 미리 설정하지 않으면 세금 계산하면서 exception 발생

      if (upperItemSno == -1) {
        orderItem = check.addOrderItem(item);
      } else {
        orderItem = check.addOrderItem(item, upperItemSno);
      }
    }

    String trackingInfo = saleBL.toJsonTrackingInfoMark(cartItem.getMark());
    orderItem.setTrackingInfo(trackingInfo);

    if (item.isCatItem()) {
      Map<String, double> calculated = await TaxCalculator.getIncludeTax(
        cartItem.getPrice()! - cartItem.getTaxExempt()!,
        cartItem.getTaxExempt(),
      );
      double? tax = calculated[TenderConstants.TAX];
      double? supplyValue = calculated[TenderConstants.SUPPLY_VALUE];

      if (tax == null) {
        TLog.w(_tag, 'Calculated tax is null so use 0');
        tax = 0;
      }

      if (supplyValue == null) {
        TLog.w(_tag, 'Calculated supply value is null so use 0');
        supplyValue = 0;
      }

      orderItem.setTaxAmount0(cartItem.getQty()! * tax);
      orderItem.setSupplyValue(cartItem.getQty()! * supplyValue);
      orderItem.setSupplyAmount(cartItem.getQty()! * cartItem.getPrice()!);
      orderItem.setCatItem(true);
      orderItem.setTaxAmount2(cartItem.getTaxExempt() ?? 0);
    }

    if (cartItem.getPrice() != null && cartItem.getPrice()! != 0) {
      orderItem.setPrice(cartItem.getPrice());
    }

    orderItem.setMenuPaymentYn(cartItem.getMenuPaymentYn() ?? 0);
    orderItem.setQuantity(cartItem.getQty());

    if (cartItem.getStorno()) {
      orderItem.setOrderOptionCode(OrderCheck.ORDER_OPTION_STORNO_ORDER);
    } else if (cartItem.getDiscount() != 0 && cartItem.getDiscountStorno()) {
      orderItem
          .setOrderOptionCode(OrderCheck.ORDER_OPTION_DISCOUNT_STORNO_ORDER);
    } else {
      orderItem.setOrderOptionCode(OrderCheck.ORDER_OPTION_NORMAL_ORDER);
    }

    if (cartItem.getDiscount() != 0) {
      BasicDataItem du = BasicDataItem();
      du.setBasicDataItemCodeName(BasBL.USER_INPUT_DISCOUNT_CODE);
      du.setBasicDataItemName(
          CommonUtil.getUserDefinedDiscountName(false, cartItem.getDiscount()));
      du.setData2(cartItem.getDiscount().toString());
      du.setData3('1');

      orderItem.setDiscountName(du.getBasicDataItemName());
      orderItem.setDiscountTypeCode(TaxCalculator
          .DcTypeLine); // Item Discount (단품할인)// Line Discount (품목할인)
      orderItem.setDiscountSectionCode(
          du.getBasicDataItemCodeName()); //item.setDiscountBasicDataItemInfo();

      if (BasBL.USER_INPUT_DISCOUNT_CODE == du.getBasicDataItemCodeName()) {
        if ('0' == du.getData3()) {
          orderItem.setDiscountRate(CommonUtil.stringToDouble(du.getData1()));
          orderItem.setDiscountAmount(null);
        } else {
          TaxCalculator taxCalculator = TaxCalculator();
          await taxCalculator.init(orderItem);
          double orderAmount = taxCalculator.getOrderAmount();
          double discountAmount = CommonUtil.stringToDouble(du.getData2());

          if (orderAmount < discountAmount) {
            du.setData2(orderAmount.toString());
            du.setBasicDataItemName(
                CommonUtil.getUserDefinedDiscountName(false, orderAmount));
          }

          orderItem.setDiscountAmount(discountAmount);
          orderItem.setMenuDiscountAmount(discountAmount);
          orderItem.setDiscountRate(null);
        }
      }
    } else {
      orderItem.setDiscountName(null);
      orderItem.setDiscountTypeCode(null);
      orderItem.setDiscountSectionCode(null);
      orderItem.setDiscountRate(null);
      orderItem.setDiscountAmount(null);
      orderItem.setMenuDiscountAmount(null);
    }

    return orderItem;
  }

  Future<OrderCheck> _createOrderCheck(
    String tabCode,
    List<CartOrderHistoryItem> cartItems,
    double discount,
    BaseBL_OPR_TP_CD operationTypeCode,
  ) async {
    OrderBL orderBL = OrderBL();

    String bizSection = tabCode == Simple.tableCat
        ? TenderConstants_BIZ_SEC_CD.CAT.getCode()
        : tabCode == Simple.tableTakeout
            ? TenderConstants_BIZ_SEC_CD.TAKEOUT.getCode()
            : TenderConstants_BIZ_SEC_CD.HALL.getCode();

    // 테이크아웃인 경우 주문을 유지하도록 함 (simple-pay에서 맞는 컨셉인지 확인 필요)
    if (tabCode == Simple.tableCat /*|| tabCode == Simple.tableTakeout*/) {
      for (OrderHistory i in await orderBL.getOrderHistoryByTableId(tabCode)) {
        OrderCheck? orderCheck = await orderBL.getOrderByOrderHId(i.getId());

        if (orderCheck != null) {
          await orderBL.deleteOrderCheck(orderCheck);
        }
      }
    }

    OrderCheck check = orderBL.createNewOrderCheck(
      tabCode,
      bizSection,
      operationTypeCode,
    );
    await _updateOrderPayment2(check, cartItems, discount);
    return await orderBL.saveOrder(check);
  }

  Future<OrderCheck> _createOrderCheck2(
    String tabCode,
    double amount,
    double taxExempt,
    double discount,
    BaseBL_OPR_TP_CD operationTypeCode,
  ) async {
    OrderBL orderBL = OrderBL();
    ItemBL itemBL = ItemBL();
    String busiSection = TenderConstants_BIZ_SEC_CD.HALL.getCode();

    if (tabCode == Simple.tableCat) {
      busiSection = TenderConstants_BIZ_SEC_CD.CAT.getCode();

      // 이전 주문 제거
      for (OrderHistory i
          in await orderBL.getOrderHistoryByTableId(Simple.tableCat)) {
        OrderCheck? orderCheck = await orderBL.getOrderByOrderHId(i.getId());

        if (orderCheck != null) {
          await orderBL.deleteOrderCheck(orderCheck);
        }
      }
    }

    OrderCheck check = orderBL.createNewOrderCheck(
      tabCode,
      busiSection,
      operationTypeCode,
    );

    Item? item = await itemBL.getCatItem(operationTypeCode);
    await check.addCatItem(item, amount, taxExempt, 1);

    if (discount != 0) {
      OrderHistoryDiscount tmp = OrderHistoryDiscount();
      tmp.setDiscountSectionCode(BasBL.USER_INPUT_DISCOUNT_CODE);
      tmp.setDiscountRate(0);
      tmp.setDiscountAmount(-discount);
      await check.setOrderDiscount(tmp);
    }

    return await orderBL.saveOrder(check);
  }

  Future<List<Map<String, Object?>>> getOrderItemMap(OrderHistory order) async {
    List<Map<String, Object?>> items = [];
    List<OrderHistoryItem> orderItems = await order.getOrderHistoryItems();

    for (OrderHistoryItem i in orderItems) {
      Item? j = await i.getItem();

      if (j == null) {
        Log.w(_tag, 'item for order item (' + i.getId()! + ') not found');
        continue;
      }

      Map<String, Object?> itemMap = <String, Object?>{};
      String? orderOptionCode = i.getOrderOptionCode();
      itemMap['id'] = i.getId();
      itemMap['itemSerialNumber'] = i.getItemSerialNumber();
      itemMap['upperItemSerialNumber'] = i.getUpperItemSerialNumber();
      itemMap['itemId'] = j.getItemId();
      itemMap['name'] = j.getItemName();
      itemMap['qty'] = i.getQuantity();

      if (j.isCatItem()) {
        // 면세금액은 taxAmount2에 저장
        itemMap['taxExempt'] = i.getTaxAmount2();
      } else {
        itemMap['taxExempt'] =
            j.applyTax0Yn == TaxCalculator.TaxFree ? j.sellingPrice : 0;
      }

      itemMap['price'] = i.getPrice();
      itemMap['discount'] = i.getDiscountAmount();
      itemMap['orderDiscount'] = i.getOrderDiscountAmount();
      itemMap['isStorno'] = i.isCanceled();
      itemMap['isDiscountStorno'] =
          OrderCheck.ORDER_OPTION_DISCOUNT_STORNO_ORDER == orderOptionCode;
      bool isMenuPayment = (i.getMenuPaymentYn() ?? '0') == '1';
      itemMap['isMenuPayment'] = isMenuPayment;

      if (isMenuPayment) {
        itemMap['menuPaymentSno'] = i.getMenuPaymentSerialNumber();
      }

      itemMap['imageUri'] = j.getImageUrl();
      itemMap['linkCode'] = j.getLinkCode();

      if ('KZ' == BuildConfig.SERVER_REGION) {
        OperationBL operationBL = OperationBL();
        bool isTaxFreeStore = await operationBL.getIsTaxFree();

        if (!isTaxFreeStore) {
          //과세상점
          itemMap['taxApplied'] = TaxCalculator.IncludeTax;
        } else {
          //비과세 상점
          itemMap['taxApplied'] = TaxCalculator.TaxFree;
        }
      } else {
        // CAT 상품인 경우 금액은 세금 포함으로 처리하고 있음
        itemMap['taxApplied'] =
            j.isCatItem() ? TaxCalculator.IncludeTax : j.getApplyTax0Yn();
      }

      final SaleBL saleBL = SaleBL();
      String? mark = saleBL.fromJsonTrackingInfoMark(i.getTrackingInfo());
      itemMap['mark'] = mark;
      items.add(itemMap);
    }

    return items;
  }

  Future<void> submitOrder(OrderCheck orderCheck) async {
    final printer = Device().getPrinter();
    TLog.d(_tag, 'submitOrder');

    try {
      if (orderCheck.checkChangedOrderItemInList()) {
        TLog.d(_tag,
            'isOrderPrintingPoint : ${await printer.isOrderPrintingPoint()}');

        if (orderCheck.isNotCatOrder() &&
            !(await printer.isOrderPrintingPoint())) {
          await _printOrderCheck(orderCheck);
        }

        orderCheck.clearOrderList();
      }
    } catch (e, stacktrace) {
      print('submitOrder: $e\n$stacktrace');
      TLog.e(_tag, e);
    }
  }

  Future<void> _printOrderCheck(OrderCheck check) async {
    final opBL = OperationBL();
    final printer = Device().getPrinter();

    if (check.isNotCatOrder() && !(await printer.isOrderPrintingPoint())) {
      // Receipt Print
      if (await opBL.isPrintBill()) {
        await createBindOrderData(
          check,
          false,
          await opBL.printBillChangedItem(),
          false,
        );
        await printer.receiptPrint(
          await printer.makeOrderBill(),
          immediate: true,
        );
      }

      // Kitchen Print
      if (await opBL.isPrintOrder()) {
        await createBindOrderData(
          check,
          false,
          await opBL.printBillChangedItem(),
          true,
        );
        await printer.kitchenPrint(
          await printer.makeOrderSummary(),
          immediate: true,
        );
      }

      printer.nextPrint();
    }
  }

  Future<void> createBindOrderData(
    OrderCheck orderCheck, [
    bool isCancel = false,
    bool onlyChanged = false,
    bool onSubmitOrder = false,
  ]) async {
    List<OrderHistoryItem> orderItems = [];
    OrderCheck check;
    ItemBL itemBL = ItemBL();

    check = orderCheck;
    if (isCancel) {
      for (OrderHistoryItem i in orderCheck.getOldOrderItemList()!) {
        OrderHistoryItem j = i.clone();
        j.setQuantity(i.getQuantity()! * -1);
        j.setSupplyAmount(i.getSupplyAmount()! * -1);
        j.setOrderDiscountAmount(i.getOrderDiscountAmount()! * -1);
        j.setMenuDiscountAmount(i.getMenuDiscountAmount()! * -1);
        orderItems.add(j);
      }
    } else {
      if (onlyChanged) {
        orderItems.addAll(orderCheck.getChangedOrderItems());
        check = orderCheck.clone();
        await check.setCurrOrderItem(orderItems);
      } else {
        orderItems.addAll(orderCheck.getCurrOrderItemList()!);

        if (onSubmitOrder) {
          //변경된 상품이 주방출력 상품인 경우에만 출력함
          bool doPrint = false;

          for (OrderHistoryItem orderHistoryItem
              in orderCheck.getChangedOrderItems()) {
            Item? itm = await itemBL.getItemById(orderHistoryItem.getItemId());

            if (itm != null && itm.getKitchenPrinterOutputYn()!) {
              doPrint = true;
              break;
            }
          }

          if (!doPrint) {
            orderItems.clear();
          }
        }
      }
    }

    PrintMapData pm = PrintMapData();
    await pm.createBindOrderData(check, orderItems, isCancel);
  }

  Future<Map> getOrder(Map data) async {
    String orderId = data['orderId'] ?? '';

    if (orderId.isEmpty) {
      throw ApiException(400, 'no order id');
    }

    OrderBL orderBL = OrderBL();
    OrderHistory? order = await orderBL.getOrderHistory(orderId);

    if (order == null) {
      throw ApiException(404, 'No order found');
    }

    return bizResponse(200, 'success', await _getOrderMap(order));
  }

  Future<Map<String, Object?>> _getOrderMap(OrderHistory order) async {
    OrderBL orderBL = OrderBL();
    Map<String, Object?> orderMap = <String, Object?>{};
    MonetaryCalculator orderDiscount = MonetaryCalculator();

    for (OrderHistoryDiscount i in await order.getOrderHistoryDiscounts()) {
      orderDiscount = orderDiscount.add(i.getDiscountAmount());
    }

    orderMap['orderId'] = order.getId();
    orderMap['tableId'] = order.getTableId();
    orderMap['items'] = await getOrderItemMap(order);
    orderMap['discount'] =
        orderDiscount.getValue() > 0 ? orderDiscount.getValue() : 0;
    orderMap['markup'] =
        orderDiscount.getValue() < 0 ? -orderDiscount.getValue() : 0;
    orderMap['payable'] = order.paymentInitiatorId == null ||
        order.paymentInitiatorId == BaseBL.storeTerminalId;
    OrderCheck? check = await orderBL.getOrderByOrderHId(order.getId());

    if (check != null) {
      orderMap['totalDue'] = check.getTotalDue();
      orderMap['totalReceived'] = await check.getTotalReceived();
      orderMap['taxExemptReceived'] = await check.getTaxExemptReceived();
      orderMap['balance'] = await check.getBalance();
    } else {
      orderMap['totalDue'] = 0.0;
      orderMap['totalReceived'] = 0.0;
      orderMap['taxExemptReceived'] = 0.0;
      orderMap['balance'] = 0.0;
    }

    return orderMap;
  }

  Future<Map> deleteOrder(Map data) async {
    String orderId = data['orderId'] ?? '';

    if (orderId.isEmpty) {
      throw ApiException(400, 'No order id');
    }

    final orderBL = OrderBL();

    try {
      OrderCheck? check = await orderBL.getOrderByOrderHId(orderId);

      if (check != null && check.getOrderHistory()!.getId() != null) {
        await _printOrderCancel(check);
      } else {
        Log.e(_tag, 'deleteOrder, orderCheck is null');
      }

      await orderBL.deleteOrder(orderId);
      return bizResponse(200, 'success');
    } catch (e) {
      print('deleteOrder: $e');
      TLog.e(_tag, e);
      throw ApiException(500, '$e');
    }
  }

  Future<void> _printOrderCancel(OrderCheck check) async {
    final opBL = OperationBL();
    final printer = Device().getPrinter();

    if (check.isNotCatOrder() && !(await printer.isOrderPrintingPoint())) {
      await createBindOrderData(check, true, false, false);

      // Receipt Print
      if (await opBL.isPrintBill()) {
        await printer.receiptPrint(await printer.makeOrderBill(),
            immediate: true);
      }

      // Kitchen Print
      if (await opBL.isPrintOrder()) {
        await printer.kitchenPrint(await printer.makeOrderSummary(),
            immediate: true);
      }

      printer.nextPrint();
    }
  }

  Future<Map> listOrders(String? tableId) async {
    final orderBL = OrderBL();
    List<OrderHistory> orders =
        await orderBL.getOrderHistoryByTableId(tableId ?? Simple.tableTakeout);
    List<Map> list = <Map>[];

    for (OrderHistory i in orders) {
      List<OrderHistoryItem> items = await i.getOrderHistoryItems();
      double totalQty = items.fold(0, (old, i) {
        double? qty =
            i.getOrderOptionCode() == OrderCheck.ORDER_OPTION_NORMAL_ORDER
                ? i.getQuantity()
                : 0;
        return old + (qty ?? 0);
      });

      list.add({
        'orderId': i.getId(),
        'orderDate': i.getCommonDate(),
        'orderSno': i.getCommonSerialNumber(),
        'tableId': i.getTableId(),
        'totalQty': totalQty,
        'totalAmount': i.getOrderTotalAmount(),
        'lastRevisionDatetime': i.getLastRevisionDatetime()!.substring(0, 14),
      });
    }

    return bizResponse(200, 'success', list);
  }
}

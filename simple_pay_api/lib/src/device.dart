import 'dart:io' show Directory, Platform;

import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'Database/BusinessLogic/bl.dart';
import 'Database/Util/CommonUtil.dart';
import 'Database/Util/OrderCheck.dart';
import 'Database/Util/TenderConstants.dart';
import 'Database/database.dart';
import 'Database/db.dart';
import 'Database/traceDatabase.dart';
import 'Util/Common/Common.dart';
import 'Util/background_service.dart';
import 'device/serviceprint/PrintMapData.dart';
import 'device/serviceprint/PrintService.dart';
import 'exception.dart';
import 'order.dart';
import 'simple.dart';
import 'sync.dart';
import 'utils.dart';

class Device with Utils {
  static const _tag = 'Device';
  static const _posDbPath = 'yoshop.db';
  static const _traceDbPath = 'trace.db';
  static const String _codeOpenWay = "400";
  static const String _codeOpenWayBcc = "KZB402";

  static final Device _singleton = Device._internal();

  factory Device() => _singleton;

  Device._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'getDeviceId':
        return getDeviceId();
      case 'getDevicePath':
        return getDevicePath();
      case 'initDevice':
        return initDevice();
      case 'printBill':
        return printBill(data?['orderId']);
    }

    throw ApiException(501, 'Not implemented');
  }

  PrintService getPrinter() {
    return PrintService();
  }

  Future getDeviceId() async {
    if (BaseBL.storeTerminalId != null) {
      StoreTerminal? terminal =
          await BasBL().getStoreTerminalById(BaseBL.storeTerminalId);
      String? deviceId = terminal?.getDeviceUniqueValue();

      if (deviceId != null) {
        return bizResponse(200, 'success', {'deviceId': deviceId});
      }
    }

    return await Simple.platformInvoke('device.getDeviceId');
  }

  Future getDevicePath() async {
    if (Simple.isFlutterTest) {
      Directory dir = await getApplicationDocumentsDirectory();
      return bizResponse(200, 'success', {
        'external': dir.path + Platform.pathSeparator + 'YoshopPOS',
      });
    }

    return await Simple.platformInvoke('device.getPath');
  }

  Future initDevice() async {
    Map result = {};
    result.addAll(await _checkPermissions());
    result.addAll(await _initDatabase());
    result.addAll(await _initPosInfo());
    result.addAll(await _setStorageDir());
    result.addAll(await _startBackgroundService());

    // test 할 때만 사용
    if (Simple.isFlutterTest) {
      await Sync().initCulture();
      await Sync().initGrpc();
    } else {
      Simple.initPrintEvents();
    }

    return bizResponse(200, 'success', result);
  }

  Future _checkPermissions() async {
    if (!Platform.isAndroid) {
      return {};
    }

    try {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();

      return {
        'permissions': {
          'storage': statuses[Permission.storage] == PermissionStatus.granted,
        },
      };
    } catch (e, stack) {
      print('$e\n$stack');
    }

    return {};
  }

  Future _initDatabase() async {
    Migration v26 = Migration(25, 26, (sqflite.Database database) async {
      database.execute('ALTER TABLE OD1_ODR_HIS ADD COLUMN "MEMO" TEXT');
      database.execute(
          'CREATE TABLE IF NOT EXISTS `CU1_ENT_REG` (`ENT_REG_ID` TEXT, `STR_ID` TEXT, `STR_TRM_ID` TEXT, `HP_NO` TEXT, `AGREE_YN` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ENT_REG_ID`))');
    });

    List<Migration> posMigration = [v26];
    List<Migration> traceMigration = [];

    FlutterDatabase yoshopDb = await $FloorFlutterDatabase
        .databaseBuilder(_posDbPath)
        .addMigrations(posMigration)
        .build();
    TraceDatabase traceDb = await $FloorTraceDatabase
        .databaseBuilder(_traceDbPath)
        .addMigrations(traceMigration)
        .build();
    Common.setDB(yoshopDb);
    Common.setTraceDB(traceDb);

    return {
      'posDbPath': (yoshopDb.database as sqflite.Database).path,
      'traceDbPath': (traceDb.database as sqflite.Database).path,
    };
  }

  Future<Map> _initPosInfo() async {
    final opBL = OperationBL();
    await opBL.init();
    final cashierBL = CashierBL();
    final employeeBL = EmployeeBL();
    final basBL = BasBL();
    final traceBL = TraceBL();

    var tid = await opBL.getStoreTerminalId();
    BaseBL.storeTerminalId = tid;

    String? eid;
    var banks = await cashierBL.getCashierInList(tid);

    if (banks.isNotEmpty) {
      eid = banks[0].getEmployeeId();
    } else {
      var employees = await employeeBL.getEmpList();

      if (employees.isNotEmpty) {
        eid = employees[0].getEmployeeId();
      }
    }

    BaseBL.employeeId = eid;
    var store = await basBL.getStore();
    String? sid = store?.getStoreId();
    traceBL.setPosInfo(sid, tid);
    TLog.enable(await basBL.getStoreTerminalData1('TLOG') != null);
    TLog.pingEnable(await basBL.getStoreTerminalData1('PING') != null);

    return {
      'storeTerminalId': tid,
      'storeId': sid,
      'employeeId': eid,
    };
  }

  Future<Map> _setStorageDir() async {
    String external = '/sdcard/YoshopPOS';
    Map? r = await getDevicePath();

    if (Simple.successful(r)) {
      external = Simple.result(r, 'external');
    }

    Common.setStorageDir(external);
    return {
      'external': external,
    };
  }

  Future<Map> _startBackgroundService() async {
    await BackgroundService().start(_posDbPath, _traceDbPath);
    return {
      'backgroundService': 'started',
    };
  }

  Future<void> initPrinter() async {
    final opBL = OperationBL();

    await Simple.platformInvoke('device.initPrinter', {
      'language': await opBL.getLanguage(),
      'receiptPrinterModel': await opBL.getReceiptPrinterModel(),
      'receiptPrinterType': await opBL.getReceiptPrinterType(),
      'receiptPrinterMaxChar': await opBL.getReceiptPrinterMaxChar(),
      'receiptPrinterBtAddress': await opBL.getReceiptPrinterMacAddress(),
      'kitchenPrinterModel': await opBL.getKitchenPrinterModel(),
      'kitchenPrinterType': await opBL.getKitchenPrinterType(),
      'kitchenPrinterMaxChar': await opBL.getKitchenPrinterMaxChar(),
      'kitchenPrinterBtAddress': await opBL.getKitchenPrinterMacAddress(),
    });
  }

  Future<Map> printBill(String? orderId) async {
    if (orderId == null) {
      throw ApiException(400, 'orderId is missing');
    }

    final orderBL = OrderBL();
    final printer = PrintService();
    OrderCheck? check = await orderBL.getOrderByOrderHId(orderId);

    if (check == null) {
      throw ApiException(404, 'order not found');
    }

    await Order().createBindOrderData(check, false, false, false);
    await printer.receiptPrint(await printer.makeOrderBill());
    // 의도적으로 await 누락
    printer.nextPrint();
    return bizResponse(200, 'success');
  }

  Future<void> printOrder(String orderId) async {
    final printer = PrintService();
    final orderBL = OrderBL();
    final opBL = OperationBL();
    OrderCheck? check = await orderBL.getOrderByOrderHId(orderId);

    if (check == null) {
      return;
    }

    if (check.isNotCatOrder() && await printer.isOrderPrintingPoint()) {
      await createBindOrderData(check);

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

  Future<void> createBindOrderData(
    OrderCheck orderCheck, [
    bool isCancel = false,
    bool onlyChanged = false,
    bool onSubmitOrder = false,
  ]) async {
    final itemBL = ItemBL();
    List<OrderHistoryItem> orderItems = <OrderHistoryItem>[];
    OrderCheck check = orderCheck;

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

          for (OrderHistoryItem i in orderCheck.getChangedOrderItems()) {
            Item? itm = await itemBL.getItemById(i.getItemId());

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

  Future<void> printCardReceipt(
      OrderCheck check, SalesAccountHistory ac) async {
    final opBL = OperationBL();
    final printer = PrintService();
    final printData = PrintMapData();
    bool isYolletPay = TenderConstants.isYolletPay(ac.getPaymentSectionCode());
    bool store = await opBL.isPrintCardReceiptToStore();
    bool customer = opBL.isPrintCardReceiptToCustomer();
    bool company = await opBL.isPrintCardReceiptToCompany();

    if (!store && !customer && !company) {
      TLog.w(_tag, 'No destination to print receipt');
      return;
    }

    List<OrderHistoryItem> items = await _getItemsToPrint(check, ac);
    await printData.createReceiptData(ac, items);

    if (store && !isYolletPay) {
      TLog.d(_tag, 'Print card receipt to store');
      await printer.receiptPrint(
          await _transformPrintMap(
            await printer.makeCardReceiptMsgToStore(true),
            ac.getPaymentMethodCode()!,
          ),
          immediate: true);
    }

    if (customer) {
      TLog.d(_tag, 'Print card receipt to customer');
      await printer.receiptPrint(await _transformPrintMap(
        await printer.makeCardReceiptMsgToCustomer(true),
        ac.getPaymentMethodCode()!,
      ));
    }

    if (company) {
      TLog.d(_tag, 'Print card receipt to company');
      await printer.receiptPrint(await _transformPrintMap(
        await printer.makeCardReceiptMsgToCompany(true),
        ac.getPaymentMethodCode()!,
      ));
    }

    if ((store && !isYolletPay) || customer || company) {
      printer.nextPrint(popup: true);
    }
  }

  Future<List<OrderHistoryItem>> _getItemsToPrint(
    OrderCheck check,
    SalesAccountHistory ac,
  ) async {
    List<OrderHistoryItem> items = <OrderHistoryItem>[];

    if (ac.getPaymentOption() == TenderConstants_PAY_OPT.MENU.getCode()) {
      // 선택 메뉴 출력
      for (OrderHistoryItem i
          in await check.getOrderHistory()!.getOrderHistoryItems()) {
        if (i.getMenuPaymentSerialNumber() ==
            ac.getSalesAccountSerialNumber()) {
          items.add(i);
        }
      }
    } else if (ac.getPaymentOption() ==
        TenderConstants_PAY_OPT.NORMAL.getCode()) {
      //전체 주문메뉴 출력
      items.addAll(await check.getOrderHistory()!.getOrderHistoryItems());
    }

    return items;
  }

  Future<Map<String, Object?>> _transformPrintMap(
    Map<String, Object?>? data,
    String paymentMethodCode,
  ) async {
    if (data == null) {
      return {};
    }

    PrintMapData printData = PrintMapData();

    if (await _isOpenWay(paymentMethodCode)) {
      await printData.transformForOpenWay(data);
    }

    return data;
  }

  Future<bool> _isOpenWay(String paymentMethodCode) async {
    final basBL = BasBL();
    String? type = await basBL.getPaymentType(paymentMethodCode);
    return type == _codeOpenWay || type == _codeOpenWayBcc;
  }

  Future<void> printCardFailReceipt(ResVan resVan, String receiptNo) async {
    final opBL = OperationBL();
    final printer = PrintService();
    bool customer = opBL.isPrintCardReceiptToCustomer();

    if (customer) {
      await printer
          .receiptPrint(await printer.makeCardFailReceipt(resVan, receiptNo));
      printer.nextPrint();
    }
  }

  Future<bool> isSystemTimeInvalid() async {
    try {
      OperationBL opBL = OperationBL();
      String now = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
      String? savedTime = await opBL.getNetworkCheckTime();
      TLog.d(_tag, 'TIME, SavedTime = $savedTime');
      TLog.d(_tag, 'TIME, Now = $now');

      if (CommonUtil.stringToLong(now) < CommonUtil.stringToLong(savedTime)) {
        return true;
      }

      opBL.setNetworkCheckTime(now);
    } catch (e) {
      print('isSystemTimeInvalid: $e');
      TLog.e(_tag, e);
    }

    return false;
  }

  Future<void> printReceiptCardCancel(
    SalesAccountHistory ac,
    String? sectionCode,
    List<SalesHistoryItem> items,
    bool isOrdering,
  ) async {
    final opBL = OperationBL();
    final printer = PrintService();
    final pm = PrintMapData();
    bool store = await opBL.isPrintCardReceiptToStore();
    bool customer = opBL.isPrintCardReceiptToCustomer();
    bool company = await opBL.isPrintCardReceiptToCompany();
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);

    if (!store && !customer && !company && !section.isCash()) {
      TLog.w(_tag, 'No destination to print receipt');
      return;
    }

    List<SalesHistoryItem> items2 = [];

    if (ac.getPaymentOption() == TenderConstants_PAY_OPT.MENU.getCode()) {
      for (SalesHistoryItem i in items) {
        if (ac.getSalesAccountSerialNumber() ==
            (i.getMenuPaymentSerialNumber())) {
          items2.add(i);
        }
      }
    } else if (ac.getPaymentOption() ==
        TenderConstants_PAY_OPT.NORMAL.getCode()) {
      items2 = items;
    }

    await pm.createReceiptData(ac, items2);

    if (section.isCash() || TenderConstants.isQRPay(sectionCode)) {
      TLog.d(_tag, 'Print cash receipt');
      // Print map 생성 시 판매데이터를 사용했기에 아래 두번째 인자는 false 이어야 함
      await printer.receiptPrint(await printer.makeCashReceiptMsg(true, false));
      printer.nextPrint();
    } else {
      if (store) {
        TLog.d(_tag, 'Print card receipt to store');
        await printer.receiptPrint(await _transformPrintMap(
          await printer.makeCardReceiptMsgToStore(false),
          ac.getPaymentMethodCode()!,
        ));
      }

      if (customer) {
        TLog.d(_tag, 'Print card receipt to customer');
        await printer.receiptPrint(await _transformPrintMap(
          await printer.makeCardReceiptMsgToCustomer(false),
          ac.getPaymentMethodCode()!,
        ));
      }

      if (company) {
        TLog.d(_tag, 'Print card receipt to company');
        await printer.receiptPrint(await _transformPrintMap(
          await printer.makeCardReceiptMsgToCompany(false),
          ac.getPaymentMethodCode()!,
        ));
      }

      if (store || customer || company) {
        printer.nextPrint();
      }
    }
  }
}

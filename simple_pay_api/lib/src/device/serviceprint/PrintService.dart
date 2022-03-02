import 'dart:async';
import 'dart:collection';

import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/BuildConfig.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/CrmConstants.dart';
import 'package:simple_pay_api/src/Database/Util/CultureManager.dart';
import 'package:simple_pay_api/src/Database/Util/LangCode.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';
import 'package:simple_pay_api/src/simple.dart';

import '../printer.dart';
import 'GeneratePrintData.dart';
import 'PrintDataMapIF.dart';
import 'PrintMapData.dart';

class PAYMENT_TYPE {
  static const CASH = const PAYMENT_TYPE._internal('cash');
  static const CASH_CANCEL = const PAYMENT_TYPE._internal('cash_cancel');
  static const CARD = const PAYMENT_TYPE._internal('card');
  static const MYD = const PAYMENT_TYPE._internal('myd');
  static const ONLINE = const PAYMENT_TYPE._internal('online');

  static const values = [
    CASH,
    CASH_CANCEL,
    CARD,
    MYD,
    ONLINE,
  ];

  final _code;

  String getCode() => _code;

  const PAYMENT_TYPE._internal(this._code);
}

class PrintService {
  static const String TAG = 'PrintService';
  static const String ORDER_CHANGED_CONTENTS_ID = '9999999';
  static const String ORDER_OPTION_PACKAGING_ORDER = '001'; //포장주문
  static const String PRINTER_RECEIPT = 'receipt';
  static const String PRINTER_KITCHEN = 'kitchen';
  static const String INDENT_2 = '  '; //들여쓰기 간격 2

  static const int RSP_OK = 0;
  static const int RSP_FAIL = -1;
  static const int RSP_DEVICE_NOT_FOUND = -2;
  static const int RSP_BT_PARING_FAILED = -3;
  static const int RSP_DEVICE_NULL = -4;
  static const int STATUS_PAPER_EMPTY = 1;
  static const int STATUS_COVER_OPEN = 2;
  static const int STATUS_ERROR = 4;

  late OperationBL _operationBL;
  late ItemBL _itemBL;
  late CultureManager _cultureMng;
  late PrintMapData _printMapData;

  static final PrintService _singleton = PrintService._internal();

  factory PrintService() => _singleton;

  PrintService._internal() {
    _operationBL = OperationBL();
    _printMapData = PrintMapData();
    _itemBL = ItemBL();
    _cultureMng = CultureManager();
  }

  /* 현금 영수증 프린터 전문 만들기*/
  Future<Map<String, Object?>?> makeCashReceiptMsg(
      bool cancel, bool order) async {
    return await _printCashReceiptMsg(
        order, (cancel ? PAYMENT_TYPE.CASH_CANCEL : PAYMENT_TYPE.CASH));
  }

  Future<Map<String, Object?>?> printPayInOut(
      CashierBL_CASHDRAWLOG inputType,
      double amt,
      String rema,
      String? accountGroup,
      String? account,
      double cashDrawerBalance) async {
    OperationBL operationBL = OperationBL();
    Map<String, Object?>? data = await _printMapData.getCommonMap();
    if (data == null) {
      return null;
    }
    data[PrintDataMapIF.START] = 'TEMPLATE_PAY_IN_OUT';

    if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT == inputType) {
      // Pay-in
      data[PrintDataMapIF.RECEIPT_TITLE] = BaseBL.receiptLang[LangCode.pay_in];
    } else {
      data[PrintDataMapIF.RECEIPT_TITLE] = BaseBL.receiptLang[LangCode.pay_out];
    }

    data[PrintDataMapIF.INN_NO] = operationBL.getOrgRegInfoInn();
    data[PrintDataMapIF.CRM_SERIAL] = operationBL.getKkmRegInfoSerialNumber();
    data[PrintDataMapIF.KKM_ID] = operationBL.getKkmRegInfoFnsKkmId();
    data[PrintDataMapIF.KKM_REG_INFO_TERMINAL_NUMBER] =
        operationBL.getCrmTerminalNumber().toString();

    Map<String, Object?>? operator = await CommonUtil.getCashierInOperator();

    if (operator != null) {
      data[PrintDataMapIF.OPERATOR_CODE] =
          operator[CrmConstants.OPERATOR_CODE].toString();
      data[PrintDataMapIF.OPERATOR_NAME] = operator[CrmConstants.OPERATOR_NAME];
      data[PrintDataMapIF.OPERATOR_LINK] = operator[CrmConstants.OPERATOR_LINK];
    }

    data[PrintDataMapIF.CASH_AMOUNT] = _cultureMng.currencyFormat(amt);
    data[PrintDataMapIF.MEMO] = rema;
    String requestDatetime =
        DateFormat('yyyy.MM.dd HH:mm:ss').format(DateTime.now());
    data[PrintDataMapIF.PAYMENT_TIME] = requestDatetime;
    data[PrintDataMapIF.ACCOUNT_GROUP] = accountGroup;
    data[PrintDataMapIF.ACCOUNT] = account;
    data[PrintDataMapIF.CASH_DRAWER_BALANCE] =
        _cultureMng.currencyFormat(cashDrawerBalance);
    data[PrintDataMapIF.CUT] = '';
    data[PrintDataMapIF.END] = '';
    return data;
  }

  Future<Map<String, Object?>?> makeCardReceiptMsgToCustomer(bool order) async {
    _printMapData.setSubTitle(BaseBL.receiptLang[LangCode.hyphen_receipt]);

    Map<String, Object?>? data =
        await _printReceiptMsg(order, PAYMENT_TYPE.CARD);
    _printMapData.setRewardQR();
    data?[PrintDataMapIF.SIGN_INFO] = BaseBL.receiptLang[LangCode.customer];
    data?[PrintDataMapIF.IS_CUSTOMER_CARD_RECEIPT] = "true";
    return data;
  }

  Future<Map<String, Object?>?> makeRewardQR({Map? data}) async {
    _printMapData.setRewardQR(data);
    return _printMapData.getRewardQrMap();
  }

  Future<Map<String, Object?>?> makeCardReceiptMsgToStore(bool order) async {
    _printMapData.setSubTitle(BaseBL.receiptLang[LangCode.for_store]);
    Map<String, Object?>? data =
        await _printReceiptMsg(order, PAYMENT_TYPE.CARD);
    data?[PrintDataMapIF.SIGN_INFO] = BaseBL.receiptLang[LangCode.bank];
    data?[PrintDataMapIF.IS_STORE_CARD_RECEIPT] = "true";
    // data?[PrintDataMapIF.IS_COMPANY_CARD_RECEIPT] = "false";
    // data?[PrintDataMapIF.IS_CUSTOMER_CARD_RECEIPT] = "false";
    return data;
  }

  Future<Map<String, Object?>?> makeCardReceiptMsgToCompany(bool order) async {
    _printMapData.setSubTitle(BaseBL.receiptLang[LangCode.for_card_company]);
    Map<String, Object?>? data =
        await _printReceiptMsg(order, PAYMENT_TYPE.CARD);
    data?[PrintDataMapIF.SIGN_INFO] = BaseBL.receiptLang[LangCode.company];
    // data?[PrintDataMapIF.IS_STORE_CARD_RECEIPT] = "false";
    data?[PrintDataMapIF.IS_COMPANY_CARD_RECEIPT] = "true";
    // data?[PrintDataMapIF.IS_CUSTOMER_CARD_RECEIPT] = "false";
    return data;
  }

  Future<Map<String, Object?>?> makeCardFailReceipt(
      ResVan resVan, String receiptNo) async {
    await _printMapData.createReceiptData();
    return await _printMapData.getReceiptMap(receiptNo, resVan);
  }

  Future<Map<String, Object?>?> makeOnlineReceipt() async {
    return await _printReceiptMsg(false, PAYMENT_TYPE.ONLINE);
  }

  /* 사원증 결제 프린터 전문 만들기*/
  Future<Map<String, Object?>?> makeMyDReceiptMsg(
      bool isCancel, bool order) async {
    return await _printReceiptMsg(order, PAYMENT_TYPE.MYD);
  }

  Future<Map<String, Object?>?> _printCashReceiptMsg(
      bool order, PAYMENT_TYPE type) async {
    Map<String, Object?>? map = await _printReceiptMsg(order, type);
    map?[PrintDataMapIF.START] = 'Receipt';
    return map;
  }

  Future<Map<String, Object?>?> _printReceiptMsg(
      bool order, PAYMENT_TYPE type) async {
    Map<String, Object?>? data = await _printMapData.getMap();
    if (data == null) {
      return null;
    }
    data[PrintDataMapIF.START] = 'Receipt';

    switch (type) {
      case PAYMENT_TYPE.CASH:
      case PAYMENT_TYPE.CASH_CANCEL:
        data[PrintDataMapIF.PAYMENT_TYPE] = PrintDataMapIF.PAYMENT_TYPE_CASH;
        break;
      case PAYMENT_TYPE.CARD:
        data[PrintDataMapIF.PAYMENT_TYPE] = PrintDataMapIF.PAYMENT_TYPE_CARD;
        break;
      case PAYMENT_TYPE.MYD:
        data[PrintDataMapIF.PAYMENT_TYPE] = PrintDataMapIF.PAYMENT_TYPE_MYD;
        break;
      case PAYMENT_TYPE.ONLINE:
        data[PrintDataMapIF.PAYMENT_TYPE] = PrintDataMapIF.PAYMENT_TYPE_ONLINE;
        break;
    }

    await _printItems(order, false, data, data);
    data[PrintDataMapIF.CUT] = '';
    data[PrintDataMapIF.END] = '';
    return data;
  }

  Future<Map<String, Object?>?> makeOrderSummary() async {
    return await _orderKitchen(true);
  }

  Future<Map<String, Object?>?> makeOnlineOrderSummary() async {
    return await _orderKitchen(false);
  }

  Future<Map<String, Object?>?> _orderKitchen(bool isOrder) async {
    Map<String, Object?>? data = await _printMapData.getMap();
    if (data == null) {
      return null;
    }
    data[PrintDataMapIF.START] = 'OrderKitchen';

    if (!(await _printKitchenItems(isOrder, true, data, data))) {
      Log.d(TAG, 'printKitchenItems is null');
      return null;
    }

    data[PrintDataMapIF.CUT] = '';
    data[PrintDataMapIF.END] = '';
    return data;
  }

  Future<Map<String, Object?>?> makeOrderBill() async {
    return await _orderBill(true);
  }

  Future<Map<String, Object?>?> makeOnlineOrderBill() async {
    return await _orderBill(false);
  }

  Future<Map<String, Object?>?> _orderBill(bool isOrder) async {
    Map<String, Object?>? data = await _printMapData.getMap();
    if (data == null) {
      return null;
    }
    data[PrintDataMapIF.START] = 'OrderBill';

    if (!(await _printItems(isOrder, false, data, data))) {
      Log.d(TAG, 'printItems is null');
      return null;
    }

    data[PrintDataMapIF.CUT] = '';
    data[PrintDataMapIF.END] = '';
    return data;
  }

  /* 영업 마감 전문 만들기*/
  Future<Map<String, Object?>?> makeFinishBusinessMsg(
      Map<String, Object?> data) async {
    Map<String, Object?>? data = await _printMapData.getMap();
    if (data == null) {
      return null;
    }
    data[PrintDataMapIF.START] = 'FinishBusinessMsg';
    data[PrintDataMapIF.END] = '';
    // data.clear();
    return data;
  }

  bool _printValue(
      List<HashMap<String, String>> list, Object? productName, Object qty,
      [Object? amount, Object? kitchenPrintYN]) {
    if (productName == null || CommonUtil.isNullEmpty(qty.toString())) {
      return false;
    }

    HashMap<String, String> map = HashMap<String, String>();
    map[PrintDataMapIF.ITEM_PRODUCT_NAME] = productName.toString();
    map[PrintDataMapIF.ITEM_QTY] = qty.toString();

    if (!CommonUtil.isNullEmpty(amount.toString())) {
      map[PrintDataMapIF.ITEM_AMOUNT] = amount.toString();
    }

    if (kitchenPrintYN != null) {
      map[PrintDataMapIF.ITEM_KITCHEN_PRINT_YN] = kitchenPrintYN.toString();
    } else {
      map[PrintDataMapIF.ITEM_KITCHEN_PRINT_YN] = (true).toString();
    }

    list.add(map);
    return true;
  }

  /// 주문/판매 상품 출력
  ///
  /// @param isOrder         true 이면 OrderHistoryItem, false 이면 SalesHistoryItem 사용
  /// @param isPrintSetItems 세트 메뉴 출력 여부 (주방 프린터 출력 시에만 해당하며 이 경우 가격을 출력하지 않음)
  /// @param out             출력 버퍼
  /// @param data            출력 데이터
  /// @return 성공여부
  Future<bool> _printItems(bool isOrder, bool isPrintSetItems,
      Map<String, Object?> out, Map<String, Object?> data) async {
    return isOrder
        ? await _printOrderItems(isPrintSetItems, out, data)
        : await _printSaleItems(isPrintSetItems, out, data);
  }

  Future<bool> _printOrderItems(bool isPrintSetItems, Map<String, Object?> out,
      Map<String, Object?> data) async {
    List<OrderHistoryItem>? items = [];
    if (data[PrintDataMapIF.ITEM_LIST] is List<OrderHistoryItem>?) {
      items = data[PrintDataMapIF.ITEM_LIST] as List<OrderHistoryItem>?;
    }

    if (items == null || items.isEmpty) {
      return false;
    }

    if (isPrintSetItems) {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
    } else {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
      out[PrintDataMapIF.ITEM_AMOUNT_SUBJECT] =
          BaseBL.receiptLang[LangCode.amount];
    }

    List<HashMap<String, String>> orderItemList = [];

    for (OrderHistoryItem item in items) {
      if (item.getOrderOptionCode() != null) {
        if (item.isCanceled()) {
          continue;
        }
      }

      Item? itm = await _itemBL.getItemById(item.getItemId());
      String? itemName = itm!.getItemName();

      if (item.getOrderHoldingTime() != null) {
        DateTime time =
            CommonUtil.convertStringToDate(item.getOrderHoldingTime());
        int min = (time.millisecondsSinceEpoch -
                DateTime.now().millisecondsSinceEpoch) ~/
            60000;

        if (min >= 1) {
          itemName = (itemName ?? "") +
              '($min${BaseBL.receiptLang[LangCode.minute]} ${BaseBL.receiptLang[LangCode.hold2]})';
        }
      }

      if (isPrintSetItems) {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              orderItemList,
              '- ' + itemName!,
              (item.getQuantity()!.toInt().toString()),
              null,
              itm.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              orderItemList,
              itemName,
              (item.getQuantity()!.toInt().toString()),
              null,
              itm.getKitchenPrinterOutputYn());
        }

        if (itm.isSetMenu()) {
          List<SetEntity> entities =
              await _itemBL.getSetEntity(item.getItemId());

          for (int i = 0; i < entities.length; i++) {
            String? name =
                (await _itemBL.getItemById(entities[i].getEntityItemId()))!
                    .getItemName();
            int qty = entities.elementAt(i).getQuantity()!.toInt();
            _printValue(orderItemList, '${i + 1}) $name($qty)', '', null,
                itm.getKitchenPrinterOutputYn());
          }
        }
      } else {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              orderItemList,
              '- $itemName',
              item.getQuantity()!.toInt().toString(),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              orderItemList,
              itemName,
              item.getQuantity()!.toInt().toString(),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm.getKitchenPrinterOutputYn());
        }

        bool isCancel = item.getSupplyAmount()! < 0;
        double discount = item.getMenuDiscountAmount()! * (-1);

        if (isCancel) {
          if (discount < 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.mark_up]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          } else if (discount > 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.discount]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          }
        } else {
          if (discount < 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.discount]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          } else if (discount > 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.mark_up]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          }
        }
      }

      String? lastOrderChangedKitchenMemo;

      for (OrderHistoryKitchenMemo memo
          in item.getOrderHistoryKitchenMemoList()!) {
        if (memo.getKitchenMemoId() == (ORDER_CHANGED_CONTENTS_ID)) {
          lastOrderChangedKitchenMemo = memo.getKitchenMemo();
        } else {
          _printValue(orderItemList, INDENT_2 + memo.getKitchenMemo()!, ' ',
              null, itm.getKitchenPrinterOutputYn());
        }
      }

      if (!CommonUtil.isNullEmpty(lastOrderChangedKitchenMemo)) {
        _printValue(orderItemList, INDENT_2 + lastOrderChangedKitchenMemo!, ' ',
            null, itm.getKitchenPrinterOutputYn());
      }
    }

    out[PrintDataMapIF.ORDER_ITEM_LIST] = orderItemList;
    return true;
  }

  Future<bool> _printSaleItems(bool isPrintSetItems, Map<String, Object?> out,
      Map<String, Object?> data) async {
    List<SalesHistoryItem>? saleItems = [];
    if (data[PrintDataMapIF.ITEM_LIST] is List<SalesHistoryItem>?) {
      saleItems = data[PrintDataMapIF.ITEM_LIST] as List<SalesHistoryItem>?;
    }

    if (saleItems == null || saleItems.isEmpty) {
      Log.d(TAG, 'ITEM_LIST is null');
      return false;
    }

    if (isPrintSetItems) {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
    } else {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
      out[PrintDataMapIF.ITEM_AMOUNT_SUBJECT] =
          BaseBL.receiptLang[LangCode.amount];
    }

    List<HashMap<String, String>> orderItemList = [];

    for (SalesHistoryItem item in saleItems) {
      if (item.getOrderOptionCode() == OrderCheck.ORDER_OPTION_STORNO_ORDER) {
        continue;
      }

      String? itemName = (await item.getItem())!.getItemName();
      Item? itm = await _itemBL.getItemById(item.getItemId());

      if (isPrintSetItems) {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              orderItemList,
              '- ' + itemName!,
              (item.getQuantity().toInt().toString()),
              null,
              itm!.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              orderItemList,
              itemName,
              (item.getQuantity().toInt().toString()),
              null,
              itm!.getKitchenPrinterOutputYn());
        }

        if (itm.isSetMenu()) {
          List<SetEntity> entities =
              await _itemBL.getSetEntity(item.getItemId());

          for (int i = 0; i < entities.length; i++) {
            String? name = (await _itemBL
                    .getItemById(entities.elementAt(i).getEntityItemId()))!
                .getItemName();
            int qty = entities.elementAt(i).getQuantity()!.toInt();
            _printValue(orderItemList, '${i + 1}) $name($qty)', '', null,
                itm.getKitchenPrinterOutputYn());
          }
        }
      } else {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              orderItemList,
              '- $itemName',
              (item.getQuantity().toInt().toString()),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm!.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              orderItemList,
              itemName,
              (item.getQuantity().toInt().toString()),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm!.getKitchenPrinterOutputYn());
        }

        bool isCancel = item.getSupplyAmount() < 0;
        double discount = item.getDiscountAmount() * (-1);

        if (isCancel) {
          if (discount < 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.mark_up]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          } else if (discount > 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.discount]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          }
        } else {
          if (discount < 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.discount]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          } else if (discount > 0) {
            _printValue(
                orderItemList,
                '- ' + BaseBL.receiptLang[LangCode.mark_up]!,
                ' ',
                _cultureMng.currencyFormat(discount),
                itm.getKitchenPrinterOutputYn());
          }
        }
      }

      if (ORDER_OPTION_PACKAGING_ORDER == (item.getOrderOptionCode())) {
        _printValue(
            orderItemList,
            INDENT_2 + BaseBL.receiptLang[LangCode.p_packaging]!,
            ' ',
            null,
            itm.getKitchenPrinterOutputYn());
      }
    }

    out[PrintDataMapIF.ORDER_ITEM_LIST] = orderItemList;
    return true;
  }

  /// 주문/판매 상품 출력
  ///
  /// @param isOrder         true 이면 OrderHistoryItem, false 이면 SalesHistoryItem 사용
  /// @param isPrintSetItems 세트 메뉴 출력 여부 (주방 프린터 출력 시에만 해당하며 이 경우 가격을 출력하지 않음)
  /// @param out             출력 버퍼
  /// @param data            출력 데이터
  /// @return 성공여부
  Future<bool> _printKitchenItems(bool isOrder, bool isPrintSetItems,
      Map<String, Object?> out, Map<String, Object?> data) async {
    return isOrder
        ? await _printKitchenOrderItems(isPrintSetItems, out, data)
        : await _printKitchenSaleItems(isPrintSetItems, out, data);
  }

  Future<bool> _printKitchenOrderItems(bool isPrintSetItems,
      Map<String, Object?> out, Map<String, Object?> data) async {
    List<OrderHistoryItem>? items = [];
    if (data[PrintDataMapIF.ITEM_LIST] is List<OrderHistoryItem>?) {
      items = data[PrintDataMapIF.ITEM_LIST] as List<OrderHistoryItem>?;
    }

    if (items == null || items.isEmpty) {
      Log.d(TAG, 'ITEM_LIST is null');
      return false;
    }

    if (isPrintSetItems) {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
    } else {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
      out[PrintDataMapIF.ITEM_AMOUNT_SUBJECT] =
          BaseBL.receiptLang[LangCode.amount];
    }

    List<HashMap<String, String>> kitchenOrderTable = [];

    for (OrderHistoryItem item in items) {
      if (item.isCanceled()) {
        continue;
      }

      Item? itm = await _itemBL.getItemById(item.getItemId());
      String? itemName = item.getItemName();

      if (item.getOrderHoldingTime() != null) {
        DateTime time =
            CommonUtil.convertStringToDate(item.getOrderHoldingTime());
        int min = (time.millisecondsSinceEpoch -
                DateTime.now().millisecondsSinceEpoch) ~/
            60000;

        if (min >= 1) {
          itemName = (itemName ?? "") +
              '($min${BaseBL.receiptLang[LangCode.minute]} ${BaseBL.receiptLang[LangCode.hold2]})';
        }
      }

      if (!(itm!.getKitchenPrinterOutputYn() ?? true)) {
        continue;
      }

      if (isPrintSetItems) {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              kitchenOrderTable,
              '- ' + itemName!,
              (item.getQuantity()!.toInt().toString()),
              null,
              itm.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              kitchenOrderTable,
              itemName,
              (item.getQuantity()!.toInt().toString()),
              null,
              itm.getKitchenPrinterOutputYn());
        }

        if (itm.isSetMenu()) {
          List<SetEntity> entities =
              await _itemBL.getSetEntity(item.getItemId());

          for (int i = 0; i < entities.length; i++) {
            String? name = (await _itemBL
                    .getItemById(entities.elementAt(i).getEntityItemId()))!
                .getItemName();
            int qty = entities.elementAt(i).getQuantity()!.toInt();

            _printValue(kitchenOrderTable, '${i + 1}) $name($qty)', ' ', null,
                itm.getKitchenPrinterOutputYn());
          }
        }
      } else {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              kitchenOrderTable,
              '- $itemName',
              (item.getQuantity()!.toInt().toString()),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              kitchenOrderTable,
              itemName,
              (item.getQuantity()!.toInt().toString()),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm.getKitchenPrinterOutputYn());
        }
      }

      String? lastOrderChangedKitchenMemo;

      for (OrderHistoryKitchenMemo memo
          in item.getOrderHistoryKitchenMemoList()!) {
        if (memo.getKitchenMemoId() == (ORDER_CHANGED_CONTENTS_ID)) {
          lastOrderChangedKitchenMemo = memo.getKitchenMemo();
        } else {
          _printValue(kitchenOrderTable, INDENT_2 + memo.getKitchenMemo()!, ' ',
              null, itm.getKitchenPrinterOutputYn());
        }
      }
      if (!CommonUtil.isNullEmpty(lastOrderChangedKitchenMemo)) {
        _printValue(kitchenOrderTable, INDENT_2 + lastOrderChangedKitchenMemo!,
            ' ', null, itm.getKitchenPrinterOutputYn());
      }
    }

    out[PrintDataMapIF.KITCHEN_ORDER_ITEM_LIST] = kitchenOrderTable;
    return kitchenOrderTable.isNotEmpty;
  }

  Future<bool> _printKitchenSaleItems(bool isPrintSetItems,
      Map<String, Object?> out, Map<String, Object?> data) async {
    List<SalesHistoryItem>? saleItems = [];
    if (data[PrintDataMapIF.ITEM_LIST] is List<SalesHistoryItem>?) {
      saleItems = data[PrintDataMapIF.ITEM_LIST] as List<SalesHistoryItem>?;
    }

    if (saleItems == null || saleItems.isEmpty) {
      return false;
    }

    if (isPrintSetItems) {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
    } else {
      out[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
          BaseBL.receiptLang[LangCode.product_name];
      out[PrintDataMapIF.ITEM_QTY_SUBJECT] = BaseBL.receiptLang[LangCode.qty];
      out[PrintDataMapIF.ITEM_AMOUNT_SUBJECT] =
          BaseBL.receiptLang[LangCode.amount];
    }

    List<HashMap<String, String>> kitchenOrderTable = [];
    for (SalesHistoryItem item in saleItems) {
      if (item.getOrderOptionCode() != null) {
        if (item.getOrderOptionCode() == OrderCheck.ORDER_OPTION_STORNO_ORDER) {
          continue;
        }
      }

      String? itemName = (await item.getItem())!.getItemName();
      Item? itm = await _itemBL.getItemById(item.getItemId());

      if (!(itm!.getKitchenPrinterOutputYn() ?? true)) {
        continue;
      }

      if (isPrintSetItems) {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              kitchenOrderTable,
              '- ' + itemName!,
              (item.getQuantity().toInt().toString()),
              null,
              itm.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              kitchenOrderTable,
              itemName,
              (item.getQuantity().toInt().toString()),
              null,
              itm.getKitchenPrinterOutputYn());
        }

        if (itm.isSetMenu()) {
          List<SetEntity> entities =
              await _itemBL.getSetEntity(item.getItemId());

          for (int i = 0; i < entities.length; i++) {
            String? name = (await _itemBL
                    .getItemById(entities.elementAt(i).getEntityItemId()))!
                .getItemName();
            int qty = entities.elementAt(i).getQuantity()!.toInt();

            _printValue(kitchenOrderTable, '${i + 1}) $name($qty)', ' ', null,
                itm.getKitchenPrinterOutputYn());
          }
        }
      } else {
        if (item.getUpperItemSerialNumber() != 0) {
          _printValue(
              kitchenOrderTable,
              '- $itemName',
              (item.getQuantity().toInt().toString()),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm.getKitchenPrinterOutputYn());
        } else {
          _printValue(
              kitchenOrderTable,
              itemName,
              (item.getQuantity().toInt().toString()),
              _cultureMng.currencyFormat(item.getOrderTotalAmount()),
              itm.getKitchenPrinterOutputYn());
        }
      }

      if (ORDER_OPTION_PACKAGING_ORDER == (item.getOrderOptionCode())) {
        _printValue(
            kitchenOrderTable,
            INDENT_2 + BaseBL.receiptLang[LangCode.p_packaging]!,
            ' ',
            null,
            itm.getKitchenPrinterOutputYn());
      }
    }

    out[PrintDataMapIF.KITCHEN_ORDER_ITEM_LIST] = kitchenOrderTable;
    return kitchenOrderTable.isNotEmpty;
  }

  /// 주문서 프린팅 시점
  ///
  /// @return false : 결제전, true : 결제후
  Future<bool> isOrderPrintingPoint() async {
    return await _operationBL.isOrderPrintingPoint();
  }

  Future<String?> _getPrinterType(String dst) async {
    switch (dst) {
      case PRINTER_RECEIPT:
        return await _operationBL.getReceiptPrinterType();
      case PRINTER_KITCHEN:
      default:
        return await _operationBL.getKitchenPrinterType();
    }
  }

  Future<int> _getPrinterPaperSize(String dst) async {
    try {
      switch (dst) {
        case PRINTER_RECEIPT:
          return int.parse(
              (await _operationBL.getReceiptPrinterPaperSize()) ?? "32");
        case PRINTER_KITCHEN:
          return int.parse(
              (await _operationBL.getKitchenPrinterPaperSize()) ?? "32");
      }
    } catch (ignored) {
      print('Exception: $ignored');
    }

    return int.parse(OperationBL.PAPER_SIZE_2);
  }

  Future<List<String>> _getTemplateContext(
      String templateName, String? paymentMethodCode) async {
    String? name;

    switch (templateName) {
      case 'OrderBill':
        name = OperationBL.TEMPLATE_ORDER_BILL;
        break;
      case 'OrderKitchen':
        name = OperationBL.TEMPLATE_ORDER_KITCHEN;
        break;
      case 'Receipt':
        return await _operationBL.getReceiptPrintTemplate(paymentMethodCode);
      case 'KazReceipt':
        name = OperationBL.TEMPLATE_KAZ_RECEIPT;
        break;
      case 'CashReceipt':
        name = OperationBL.TEMPLATE_CASH_RECEIPT;
        break;
      case 'NormalString':
        name = OperationBL.TEMPLATE_NORMAL_STRING;
        break;
      case 'FinishBusinessMsg':
        name = OperationBL.TEMPLATE_REPORT1;
        break;
      case 'TicketReceipt':
        name = OperationBL.TEMPLATE_REPORT2;
        break;
      case 'TEMPLATE_REPORT_XZ':
        name = OperationBL.TEMPLATE_REPORT_XZ;
        break;
      case 'TEMPLATE_REPORT_SECTION':
        name = OperationBL.TEMPLATE_REPORT_SECTION;
        break;
      case 'TEMPLATE_REPORT_CASHIER':
        name = OperationBL.TEMPLATE_REPORT_CASHIER;
        break;
      case 'TEMPLATE_KAZ_RECEIPT_CASH':
        name = OperationBL.TEMPLATE_KAZ_RECEIPT_CASH;
        break;
      case 'TEMPLATE_KAZ_RECEIPT_CARD':
        name = OperationBL.TEMPLATE_KAZ_RECEIPT_CARD;
        break;
      case 'TEMPLATE_PAY_IN_OUT':
        name = OperationBL.TEMPLATE_PAY_IN_OUT;
        break;
      case 'REWARD_QR':
        name = OperationBL.TEMPLATE_REPORT2;
        break;
    }

    return _operationBL.getPrintTemplate(name);
  }

  Future<void> kitchenPrint(Map<String, Object?>? map,
      {bool immediate = false}) async {
    if (immediate) {
      await printImmediately(PRINTER_KITCHEN, map);
    } else {
      await _addJob(PRINTER_KITCHEN, map);
    }
  }

  Future<void> receiptPrint(Map<String, Object?>? map,
      {bool immediate = false}) async {
    if (immediate) {
      await printImmediately(PRINTER_RECEIPT, map);
    } else {
      await _addJob(PRINTER_RECEIPT, map);
    }
  }

  Future<void> printImmediately(
      String printerName, Map<String, Object?>? map) async {
    Log.d(TAG, '[PRINT IMMEDIATELY][PrintService][receipt]start');

    if (map == null) {
      Log.w(TAG, 'print map null');
      return;
    }

    String? type = await _getPrinterType(printerName);
    GeneratePrintData generatePrintData = GeneratePrintData();
    generatePrintData.setPrinterType(type);
    generatePrintData.setPaperSize(await _getPrinterPaperSize(printerName));
    String? templateFile = map[PrintDataMapIF.START] as String?;

    if (templateFile == null) {
      Log.w(TAG, 'missing template filename');
      return;
    }

    String? paymentMethodCode = '';

    if (map.containsKey(PrintDataMapIF.PAY_METHOD_CD)) {
      paymentMethodCode = map[PrintDataMapIF.PAY_METHOD_CD] as String?;
    }

    List<String> templateList =
        await _getTemplateContext(templateFile, paymentMethodCode);

    if (templateList.isEmpty) {
      Log.w(TAG, 'no print template for: ' + templateFile);
      return;
    }

    for (String id in templateList) {
      TemplateItem? template = await _itemBL.getTemplateItem(id);
      Log.d(TAG,
          '[PRINT IMMEDIATELY][PrintService] template list id: $id name: ${template?.getName()}');
      String data = await generatePrintData.Parser(template?.getName(), map);

      if (data.isEmpty) {
        Log.w(TAG, 'html file empty');
        return;
      }

      int cutMode = 0;

      try {
        cutMode = int.parse(template?.getCut() ?? "");
      } catch (ignored) {}

      Simple.platformInvoke('device.print', {
        'printerName': printerName,
        'data': data,
        'cutMode': cutMode,
        'immediate': true,
      });
    }
  }

  Future<void> _addJob(String printName, Map<String, Object?>? map) async {
    Log.d(TAG, '[PRINT][PrintService][$printName] addJob');

    if (map == null) {
      Log.w(TAG, 'print map null');
      return;
    }

    String? type = await _getPrinterType(printName);
    GeneratePrintData generatePrintData = GeneratePrintData();
    generatePrintData.setPrinterType(type);
    generatePrintData.setPaperSize(await _getPrinterPaperSize(PRINTER_RECEIPT));
    String? templateFile = map[PrintDataMapIF.START] as String?;

    if (templateFile == null) {
      Log.w(TAG, 'missing template filename');
      return;
    }

    String? paymentMethodCode = '';

    if (map.containsKey(PrintDataMapIF.PAY_METHOD_CD)) {
      paymentMethodCode = map[PrintDataMapIF.PAY_METHOD_CD] as String?;
    }

    List<String> templateList =
        await _getTemplateContext(templateFile, paymentMethodCode);

    if (templateList.isEmpty) {
      Log.w(TAG, 'no print template for: ' + templateFile);
      return;
    }

    //템플릿 출력,작성은 모두 Name으로 진행해야 함..
    //ID는 사용자가 인지할 수 없는 정보이기 때문에 ID로 사용하면 템플릿 작성이 불가능함.
    for (String id in templateList) {
      TemplateItem? template = await _itemBL.getTemplateItem(id);

      if (template == null) {
        Log.w(TAG, 'template is null id is $id');
        continue;
      }

      Log.d(TAG,
          '[PRINT][PrintService] template list id: $id name: ${template.getName()}');
      String data = await generatePrintData.Parser(template.getName(), map);

      if (data.isEmpty) {
        Log.w(TAG, 'html file empty');
        continue;
      }

      //컷팅 정보 확인
      int cutMode = int.parse(template.getCut()!);
      Simple.platformInvoke('device.print', {
        'printerName': printName,
        'data': data,
        'cutMode': cutMode,
        'immediate': false,
      });
    }
  }

  // 실제로 프린터 동작. 가능하면 속도 개선을 위해 await 사용하여 기다리지 않도록 할 것
  Future<void> nextPrint({bool next = true, popup = false}) async {
    final printer = Printer();

    if (printer.isPrinting) {
      return;
    }

    if (popup) {
      var status = await getPrintJobStatus();

      if (status['remain'] > 0) {
        printer.showNextPrintPopup(
            status['total'], status['total'] - status['remain'] + 1);
      }
    } else {
      await Simple.platformInvoke('device.nextPrint', {
        'next': next,
      });
    }
  }

  Future<String?> getPrinterStatus() async {
    if (BuildConfig.SERVER_REGION != 'KZ') {
      return null;
    }

    Map r = await Simple.platformInvoke('device.printerStatus');
    int errCode = Common.resCode(r);

    switch (errCode) {
      case RSP_OK:
      case RSP_DEVICE_NULL:
        return null;
      case STATUS_PAPER_EMPTY:
        return 'empty_paper_in_printer';
      case STATUS_COVER_OPEN:
        return 'printer_cover_open';
      default:
        return 'printer_not_respond';
    }
  }

  Future<dynamic> getPrintJobStatus([String? key]) async {
    var r = await Simple.platformInvoke('device.printerJobStatus');
    return key != null ? Common.result(r, key) : Common.resultMap(r);
  }

  Future<void> clearPrintJobs() async {
    await Simple.platformInvoke('device.nextPrint', {
      'next': false,
    });
  }

  Future<void> openDrawer() async {
    await Simple.platformInvoke('device.openDrawer');
  }
}

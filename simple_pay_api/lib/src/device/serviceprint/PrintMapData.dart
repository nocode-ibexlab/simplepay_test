import 'dart:collection';
import 'dart:convert';
import 'dart:core';

import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/WebKassaCommon.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/CheckOperationRequest.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/CheckOperationResponse.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/CheckOperationResponseData.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/ZXReportResponse.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/ZXReportResponseData.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/CashboxParameters.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/NonNullableType.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/OfdInformation.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/OperationTypeSummaryApiModel.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/PaymentsByTypesApiModel.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/PaymentsType.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/PositionsType.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/model/type/TicketModifiersType.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/CultureManager.dart';
import 'package:simple_pay_api/src/Database/Util/LangCode.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:sprintf/sprintf.dart';

import 'PrintDataMapIF.dart';

class PrintMapData {
  static final String TAG = "PrintMapData";

  late OperationBL _operationBL;

//    private ItemBL itemBL;

  SalesAccountHistory? _saleAccountHistory;
  OrderCheck? _orderCheck;
  OrderHistory? _order;
  SalesHistory? _tookOrder; //took
  List? items;

//    private List<OrderHistoryItem> orderItems;

  late Map<String, Object?> _bindData;
  String? _subTitle;
  double? _change;
  double? _receive;
  bool _isCancel = false;
  bool _isCopy = false;
  Map<String, dynamic>? _cashierOut;

  int? _selfOrderNumber;

  static const int IC_APPROVE = 1;
  static const int IC_CANCEL = 2;
  static const int FAILBACK_APPROVE = 3;
  static const int FAILBACK_CANCEL = 4;

//    void setContext(Context context) {
//        _context = context;
//    }

  Future<void> _intiCommonData() async {
    _bindData.clear();
    await _printStore();
    await _printMessage();
    _printString();
    setChange(0);
    setReceive(0);
    setSubTitle(null);
    _isCancel = false;
    _isCopy = false;
  }

  Future<void> createConflictData(OrderHistory order, List orderItems) async {
    Log.d(TAG, "createConflictData");

    await _intiCommonData();
    this._order = order;
    this.items = orderItems;
    // 타이틀
//        bindData[PrintDataMapIF.RECEIPT_TITLE]= defaultApp.lang[order.isFromDss() ? LangCode.server_order : LangCode.device_order]);
//        bindData[PrintDataMapIF.RECEIPT_SUB_TITLE]= String.format("(%s)", defaultApp.lang[LangCode.order_conflict]));
  }

  // void createBindOrderDataTook(SalesHistory tookOrder, List orderItems,bool isCancel) {
  //     createBindOrderData(null,orderItems,false);
  //     this._tookOrder = tookOrder;
  // }

  Future<void> createBindOrderData(
      OrderCheck? orderCheck, List? orderItems, bool isCancel) async {
    Log.d(TAG, "createBindOrderData");

    await _intiCommonData();
    this._isCancel = isCancel;
    this._orderCheck = orderCheck;
    if (orderCheck == null) {
      this._order = null;
    } else {
      this._order = orderCheck.getOrderHistory();
    }
    this._saleAccountHistory = null;
    this.items = orderItems;
    this._tookOrder = null;
  }

  // void createReceiptDataTook(SalesHistory tookOrder) {
  //     SalesAccountHistory ac = tookOrder.getSaleACs().first;
  //
  //     createReceiptData(ac,tookOrder.getSaleItems());
  //     this._tookOrder = tookOrder;
  // }
  Future<void> createReceiptData(
      [SalesAccountHistory? saleAccountHistory, List? items]) async {
    Log.d(TAG, "createReceiptData");

    this._saleAccountHistory = saleAccountHistory;
    this._orderCheck = null;
    this._order = null;
    this._tookOrder = null;
    this.items = items;
    await _intiCommonData();
  }

  Future<void> createFinishBusinessData(Map<String, Object?> map) async {
    Log.d(TAG, "createMap");

    this._cashierOut = map;
    this._saleAccountHistory = null;
    this._orderCheck = null;
    this._order = null;
    this._tookOrder = null;
    this.items = null;
    await _intiCommonData();
    _makeFinishBusinessData(map);
  }

  void _makeFinishBusinessData(Map<String, Object?> map) {
//<@@OWNER_NAME@@>
//<@@BRN_NUMBER@@>
//<@@STORE_NAME@@>
//<@@ADDRESS@@>
//<@@TEL_NO@@>
//<@@FOOTER@@>
//<@@TID_NUMBER@@>
//<@@BATCH_ID@@>
//<@@OPEN_DATE_TIME@@>
//<@@CLOSE_DATE_TIME@@>
//<@@EMPLOYEE_NAME@@>
//<@@CURRENCY@@>
//
//            <@@CMD_LIST
//            TEMPLATE="3_ORDER_ITEM_LIST"
//        DATA_KEY="SALES_TOTAL_ITEM_LIST"@@>
//
//            <@@CMD_LIST
//            TEMPLATE="3_ORDER_ITEM_LIST"
//        DATA_KEY="PAYMENT_TOTAL_ITEM_LIST"@@>
//		<@@RECONCILIATION@@>
//
//
////            "ITEM_AMOUNT":"12,800"
////                ,"ITEM_PRODUCT_NAME":"까페 아메리카노"
////                ,"ITEM_QTY":"4"}
    _bindData[PrintDataMapIF.OPEN_DATE_TIME] =
        map[PrintDataMapIF.OPEN_DATE_TIME];
    _bindData[PrintDataMapIF.CLOSE_DATE_TIME] =
        map[PrintDataMapIF.CLOSE_DATE_TIME];
    _bindData[PrintDataMapIF.EMPLOYEE_NAME] = map[PrintDataMapIF.EMPLOYEE_NAME];

    int? batchId = map["batchId"] as int?;
    bool? reconciled = map["reconciled"] as bool?;
    String? tid = map["tid"] as String?;

    if (batchId != null) {
      _bindData[PrintDataMapIF.BATCH_ID] = sprintf("%06d", [batchId]);
    }

    if (reconciled != null && reconciled) {
      _bindData[PrintDataMapIF.RECONCILIATION] =
          BaseBL.receiptLang[LangCode.reconciliation_success];
    }
    if (tid != null) {
      _bindData[PrintDataMapIF.TID_NUMBER] = tid;
    }

    _getCashierOutSalesMethodTotal(_bindData, map);
    _getCashierOutPaymentMethodTotal(_bindData, map);

    _bindData[PrintDataMapIF.CASH_OUT_COUNT] =
        _convertMapIntegerToString(map["cashOutCountSum"]);
    _bindData[PrintDataMapIF.CASH_OUT_AMOUNT] =
        MonetaryCalculator(map["cashOutSum"]).format();
    _bindData[PrintDataMapIF.CASH_IN_COUNT] =
        _convertMapIntegerToString(map["cashInCountSum"]);
    _bindData[PrintDataMapIF.CASH_IN_AMOUNT] =
        MonetaryCalculator(map["cashInSum"]).format();
    _bindData[PrintDataMapIF.BEGINNING_BALANCE] =
        MonetaryCalculator(map['beginningBalance']).format();
    _bindData[PrintDataMapIF.SETTLEMENT_AMOUNT] =
        MonetaryCalculator(map["settlement_amount"]).format();
  }

  String _convertMapIntegerToString(Object? o) {
    int number;
    if (o is int) {
      number = o;
    } else {
      number = 0;
    }
    return number.toString();
  }

  void _getCashierOutPaymentMethodTotal(
      Map<String, Object?>? out, Map<String, Object?>? data) {
    if (data == null || data.length == 0) {
      Log.d(TAG, "ITEM_LIST is null");
      return;
    }

    List<HashMap<String, String>> paymentItemListTotal = [];

    List<Map<String, Object?>> saleItems1 =
        data["getCashierOutPaymentMethodTotal1"] as List<Map<String, Object?>>;
    for (Map<String, Object?> item in saleItems1) {
      _makeCashierOutItem(
          item["paymentMethodName"], paymentItemListTotal, item);
    }
    if (paymentItemListTotal.isNotEmpty) {
      out![PrintDataMapIF.PAYMENT_TOTAL_ITEM_LIST_TOTAL] = paymentItemListTotal;
    }
    List<HashMap<String, String>> paymentItemListByPayment = [];

    List<Map<String, Object?>> saleItems2 =
        data["getCashierOutPaymentMethodTotal2"] as List<Map<String, Object?>>;
    for (Map<String, Object?> item in saleItems2) {
      _makeCashierOutItem(
          item["paymentMethodName"], paymentItemListByPayment, item);
    }
    if (paymentItemListByPayment.isNotEmpty) {
      out![PrintDataMapIF.PAYMENT_TOTAL_ITEM_LIST_BY_PAYMENT] =
          paymentItemListByPayment;
    }
    List<HashMap<String, String>> paymentItemListByCardCompany = [];

    List<Map<String, Object?>> saleItems3 =
        data["getCashierOutPaymentMethodTotal3"] as List<Map<String, Object?>>;
    for (Map<String, Object?> item in saleItems3) {
      _makeCashierOutItem(
          item["paymentMethodName"], paymentItemListByCardCompany, item);
    }
    if (paymentItemListByCardCompany.isNotEmpty) {
      out![PrintDataMapIF.PAYMENT_TOTAL_ITEM_LIST_BY_CARD_COMPANY] =
          paymentItemListByCardCompany;
    }
    return;
  }

  void _getCashierOutSalesMethodTotal(
      Map<String, Object?> out, Map<String, Object?> data) {
    List<HashMap<String, String>> paymentItemList = [];
    Map total = data["getCashierOutSalesMethodTotal"] as Map;

    _makeCashierOutItem(
        BaseBL.receiptLang[LangCode.total], paymentItemList, total);
    out[PrintDataMapIF.SALES_TOTAL_ITEM_LIST] = paymentItemList;
    return;
  }

  void _makeCashierOutItem(Object? totalString,
      List<HashMap<String, String>> paymentItemList, Map item) {
    _printValue(paymentItemList, totalString, item["sumCount"] ?? 0,
        MonetaryCalculator(item['sumAmount']).format());
    _printValue(
        paymentItemList,
        " -" + BaseBL.receiptLang[LangCode.operation_sell]!,
        item["approvalCount"] ?? 0,
        MonetaryCalculator(item['approvalAmount']).format());
    _printValue(
        paymentItemList,
        " -" + BaseBL.receiptLang[LangCode.operation_sell_return]!,
        item["cancelCount"] ?? 0,
        MonetaryCalculator(item['cancelPayment']).format());
  }

  bool _printValue(List<HashMap<String, String>> list, dynamic productName,
      dynamic qty, Object amount) {
    if (productName == null || CommonUtil.isNullEmpty(qty?.toString())) {
      return false;
    }
    HashMap<String, String> map = HashMap<String, String>();
    map[PrintDataMapIF.ITEM_PRODUCT_NAME] = productName.toString();
    map[PrintDataMapIF.ITEM_QTY] = qty.toString();
    if (!CommonUtil.isNullEmpty(amount.toString())) {
      map[PrintDataMapIF.ITEM_AMOUNT] = amount.toString();
    }
    list.add(map);
    return true;
  }

  Future<Map<String, Object?>?> getMap() async {
    Log.d(TAG, "getMap");

    CultureManager cultureMng = CultureManager();
    // 주문시간
    String orderTime =
        cultureMng.datetimeToLocaleFormatString(DateTime.now(), 1, 2);
    _bindData[PrintDataMapIF.ORDER_TIME] = orderTime;

    // payment time
    _bindData[PrintDataMapIF.PAYMENT_TIME] =
        cultureMng.datetimeToLocaleFormatString(DateTime.now(), 2, 2);

    if (_saleAccountHistory != null) {
      await _getReceiptMap();
    } else {
      await _getOrderMap();
    }

    // if(getSelfOrderNumber()!=null) {
    //     _bindData[PrintDataMapIF.SELF_ORDER_NUMBER]= (await _operationBL.getSelfOrderNumberPrefix())!+ sprintf("%03d", [getSelfOrderNumber()]);
    // }else{
    //     _bindData[PrintDataMapIF.SELF_ORDER_NUMBER]= null;
    // }
    _bindData[PrintDataMapIF.IS_COPY] = _isCopy;

    return _bindData;
  }

  Future<Map<String, Object?>?> getCommonMap() async {
    Log.d(TAG, "getMap");
    await _intiCommonData();

    return _bindData;
  }

  Future<Map<String, Object?>?> getWebKassaReceiptMap(
      CheckOperationRequest request,
      CheckOperationResponse response,
      bool isCopy) async {
    Log.d(TAG, "getWebKassaReceiptMap");
    await _intiCommonData();

    int? operationType = request.getOperationType();
    if (operationType == OPERATION_TYPE.SALE.getCode()) {
      _bindData[PrintDataMapIF.TRANSACTION_TYPE] =
          BaseBL.receiptLang[LangCode.operation_sell];
    } else if (operationType == OPERATION_TYPE.PURCHASE.getCode()) {
      _bindData[PrintDataMapIF.TRANSACTION_TYPE] =
          BaseBL.receiptLang[LangCode.operation_buy];
    } else if (operationType == OPERATION_TYPE.RETURN_OF_SALE.getCode()) {
      _bindData[PrintDataMapIF.TRANSACTION_TYPE] =
          BaseBL.receiptLang[LangCode.operation_sell_return];
    } else if (operationType == OPERATION_TYPE.RETURN_OF_PURCHASE.getCode()) {
      _bindData[PrintDataMapIF.TRANSACTION_TYPE] =
          BaseBL.receiptLang[LangCode.operation_buy_return];
    }
    List<PositionsType> positionsTypes = request.getPositions()!;
    List<HashMap<String, String?>> orderItemList = [];
    MonetaryCalculator tax = MonetaryCalculator();
    MonetaryCalculator totalDiscount = MonetaryCalculator();
    MonetaryCalculator totalMarkup = MonetaryCalculator();

    for (PositionsType item in positionsTypes) {
      HashMap<String, String?> map = HashMap<String, String?>();

      map[PrintDataMapIF.ITEM_PRODUCT_NAME] = item.getPositionName();
      map[PrintDataMapIF.ITEM_QTY] = item.getCount().toString();
      map[PrintDataMapIF.ITEM_PRICE] =
          MonetaryCalculator(item.getPrice()).format();
      MonetaryCalculator amount =
          MonetaryCalculator(item.getPrice()).multiply(item.getCount());
      map[PrintDataMapIF.ITEM_AMOUNT] = amount.format();
      if (item.getDiscount() != 0) {
        map[PrintDataMapIF.ITEM_DISCOUNT] =
            MonetaryCalculator(item.getDiscount()! * -1).format();
      }
      if (item.getMarkup() != 0) {
        map[PrintDataMapIF.ITEM_MARKUP] =
            MonetaryCalculator(item.getMarkup()).format();
      }

      MonetaryCalculator totalAmount =
          amount.subtract(item.getDiscount()).add(item.getMarkup());
      map[PrintDataMapIF.ITEM_TOTAL_AMOUNT] = totalAmount.format();

      tax.add(item.getTax());
      totalDiscount.add(item.getDiscount());
      totalMarkup.add(item.getMarkup());

      orderItemList.add(map);
    }
    _bindData[PrintDataMapIF.ITEM_LIST] = orderItemList;

    List<PaymentsType> paymentsTypes = request.getPayments()!;
    MonetaryCalculator totalAmount = MonetaryCalculator();
    for (PaymentsType item in paymentsTypes) {
      totalAmount.add(item.getSum());
      switch (WebKassaCommon_PAYMENT_TYPE.getType(item.getPaymentType())) {
        case WebKassaCommon_PAYMENT_TYPE.CASH:
          _bindData[PrintDataMapIF.PAYMENT_CASH_AMOUNT] =
              MonetaryCalculator(item.getSum()).format();
          break;
        case WebKassaCommon_PAYMENT_TYPE.PAYMENT_CARD:
          _bindData[PrintDataMapIF.PAYMENT_CARD_AMOUNT] =
              MonetaryCalculator(item.getSum()).format();
          break;
        case WebKassaCommon_PAYMENT_TYPE.CREDIT_PAYMENT:
          _bindData[PrintDataMapIF.PAYMENT_CREDIT_AMOUNT] =
              MonetaryCalculator(item.getSum()).format();
          break;
        case WebKassaCommon_PAYMENT_TYPE.PAYMENT_BY_PACKAGING:
          _bindData[PrintDataMapIF.PAYMENT_TARE_AMOUNT] =
              MonetaryCalculator(item.getSum()).format();
          break;
      }
    }

    List<TicketModifiersType>? ticketModifiersTypes =
        request.getTicketModifiers();
    if (ticketModifiersTypes != null) {
      for (TicketModifiersType item in ticketModifiersTypes) {
        if (item.getType() == (TICKET_MODIFIERS_TYPE.DISCOUNT.getCode())) {
          _bindData[PrintDataMapIF.ORDER_DISCOUNT_SUBJECT] = item.getText();
          _bindData[PrintDataMapIF.ORDER_DISCOUNT] =
              MonetaryCalculator(item.getSum()! * -1).format();
          totalDiscount.add(item.getSum());
          tax.subtract(item.getTax());
        } else if (item.getType() == TICKET_MODIFIERS_TYPE.MARKUP.getCode()) {
          _bindData[PrintDataMapIF.ORDER_MARKUP_SUBJECT] = item.getText();
          _bindData[PrintDataMapIF.ORDER_MARKUP] =
              MonetaryCalculator(item.getSum()).format();
          totalMarkup.add(item.getSum());
          tax.add(item.getTax());
        }
      }
    }

    if (totalDiscount.isNotZero()) {
      _bindData[PrintDataMapIF.TOTAL_DISCOUNT] = totalDiscount.format();
    }
    if (totalMarkup.isNotZero()) {
      _bindData[PrintDataMapIF.TOTAL_MARKUP] = totalMarkup.format();
    }

    totalAmount.subtract(request.getChange());
    if (request.getChange() != 0) {
      _bindData[PrintDataMapIF.CHANGED_AMOUNT] =
          MonetaryCalculator(request.getChange()).format();
    }
    _bindData[PrintDataMapIF.TOTAL_AMOUNT] = totalAmount.format();

    _bindData[PrintDataMapIF.TAX] = tax.format();

    CheckOperationResponseData? data = response.getData();
    if (data != null) {
      _bindData[PrintDataMapIF.CHECK_NUMBER] = data.getCheckNumber();
      _bindData[PrintDataMapIF.PAYMENT_TIME] = data.getDateTime();
      _bindData[PrintDataMapIF.OFFLINE_MODE] = data.getOfflineMode().toString();
      _bindData[PrintDataMapIF.CASHBOX_OFFLINE_MODE] =
          data.getCashboxOfflineMode().toString();
      _bindData[PrintDataMapIF.CHECK_ORDER_NUMBER] =
          data.getCheckOrderNumber().toString();
      _bindData[PrintDataMapIF.SHIFT_NO] = data.getShiftNumber().toString();
      _bindData[PrintDataMapIF.EMPLOYEE_NAME] = data.getEmployeeName();
      _bindData[PrintDataMapIF.TICKET_URL] = data.getTicketUrl();

      CashboxParameters? cashbox = data.getCashbox();
      if (cashbox != null) {
        _bindData[PrintDataMapIF.CASHBOX_UNIQUE_NUMBER] =
            cashbox.getUniqueNumber();
        _bindData[PrintDataMapIF.CASHBOX_REGISTRATION_NUMBER] =
            cashbox.getRegistrationNumber();
        _bindData[PrintDataMapIF.CASHBOX_IDENTITY_NUMBER] =
            cashbox.getIdentityNumber();
        String? address = cashbox.getAddress();
        if (address == null || address.isEmpty) {
          address = _bindData[PrintDataMapIF.ADDRESS] as String?;
        }
        _bindData[PrintDataMapIF.CASHBOX_ADDRESS] = address;

        OfdInformation? ofd = cashbox.getOfd();
        if (ofd != null) {
          _bindData[PrintDataMapIF.OFD_NAME] = ofd.getName();
          _bindData[PrintDataMapIF.OFD_HOST] = ofd.getHost();
          _bindData[PrintDataMapIF.OFD_CODE] = ofd.getCode();
        }
      }
    }
    _bindData[PrintDataMapIF.IS_COPY] = isCopy.toString();
    _bindData[PrintDataMapIF.START] = "Receipt";

    return _bindData;
  }

  Future<Map<String, Object?>?> getXZReportMap(
      /*ZreportRequest request,*/
      ZXReportResponse response,
      bool isZReport) async {
    Log.d(TAG, "getXZReportMap");
    await _intiCommonData();

    ZXReportResponseData? responseData = response.getData();
    if (responseData == null) {
      return _bindData;
    }
//        bindData[PrintDataMapIF.CASHBOX_UNIQUE_NUMBER]= request.getCashboxUniqueNumber();
    _bindData[PrintDataMapIF.REPORT_NUMBER] =
        responseData.getReportNumber().toString();
    _bindData[PrintDataMapIF.TAX_PAYER_NAME] = responseData.getTaxPayerName();
    _bindData[PrintDataMapIF.TAX_PAYER_IN] = responseData.getTaxPayerIN();
    _bindData[PrintDataMapIF.TAX_PAYER_VAT] = responseData.getTaxPayerVAT();
    _bindData[PrintDataMapIF.TAX_PAYER_VAT_SERIA] =
        responseData.getTaxPayerVATSeria();
    _bindData[PrintDataMapIF.TAX_PAYER_VAT_NUMBER] =
        responseData.getTaxPayerVATNumber();
    _bindData[PrintDataMapIF.CASHBOX_SN] = responseData.getCashboxSN();
    _bindData[PrintDataMapIF.CASHBOX_IN] = responseData.getCashboxIN();
    _bindData[PrintDataMapIF.CASHBOX_RN] = responseData.getCashboxRN();
    _bindData[PrintDataMapIF.START_ON] = responseData.getStartOn();
    _bindData[PrintDataMapIF.REPORT_ON] = responseData.getReportOn();
    _bindData[PrintDataMapIF.CLOSE_ON] = responseData.getCloseOn();
    _bindData[PrintDataMapIF.CASHIER_CODE] = responseData.getCashierCode();
    _bindData[PrintDataMapIF.SHIFT_NO] = responseData.getShiftNumber();
    _bindData[PrintDataMapIF.DOCUMENT_COUNT] = responseData.getDocumentCount();
    _bindData[PrintDataMapIF.PUT_MONEY_SUM] =
        MonetaryCalculator(responseData.getPutMoneySum()).format();
    _bindData[PrintDataMapIF.TAKE_MONEY_SUM] =
        MonetaryCalculator(responseData.getTakeMoneySum()).format();
    _bindData[PrintDataMapIF.CONTROL_SUM] = responseData.getControlSum();
    _bindData[PrintDataMapIF.OFFLINE_MODE] = responseData.getOfflineMode();
    _bindData[PrintDataMapIF.CASHBOX_OFFLINE_MODE] =
        responseData.getCashboxOfflineMode();
    _bindData[PrintDataMapIF.SUM_IN_CASHBOX] =
        MonetaryCalculator(responseData.getSumInCashbox()).format();

    OperationTypeSummaryApiModel? sell = responseData.getSell();
    OperationTypeSummaryApiModel? buy = responseData.getBuy();
    OperationTypeSummaryApiModel? returnSell = responseData.getReturnSell();
    OperationTypeSummaryApiModel? returnBuy = responseData.getReturnBuy();
    if (sell != null) {
      List<HashMap<String, String>> list = [];
      List<PaymentsByTypesApiModel> paymentsByTypesApiModelList =
          sell.getPaymentsByTypesApiModel()!;
      for (PaymentsByTypesApiModel item in paymentsByTypesApiModelList) {
        HashMap<String, String> itemMap = HashMap<String, String>();
        itemMap[PrintDataMapIF.PAYMENT_SUM] =
            MonetaryCalculator(item.getSum()).format();
        itemMap[PrintDataMapIF.PAYMENT_TYPE] = (item.getType().toString());
        list.add(itemMap);
      }
      HashMap<String, Object?> map = HashMap<String, Object?>();
      map[PrintDataMapIF.OPERATION_DISCOUNT] =
          MonetaryCalculator(sell.getDiscount()).format();
      map[PrintDataMapIF.OPERATION_MARKUP] =
          MonetaryCalculator(sell.getMarkup()).format();
      map[PrintDataMapIF.OPERATION_TAKEN] =
          MonetaryCalculator(sell.getTaken()).format();
      map[PrintDataMapIF.OPERATION_CHANGE] =
          MonetaryCalculator(sell.getChange()).format();
      map[PrintDataMapIF.OPERATION_COUNT] = (sell.getCount());
      map[PrintDataMapIF.OPERATION_VAT] =
          MonetaryCalculator(sell.getVAT()).format();
      map[PrintDataMapIF.PAYMENT_LIST] = list;
      _bindData[PrintDataMapIF.OPERATION_TYPE_SELL] = map;
    }
    if (buy != null) {
      List<HashMap<String, String>> list = [];
      List<PaymentsByTypesApiModel> paymentsByTypesApiModelList =
          buy.getPaymentsByTypesApiModel()!;
      for (PaymentsByTypesApiModel item in paymentsByTypesApiModelList) {
        HashMap<String, String> itemMap = HashMap<String, String>();
        itemMap[PrintDataMapIF.PAYMENT_SUM] =
            MonetaryCalculator(item.getSum()).format();
        itemMap[PrintDataMapIF.PAYMENT_TYPE] = (item.getType().toString());
        list.add(itemMap);
      }
      HashMap<String, Object> map = HashMap<String, Object>();
      map[PrintDataMapIF.OPERATION_DISCOUNT] =
          MonetaryCalculator(buy.getDiscount()).format();
      map[PrintDataMapIF.OPERATION_MARKUP] =
          MonetaryCalculator(buy.getMarkup()).format();
      map[PrintDataMapIF.OPERATION_TAKEN] =
          MonetaryCalculator(buy.getTaken()).format();
      map[PrintDataMapIF.OPERATION_CHANGE] =
          MonetaryCalculator(buy.getChange()).format();
      map[PrintDataMapIF.OPERATION_COUNT] = (buy.getCount().toString());
      map[PrintDataMapIF.OPERATION_VAT] =
          MonetaryCalculator(buy.getVAT()).format();
      map[PrintDataMapIF.PAYMENT_LIST] = list;
      _bindData[PrintDataMapIF.OPERATION_TYPE_BUY] = map;
    }
    if (returnSell != null) {
      List<HashMap<String, String>> list = [];
      List<PaymentsByTypesApiModel> paymentsByTypesApiModelList =
          returnSell.getPaymentsByTypesApiModel()!;
      for (PaymentsByTypesApiModel item in paymentsByTypesApiModelList) {
        HashMap<String, String> itemMap = HashMap<String, String>();
        itemMap[PrintDataMapIF.PAYMENT_SUM] =
            MonetaryCalculator(item.getSum()).format();
        itemMap[PrintDataMapIF.PAYMENT_TYPE] = (item.getType().toString());
        list.add(itemMap);
      }
      HashMap<String, Object> map = HashMap<String, Object>();
      map[PrintDataMapIF.OPERATION_DISCOUNT] =
          MonetaryCalculator(returnSell.getDiscount()).format();
      map[PrintDataMapIF.OPERATION_MARKUP] =
          MonetaryCalculator(returnSell.getMarkup()).format();
      map[PrintDataMapIF.OPERATION_TAKEN] =
          MonetaryCalculator(returnSell.getTaken()).format();
      map[PrintDataMapIF.OPERATION_CHANGE] =
          MonetaryCalculator(returnSell.getChange()).format();
      map[PrintDataMapIF.OPERATION_COUNT] = (returnSell.getCount().toString());
      map[PrintDataMapIF.OPERATION_VAT] =
          MonetaryCalculator(returnSell.getVAT()).format();
      map[PrintDataMapIF.PAYMENT_LIST] = list;
      _bindData[PrintDataMapIF.OPERATION_TYPE_RETURN_SELL] = map;
    }
    if (returnBuy != null) {
      List<HashMap<String, String>> list = [];
      List<PaymentsByTypesApiModel> paymentsByTypesApiModelList =
          returnBuy.getPaymentsByTypesApiModel()!;
      for (PaymentsByTypesApiModel item in paymentsByTypesApiModelList) {
        HashMap<String, String> itemMap = HashMap<String, String>();
        itemMap[PrintDataMapIF.PAYMENT_SUM] =
            MonetaryCalculator(item.getSum()).format();
        itemMap[PrintDataMapIF.PAYMENT_TYPE] = (item.getType().toString());
        list.add(itemMap);
      }
      HashMap<String, Object> map = HashMap<String, Object>();
      map[PrintDataMapIF.OPERATION_DISCOUNT] =
          MonetaryCalculator(returnBuy.getDiscount()).format();
      map[PrintDataMapIF.OPERATION_MARKUP] =
          MonetaryCalculator(returnBuy.getMarkup()).format();
      map[PrintDataMapIF.OPERATION_TAKEN] =
          MonetaryCalculator(returnBuy.getTaken()).format();
      map[PrintDataMapIF.OPERATION_CHANGE] =
          MonetaryCalculator(returnBuy.getChange()).format();
      map[PrintDataMapIF.OPERATION_COUNT] = (returnBuy.getCount().toString());
      map[PrintDataMapIF.OPERATION_VAT] =
          MonetaryCalculator(returnBuy.getVAT()).format();
      map[PrintDataMapIF.PAYMENT_LIST] = list;
      _bindData[PrintDataMapIF.OPERATION_TYPE_RETURN_BUY] = map;
    }

    NonNullableType? start = responseData.getStartNonNullable();
    if (start != null) {
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_START_SELL] = start.getSell();
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_START_BUY] = start.getBuy();
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_START_RETURN_SELL] =
          start.getReturnSell();
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_START_RETURN_BUY] =
          start.getReturnBuy();
    }
    NonNullableType? end = responseData.getEndNonNullable();
    if (end != null) {
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_END_SELL] = end.getSell();
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_END_BUY] = end.getBuy();
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_END_RETURN_SELL] =
          end.getReturnSell();
      _bindData[PrintDataMapIF.NON_NULLABLE_TYPE_END_RETURN_BUY] =
          end.getReturnBuy();
    }
    OfdInformation? ofd = responseData.getOfd();
    if (ofd != null) {
      _bindData[PrintDataMapIF.OFD_NAME] = ofd.getName();
      _bindData[PrintDataMapIF.OFD_HOST] = ofd.getHost();
      _bindData[PrintDataMapIF.OFD_CODE] = ofd.getCode();
    }

//        bindData[PrintDataMapIF.IS_COPY]= isCopy.toString());
    _bindData[PrintDataMapIF.START] = "Receipt";

    return _bindData;
  }

  Future<Map<String, Object?>?> getReceiptMap(
      String receiptNo, ResVan resVan) async {
    BasBL basBL = BasBL();
    OperationBL operationBL = OperationBL();
    BasicDataItem? footerInfo = await basBL.getBasicDataItemById("CF121");
    String? footer = footerInfo != null ? footerInfo.getData20() : "";
    String? vanMessage;

    if ("00" == resVan.resCode) {
      // 오픈웨이 응답이 성공(00)이면 2nd generation 에서 거부하거나 에러가 생긴 경우
      vanMessage = await basBL.getUserInputString("failure", "Failure");
    } else if (resVan.resCode != null) {
      vanMessage = await basBL.getUserInputString(
          "iso_res_code_" + resVan.resCode!, resVan.vanPrintMsg);
    } else {
      vanMessage = resVan.vanPrintMsg;
    }

    String? currency;

    if (resVan.currencyCode != null) {
      try {
        int code = int.parse(resVan.currencyCode!);

        switch (code) {
          case 840:
            currency = "USD";
            break;
          case 410:
            currency = "KRW";
            break;
          case 398:
            currency = "KZT";
            break;
          case 643:
            currency = "RUB";
            break;
        }
      } catch (e) {
        print('Exception: $e');
      }
    }

    if (currency == null) {
      currency = await operationBL.getCurrency();
    }

    MonetaryCalculator totalAmount = MonetaryCalculator(resVan.amount)
        .add(resVan.tax)
        .add(resVan.gratuity)
        .add(resVan.gratuityTax);
    MonetaryCalculator transactionFee =
        MonetaryCalculator(resVan.transactionFee);
    MonetaryCalculator authorizedAmount =
        MonetaryCalculator(resVan.authorizedAmount);

    if ("2" == resVan.appType) {
      _bindData[PrintDataMapIF.IS_CANCEL] = "true";
      _bindData[PrintDataMapIF.ORDER_TOTAL_AMOUNT] =
          totalAmount.multiply(-1).format();
      _bindData[PrintDataMapIF.TRANSACTION_FEE] =
          transactionFee.multiply(-1).format();
      _bindData[PrintDataMapIF.AUTHORIZED_AMOUNT] =
          authorizedAmount.multiply(-1).format();
    } else {
      _bindData[PrintDataMapIF.ORDER_TOTAL_AMOUNT] = totalAmount.format();
      _bindData[PrintDataMapIF.TRANSACTION_FEE] = transactionFee.format();
      _bindData[PrintDataMapIF.AUTHORIZED_AMOUNT] = authorizedAmount.format();
    }

    Map<String, String?> properties =
        await basBL.getPaymentProperties(resVan.paymentMethodCode);
    String? tid = properties["TID"];

    if (tid != null) {
      _bindData[PrintDataMapIF.TID_NUMBER] = tid;
    }

    if (resVan.batchId != null) {
      String batchId = (resVan.batchId!.length < 6
              ? "000000".substring(resVan.batchId!.length)
              : "") +
          resVan.batchId!;
      _bindData[PrintDataMapIF.BATCH_ID] = batchId;
    }

    if (resVan.appNo != null && resVan.appNo!.isNotEmpty) {
      _bindData[PrintDataMapIF.APPROVAL_NUMBER] = resVan.appNo;
    }

    _bindData[PrintDataMapIF.START] = "Receipt";
    _bindData[PrintDataMapIF.RECEIPT_SUB_TITLE] =
        BaseBL.receiptLang[LangCode.hyphen_receipt];
    _bindData[PrintDataMapIF.PAYMENT_TYPE] = PrintDataMapIF.PAYMENT_TYPE_CARD;
    _bindData[PrintDataMapIF.IS_FAILED] = "true";
    _bindData[PrintDataMapIF.FOOTER] = footer;
    _bindData[PrintDataMapIF.RECEIPT_NUMBER] = receiptNo;
    _bindData[PrintDataMapIF.CARD_COMPANY_NAME] = resVan.ctName;
    _bindData[PrintDataMapIF.AID] = resVan.aid;
    _bindData[PrintDataMapIF.CARD_NAME] = resVan.cardName;
    String idNo;

    // 카드 실패 영수증 찍을 때는 _saleAccountHistory 가 null
    if (_saleAccountHistory != null) {
      if (TenderConstants_CASH_RECPT_ID_TP_CD.VOLUNTARILY_ISSUED
          .equals(_saleAccountHistory!.getCashReceiptIdentifyTypeCode())) {
        idNo = BaseBL.receiptLang[LangCode.voluntarily_issued] ?? '';
      } else if (TenderConstants_CASH_RECPT_ID_TP_CD.CASH_RECEIPT_ID
          .equals(_saleAccountHistory!.getCashReceiptIdentifyTypeCode())) {
        idNo = OrderCheck.maskTelNo(
            _saleAccountHistory!.getCashReceiptIdentifyNumber());
      } else {
        idNo = OrderCheck.maskCreditCard(
            _saleAccountHistory!.getCashReceiptIdentifyNumber());
      }
    } else {
      idNo = OrderCheck.maskCreditCard(resVan.cardNo);
    }

    _bindData[PrintDataMapIF.IDENTITY_NUMBER] = idNo;
    _bindData[PrintDataMapIF.STAN] = resVan.stan;
    _bindData[PrintDataMapIF.TIME_OF_SALE] =
        _convertDateForm(resVan.appDatePriPtn);
    _bindData[PrintDataMapIF.RRN] = resVan.rrn;
    _bindData[PrintDataMapIF.VAN_MESSAGE] = vanMessage;
    _bindData[PrintDataMapIF.CURRENCY] = currency;
    _bindData[PrintDataMapIF.SECURE_REF] = resVan.secureReference;
    _bindData[PrintDataMapIF.PAY_METHOD_CD] = resVan.paymentMethodCode;

    // YolletPay 관련
    _bindData[PrintDataMapIF.TOKEN_ID] = resVan.tokenId;
    _bindData[PrintDataMapIF.TOKEN_AMT] = resVan.tokenAmount;
    _bindData[PrintDataMapIF.EXCHANGE_DATE_INDEX] = resVan.exchangeDateIndex;
    _bindData[PrintDataMapIF.EXCHANGE_RATE] = resVan.exchangeRate;
    return _bindData;
  }

  Future<void> _getReceiptMap() async {
    BasBL basBL = BasBL();

    if (TenderConstants_Section.getSection(
            _saleAccountHistory!.getPaymentSectionCode())
        .isCard()) {
      int type = await _getTransactionType();
      String title = "";

      switch (type) {
        case IC_APPROVE:
          title = BaseBL.receiptLang[LangCode.ic_transaction_approval]! + "\n";
          break;
        case IC_CANCEL:
          title = BaseBL.receiptLang[LangCode.ic_transaction_cancel]! + "\n";
          break;
        case FAILBACK_APPROVE:
          title =
              BaseBL.receiptLang[LangCode.credit_transaction_approval]! + "\n";
          break;
        case FAILBACK_CANCEL:
          title =
              BaseBL.receiptLang[LangCode.credit_transaction_cancel]! + "\n";
          break;
      }

      _bindData[PrintDataMapIF.RECEIPT_TITLE] = title;
      _bindData[PrintDataMapIF.RECEIPT_SUB_TITLE] = _subTitle;
    } else {
      _bindData[PrintDataMapIF.RECEIPT_TITLE] =
          TenderConstants.getReceiptTitle(_saleAccountHistory!);
      _bindData[PrintDataMapIF.RECEIPT_SUB_TITLE] = _subTitle;
    }

    _bindData[PrintDataMapIF.PAYMENT_SECTION_CODE] =
        _saleAccountHistory!.getPaymentSectionCode();
    String idNo;

    if (TenderConstants_CASH_RECPT_ID_TP_CD.VOLUNTARILY_ISSUED
        .equals(_saleAccountHistory!.getCashReceiptIdentifyTypeCode())) {
      idNo = BaseBL.receiptLang[LangCode.voluntarily_issued] ?? '';
    } else if (TenderConstants_CASH_RECPT_ID_TP_CD.CASH_RECEIPT_ID
        .equals(_saleAccountHistory!.getCashReceiptIdentifyTypeCode())) {
      idNo = OrderCheck.maskTelNo(
          _saleAccountHistory!.getCashReceiptIdentifyNumber());
    } else {
      idNo = OrderCheck.maskCreditCard(
          _saleAccountHistory!.getCashReceiptIdentifyNumber());
    }

    _bindData[PrintDataMapIF.IDENTITY_NUMBER] = idNo;
    _bindData[PrintDataMapIF.APPROVAL_NUMBER] =
        _saleAccountHistory!.getPaymentApprovalNumber();
    _bindData[PrintDataMapIF.APPROVAL_DATE] =
        _saleAccountHistory!.getApprovalDate();
    String? dataObject = _saleAccountHistory!.getApprovalDatePrimaryPattern();
    _bindData[PrintDataMapIF.APPROVAL_DATE_PRI_PTN] = dataObject;

    if (dataObject != null) {
      String d = dataObject;
      String date = _convertDateForm(d);
      _bindData[PrintDataMapIF.TIME_OF_SALE] = date;
    }

    _bindData[PrintDataMapIF.TOTAL_AMOUNT] =
        MonetaryCalculator(_saleAccountHistory!.getTotalAmount()).format();
    String? receiptNo = _saleAccountHistory!.getReceiptNumber();
    _bindData[PrintDataMapIF.RECEIPT_NUMBER] = receiptNo;
    _bindData[PrintDataMapIF.TRANSACTION_AMOUNT] =
        MonetaryCalculator(_saleAccountHistory!.getSupplyValue()).format();
    _bindData[PrintDataMapIF.TAX] =
        MonetaryCalculator(_saleAccountHistory!.getTaxAmount()).format();

    if (_saleAccountHistory!.getPaymentTipAmount() != 0) {
      _bindData[PrintDataMapIF.TIP] =
          MonetaryCalculator(_saleAccountHistory!.getPaymentTipAmount())
              .format();
      _bindData[PrintDataMapIF.TIP_TAX] =
          MonetaryCalculator(_saleAccountHistory!.getPaymentTipTaxAmount())
              .format();
    }

    SalesAccountHistoryDetails? details =
        await _saleAccountHistory!.getSaleACDetail();

    if (details != null) {
      _bindData[PrintDataMapIF.VAN_MESSAGE] = details.getData1();
      _bindData[PrintDataMapIF.VAN_PRINT_MESSAGE] = details.getData2();
      _bindData[PrintDataMapIF.TRANSACTION_TYPE] = details.getData6(); //trType
      _bindData[PrintDataMapIF.TRANSACTION_CODE] = details.getData7(); //trCode
      String? empNumber = details.getData11(); //사원번호
      String? empPosition = details.getData12(); //직급
      String? empName = details.getData13(); //직원명
      _bindData[PrintDataMapIF.EMP_NUMBER] = empNumber;
      _bindData[PrintDataMapIF.EMP_NAME] =
          "$empName $empPosition ${BaseBL.receiptLang[LangCode.sir]}";

      // SaleBL.insertNewSaleACAll() 참조
      if (TenderConstants.isYolletPay(
          _saleAccountHistory!.getPaymentSectionCode())) {
        _bindData[PrintDataMapIF.TOKEN_ID] = details.data12;
        _bindData[PrintDataMapIF.TOKEN_AMT] = details.data13;
        _bindData[PrintDataMapIF.EXCHANGE_DATE_INDEX] = details.data15;
        _bindData[PrintDataMapIF.EXCHANGE_RATE] = details.data16;
      }
      String? pagerNumber = details.getData18(); //호출번호
      if (pagerNumber != null) {
        _bindData[PrintDataMapIF.PAGER_NUMBER] = pagerNumber;
        Log.d(TAG, "[R]has PAGER_NUMBER pageNumber = " + pagerNumber);
      }
      String? orderMemo = details.getData19(); //Memo
      if (orderMemo != null && orderMemo.isNotEmpty) {
        _bindData[PrintDataMapIF.ORDER_MEMO] = orderMemo;
        _bindData[PrintDataMapIF.ORDER_MEMO] = orderMemo;
      }
    }

    int? installmentMonth = _saleAccountHistory!.getInstallmentMonth();

    if (installmentMonth != null) {
      String? installment;

      if (installmentMonth <= 1) {
        installment = BaseBL.receiptLang[LangCode.pay_all];
      } else {
        installment =
            installmentMonth.toString() + BaseBL.receiptLang[LangCode.months]!;
      }

      _bindData[PrintDataMapIF.INSTALLMENT] = installment;
    } else {
      _bindData[PrintDataMapIF.INSTALLMENT] = null;
    }

    _bindData[PrintDataMapIF.CARD_NAME] = _saleAccountHistory!.getCardName();
    _bindData[PrintDataMapIF.CARD_COMPANY_NAME] =
        _saleAccountHistory!.getCardCompanyName();
    _bindData[PrintDataMapIF.BUYER_NAME] = TenderConstants.getPurchaseName(
        _saleAccountHistory!.getCardPurchaseCompanyName());
    _bindData[PrintDataMapIF.COMPANY_NO] =
        _saleAccountHistory!.getCardCompanyAffiliateNumber();

    if (TenderConstants_PAY_OPT.NORMAL.getCode() ==
        (_saleAccountHistory!.getPaymentOption())) {
      _bindData[PrintDataMapIF.ORDER_AMOUNT] =
          MonetaryCalculator(_saleAccountHistory!.getOrderTotalAmount())
              .format();
      _bindData[PrintDataMapIF.MENU_DISCOUNT] =
          MonetaryCalculator(-_saleAccountHistory!.getMenuDiscountAmount())
              .format();
      _bindData[PrintDataMapIF.ORDER_DISCOUNT] =
          MonetaryCalculator(-_saleAccountHistory!.getOrderDiscountAmount())
              .format();
      _bindData[PrintDataMapIF.TOTAL_DISCOUNT] =
          MonetaryCalculator(-_saleAccountHistory!.getTotalDiscountAmount())
              .format();
    }

    _bindData[PrintDataMapIF.ORDER_TOTAL_AMOUNT] =
        MonetaryCalculator(_saleAccountHistory!.getTotalAmount()).format();
    _bindData[PrintDataMapIF.CHECK_NUMBER] = null;
    _bindData[PrintDataMapIF.RECEIVED_AMOUNT] =
        MonetaryCalculator(getReceive()).format();
    _bindData[PrintDataMapIF.CHANGED_AMOUNT] =
        MonetaryCalculator(getChange()).format();

    String? hdate = _saleAccountHistory!.getCommonDate();
    int? salenum = _saleAccountHistory!.getSaleSerialNumber();

    final SalesHistory? salesHistory = await SaleBL().getSaleH(hdate, salenum);

    if (salesHistory != null &&
        salesHistory.getBusinessSectionCode() ==
            (TenderConstants_BIZ_SEC_CD.CAT.getCode())) {
      _bindData[PrintDataMapIF.ITEM_LIST] = <SalesHistoryItem>[];
    } else {
      _bindData[PrintDataMapIF.ITEM_LIST] = items;
    }

    BasicDataItem? footerInfo = await basBL.getBasicDataItemById("CF121");
    _bindData[PrintDataMapIF.FOOTER] = footerInfo?.getData20();
    _bindData[PrintDataMapIF.SUB_TOTAL] = null;
    // _bindData[PrintDataMapIF.PAGER_NUMBER] = null;
    _bindData[PrintDataMapIF.TABLE_NAME] = null;
    _bindData[PrintDataMapIF.EMPLOYEE_NAME] = null;
    _bindData[PrintDataMapIF.MEMO] = null;

    if (TenderConstants.isCanceled(
        _saleAccountHistory!.getApprovalTypeCode())) {
      _bindData[PrintDataMapIF.IS_CANCEL] = "true";
    }

    // OpenWay
    String? vanResMsg = details?.getData1();
    Map<String, String> vanRes = ResVan.parseVanResMsgToMap(vanResMsg);
    _bindData.addAll(vanRes);
    _putBindData(PrintDataMapIF.AID, vanRes["aid"]);
    String? batchId = vanRes["batchId"];

    if (batchId != null) {
      _putBindData(
          PrintDataMapIF.BATCH_ID,
          (batchId.length < 6 ? "000000".substring(batchId.length) : "") +
              batchId);
    }

    _putBindData(PrintDataMapIF.RRN, vanRes["rrn"]);
    _putBindData(PrintDataMapIF.STAN, vanRes["stan"]);
    _putBindData(PrintDataMapIF.SECURE_REF, vanRes["secureReference"]);
    _putBindData(
        PrintDataMapIF.AUTHORIZED_AMOUNT,
        _getAuthorizedAmount(vanRes["authorizedAmount"],
                vanRes["transactionFee"], _saleAccountHistory!.getTotalAmount())
            .format());
    _putBindData(PrintDataMapIF.TRANSACTION_FEE,
        MonetaryCalculator(vanRes['transactionFee']).format());

    // ExPay
    _bindData[PrintDataMapIF.ORDER_NO] = details?.getData14();

    _bindData[PrintDataMapIF.PAY_METHOD_CD] =
        _saleAccountHistory!.getPaymentMethodCode();
    _bindData[PrintDataMapIF.IS_STORE_CARD_RECEIPT] = "false";
    _bindData[PrintDataMapIF.IS_COMPANY_CARD_RECEIPT] = "false";
    _bindData[PrintDataMapIF.IS_CUSTOMER_CARD_RECEIPT] = "false";
  }

  void _putBindData(String key, String? value) {
    if (value != null) {
      _bindData[key] = value;
    }
  }

  MonetaryCalculator _getAuthorizedAmount(
      String? authorizedAmount, String? fee, double totalAmount) {
    if (authorizedAmount != null) {
      return MonetaryCalculator(authorizedAmount);
    } else {
      if (fee != null) {
        return MonetaryCalculator(totalAmount).add(fee);
      } else {
        return MonetaryCalculator(totalAmount);
      }
    }
  }

  Future<void> transformForOpenWay(Map<String, Object?> data) async {
    String? vanResMsg = data[PrintDataMapIF.VAN_MESSAGE] as String?;
    String? resCode = ResVan.parseVanResMsg(vanResMsg, "resCode");

    if (resCode != null) {
      BasBL basBL = BasBL();
      String? msg = await basBL.getUserInputString(
          "iso_res_code_" + resCode, "(" + resCode + ")");
      data[PrintDataMapIF.VAN_MESSAGE] = msg;
    } else {
      data[PrintDataMapIF.VAN_MESSAGE] = "";
    }

    if (data[PrintDataMapIF.VAN_PRINT_MESSAGE] != null) {
      data[PrintDataMapIF.VAN_PRINT_MESSAGE] = "";
    }
  }

  Future<void> _getOrderMap() async {
    TableBL tableBL = TableBL();
    EmployeeBL employeeBL = EmployeeBL();
    BasBL basBL = BasBL();

    //        OrderHistory order = orderCheck.getOrderHistory();
    // 호출번호
    if (_orderCheck != null) {
      int? pagerNumber = _orderCheck!.getPagerNumber();

      if (pagerNumber != null) {
        String? callNum = sprintf("%04d", [pagerNumber]);
        _bindData[PrintDataMapIF.PAGER_NUMBER] = callNum;
        Log.d(
            TAG, "[O]has PAGER_NUMBER pageNumber = " + pagerNumber.toString());
      }
    }

    // 테이블
    String? tableName = "";

    if (_orderCheck != null &&
        _orderCheck!.getBusiSection() ==
            (TenderConstants_BIZ_SEC_CD.TAKEOUT.getCode())) {
      Log.d(TAG, "orderCheck TAKEOUT");

      tableName = BaseBL.receiptLang[LangCode.take_out];
    } else if (_order != null &&
        _order!.getBusinessSectionCode() ==
            (TenderConstants_BIZ_SEC_CD.TAKEOUT.getCode())) {
      Log.d(TAG, "order TAKEOUT");

      tableName = BaseBL.receiptLang[LangCode.take_out];
    } else {
      Log.d(TAG, "getTableId TAKEOUT");

      try {
        if (_order != null) {
          Table? table = await tableBL.getTabByTabCode(_order!.getTableId());
          tableName = table?.getTableName();
        } else if (_tookOrder != null) {
          tableName = BaseBL.receiptLang[LangCode.online_order]! + " (TOOK)";
        }
      } catch (ignored) {
        print('Exception: $ignored');
      }

      if (_orderCheck != null) {
        String? orderMemo = _orderCheck!.getMemo(); //Memo
        if (orderMemo != null && orderMemo.isNotEmpty) {
          _bindData[PrintDataMapIF.ORDER_MEMO] = orderMemo;
          _bindData[PrintDataMapIF.ORDER_MEMO] = orderMemo;
        }
      } else if (_order != null) {
        String? orderMemo = _order!.getMemo(); //Memo
        if (orderMemo != null && orderMemo.isNotEmpty) {
          _bindData[PrintDataMapIF.ORDER_MEMO] = orderMemo;
          _bindData[PrintDataMapIF.ORDER_MEMO] = orderMemo;
        }
      }
    }

    _bindData[PrintDataMapIF.TABLE_NAME] = tableName;

    if (_tookOrder != null) {
      // 서빙
      Employee? employee =
          await employeeBL.getEmployeeByEmpId(BaseBL.employeeId);
      String? employeeName = employee != null ? employee.getEmployeeName() : "";
      _bindData[PrintDataMapIF.EMPLOYEE_NAME] =
          employeeName; //todo             bindData[PrintDataMapIF.SERVER_NAME]= serverName);

      // 주문 번호
      _bindData[PrintDataMapIF.CHECK_NUMBER] =
          "#" + _tookOrder!.getCheckLink()!;
    } else {
      // 서빙
      try {
        Employee? employee =
            await employeeBL.getEmployeeByEmpId(_order!.getOrderEmployeeId());
        String? employeeName =
            employee != null ? employee.getEmployeeName() : "";
        _bindData[PrintDataMapIF.EMPLOYEE_NAME] =
            employeeName; //todo             bindData[PrintDataMapIF.SERVER_NAME]= serverName);
      } catch (ignored) {
        print('Exception: $ignored');
        Employee? employee = await employeeBL.getEmployeeByEmpId(
            BaseBL.cashierInEmployeeId == null
                ? BaseBL.employeeId
                : BaseBL.cashierInEmployeeId);
        String? employeeName =
            employee != null ? employee.getEmployeeName() : "";
        _bindData[PrintDataMapIF.EMPLOYEE_NAME] =
            employeeName; //todo             bindData[PrintDataMapIF.SERVER_NAME]= serverName);
//                bindData[PrintDataMapIF.EMPLOYEE_NAME]= " ");
        //todo check
      }
      // 주문 번호
      try {
        _bindData[PrintDataMapIF.CHECK_NUMBER] = _order!.getCommonDate()! +
            _order!.getCommonSerialNumber().toString();
      } catch (ignored) {
        print('Exception: $ignored');
        _bindData[PrintDataMapIF.CHECK_NUMBER] = "temp";
        //todo check
      }
    }
    int negativeCount = 1;
    // 타이틀
    if (_isCancel) {
      _bindData[PrintDataMapIF.RECEIPT_TITLE] =
          BaseBL.receiptLang[LangCode.cancel_order];
      negativeCount = -1;
    } else {
      _bindData[PrintDataMapIF.RECEIPT_TITLE] =
          BaseBL.receiptLang[LangCode.order_information];
    }
    if (_tookOrder != null) {
      // 주문금액
      _bindData[PrintDataMapIF.ORDER_AMOUNT] =
          MonetaryCalculator(_tookOrder!.getSupplyAmount()).format();

      // 할인금액
      _bindData[PrintDataMapIF.TOTAL_DISCOUNT] = MonetaryCalculator(
              _tookOrder!.getDiscountTotalAmount() * negativeCount)
          .format();

      // 공급가
      _bindData[PrintDataMapIF.SUB_TOTAL] =
          MonetaryCalculator(_tookOrder!.getSupplyValue() * negativeCount)
              .format();

      // 세금
      _bindData[PrintDataMapIF.TAX] =
          MonetaryCalculator(_tookOrder!.getTaxAmount0() * negativeCount)
              .format();

      // 결제금액
      _bindData[PrintDataMapIF.ORDER_TOTAL_AMOUNT] =
          MonetaryCalculator(_tookOrder!.getTotalAmount() * negativeCount)
              .format();
    } else {
      if (_orderCheck != null) {
        // 주문금액
        _bindData[PrintDataMapIF.ORDER_AMOUNT] =
            MonetaryCalculator(_orderCheck!.getTotalOrderAmt())
                .add(_orderCheck!.getTotalOrderDiscountAmt())
                .format();

        // 할인금액
        _bindData[PrintDataMapIF.TOTAL_DISCOUNT] = MonetaryCalculator(
                _orderCheck!.getTotalOrderDiscountAmt() * negativeCount)
            .format();

        // 공급가
        _bindData[PrintDataMapIF.SUB_TOTAL] =
            MonetaryCalculator(_orderCheck!.getOrderAmount() * negativeCount)
                .format();

        // 세금
        _bindData[PrintDataMapIF.TAX] =
            MonetaryCalculator(_orderCheck!.getTotalTax() * negativeCount)
                .format();

        // 결제금액
        _bindData[PrintDataMapIF.ORDER_TOTAL_AMOUNT] =
            MonetaryCalculator(_orderCheck!.getTotalAmount() * negativeCount)
                .format();
      }
    }
    // 인사말
    BasicDataItem? footerInfo = await basBL.getBasicDataItemById("CF121");
    _bindData[PrintDataMapIF.FOOTER] = footerInfo?.getData20();

    if (_orderCheck != null &&
        _orderCheck!.getBusiSection() ==
            (TenderConstants_BIZ_SEC_CD.CAT.getCode())) {
      _bindData[PrintDataMapIF.ITEM_LIST] = <OrderHistoryItem>[];
    } else if (_order != null &&
        _order!.getBusinessSectionCode() ==
            (TenderConstants_BIZ_SEC_CD.CAT.getCode())) {
      _bindData[PrintDataMapIF.ITEM_LIST] = <OrderHistoryItem>[];
    } else {
      _bindData[PrintDataMapIF.ITEM_LIST] = items;
    }
    _bindData[PrintDataMapIF.MEMO] = null;

    _bindData[PrintDataMapIF.APPROVAL_NUMBER] = null;
    _bindData[PrintDataMapIF.APPROVAL_DATE] = null;
    _bindData[PrintDataMapIF.APPROVAL_DATE_PRI_PTN] = null;
    _bindData[PrintDataMapIF.CARD_NAME] = null;
    _bindData[PrintDataMapIF.CARD_COMPANY_NAME] = null;
    _bindData[PrintDataMapIF.BUYER_NAME] = null;
    _bindData[PrintDataMapIF.RECEIVED_AMOUNT] = null;
    _bindData[PrintDataMapIF.CHANGED_AMOUNT] = null;
    _bindData[PrintDataMapIF.IDENTITY_NUMBER] = null;
    _bindData[PrintDataMapIF.INSTALLMENT] = null;
    _bindData[PrintDataMapIF.MENU_DISCOUNT] = null;
    _bindData[PrintDataMapIF.ORDER_DISCOUNT] = null;
    _bindData[PrintDataMapIF.PAYMENT_SECTION_CODE] = null;
    _bindData[PrintDataMapIF.PAYMENT_TYPE] = null;
    _bindData[PrintDataMapIF.RECEIPT_NUMBER] = null;
    _bindData[PrintDataMapIF.RECEIPT_SUB_TITLE] = null;
    _bindData[PrintDataMapIF.TIME_OF_SALE] = null;
    _bindData[PrintDataMapIF.TOTAL_AMOUNT] = null;
    _bindData[PrintDataMapIF.TRANSACTION_TYPE] = null;
    _bindData[PrintDataMapIF.TRANSACTION_CODE] = null;
    _bindData[PrintDataMapIF.VAN_MESSAGE] = null;
    _bindData[PrintDataMapIF.VAN_PRINT_MESSAGE] = null;
    _bindData[PrintDataMapIF.PAY_METHOD_CD] = null;
  }

  Future<void> _printStore() async {
    BasBL basBL = BasBL();

/*
        // company info
        Store storeInfo = defaultApp.getBasBL().getStore();

        // company name
        bindData[PrintDataMapIF.COMPANY_NAME]= storeInfo.getStoreName());

        // company address
        String address = defaultApp.operationBL.getStoreDetailAddress() + "," + defaultApp.operationBL.getStorePrimaryAddress();
        bindData[PrintDataMapIF.COMPANY_ADDRESS]= address);
*/
    _bindData[PrintDataMapIF.LOGO] = "logo";

    Store? store = await basBL.getStore();
    StoreTerminal? storeTerminal =
        await basBL.getStoreTerminalById(BaseBL.storeTerminalId);
    String? address;

    if ("KOR" == (await _operationBL.getLanguage())) {
      address = (await _operationBL.getStorePrimaryAddress())! +
          "," +
          (await _operationBL.getStoreDetailAddress())!;
    } else {
      address = (await _operationBL.getStoreDetailAddress())! +
          "," +
          (await _operationBL.getStorePrimaryAddress())!;
    }
    _bindData[PrintDataMapIF.STORE_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.shop_name];
    _bindData[PrintDataMapIF.STORE_NAME] = store?.getStoreName();
    _bindData[PrintDataMapIF.OWNER_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.owner_name];
    _bindData[PrintDataMapIF.OWNER_NAME] = await _operationBL.getStoreCeoName();
    _bindData[PrintDataMapIF.BRN_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.license_number];
    _bindData[PrintDataMapIF.BRN_NUMBER] =
        store?.getBusinessRegistrationNumber();
    _bindData[PrintDataMapIF.TID_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.tid];

    if (_saleAccountHistory != null) {
      Map<String, String?> properties = await basBL
          .getPaymentProperties(_saleAccountHistory!.getPaymentMethodCode());
      String? tid = properties["TID"];

      if (tid != null) {
        _bindData[PrintDataMapIF.TID_NUMBER] = tid;
      }
    }

    _bindData[PrintDataMapIF.ADDRESS_SUBJECT] =
        BaseBL.receiptLang[LangCode.address];
    _bindData[PrintDataMapIF.ADDRESS] = address;
    _bindData[PrintDataMapIF.TEL_NO] = store?.getTelNumber();
    _bindData[PrintDataMapIF.STORE_TERMINAL_NAME_SUBJECT] = "POS";
    _bindData[PrintDataMapIF.STORE_TERMINAL_NAME] =
        storeTerminal?.getStoreTerminalName();
    _bindData[PrintDataMapIF.CURRENCY] = await _operationBL.getCurrencyCode();

    _bindData[PrintDataMapIF.IS_TAXFREE_STORE] =
        (await _operationBL.getIsTaxFree()).toString();

    BasicDataItem? tax1Info = await basBL.getBasicDataItemById("CF101");
    if (tax1Info != null) {
      double tax1Ratio = CommonUtil.stringToDouble(
          tax1Info.getData2() == null ? "0" : tax1Info.getData2());
      _bindData[PrintDataMapIF.TAX_PERCENT] = tax1Ratio.toString();
    }
  }

  Future<void> setRewardQR([Map? data]) async {
    if (_bindData[PrintDataMapIF.IS_CANCEL] != null) {
      return null;
    }

    if (data == null && _saleAccountHistory != null) {
      SalesHistory? sa = await SaleBL().getSaleH(
          _saleAccountHistory!.commonDate,
          _saleAccountHistory!.saleSerialNumber);
      data = json.decode(sa?.data8 ?? '{}');
    }

    if (data == null || data.isEmpty) {
      return null;
    }

    _bindData[PrintDataMapIF.QR_CODE] =
        'reward:${data['rewardId']}:${data['tokenId']}:${data['tokenAmount']}';
    _bindData[PrintDataMapIF.TOKEN_ID] = data['tokenId'];
    _bindData[PrintDataMapIF.TOKEN_AMT] = data['tokenAmount'];
    _bindData[PrintDataMapIF.REWARD_AMT] = data['exchangeAmount'];
    _bindData[PrintDataMapIF.EXCHANGE_RATE] = data['exchangeRate'];
    _bindData[PrintDataMapIF.EXCHANGE_DATE_INDEX] = data['exchangeDateIndex'];
  }

  Future<Map<String, Object?>?> getRewardQrMap() async {
    _bindData[PrintDataMapIF.START] = 'REWARD_QR';
    _bindData[PrintDataMapIF.CUT] = '';
    _bindData[PrintDataMapIF.END] = '';
    return _bindData;
  }

  Future<void> _printMessage() async {
    String receipt_top_msg = await _operationBL.receipt_top_message();
    if (!CommonUtil.isNullEmpty(receipt_top_msg)) {
      _bindData[PrintDataMapIF.RECEIPT_TOP_MSG] = receipt_top_msg;
    }

    String receipt_lower_message = await _operationBL.receipt_lower_message();
    if (!CommonUtil.isNullEmpty(receipt_lower_message)) {
      _bindData[PrintDataMapIF.RECEIPT_LOWER_MESSAGE] = receipt_lower_message;
    }

    String bill_top_message = await _operationBL.bill_top_message();
    if (!CommonUtil.isNullEmpty(bill_top_message)) {
      _bindData[PrintDataMapIF.BILL_TOP_MESSAGE] = bill_top_message;
    }

    String bill_lower_message = await _operationBL.bill_lower_message();
    if (!CommonUtil.isNullEmpty(bill_lower_message)) {
      _bindData[PrintDataMapIF.BILL_LOWER_MESSAGE] = bill_lower_message;
    }
  }

  void _printString() {
//        bindData[PrintDataMapIF.IDENTITY_NUMBER_SUBJECT]= defaultApp.lang[LangCode.identification_number]);
    _bindData[PrintDataMapIF.APPROVAL_DATE_SUBJECT] =
        BaseBL.receiptLang[LangCode.approval_date];
//        bindData[PrintDataMapIF.ORDER_AMOUNT_SUBJECT]= defaultApp.lang[LangCode.total2]);
    _bindData[PrintDataMapIF.MENU_DISCOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.line_discount];
    _bindData[PrintDataMapIF.ORDER_DISCOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.order_discount];
    _bindData[PrintDataMapIF.ORDER_TOTAL_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.total_amount];
    _bindData[PrintDataMapIF.TRANSACTION_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.supply_amount];
    _bindData[PrintDataMapIF.TAX_SUBJECT] = BaseBL.receiptLang[LangCode.tax];
    _bindData[PrintDataMapIF.TIP_SUBJECT] = BaseBL.receiptLang[LangCode.tip];
    _bindData[PrintDataMapIF.TIP_TAX_SUBJECT] =
        BaseBL.receiptLang[LangCode.tip_tax];
    _bindData[PrintDataMapIF.TOTAL_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.payment_amount2];
    _bindData[PrintDataMapIF.RECEIVED_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.received];
    _bindData[PrintDataMapIF.CHANGED_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.change2];
    _bindData[PrintDataMapIF.IDENTITY_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.card_no];
    _bindData[PrintDataMapIF.INSTALLMENT_SUBJECT] =
        BaseBL.receiptLang[LangCode.installment];
    _bindData[PrintDataMapIF.CARD_COMPANY_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.card_issuer];
    _bindData[PrintDataMapIF.APPROVAL_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.approval_number];
    _bindData[PrintDataMapIF.VAN_MESSAGE_SUBJECT] =
        BaseBL.receiptLang[LangCode.transaction_result];
    _bindData[PrintDataMapIF.BUYER_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.buyer_name];
    _bindData[PrintDataMapIF.ORDER_TIME_SUBJECT] =
        BaseBL.receiptLang[LangCode.ordered_time];
    _bindData[PrintDataMapIF.TABLE_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.table];
    _bindData[PrintDataMapIF.EMPLOYEE_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.employee_name];
    _bindData[PrintDataMapIF.CHECK_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.order_number];
    _bindData[PrintDataMapIF.ORDER_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.order_amount];
    _bindData[PrintDataMapIF.TOTAL_DISCOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.discount_amount];
    _bindData[PrintDataMapIF.SUB_TOTAL_SUBJECT] =
        BaseBL.receiptLang[LangCode.sub_total];
//        bindData[PrintDataMapIF.TAX_SUBJECT]= defaultApp.lang[LangCode.tax];
//        bindData[PrintDataMapIF.AMOUNT_DUE_SUBJECT]= defaultApp.lang[LangCode.amount_due];
    _bindData[PrintDataMapIF.RECEIPT_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.check_no2];
    _bindData[PrintDataMapIF.TIME_OF_SALE_SUBJECT] =
        BaseBL.receiptLang[LangCode.time_of_sale];
    _bindData[PrintDataMapIF.ITEM_PRODUCT_NAME_SUBJECT] =
        BaseBL.receiptLang[LangCode.product_name];
    _bindData[PrintDataMapIF.ITEM_QTY_SUBJECT] =
        BaseBL.receiptLang[LangCode.qty];
    _bindData[PrintDataMapIF.ITEM_AMOUNT_SUBJECT] =
        BaseBL.receiptLang[LangCode.amount];
    _bindData[PrintDataMapIF.PAGER_NUMBER_SUBJECT] =
        BaseBL.receiptLang[LangCode.pager_number];
  }

  Future<int> _getTransactionType() async {
    BasBL basBL = BasBL();
    int result = 0;
    String? vanName =
        await basBL.getPaymentType(_saleAccountHistory!.getPaymentMethodCode());
    SalesAccountHistoryDetails? salesAccountHistoryDetails =
        await _saleAccountHistory!.getSaleACDetail();

    if (salesAccountHistoryDetails == null) {
      return 0;
    }

    String? trType = salesAccountHistoryDetails.getData6();
    String? trCode = salesAccountHistoryDetails.getData7();

    Log.d(TAG, "TR_TYPE = $trType , TR_CODE = $trCode");

    //KOVAN
    if (trType != null && trCode != null) {
      if (vanName == "KOVAN(MP506)") {
        //TenderConstants.VAN.KOVAN_MP506.getName()
        if (trType == ("") && (trCode == ("S0") || trCode == ("E5"))) {
          //IC 승인
          result = IC_APPROVE;
        } else if (trType == ("") && (trCode == ("S1") || trCode == ("E6"))) {
          //IC 취소
          result = IC_CANCEL;
        } else if (trType == ("F") &&
            (trCode == ("S0") || trCode == ("E7") || trCode == ("10"))) {
          //마그네틱 승인
          result = FAILBACK_APPROVE;
        } else if (trType == ("F") &&
            (trCode == ("S1") || trCode == ("E8") || trCode == ("11"))) {
          //마그네틱 취소
          result = FAILBACK_CANCEL;
        }
      }

      //KICC
      if (vanName == "KICC(SAMIL)") {
        //TenderConstants.VAN.KICC_SAMIL.getName()
        if (trType == ("C") && (trCode == ("I1"))) {
          //IC 승인
          result = IC_APPROVE;
        } else if (trType == ("C") && (trCode == ("I4"))) {
          //IC 취소
          result = IC_CANCEL;
        } else if (trType == ("M") && (trCode == ("I1"))) {
          //마그네틱 승인
          result = FAILBACK_APPROVE;
        } else if (trType == ("M") && (trCode == ("I4"))) {
          //마그네틱 취소
          result = FAILBACK_CANCEL;
        }
      }

      if (vanName == "KCP(MP506)") {
        //TenderConstants.VAN.KCP_MP506.getName()
        if (trType == ("30") && (trCode == ("0100"))) {
          //IC 승인
          result = IC_APPROVE;
        } else if (trType == ("30") && (trCode == ("0420"))) {
          //IC 취소
          result = IC_CANCEL;
        } else if ((trType == ("60") || trType == ("20")) &&
            (trCode == ("0100"))) {
          //마그네틱 승인   60: Fallback/20:Swipe
          result = FAILBACK_APPROVE;
        } else if ((trType == ("60") || trType == ("20")) &&
            (trCode == ("0420"))) {
          //마그네틱 취소  60: Fallback/20:Swipe
          result = FAILBACK_CANCEL;
        }
      }
    }

    return result;
  }

  String _convertDateForm(String? dateString) {
    DateTime? date;
    if (dateString == null || dateString.isEmpty) return "";

    try {
      // date = SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).parse(dateString);
      date = CommonUtil.convertDateForm2(dateString);
    } catch (e) {
      print('Exception: $e');
    }

    // SimpleDateFormat format = SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.getDefault());
    // return format.format(date);
    String format = DateFormat('yyyy/MM/dd HH:mm:ss').format(date!);
    return format;
  }

  double? getChange() {
    return _change;
  }

  void setChange(double change) {
    this._change = change;
  }

  double? getReceive() {
    return _receive;
  }

  void setReceive(double receive) {
    this._receive = receive;
  }

  String? getSubTitle() {
    return _subTitle;
  }

  void setSubTitle(String? subTitle) {
    this._subTitle = subTitle;
  }

  int? getSelfOrderNumber() {
    return _selfOrderNumber;
  }

  void setSelfOrderNumber(int selfOrderNumber) {
    this._selfOrderNumber = selfOrderNumber;
  }

  bool getCopy() {
    return _isCopy;
  }

  void setCopy(bool copy) {
    this._isCopy = copy;
  }

  // ////////////////////////////////////////////////
  // Create Singleton instance
  // ///////////////////////////////////////////////

  static final PrintMapData _singleton = PrintMapData._internal();

  factory PrintMapData() => _singleton;

  PrintMapData._internal() {
    _bindData = HashMap();
    _operationBL = OperationBL();
  }
}

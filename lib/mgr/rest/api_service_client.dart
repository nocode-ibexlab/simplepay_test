import "package:dio/dio.dart";
import 'package:simple_pay_flutter/utils/common/constants.dart';

import 'interceptors/log_interceptor.dart';

class ApiClient {
  String? token;
  String? contentType;
  String? additionalUrl;
  Map<String, dynamic>? queryParameters;

  ApiClient(
      {this.token, this.queryParameters, this.contentType, this.additionalUrl});

  Map<String, dynamic>? get headers {
    if (token != null) {
      return {
        "Authorization": "$token",
        "Content-Type": contentType ?? "application/json"
      };
    }
    return {"Content-Type": contentType ?? "application/json"};
  }

  Dio init() {
    Dio _dio = Dio();
    _dio.interceptors.add(loggerInterceptor);

    BaseOptions options = BaseOptions(
      baseUrl: additionalUrl ?? Constants.restBaseUrl,
      headers: headers,
      queryParameters: queryParameters,
    );
    _dio.options = options;
    return _dio;
  }
}

class ApiInvokes {
  //sync
  static const String invokeLogin = "sync.login";
  static const String invokeClearAuth = "sync.clearAuth";
  static const String invokeSetAuth = "sync.setAuth";
  static const String invokeGetRegistrationInfo = "sync.getRegistrationInfo";
  static const String invokeRegisterApp = "sync.registerApp";
  static const String invokeVerifyLicense = "sync.verifyLicense";
  static const String invokeUpdateApp = "sync.updateApp";
  static const String invokeListServers = "sync.listServers";
  static const String invokeSyncStatus = "sync.getStatus";

  //device
  static const String invokeInitDevice = "device.initDevice";

  //store
  static const String invokeGetCashierName = "store.getCashierName";
  static const String invokeGetCashBalance = "store.getCashBalance";
  static const String invokeGetSalesCount = "store.getSalesCount";
  static const String invokeCashierIn = "store.cashierIn";
  static const String invokeCashierOut = "store.cashierOut";
  static const String invokeBusinessDay = "store.businessDay";
  static const String invokeCheckPassword = "store.checkPassword";
  static const String invokeStoreGetCashInOutHistory =
      "store.getCashInOutHistory";
  static const String invokeStoreCashInOut = "store.cashInOut";
  static const String invokeGetCurrentShift = "store.getCurrentShift";

  //item
  static const String invokeItemListGroups = "item.listGroups";
  static const String invokeListItems = "item.listItems";
  static const String invokeItemFindItems = "item.findItems";
  static const String invokeItemGetItem = "item.getItem";
  static const String invokeItemAdd = "item.add";
  static const String invokeItemUpdate = "item.update";
  static const String invokeItemDelete = "item.delete";
  static const String invokeRecentlyUsedItems = "items.invokeRecentlyUsedItems";
  static const String invokeGetCatItemsPos = "items.getCatItems";

  //tender
  static const String invokeListPaymentMethods = "tender.listPaymentMethods";
  static const String invokeApprovePayment = "tender.approvePayment";
  static const String invokeCancelPayment = "tender.cancelPayment";
  static const String invokePartialPayment = "tender.getPartialPayments";
  static const String invokeTenderGetSalesHistoryByShiftNo =
      "tender.getSalesHistoryByShiftNo";
  static const String invokeTenderGetSalesDetails = "tender.getSalesDetails";
  static const String invokeTenderGetSalesHistory = "tender.getSalesHistory";
  static const String invokeListSalesByShift = "tender.listSalesByShift";

  //order
  static const String invokeSaveOrder = "order.saveOrder";
  static const String invokeGetOrder = "order.getOrder";
  static const String invokeCalculateTotal = "order.calculateTotal";
  static const String invokeListOrders = "order.listOrders";
  static const String invokeDeleteOrder = "order.deleteOrder";
  static const String invokeSaveOrderPos = "order.saveOrderPos";
  static const String invokeOrderFindOrders = "order.findOrders";

  //inventory
  static const String invokeInventoryBalanceItems = "inventory.balanceItems";
  static const String invokeInventoryListAcceptanceItems =
      "inventory.listAcceptanceItems";
  static const String invokeInventoryAddAcceptanceItem =
      "inventory.addAcceptanceItem";
  static const String invokeInventoryUpdateAcceptanceItem =
      "inventory.updateAcceptanceItem";
  static const String invokeInventoryDeleteAcceptanceItem =
      "inventory.deleteAcceptanceItem";
  static const String invokeInventoryListRevisionItems =
      "inventory.listRevisionItems";
  static const String invokeInventoryAddRevisionItems =
      "inventory.addRevisionItems";
  static const String invokeInventoryDetailRevisionItems =
      'inventory.detailRevisionItems';
  static const String invokeInventoryDetailAcceptanceItem =
      "inventory.detailAcceptanceItem";
  static const String invokeInventoryListSupplier = "inventory.listSupplier";
  static const String invokeInventoryAddSupplier = "inventory.addSupplier";
  static const String invokeInventoryUpdateSupplier =
      "inventory.updateSupplier";
  static const String invokeInventoryDeleteSupplier =
      "inventory.deleteSupplier";

  //report
  static const String invokeReportSummarizeAmounts = "report.summarizeAmounts";
  static const String invokeReportSummarizeByItemGroups =
      "report.summarizeByItemGroups";
  static const String invokeReportSummarizeByItems = "report.summarizeByItems";
}

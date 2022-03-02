import 'package:flutter/material.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';

import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

import '../models/inventory/inventory_acceptance_list_product_item_res.dart';
import '../models/inventory/inventory_balance_product_item_res.dart';
import '../models/inventory/inventory_list_revision_item_res.dart';
import '../models/inventory/inventory_list_supplier_res.dart';
import '../models/simple_inventory_detail_revision_items/inventory_detail_revision_items_res.dart';
import '../models/store/get_cash_in_out_history_res.dart';
import '../models/store/get_current_shift_res.dart';
export '../redux/app_state.dart';
export '../navigation/routes.dart';

///----------------- Navigation -----------------
class NavigateToAction {
  final String? to;
  final bool replace;
  final Map<String, dynamic>? arguments;
  String? removeUntilPage;
  String? pushAndRemoveUntil;

  final bool reload;
  final bool isStayPopup;

  NavigateToAction(
      {this.to,
      this.replace = false,
      this.arguments,
      this.reload = false,
      this.isStayPopup = false,
      this.pushAndRemoveUntil,
      this.removeUntilPage});
}

class NavigateToOrderAction {}

class NavigateToPayListAction {}

class UpdateNavigationAction {
  final String? name;
  final bool? isPage;
  final String? method;

  UpdateNavigationAction({this.name, this.isPage, this.method});
}

class ShowPopupAction<T> {
  final bool barrierDismissible;
  final WidgetBuilder? builder;
  final bool dismissAll;

  ShowPopupAction(
      {this.barrierDismissible = true, this.builder, this.dismissAll = true});

  Future<T?> show(BuildContext context) {
    return showDialog<T>(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: builder!);
  }
}

class DismissPopupAction {
  final bool all;
  final dynamic result;

  DismissPopupAction({this.all = false, this.result});
}

///------------------Sync Action ---------
const String GetListServersResAction = "GetListServersResAction";
const String GetRegistrationInfoResAction = "GetRegistrationInfoResAction";
const String GetStatusResAction = "GetStatusResAction";
const String GetVerifyLicenseResAction = "GetVerifyLicenseResAction";

class UpdateSyncAction {
  SyncListServersRes? listServersRes;
  SyncGetRegistrationInfoRes? getRegistrationInfoRes;
  SyncGetStatusRes? getStatusRes;
  SyncVerifyLicenseRes? verifyLicenseRes;
  UpdateSyncAction(
      {this.listServersRes,
      this.getRegistrationInfoRes,
      this.getStatusRes,
      this.verifyLicenseRes});
}

///------------------Item Action ---------
const String GetItemSearchListGroupsAction = "GetItemSearchListGroupsAction";
const String GetItemSearchListItemsAction = "GetItemSearchListItemsAction";
const String GetItemBestSellingListGroupsAction =
    "GetItemBestSellingListGroupsAction";
const String GetItemBestSellingItemsAction = "GetItemBestSellingItemsAction";
const String GetItemRecentlyUsedItemsAction = "GetItemRecentlyUsedItemsAction";

class UpdateItemAction {
  List<ItemListGroupsRes>? listGroups;
  List<ProductItemRes>? listItems;
  ItemListGroupsRes? currentCategory;
  UpdateItemAction({this.listItems, this.listGroups, this.currentCategory});
}

///------------------Basket Action ---------
const String GetOrderSaveOrderAction = 'GetOrderSaveOrderAction';
const String GetCalculateTotalDueAction = 'GetCalculateTotalDueAction';
const String GetAddToCartAction = "GetAddToCartAction";
const String GetIncrementItemQtyFromCartAction =
    "GetIncrementItemQtyFromCartAction";
const String GetDecrementItemQtyFromCartAction =
    "GetDecrementItemQtyFromCartAction";
const String GetDeleteItemFromCartAction = "GetDeleteItemFromCartAction";
const String GetClearCartAction = "GetClearCartAction";
const String GetReservedOrderListAction = "GetReservedOrderListAction";
const String GetLoadReservedItemAction = "GetLoadReservedItemAction";
const String GetAddDiscountToCartItemAction = "GetAddDiscountToCartItemAction";

class UpdateBasketAction {
  OrderItemRes? selectedItem;
  List<OrderItemRes>? cartList;
  OrderListOrdersRes? reservedItems;
  OrderListItemRes? selectedReservedItem;
  double? totalDue;
  double? totalReceived;
  double? taxExemptReceived;
  double? balance;
  double? totalTax;
  double? totalDiscount;
  double? selectedItemDiscount;
  double? innBinNumber;

  UpdateBasketAction(
      {this.cartList,
      this.selectedItem,
      this.reservedItems,
      this.selectedReservedItem,
      this.balance,
      this.totalDiscount,
      this.totalTax,
      this.taxExemptReceived,
      this.totalDue,
      this.selectedItemDiscount,
      this.innBinNumber,
      this.totalReceived});
}

///------------------Tender Action ---------
const String GetListPaymentMethodsAction = "GetListPaymentMethodsAction";
const String GetApprovePaymentAction = "GetApprovePaymentAction";
const String GetCancelPaymentAction = "GetCancelPaymentAction";
const String GetGetPartialPaymentAction = "GetGetPartialPaymentAction";

class UpdateTenderAction {
  List<TenderListPaymentMethodsRes>? listPaymentMethodsRes;
  TenderListPaymentMethodsRes? selectedPaymentMethod;

  UpdateTenderAction({this.listPaymentMethodsRes, this.selectedPaymentMethod});
}

///------------------Login Action ---------

const String GetLoginLoginAction = "GetLoginLoginAction";
const String GetLoginRegistrationInfoAction = "GetLoginRegistrationInfoAction";
const String GetLoginVerifyLicenseInfoAction =
    "GetLoginVerifyLicenseInfoAction";
const String GetLoginClearAuthAction = "GetLoginClearAuthAction";
const String GetLoginSetAuthAction = "GetLoginSetAuthAction";
const String GetCallLoginSetAuthAction = "GetCallLoginSetAuthAction";
const String GetLoginRegisterAppAction = "GetLoginRegisterAppAction";
const String GetLoginUpdateAppAction = "GetLoginUpdateAppAction";
const String GetListServersAction = "GetListServersAction";

class UpdateLoginAction {
  String? loginMsg;
  bool? loginIsLoading;
  SimpleSyncGetRegistrationInfoRes? simpleSyncGetRegistrationInfoRes;
  SimpleSyncVerifyLicenseRes? simpleSyncVerifyLicenseRes;
  StoreTerminal? storeTerminal;
  Map? serverList;
  Map? selectedDomain;

  UpdateLoginAction({
    this.loginMsg,
    this.selectedDomain,
    this.loginIsLoading,
    this.storeTerminal,
    this.simpleSyncGetRegistrationInfoRes,
    this.simpleSyncVerifyLicenseRes,
    this.serverList,
  });
}

///------------------Init Action ---------

const String GetDeviceInitDeviceAction = "GetDeviceInitDeviceAction";

class UpdateInitAction {
  SimpleDeviceInitDeviceRes? initDeviceRes;
  UpdateInitAction({this.initDeviceRes});
}

///------------------Entry Withdrawal Action ---------
const String GetStoreCashInOutHistory = "GetCashInOutHistory";
const String GetStoreCashInOut = "GetStoreCashInOut";

class UpdateEntryWithdrawalAction {
  double? amount;
  String? startDate;
  String? endDate;
  String? inOutType;
  //
  UpdateEntryWithdrawalAction({
    this.amount,
    this.inOutType,
    this.startDate,
    this.endDate,
    //
  });
}

///------------------Settings Action ---------

class UpdateSettingsAction {}

///------------------Inventory Action ---------
//warehouse
//warehouseApi
const String GetWarehouseInventoryBalanceItemsAction =
    "GetWarehouseInventoryBalanceItemsAction";

const String GetWarehouseInventoryListAcceptanceItemsDraftAction =
    "GetWarehouseInventoryListAcceptanceItemsDraftAction";

const String GetWarehouseInventoryListAcceptanceItemsCompleteAction =
    "GetWarehouseInventoryListAcceptanceItemsCompleteAction";

const String GetWarehouseInventoryAddAcceptanceItemAction =
    "GetWarehouseInventoryAddAcceptanceItemAction";

const String GetWarehouseInventoryUpdateAcceptanceItemAction =
    "GetWarehouseInventoryUpdateAcceptanceItemAction";

const String GetWarehouseInventoryDeleteAcceptanceItemAction =
    "GetWarehouseInventoryDeleteAcceptanceItemAction";

const String GetWarehouseInventoryDetailAcceptanceItemAction =
    "GetWarehouseInventoryDetailAcceptanceItemAction";

const String GetWarehouseInventoryListSupplierAction =
    "GetWarehouseInventoryListSupplierAction";

const String GetWarehouseInventoryAddSupplierAction =
    "GetWarehouseInventoryAddSupplierAction";

const String GetWarehouseInventoryUpdateSupplierAction =
    "GetWarehouseInventoryUpdateSupplierAction";

const String GetWarehouseInventoryDeleteSupplierAction =
    "GetWarehouseInventoryDeleteSupplierAction";

//revision

const String GetInventoryListRevisionItemsAction =
    'GetInventoryListRevisionItemsAction';
const String GetInventoryAddRevisionItemsAction =
    'GetInventoryAddRevisionItemsAction';
const String GetInventoryDetailRevisionItemsAction =
    'GetInventoryDetailRevisionItemsAction';

class UpdateInventoryAction {
  //warehouse
  int? selectedItemGroupId;
  TextEditingController? warehouseItemNameController;
  TextEditingController? warehouseBarcodeController;
  TextEditingController? warehousePurchasePriceController;
  TextEditingController? warehouseSalePriceController;

  // API warehouse
  List<InventoryBalanceProductItemRes>? inventoryBalanceItemsResList;
  List<InventoryAcceptanceListProductItemRes>?
      inventoryListAcceptanceItemsDraftResList;
  List<InventoryAcceptanceListProductItemRes>?
      inventoryListAcceptanceItemsCompleteResList;
  InventoryDetailAcceptanceItemRes? inventoryDetailAcceptanceItemRes;
  List<InventoryListSupplierRes>? inventoryListSupplierResList;

//revision

//api revision

  List<InventoryListRevisionItemRes>? inventoryListRevisionItemResList;
  InventoryDetailRevisionItemsRes? inventoryDetailRevisionItemsRes;

  UpdateInventoryAction({
    this.warehouseItemNameController,
    this.warehouseBarcodeController,
    this.warehousePurchasePriceController,
    this.warehouseSalePriceController,
    this.inventoryBalanceItemsResList,
    this.inventoryListAcceptanceItemsDraftResList,
    this.inventoryListAcceptanceItemsCompleteResList,
    this.inventoryDetailAcceptanceItemRes,
    this.inventoryListSupplierResList,
    this.selectedItemGroupId,
    this.inventoryListRevisionItemResList,
    this.inventoryDetailRevisionItemsRes,
  });
}

///------------------Store Action ---------
const String GetCashBalanceAction = "GetCashBalanceAction";
const String GetCashierNameAction = "GetCashierNameAction";
const String GetSalesCountAction = "GetSalesCountAction";
const String GetCashierInAction = "GetCashierInAction";
const String GetCashierOutAction = "GetCashierOutAction";
const String GetBusinessDayAction = "GetBusinessDayAction";
const String GetCheckPasswordAction = "GetCheckPasswordAction";
const String GetCashInOutHistoryAction = "GetCashInOutHistoryAction";
const String GetCashInOutAction = "GetCashInOutAction";
const String GetCurrentShiftAction = "GetCurrentShiftAction";

class UpdateStoreAction {
  double? cashBalance;
  String? cashierName;
  int? salesCount;
  String? businessDay; //yyyyMMd,
  List<StoreCashInOutHistoryRes>? cashInOutHistoryRes;
  StoreGetCurrentShiftRes? currentShiftRes;
  String? inOutType;
  String? amount;
  UpdateStoreAction(
      {this.salesCount,
      this.currentShiftRes,
      this.cashierName,
      this.cashBalance,
      this.cashInOutHistoryRes,
      this.amount,
      this.inOutType,
      this.businessDay});
}

///------------------Report Action ---------
const String GetListSalesByShiftAction = "GetListSalesByShiftAction";
const String GetSalesDetailsAction = "GetSalesDetailsAction";
const String GetSummarizeAmountsAction = "GetSummarizeAmountsAction";
const String GetSummarizeByItemGroupsAction = "GetSummarizeByItemGroupsAction";
const String GetSummarizeByItemsAction = "GetSummarizeByItemsAction";

class UpdateReportAction {
  String? startDate;
  String? endDate;
  bool? isSales;
  String? itemGroupId;
  //
  SimpleStoreGetCashierInfoRes? simpleStoreGetCashierInfoRes;
  List<TenderListSalesByShiftRes>? tenderListSalesByShiftResList;
  SimpleTenderGetSalesDetailsRes? simpleTenderGetSalesDetailsRes;
  SimpleReportSummarizeAmountsRes? simpleReportSummarizeAmountsRes;
  List<SimpleReportSummarizeByItemGroupsRes>?
      simpleReportSummarizeByItemGroupsResList;
  List<SimpleReportSummarizeByItemsRes>? simpleReportSummarizeByItemsResList;

  UpdateReportAction(
      {this.startDate,
      this.endDate,
      this.isSales,
      this.itemGroupId,
      //
      this.simpleStoreGetCashierInfoRes,
      this.tenderListSalesByShiftResList,
      this.simpleTenderGetSalesDetailsRes,
      this.simpleReportSummarizeAmountsRes,
      this.simpleReportSummarizeByItemGroupsResList,
      this.simpleReportSummarizeByItemsResList});
}

///------------------Return Action ---------

const String GetSalesHistoryAction = 'GetSalesHistoryAction';

class UpdateReturnAction {
  String? startDate;
  String? endDate;
  String? receiptNo;
  SimpleTenderGetSalesHistoryRes? simpleTenderGetSalesHistoryRes;

  UpdateReturnAction({
    this.startDate,
    this.endDate,
    this.receiptNo,
    this.simpleTenderGetSalesHistoryRes,
  });
}

///----------------- API -----------------

class GetRunApiFetchAction {
  String invokeMethod;
  dynamic params;
  bool json;
  bool showErrorPopup;

  VoidCallback? onSuccess;
  VoidCallback? onFail;
  GetRunApiFetchAction(this.invokeMethod,
      {this.params,
      this.json = false,
      this.showErrorPopup = true,
      this.onFail,
      this.onSuccess});
}

class UpdateApiAction {
  UpdateApiAction();
}

///------------------Search Action ---------

class GetSearchingAction {
  String msg;
  GetSearchingAction(this.msg);
}

class GetEmptySearchAction {}

class GetInitSearchAction {}

class GetSearchResultsAction {}

class UpdateSearchAction {
  SearchType? searchType;
  String? searchLabel;
  String? searchFSMState;

  UpdateSearchAction({
    this.searchType,
    this.searchLabel,
    this.searchFSMState,
  });
}

///------------------Calender Action ---------

class UpdateCalenderAction {
  String? startDate;
  String? endDate;

  UpdateCalenderAction({this.startDate, this.endDate});
}

import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/states/basket_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/calender_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/entry_withdrawal_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/init_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/item_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/login_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/report_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/return_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/settings_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/store_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/sync_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/tender_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/inventory_state.dart';

AppState appReducer(AppState state, dynamic action) {
  var newState = state.copyWith(
    navigationState: _navReducer(state.navigationState, action),
    searchState: _searchReducer(state.searchState, action),
    loginState: _loginReducer(state.loginState, action),
    entryWithdrawalState:
        _entryWithdrawalReducer(state.entryWithdrawalState, action),
    inventoryState: _warehouseReducer(state.inventoryState, action),
    reportState: _reportReducer(state.reportState, action),
    returnState: _returnReducer(state.returnState, action),
    initState: _initReducer(state.initState, action),
    syncState: _syncReducer(state.syncState, action),
    basketState: _basketReducer(state.basketState, action),
    itemState: _itemReducer(state.itemState, action),
    tenderState: _tenderReducer(state.tenderState, action),
    calenderState: _calenderReducer(state.calenderState, action),
    storeState: _storeReducer(state.storeState, action),
  );

  return newState;
}

///
/// Navigation Reducer
///
final _navReducer = combineReducers<NavigationState>([
  TypedReducer<NavigationState, UpdateNavigationAction>(_updateNavigationState),
]);

NavigationState _updateNavigationState(
    NavigationState state, UpdateNavigationAction action) {
  print(
      '--- NAVIGATE TO ${action.name} (${action.isPage! ? 'PAGE' : 'POPUP'}) by ${action.method!.toUpperCase()} ---');
  var history = List.from(state.history);

  switch (action.method) {
    case 'push':
      if (action.name == '/') {
        history.insert(0, action);
      } else {
        history.add(action);
      }
      break;
    case 'pop':
      if (history.isNotEmpty) {
        history.removeLast();
      }
      break;
    case 'replace':
      if (history.isNotEmpty) {
        history.removeLast();
      }

      history.add(action);
      break;
  }

  if (kDebugMode) {
    print('------------HISTORY-------------');

    for (var i in history.reversed) {
      print('${i.isPage ? 'page' : 'popup'} - ${i.name}');
    }

    print('--------------------------------');
  }

  return state.copyWith(history: history);
}

///
/// Search Reducer
///
final _searchReducer = combineReducers<SearchState>([
  TypedReducer<SearchState, UpdateSearchAction>(_updateSearchAction),
]);

SearchState _updateSearchAction(SearchState state, UpdateSearchAction action) {
  return state.copyWith(
    searchType: action.searchType ?? state.searchType,
    searchLabel: action.searchLabel ?? state.searchLabel,
    searchFSMState: action.searchFSMState ?? state.searchFSMState,
  );
}

///
/// Login Reducer
///

final _loginReducer = combineReducers<LoginState>([
  TypedReducer<LoginState, UpdateLoginAction>(_updateLoginAction),
]);

LoginState _updateLoginAction(LoginState state, UpdateLoginAction action) {
  return state.copyWith(
    loginMsg: action.loginMsg ?? state.loginMsg,
    loginIsLoading: action.loginIsLoading ?? state.loginIsLoading,
    storeTerminal: action.storeTerminal ?? state.storeTerminal,
    serverList: action.serverList ?? state.serverList,
    selectedDomain: action.selectedDomain ?? state.selectedDomain,
    simpleSyncGetRegistrationInfoRes: action.simpleSyncGetRegistrationInfoRes ??
        state.simpleSyncGetRegistrationInfoRes,
    simpleSyncVerifyLicenseRes:
        action.simpleSyncVerifyLicenseRes ?? state.simpleSyncVerifyLicenseRes,
  );
}

///
/// Init Reducer
///

final _initReducer = combineReducers<InitState>([
  TypedReducer<InitState, UpdateInitAction>(_updateInitAction),
]);

InitState _updateInitAction(InitState state, UpdateInitAction action) {
  return state.copyWith(
    initDeviceRes: action.initDeviceRes ?? state.initDeviceRes,
  );
}

///
/// Sync Reducer
///

final _syncReducer = combineReducers<SyncState>([
  TypedReducer<SyncState, UpdateSyncAction>(_updateSyncState),
]);

SyncState _updateSyncState(SyncState state, UpdateSyncAction action) {
  return state.copyWith(
    verifyLicenseRes: action.verifyLicenseRes ?? state.verifyLicenseRes,
    listServersRes: action.listServersRes ?? state.listServersRes,
    getStatusRes: action.getStatusRes ?? state.getStatusRes,
    getRegistrationInfoRes:
        action.getRegistrationInfoRes ?? state.getRegistrationInfoRes,
  );
}

///
/// Bakset Reducer
///

final _basketReducer = combineReducers<BasketState>([
  TypedReducer<BasketState, UpdateBasketAction>(_updateBaskedState),
]);

BasketState _updateBaskedState(BasketState state, UpdateBasketAction action) {
  double totalCartPrice = 0;

  if (state.cartList.isNotEmpty) {
    for (int i = 0; i < state.cartList.length; i++) {
      double price = state.cartList[i].price!;
      double qty = state.cartList[i].qty;
      double discount = state.cartList[i].discount ?? 0;
      totalCartPrice += (price * qty) - discount;
    }
  }
  return state.copyWith(
    selectedItem: action.selectedItem ?? state.selectedItem,
    cartList: action.cartList ?? state.cartList,
    innBinNumber: action.innBinNumber ?? state.innBinNumber,
    reservedItems: action.reservedItems ?? state.reservedItems,
    selectedReservedItem:
        action.selectedReservedItem ?? state.selectedReservedItem,
    totalReceived: action.totalReceived ?? state.totalReceived,
    totalDue: action.totalDue ?? totalCartPrice,
    balance: action.balance ?? state.balance,
    taxExemptReceived: action.taxExemptReceived ?? state.taxExemptReceived,
    totalTax: action.totalTax ?? state.totalTax,
    totalDiscount: action.totalDiscount ?? state.totalDiscount,
    selectedItemDiscount:
        action.selectedItemDiscount ?? state.selectedItemDiscount,
  );
}

///
/// Item Reducer
///

final _itemReducer = combineReducers<ItemState>([
  TypedReducer<ItemState, UpdateItemAction>(_updateItemAction),
]);

ItemState _updateItemAction(ItemState state, UpdateItemAction action) {
  return state.copyWith(
    listGroups: action.listGroups ?? state.listGroups,
    listItems: action.listItems ?? state.listItems,
    currentCategory: action.currentCategory ?? state.currentCategory,
  );
}

///
/// Tender Reducer
///

final _tenderReducer = combineReducers<TenderState>([
  TypedReducer<TenderState, UpdateTenderAction>(_updateTenderAction),
]);

TenderState _updateTenderAction(TenderState state, UpdateTenderAction action) {
  return state.copyWith(
      listPaymentMethodsRes:
          action.listPaymentMethodsRes ?? state.listPaymentMethodsRes,
      selectedPaymentMethod:
          action.selectedPaymentMethod ?? state.selectedPaymentMethod);
}

///
/// Entry Withdrawal Reducer
///

final _entryWithdrawalReducer = combineReducers<EntryWithdrawalState>([
  TypedReducer<EntryWithdrawalState, UpdateEntryWithdrawalAction>(
      _updateEntryWithdrawalAction),
]);

EntryWithdrawalState _updateEntryWithdrawalAction(
    EntryWithdrawalState state, UpdateEntryWithdrawalAction action) {
  return state.copyWith(
      amount: action.amount ?? state.amount,
      inOutType: action.inOutType ?? state.inOutType,
      startDate: action.startDate ?? state.startDate,
      endDate: action.endDate ?? state.endDate);
}

///
/// Settings Reducer
///

final _settingsReducer = combineReducers<SettingsState>([
  TypedReducer<SettingsState, UpdateSettingsAction>(_updateSettingsAction),
]);

SettingsState _updateSettingsAction(
    SettingsState state, UpdateSettingsAction action) {
  return state.copyWith();
}

///
/// Warehouse Reducer
///

final _warehouseReducer = combineReducers<InventoryState>([
  TypedReducer<InventoryState, UpdateInventoryAction>(_updateWarehouseAction),
]);

InventoryState _updateWarehouseAction(
    InventoryState state, UpdateInventoryAction action) {
  return state.copyWith(
    //warehouse
    selectedItemGroupId:
        action.selectedItemGroupId ?? state.selectedItemGroupId,
    // API warehouse
    inventoryBalanceItemsResList: action.inventoryBalanceItemsResList ??
        state.inventoryBalanceItemsResList,

    inventoryDetailAcceptanceItemRes: action.inventoryDetailAcceptanceItemRes ??
        state.inventoryDetailAcceptanceItemRes,
    inventoryListSupplierResList: action.inventoryListSupplierResList ??
        state.inventoryListSupplierResList,
//revision
//api revision
    inventoryListRevisionItemResList: action.inventoryListRevisionItemResList ??
        state.inventoryListRevisionItemResList,
    inventoryDetailRevisionItemsRes: action.inventoryDetailRevisionItemsRes ??
        state.inventoryDetailRevisionItemsRes,
  );
}

///
/// Store Reducer
///

final _storeReducer = combineReducers<StoreState>([
  TypedReducer<StoreState, UpdateStoreAction>(_updateStoreAction),
]);

StoreState _updateStoreAction(StoreState state, UpdateStoreAction action) {
  return state.copyWith(
    salesCount: action.salesCount ?? state.salesCount,
    currentShiftRes: action.currentShiftRes ?? state.currentShiftRes,
    businessDay: action.businessDay ?? state.businessDay,
    cashierName: action.cashierName ?? state.cashierName,
    cashInOutHistoryRes:
        action.cashInOutHistoryRes ?? state.cashInOutHistoryRes,
    cashBalance: action.cashBalance ?? state.cashBalance,
    amount: action.amount ?? state.amount,
    inOutType: action.inOutType ?? state.inOutType,
  );
}

///
/// Report Reducer
///

final _reportReducer = combineReducers<ReportState>([
  TypedReducer<ReportState, UpdateReportAction>(_updateReportAction),
]);

ReportState _updateReportAction(ReportState state, UpdateReportAction action) {
  return state.copyWith(
    isSales: action.isSales ?? state.isSales,
    itemGroupId: action.itemGroupId ?? state.itemGroupId,
    //
    simpleStoreGetCashierInfoRes: action.simpleStoreGetCashierInfoRes ??
        state.simpleStoreGetCashierInfoRes,
    tenderListSalesByShiftResList: action.tenderListSalesByShiftResList ??
        state.tenderListSalesByShiftResList,
    simpleTenderGetSalesDetailsRes: action.simpleTenderGetSalesDetailsRes ??
        state.simpleTenderGetSalesDetailsRes,
    simpleReportSummarizeAmountsRes: action.simpleReportSummarizeAmountsRes ??
        state.simpleReportSummarizeAmountsRes,
    simpleReportSummarizeByItemGroupsResList:
        action.simpleReportSummarizeByItemGroupsResList ??
            state.simpleReportSummarizeByItemGroupsResList,
    simpleReportSummarizeByItemsResList:
        action.simpleReportSummarizeByItemsResList ??
            state.simpleReportSummarizeByItemsResList,
  );
}

///
/// Return Reducer
///

final _returnReducer = combineReducers<ReturnState>([
  TypedReducer<ReturnState, UpdateReturnAction>(_updateReturnAction),
]);

ReturnState _updateReturnAction(ReturnState state, UpdateReturnAction action) {
  return state.copyWith(
    startDate: action.startDate ?? state.startDate,
    endDate: action.endDate ?? state.endDate,
    receiptNo: action.receiptNo ?? state.receiptNo,
    simpleTenderGetSalesHistoryRes: action.simpleTenderGetSalesHistoryRes ??
        state.simpleTenderGetSalesHistoryRes,
  );
}

///
/// Calender Reducer
///

final _calenderReducer = combineReducers<CalenderState>([
  TypedReducer<CalenderState, UpdateCalenderAction>(_updateCalenderAction),
]);

CalenderState _updateCalenderAction(
    CalenderState state, UpdateCalenderAction action) {
  return state.copyWith(
      startDate: action.startDate ?? state.startDate,
      endDate: action.endDate ?? state.endDate);
}

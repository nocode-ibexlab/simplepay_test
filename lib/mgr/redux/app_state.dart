import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/api_middeware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/basket_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/entry_withdrawal_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/init_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/item_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/login_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/report_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/return_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/search_middeware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/settings_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/sync_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/inventory_middleware.dart';
import 'package:simple_pay_flutter/mgr/redux/reducer.dart';
import 'package:simple_pay_flutter/mgr/redux/states/basket_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/calender_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/entry_withdrawal_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/init_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/item_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/login_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/report_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/return_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/nav_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/settings_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/store_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/sync_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/tender_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/inventory_state.dart';
import 'middleware/navigation_middleware.dart';
import 'middleware/store_middleware.dart';
import 'middleware/tender_middleware.dart';

export './states/nav_state.dart';

AppState get GETSTATE => StoreProvider.of<AppState>(Get.context!).state;

final appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initial(),
  middleware: [
    NavigationMiddleware(),
    InitMiddleware(),
    ApiMiddleware(),
    SearchMiddleware(),
    LoginMiddleware(),
    EntryWithdrawalMiddleware(),
    SettingsMiddleware(),
    InventoryMiddleware(),
    InventoryMiddleware(),
    ReportMiddleware(),
    ReturnMiddleware(),
    SyncMiddleware(),
    BasketMiddleware(),
    ItemMiddleware(),
    TenderMiddleware(),
    StoreMiddleware(),
  ],
);

@immutable
class AppState {
  final NavigationState navigationState;
  final SearchState searchState;
  final LoginState loginState;
  final EntryWithdrawalState entryWithdrawalState;
  final SettingsState settingsState;
  final InventoryState inventoryState;
  final ReportState reportState;
  final ReturnState returnState;
  final InitState initState;
  final SyncState syncState;
  final BasketState basketState;
  final ItemState itemState;
  final TenderState tenderState;
  final CalenderState calenderState;
  final StoreState storeState;

  AppState(
      {required this.navigationState,
      required this.searchState,
      required this.loginState,
      required this.entryWithdrawalState,
      required this.inventoryState,
      required this.settingsState,
      required this.reportState,
      required this.returnState,
      required this.initState,
      required this.syncState,
      required this.basketState,
      required this.itemState,
      required this.tenderState,
      required this.storeState,
      required this.calenderState});

  factory AppState.initial() {
    return AppState(
      navigationState: NavigationState.initial(),
      searchState: SearchState.initial(),
      loginState: LoginState.initial(),
      entryWithdrawalState: EntryWithdrawalState.initial(),
      settingsState: SettingsState.initial(),
      inventoryState: InventoryState.initial(),
      reportState: ReportState.initial(),
      returnState: ReturnState.initial(),
      initState: InitState.initial(),
      syncState: SyncState.initial(),
      basketState: BasketState.initial(),
      itemState: ItemState.initial(),
      tenderState: TenderState.initial(),
      calenderState: CalenderState.initial(),
      storeState: StoreState.initial(),
    );
  }

  AppState copyWith({
    NavigationState? navigationState,
    SearchState? searchState,
    LoginState? loginState,
    EntryWithdrawalState? entryWithdrawalState,
    SettingsState? settingsState,
    InventoryState? inventoryState,
    ReportState? reportState,
    ReturnState? returnState,
    InitState? initState,
    SyncState? syncState,
    BasketState? basketState,
    ItemState? itemState,
    TenderState? tenderState,
    CalenderState? calenderState,
    StoreState? storeState,
  }) {
    return AppState(
        navigationState: navigationState ?? this.navigationState,
        storeState: storeState ?? this.storeState,
        searchState: searchState ?? this.searchState,
        loginState: loginState ?? this.loginState,
        entryWithdrawalState: entryWithdrawalState ?? this.entryWithdrawalState,
        settingsState: settingsState ?? this.settingsState,
        inventoryState: inventoryState ?? this.inventoryState,
        reportState: reportState ?? this.reportState,
        returnState: returnState ?? this.returnState,
        initState: initState ?? this.initState,
        syncState: syncState ?? this.syncState,
        basketState: basketState ?? this.basketState,
        itemState: itemState ?? this.itemState,
        tenderState: tenderState ?? this.tenderState,
        calenderState: calenderState ?? this.calenderState);
  }
}

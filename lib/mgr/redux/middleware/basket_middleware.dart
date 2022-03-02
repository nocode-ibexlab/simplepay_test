import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';
import 'package:simple_pay_flutter/presentation/widgets/reserve_bottom_sheet.dart';

import '../../../presentation/template/base/template.dart';
import '../action.dart';

class BasketMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetAddToCartAction:
        return _getAddToCartAction(store.state, next);
      case GetIncrementItemQtyFromCartAction:
        return _getIncrementItemQtyFromCartAction(store.state, next);
      case GetDecrementItemQtyFromCartAction:
        return _getDecrementItemQtyFromCartAction(store.state, next);
      case GetDeleteItemFromCartAction:
        return _getDeleteItemFromCartAction(store.state, next);
      case GetClearCartAction:
        return _getClearCartAction(store.state, next);
      case GetReservedOrderListAction:
        return _getReservedOrderListAction(store.state, next);
      case GetLoadReservedItemAction:
        return _getLoadReservedItemAction(store.state, next);
      case GetCalculateTotalDueAction:
        return _getCalculateTotalDueAction(store.state, next);
      case GetAddDiscountToCartItemAction:
        return _getAddDiscountToCartItemAction(store.state, next);
      case GetOrderSaveOrderAction:
        return _getOrderSaveOrderAction(store.state, next);
      default:
        return next(action);
    }
  }
}

//GetAddToCartAction
_getAddToCartAction(AppState state, NextDispatcher next) async {
  OrderItemRes newItem1 = state.basketState.selectedItem;
  newItem1.qty = 1;
  newItem1.discount = 0;
  List<OrderItemRes> cartItems1 = state.basketState.cartList;
  cartItems1.add(newItem1);
  next(UpdateBasketAction(cartList: cartItems1));
}

//GetIncrementItemQtyFromCartAction
_getIncrementItemQtyFromCartAction(AppState state, NextDispatcher next) async {
  OrderItemRes selectedItem1 = state.basketState.selectedItem;
  selectedItem1.discount = 0;
  selectedItem1.qty += 1;
  next(UpdateBasketAction());
}

//GetDecrementItemQtyFromCartAction
_getDecrementItemQtyFromCartAction(AppState state, NextDispatcher next) async {
  OrderItemRes selectedItem1 = state.basketState.selectedItem;
  selectedItem1.discount = 0;
  if (selectedItem1.qty > 1) {
    selectedItem1.qty -= 1;
    next(UpdateBasketAction());
  } else {
    _getDeleteItemFromCartAction(state, next);
  }
}

//GetDeleteItemFromCartAction
_getDeleteItemFromCartAction(AppState state, NextDispatcher next) async {
  final cartItems1 = state.basketState.cartList;
  final selectedItem1 = cartItems1.firstWhere(
      (element) => element.itemId == state.basketState.selectedItem.itemId);
  cartItems1.remove(selectedItem1);
  next(UpdateBasketAction(cartList: cartItems1));
}

//GetClearCartAction
_getClearCartAction(AppState state, NextDispatcher next) async {
  next(UpdateBasketAction(
      cartList: [],
      selectedItem:
          OrderItemRes(name: '', id: '', itemId: '', qty: 0, price: 0)));
}

//GetReservedOrderListAction
_getReservedOrderListAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateBasketAction(
        reservedItems: OrderListOrdersRes(
            list: ApiResult.value
                .map<OrderListItemRes>((e) => OrderListItemRes.fromJson(e))
                .toList())));
    // next(GetClearCartAction);
    showModalBottomSheet(
        context: Get.context!,
        builder: (context) {
          return const ReserveBottomSheetWidget();
        });
  }

  _onFail() {}
  final _params = {
    "tableId": null
  }; //state.basketState.selectedReservedItem.tableId
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeListOrders,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetLoadReservedItemAction
_getLoadReservedItemAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    List<OrderItemRes> items = [];
    items = ApiResult.value['items'].map<OrderItemRes>((e) {
      return OrderItemRes.fromJson(e);
    }).toList();
    next(UpdateBasketAction(
        cartList: items,
        totalDue: ApiResult.value['totalDue'],
        taxExemptReceived: ApiResult.value['taxExemptReceived'],
        totalReceived: ApiResult.value['totalReceived'],
        balance: ApiResult.value['balance']));
    appStore.dispatch(DismissPopupAction());
  }

  _onFail() {}
  final _params = {"orderId": state.basketState.selectedReservedItem.orderId};
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetOrder,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetCalculateTotalDueAction
_getCalculateTotalDueAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateBasketAction(
        totalDue: ApiResult.value['totalDue'],
        totalDiscount: ApiResult.value['totalDiscount'],
        totalTax: ApiResult.value['totalTax']));
    appStore.dispatch(DismissPopupAction());
  }

  _onFail() {}
  final _params = {
    "items": state.basketState.cartList
        .map<Map>(
            (e) => {"itemId": e.itemId, "qty": e.qty, "discount": e.discount})
        .toList()
  };
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeCalculateTotal,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetAddDiscountToCartItemAction
_getAddDiscountToCartItemAction(AppState state, NextDispatcher next) async {
  double discount = state.basketState.selectedItemDiscount;
  OrderItemRes selectedItem = state.basketState.selectedItem;
  selectedItem.discount = discount;
  next(UpdateBasketAction());
}

//GetOrderSaveOrderAction
_getOrderSaveOrderAction(AppState state, next) async {
  final _params = {
    "items": state.basketState.cartList
        .map<Map>(
            (e) => {"itemId": e.itemId, "qty": e.qty, "discount": e.discount})
        .toList()
  };

  _onSuccess() {}
  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeSaveOrder,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetOrderDeleteOrderAction
_getOrderDeleteOrderAction(AppState state, next) async {
  // final _params = {'orderId': state.cartState.loadedReservedItems['orderId']};
  // _onSuccess() {}
  // _onFail() {}
  // await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeDeleteOrder,
  //     params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';

import '../../fsm/api_fsm.dart';
import '../../models/item/list_groups_res.dart';
import '../../models/item/product_item_res.dart';
import '../../models/simple_items_list_recently_used_items/items_list_recently_used_items_res.dart';
import '../../rest/api_service_client.dart';
import '../action.dart';

class ItemMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetItemSearchListGroupsAction:
        return _getItemSearchListGroupsAction(store.state, next);
      case GetItemSearchListItemsAction:
        return _getItemSearchListItemsAction(store.state, next);
      case GetItemBestSellingListGroupsAction:
        return _getItemBestSellingListGroupsAction(store.state, next);
      case GetItemBestSellingItemsAction:
        return _getItemBestSellingItemsAction(store.state, next);
      case GetItemRecentlyUsedItemsAction:
        return _getItemRecentlyUsedItemsAction(store.state, next);

      default:
        return next(action);
    }
  }
}

//GetItemBestSellingListGroupsAction
_getItemBestSellingListGroupsAction(AppState state, next) async {
  dynamic _params = {
    "isRecommended": true,
  };
  _onSuccess() {
    next(UpdateItemAction(
        listGroups: ApiResult.value
            .map<ItemListGroupsRes>((e) => ItemListGroupsRes.fromJson(e))
            .toList()));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeItemListGroups,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetItemBestSellingItemsAction
_getItemBestSellingItemsAction(AppState state, next) async {
  dynamic _params = {
    "groupId": state.itemState.currentCategory.id,
    "name": state.itemState.currentCategory.itemName,
    "isRecommended": true,
  };
  _onSuccess() {
    next(UpdateItemAction(
        listItems: ApiResult.value
            .map<ProductItemRes>((e) => ProductItemRes.fromJson(e))
            .toList()));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeListItems,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetItemSearchListGroupsAction
_getItemSearchListGroupsAction(AppState state, next) async {
  _onSuccess() {
    next(UpdateItemAction(
        listGroups: ApiResult.value
            .map<ItemListGroupsRes>((e) => ItemListGroupsRes.fromJson(e))
            .toList()));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeItemListGroups,
      onSuccess: _onSuccess, onFail: _onFail));
}

//GetItemSearchListItemsAction
_getItemSearchListItemsAction(AppState state, next) async {
  dynamic _params = {
    "groupId": state.itemState.currentCategory.id,
    "name": state.itemState.currentCategory.itemName,
    "isRecommended": false,
  };
  _onSuccess() {
    next(UpdateItemAction(
        listItems: ApiResult.value
            .map<ProductItemRes>((e) => ProductItemRes.fromJson(e))
            .toList()));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeListItems,
      params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetItemRecentlyUsedItemsAction
_getItemRecentlyUsedItemsAction(state, next) async {
  dynamic _params = {
    "itemId": '1E00613B45A50006', //TODO:SHOH
  };
  _onSuccess() {
    List<ProductItemRes> list = ApiResult.value
        .map<ProductItemRes>((e) => ProductItemRes.fromJson(e))
        .toList();

    // next(UpdateSalesAction(
    //     simpleItemsListRecentlyUsedItemsResList:
    //     simpleItemsListRecentlyUsedItemsResList));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeRecentlyUsedItems,
      params: _params,
      onFail: _onFail,
      onSuccess: _onSuccess));
}

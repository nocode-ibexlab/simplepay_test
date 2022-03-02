import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/models/item/list_groups_res.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';

class SearchMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action.runtimeType) {
      case GetSearchingAction:
        return _getSearchingAction(store.state, action, next);
      case GetInitSearchAction:
        return _getInitSearchAction(store.state, next);
      case GetEmptySearchAction:
        return _getEmptySearchAction(store.state, next);
      case GetSearchResultsAction:
        return _getSearchResultsAction(store.state, next);

      default:
        return next(action);
    }
  }
}

_getSearchingAction(
    AppState state, GetSearchingAction action, NextDispatcher next) async {
  appStore.dispatch(UpdateSearchAction(searchFSMState: "SearchingSearchState"));
  ItemListGroupsRes currentCat = state.itemState.currentCategory;
  currentCat.itemName = action.msg;
  next(UpdateItemAction(currentCategory: currentCat));
  await appStore.dispatch(GetItemSearchListItemsAction);
  appStore.dispatch(GetSearchResultsAction());
}

_getSearchResultsAction(AppState state, NextDispatcher next) async {
  final res = state.itemState.listItems;
  if (res.isEmpty) {
    appStore.dispatch(GetEmptySearchAction());
  }
}

_getInitSearchAction(AppState state, NextDispatcher next) async {
  appStore.dispatch(UpdateSearchAction(searchFSMState: "InitSearchState"));
  // appStore.dispatch(UpdateItemAction(
  //     currentCategory: ItemListGroupsRes(id: '', name: '', itemName: null),
  //     listItems: []));
  appStore.dispatch(UpdateSearchAction(searchType: SearchType.SALE_CAT_SEARCH));
}

_getEmptySearchAction(AppState state, NextDispatcher next) async {
  appStore.dispatch(UpdateSearchAction(searchFSMState: "EmptySearchState"));
}

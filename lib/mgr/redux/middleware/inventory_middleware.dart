import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';

import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';

import '../../models/model_exporter.dart';

class InventoryMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetWarehouseInventoryBalanceItemsAction:
        return _getWarehouseInventoryBalanceItemsAction(store.state, next);

      case GetWarehouseInventoryListAcceptanceItemsDraftAction:
        return _getWarehouseInventoryListAcceptanceItemsAction(
            store.state, next, 'Draft');

      case GetWarehouseInventoryListAcceptanceItemsCompleteAction:
        return _getWarehouseInventoryListAcceptanceItemsAction(
            store.state, next, 'Complete');
      case GetWarehouseInventoryAddAcceptanceItemAction:
        return _getWarehouseInventoryAddAcceptanceItemAction(store.state, next);

      case GetWarehouseInventoryUpdateAcceptanceItemAction:
        return _getWarehouseInventoryUpdateAcceptanceItemAction(
            store.state, next);
      case GetWarehouseInventoryDeleteAcceptanceItemAction:
        return _getWarehouseInventoryDeleteAcceptanceItemAction(
            store.state, next);

      case GetWarehouseInventoryDetailAcceptanceItemAction:
        return _getWarehouseInventoryDetailAcceptanceItemAction(
            store.state, next);
      case GetWarehouseInventoryListSupplierAction:
        return _getWarehouseInventoryListSupplierAction(store.state, next);
      case GetWarehouseInventoryAddSupplierAction:
        return _getWarehouseInventoryAddSupplierAction(store.state, next);
      case GetWarehouseInventoryUpdateSupplierAction:
        return _getWarehouseInventoryUpdateSupplierAction(store.state, next);
      case GetWarehouseInventoryDeleteSupplierAction:
        return _getWarehouseInventoryDeleteSupplierAction(store.state, next);

      //revision
      //api
      case GetInventoryListRevisionItemsAction:
        return _getInventoryListRevisionItems(store.state, next);
      case GetInventoryAddRevisionItemsAction:
        return _getInventoryAddRevisionItems(store.state, next);
      case GetInventoryDetailRevisionItemsAction:
        return _getInventoryDetailRevisionItemsAction(store.state, next);
      default:
        return next(action);
    }
  }

  _getWarehouseInventoryDeleteSupplierAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "supplierId": "", //required
    };
    _onFail() {}

    _onSuccess() {}
    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryDeleteSupplier,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryUpdateSupplierAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "supplierId": "", //required
      "name": "", //required
    };

    _onFail() {}

    _onSuccess() {}
    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryUpdateSupplier,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryAddSupplierAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "name": "" // required
    };

    _onFail() {}

    _onSuccess() {}

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryAddSupplier,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryListSupplierAction(
      AppState state, NextDispatcher next) async {
    _onFail() {}

    _onSuccess() {
      // List<SimpleInventoryListSupplierRes> list = [];
      // for (int index = 0; index < ApiResult.value.length; index++) {
      //   list.add(
      //       SimpleInventoryListSupplierRes.fromJson(ApiResult.value[index]));
      // }
      //
      // next(UpdateWarehouseAction(simpleInventoryListSupplierResList: list));
    }

    await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeInventoryListSupplier,
      onFail: _onFail,
      onSuccess: _onSuccess,
    ));
  }

  _getWarehouseInventoryDetailAcceptanceItemAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "acceptanceItemsId": "", //required
    };

    _onFail() {}

    _onSuccess() {
      next(UpdateInventoryAction(
          inventoryDetailAcceptanceItemRes:
              InventoryDetailAcceptanceItemRes.fromJson(ApiResult.value)));
    }

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryDetailAcceptanceItem,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryDeleteAcceptanceItemAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "acceptanceItemsId": "", //required
    };
    _onFail() {}

    _onSuccess() {}
    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryDeleteAcceptanceItem,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryUpdateAcceptanceItemAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "acceptanceItemsId": "", //required
      "name": "", //required
      "type": "", //required
      "items": InventoryAcceptanceProductItemRes(
        itemGroupId: '',
        itemId: '',
        purchasePrice: 0,
        qty: 0,
      ),
    };
    _onFail() {}

    _onSuccess() {}
    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryUpdateAcceptanceItem,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryAddAcceptanceItemAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "name": "", //required
      "type": "", //required
      "items": InventoryAcceptanceProductItemRes(
        itemGroupId: '',
        itemId: '',
        purchasePrice: 0,
        qty: 0,
      ),
    };
    _onFail() {}

    _onSuccess() {}

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryAddAcceptanceItem,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryListAcceptanceItemsAction(
      AppState state, NextDispatcher next, String acceptanceType) async {
    final _params = {
      "startDate": state.calenderState.startDate,
      "endDate": state.calenderState.endDate,
      "type": acceptanceType, //required
      "pageIndex": null,
      "pageSize": null,
    };
    _onFail() {}

    _onSuccess() {
      if (acceptanceType == "Draft") {
        next(UpdateInventoryAction(
            inventoryListAcceptanceItemsDraftResList: ApiResult.value
                .map<InventoryAcceptanceListProductItemRes>(
                    (e) => InventoryAcceptanceListProductItemRes.fromJson(e))
                .toList()));
      } else {
        next(UpdateInventoryAction(
            inventoryListAcceptanceItemsCompleteResList: ApiResult.value
                .map<InventoryAcceptanceListProductItemRes>(
                    (e) => InventoryAcceptanceListProductItemRes.fromJson(e))
                .toList()));
      }
    }

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryListAcceptanceItems,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  _getWarehouseInventoryBalanceItemsAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "itemGroupId":
          state.inventoryState.selectedItemGroupId.toString(), //required
      "name": null,
      "barcode": null,
      "pageIndex": null,
      "pageSize": null,
    };
    _onFail() {}

    _onSuccess() {
      List<InventoryBalanceProductItemRes> list = [];
      for (int index = 0; index < ApiResult.value.length; ++index) {
        list.add(
            InventoryBalanceProductItemRes.fromJson(ApiResult.value[index]));
      }

      next(UpdateInventoryAction(
          inventoryBalanceItemsResList: ApiResult.value
              .map<InventoryBalanceProductItemRes>(
                  (e) => InventoryBalanceProductItemRes.fromJson(e))
              .toList()));
    }

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryBalanceItems,
        onFail: _onFail,
        onSuccess: _onSuccess,
        params: _params));
  }

  // showSimpleDialog(
  //         paddingBottom: 48,
  //         paddingTop: 48,
  //         horizontalPadding: 36,
  //         borderRadius: 24,
  //         body: SpacedColumn(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           verticalSpace: 13,
  //           children: [
  //             SimplePayIcon(
  //               PayIcons.check,
  //               size: 86.h,
  //             ),
  //             SizedText(
  //               text: 'Товар создан',
  //               textStyle: ThemeTextSemibold.xl3
  //                   .copyWith(color: ThemeColors.coolgray900),
  //             ),
  //             SizedText(
  //               text: 'Повторно можете посмотреть в разделе остатки',
  //               textStyle: ThemeTextRegular.lg5
  //                   .copyWith(color: ThemeColors.coolgray400),
  //             ),
  //           ],
  //         ));

  //revision
//api revision
  _getInventoryListRevisionItems(AppState state, NextDispatcher next) async {
    final _params = {
      "startDate": '1',
      "endDate": '1',
      "pageIndex": 1,
      "pageSize": 1,
    };
    _onSuccess() {
      next(UpdateInventoryAction(
          inventoryListRevisionItemResList: ApiResult.value
              .map<InventoryListRevisionItemRes>(
                  (e) => InventoryListRevisionItemRes.fromJson(e))
              .toList()));
    }

    _onFail() {}

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryListRevisionItems,
        params: _params,
        onSuccess: _onSuccess,
        onFail: _onFail));
  }

  _getInventoryAddRevisionItems(AppState state, NextDispatcher next) async {
    final _params = {
      "name": "", //required
      "items": InventoryRevisionItemRes(
        itemId: '',
        name: '',
        realQty: 0,
        purchasePrice: 0,
      ),
    };

    _onSuccess() {}

    _onFail() {}

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryAddRevisionItems,
        params: _params,
        onSuccess: _onSuccess,
        onFail: _onFail));
  }

  _getInventoryDetailRevisionItemsAction(
      AppState state, NextDispatcher next) async {
    final _params = {
      "revisionItemsId": "", //required
    };
    _onSuccess() {
      InventoryDetailRevisionItemsRes inventoryDetailRevisionItemsRes =
          InventoryDetailRevisionItemsRes.fromJson(ApiResult.value);

      next(UpdateInventoryAction(
          inventoryDetailRevisionItemsRes: inventoryDetailRevisionItemsRes));
    }

    _onFail() {}

    await appStore.dispatch(GetRunApiFetchAction(
        ApiInvokes.invokeInventoryDetailRevisionItems,
        params: _params,
        onSuccess: _onSuccess,
        onFail: _onFail));
  }
}

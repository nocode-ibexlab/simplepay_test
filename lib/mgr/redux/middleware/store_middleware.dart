import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';

import '../../models/store/get_cash_in_out_history_res.dart';

class StoreMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetCashBalanceAction:
        return _getCashBalanceAction(store.state, next);
      case GetCashierNameAction:
        return _getCashierNameAction(store.state, next);
      case GetSalesCountAction:
        return _getSalesCountAction(store.state, next);
      case GetCashierInAction:
        return _getCashierInAction(store.state, next);
      case GetCashierOutAction:
        return _getCashierOutAction(store.state, next);
      case GetBusinessDayAction:
        return _getBusinessDayAction(store.state, next);
      case GetCheckPasswordAction:
        return _getCheckPasswordAction(store.state, next);
      case GetCashInOutHistoryAction:
        return _getCashInOutHistoryAction(store.state, next);
      case GetCashInOutAction:
        return _getCashInOutAction(store.state, next);
      case GetCurrentShiftAction:
        return _getCurrentShiftAction(store.state, next);
      default:
        return next(action);
    }
  }
}

_getCashBalanceAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateStoreAction(cashBalance: ApiResult.value['balance']));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetCashBalance,
      onFail: _onFail, onSuccess: _onSuccess));

  await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeGetCashBalance,
    onSuccess: _onSuccess,
    onFail: _onFail,
  ));
}

_getCashierNameAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateStoreAction(cashierName: ApiResult.value['name']));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetCashierName,
      onFail: _onFail, onSuccess: _onSuccess));

  await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeGetCashierName,
    onSuccess: _onSuccess,
    onFail: _onFail,
  ));
}

_getSalesCountAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateStoreAction(salesCount: ApiResult.value['count']));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetSalesCount,
      onFail: _onFail, onSuccess: _onSuccess));

  await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeGetSalesCount,
    onSuccess: _onSuccess,
    onFail: _onFail,
  ));
}

_getCashierInAction(AppState state, NextDispatcher next) async {
  final _params = {'amount': 10.0}; //double
  _onSuccess() {
    // next(UpdateStoreAction(salesCount: ApiResult.value['count']));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeCashierIn,
      onFail: _onFail, onSuccess: _onSuccess, params: _params));
}

_getCashierOutAction(AppState state, NextDispatcher next) async {
  final _params = {'amount': 0.0}; //double
  _onSuccess() {}

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeCashierOut,
      onFail: _onFail, onSuccess: _onSuccess, params: _params));
}

_getBusinessDayAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateStoreAction(businessDay: ApiResult.value['businessDay']));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeBusinessDay,
      onFail: _onFail, onSuccess: _onSuccess));
}

_getCheckPasswordAction(AppState state, NextDispatcher next) async {
  final _params = {'password': '1111'};
  _onSuccess() {}

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeCheckPassword,
      onFail: _onFail, onSuccess: _onSuccess, params: _params));
}

_getCashInOutHistoryAction(AppState state, NextDispatcher next) async {
  final _params = {
    'startDate': state.calenderState.startDate,
    'endDate': state.calenderState.endDate
  };
  _onSuccess() {
    next(UpdateStoreAction(
        cashInOutHistoryRes: ApiResult.value
            .map<StoreCashInOutHistoryRes>(
                (e) => StoreCashInOutHistoryRes.fromJson(e))
            .toList()));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeStoreGetCashInOutHistory,
      onFail: _onFail,
      onSuccess: _onSuccess,
      params: _params));
}

_getCashInOutAction(AppState state, NextDispatcher next) async {
  final _params = {
    'inOutType': state.storeState.inOutType,
    'amount': double.parse(state.storeState.amount),
    'memo': state.storeState.memoContr.text
  };
  _onSuccess() {
    if (state.storeState.inOutType == "I") {
      showSimpleDialog(
          body: SpacedColumn(
        verticalSpace: 12,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: SimplePayIcon(PayIcons.checkCircle,
                color: ThemeColors.lime500, solid: true, size: 138.w),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: SizedText(text: 'Внесено', textStyle: ThemeTextSemibold.xl),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: SizedText(
                text: currencyFormatter(double.parse(state.storeState.amount),
                    decimalPoints:
                        int.tryParse(state.storeState.amount) != null ? 0 : 2),
                textStyle: ThemeTextSemibold.xl6),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: SizedText(
                width: 543.w,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                text: 'Повторно можете посмотреть в разделе История',
                textStyle: ThemeTextRegular.lg5
                    .copyWith(color: ThemeColors.coolgray400)),
          ),
        ],
      ));
    } else {
      showSimpleDialog(
          body: SpacedColumn(
        verticalSpace: 12,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: SimplePayIcon(PayIcons.minusCircle,
                color: ThemeColors.red500, solid: true, size: 138.w),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: SizedText(text: 'Изъято', textStyle: ThemeTextSemibold.xl),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: SizedText(
                text: currencyFormatter(double.parse(state.storeState.amount),
                    decimalPoints:
                        int.tryParse(state.storeState.amount) != null ? 0 : 2),
                textStyle: ThemeTextSemibold.xl6),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: SizedText(
                width: 543.w,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                text: 'Повторно можете посмотреть в разделе История',
                textStyle: ThemeTextRegular.lg5
                    .copyWith(color: ThemeColors.coolgray400)),
          ),
        ],
      ));
    }
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeStoreCashInOut,
      onFail: _onFail, onSuccess: _onSuccess, params: _params));
}

_getCurrentShiftAction(AppState state, NextDispatcher next) async {
  _onSuccess() {}

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetCurrentShift,
      onFail: _onFail, onSuccess: _onSuccess));
}

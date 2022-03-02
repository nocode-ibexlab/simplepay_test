import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class EntryWithdrawalMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetStoreCashInOutHistory:
        return _getStoreCashInOutHistory(store.state, next);
      case GetStoreCashInOut:
        return _getStoreCashInOut(store.state, next);
      default:
        return next(action);
    }
  }
}

// GetStoreCashInOutHistory
_getStoreCashInOutHistory(AppState state, NextDispatcher next) async {
  // final startDate = state.entryWithdrawalState.startDate;
  // final endDate = state.entryWithdrawalState.endDate;

  dynamic _params = {
    // SimpleStoreGetCashInOutHistoryReq(startDate: startDate, endDate: endDate)
    //     .toJson();
    "startDate": state.entryWithdrawalState.startDate,
    "endDate": state.entryWithdrawalState.endDate
  };

  _onSuccess() {
    // SimpleStoreGetCashInOutHistoryRes simpleStoreGetCashInOutHistoryRes =
    //     SimpleStoreGetCashInOutHistoryRes.fromJson(ApiResult.value);
    // next(UpdateEntryWithdrawalAction(
    //     simpleStoreGetCashInOutHistoryRes: simpleStoreGetCashInOutHistoryRes));
  }

  _onFail() {
    logger(ApiResult.error.msg,
        hint: "ERRORLOG_invokeGetStoreCashInOutHistory");
  }

  await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeStoreGetCashInOutHistory,
      params: _params,
      onSuccess: _onSuccess,
      onFail: _onFail));
}

//GetStoreCashInOut
_getStoreCashInOut(AppState state, NextDispatcher next) async {
  // final inOutType = state.entryWithdrawalState.inOutType;
  // final amount = state.entryWithdrawalState.amount;
  // final memoReq = state.entryWithdrawalState.memoContr.text;
  // dynamic _params = SimpleStoreCashInOutReq(
  //         inOutType: inOutType, amount: amount, memo: memoReq)
  //     .toJson();
  dynamic _params = {
    "inOutType": state.entryWithdrawalState.inOutType,
    "amount": state.entryWithdrawalState.amount,
    "memo": state.entryWithdrawalState.memoContr.text
  };

  _onSuccess() {
    state.entryWithdrawalState.memoContr.clear();
    appStore.dispatch(DismissPopupAction());
    state.entryWithdrawalState.inOutType == "I"
        ? showSimpleDialog(
            body: EntryWithdrawPopup(
                amount: state.entryWithdrawalState.amount, withDraw: false),
          )
        : showSimpleDialog(
            body: EntryWithdrawPopup(amount: state.entryWithdrawalState.amount),
          );
  }

  _onFail() {
    logger(ApiResult.error.msg,
        hint: "ERRORLOG_invokeGetStoreCashInOutHistory");
  }

  await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeStoreGetCashInOutHistory,
      params: _params,
      onSuccess: _onSuccess,
      onFail: _onFail));
}

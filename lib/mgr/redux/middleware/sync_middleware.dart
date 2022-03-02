import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';

import '../action.dart';

class SyncMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetListServersResAction:
        return _getListServersResAction(store.state, next);
      case GetRegistrationInfoResAction:
        return _getRegistrationInfoResAction(store.state, next);
      case GetStatusResAction:
        return _getStatusResAction(store.state, next);
      case GetVerifyLicenseResAction:
        return _getVerifyLicenseResAction(store.state, next);
      default:
        return next(action);
    }
  }
}

_getListServersResAction(AppState state, next) async {
  _onSuccess() {
    next(UpdateSyncAction(
        listServersRes: SyncListServersRes.fromJson(ApiResult.value)));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeListServers,
      onSuccess: _onSuccess, onFail: _onFail));
}

_getRegistrationInfoResAction(AppState state, next) async {
  _onSuccess() {
    next(UpdateSyncAction(
        getRegistrationInfoRes:
            SyncGetRegistrationInfoRes.fromJson(ApiResult.value)));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeGetRegistrationInfo,
      onSuccess: _onSuccess,
      onFail: _onFail));
}

_getStatusResAction(AppState state, next) async {
  _onSuccess() {
    next(UpdateSyncAction(
        getStatusRes: SyncGetStatusRes.fromJson(ApiResult.value)));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeSyncStatus,
      onSuccess: _onSuccess, onFail: _onFail));
}

_getVerifyLicenseResAction(AppState state, next) async {
  _onSuccess() {
    next(UpdateSyncAction(
        verifyLicenseRes: SyncVerifyLicenseRes.fromJson(ApiResult.value)));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeVerifyLicense,
      onSuccess: _onSuccess, onFail: _onFail));
}

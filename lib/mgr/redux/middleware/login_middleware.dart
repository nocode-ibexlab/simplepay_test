import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/api_middeware.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';

class LoginMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetLoginLoginAction:
        return _getLoginLoginAction(store.state, next);
      case GetLoginVerifyLicenseInfoAction:
        return _getLoginVerifyLicenseInfoAction(store.state, next);
      case GetLoginRegistrationInfoAction:
        return _getLoginRegistrationInfoAction(store.state, next);
      case GetLoginClearAuthAction:
        return _getLoginClearAuthAction(store.state, next);
      case GetLoginSetAuthAction:
        return _getLoginSetAuthAction(store.state, next);
      case GetLoginRegisterAppAction:
        return _getLoginRegisterAppAction(store.state, next);
      case GetLoginUpdateAppAction:
        return _getLoginUpdateAppAction(store.state, next);
      case GetCallLoginSetAuthAction:
        return _getCallLoginSetAuthAction(store.state, next);
      case GetListServersAction:
        return _getListServersAction(store.state, next);
      default:
        return next(action);
    }
  }
}

_getLoginLoginAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    loginFsm.applyEvent(OnVerifyLicenseEvent());
  }

  _onFail() {
    int _resCode = ApiResult.error.resCode;
    switch (_resCode) {
      case 550:
        loginFsm.applyEvent(OnListServersEvent());
        break;
      case 551:
        appStore.dispatch(NavigateToAction(
            to: AppRoutes.RouteToREGISTER_00_001, replace: true));
        next(UpdateLoginAction(
            loginMsg:
                ApiResult.error.msg + ". Login ID or password is incorrect.",
            loginIsLoading: false));
        break;
      case 552:
        loginFsm.applyEvent(OnGetRegistrationInfoEvent()); //Doing
        break;
      default:
        next(UpdateLoginAction(
            loginMsg: ApiResult.error.msg, loginIsLoading: false));
    }
  }

  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeLogin,
      showErrorPopup: false, onFail: _onFail, onSuccess: _onSuccess));
}

_getListServersAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateLoginAction(serverList: ApiResult.value));
    appStore.dispatch(
        NavigateToAction(to: AppRoutes.RouteToREGISTER_00_001, replace: true));
  }

  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeListServers,
      onSuccess: _onSuccess));
}

_getLoginSetAuthAction(AppState state, NextDispatcher next) async {
  final loginID = state.loginState.loginIDContr.text;
  final password = state.loginState.loginPwdContr.text;

  next(UpdateLoginAction(loginIsLoading: true));
  final _params =
      SimpleSyncSetAuthReq(loginId: loginID, password: password).toJson();
  bool success = await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeSetAuth,
      params: _params,
      showErrorPopup: false));
  switch (success) {
    case false:
      next(UpdateLoginAction(loginIsLoading: false));
      logger(ApiResult.error.msg, hint: 'ERRORCHECKinvokeSetAuth');
      String msg = ApiResult.error.msg;
      next(UpdateLoginAction(loginMsg: msg));
      loginFsm.applyEvent(OnLoginIdleEvent());

      // Fail
      break;
    default:
      loginFsm.applyEvent(OnLoginEvent());
    // Success
  }
}

_getCallLoginSetAuthAction(AppState state, NextDispatcher next) async {
  final loginFormKey = state.loginState.loginFormKey;
  appStore.dispatch(UpdateLoginAction(loginIsLoading: false, loginMsg: ""));
  if (state.loginState.loginIDContr.text.isNotEmpty &&
      state.loginState.loginPwdContr.text.isNotEmpty) {
    loginFsm.applyEvent(OnSetAuthEvent());
  } else {
    appStore.dispatch(UpdateLoginAction(
        loginIsLoading: false, loginMsg: "Please enter valid ID and Password"));
  }
}

_getLoginRegistrationInfoAction(AppState state, NextDispatcher next) async {
  bool success = await appStore
      .dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetRegistrationInfo));
  switch (success) {
    case false:
      showError(ApiResult.error.msg);
      next(UpdateLoginAction(
          loginMsg: ApiResult.error.msg, loginIsLoading: false));
      // Fail
      break;
    default:
      next(UpdateLoginAction(loginMsg: "", loginIsLoading: false));
      // Success
      SimpleSyncGetRegistrationInfoRes simpleSyncGetRegistrationInfoRes =
          SimpleSyncGetRegistrationInfoRes.fromJson(ApiResult.value);
      next(UpdateLoginAction(
          simpleSyncGetRegistrationInfoRes: simpleSyncGetRegistrationInfoRes));
      appStore.dispatch(NavigateToAction(
          to: AppRoutes.RouteToREGISTER_00_002, replace: true));
  }
}

_getLoginVerifyLicenseInfoAction(AppState state, NextDispatcher next) async {
  bool success = await appStore
      .dispatch(GetRunApiFetchAction(ApiInvokes.invokeVerifyLicense));
  switch (success) {
    case false:
      next(UpdateLoginAction(loginIsLoading: false));
      String msg = ApiResult.error.msg;
      next(UpdateLoginAction(loginMsg: msg));
      logger(ApiResult.error.msg, hint: 'ERRORCHECKinvokeVerifyLicense');
      loginFsm.applyEvent(OnLoginIdleEvent());
      // Fail
      break;
    default:
      //TODO: IF UPDATABLE DO UPDATE_APP
      //TODO: ELSE MOVE TO HOME PAGE
      bool _updatable = ApiResult.value['updatable'];
      if (_updatable) {
        //TODO: AFTER API IMPL IS DONE ADD UPDATE APP
        loginFsm.applyEvent(OnUpdateAppEvent());
      } else {
        // Success
        SimpleSyncVerifyLicenseRes simpleSyncVerifyLicenseRes =
            SimpleSyncVerifyLicenseRes.fromJson(ApiResult.value);
        next(UpdateLoginAction(
            simpleSyncVerifyLicenseRes: simpleSyncVerifyLicenseRes));
        //Go to HOME_00_001
        //After successful login but before moving to HOME_00_001;
        await appStore.dispatch(GetCashBalanceAction);
        await appStore.dispatch(GetCashierNameAction);
        await appStore.dispatch(GetSalesCountAction);
        await appStore.dispatch(GetStatusResAction);
        appStore.dispatch(
            NavigateToAction(to: AppRoutes.RouteToHOME_001, replace: true));
        next(UpdateLoginAction(loginIsLoading: false, loginMsg: ''));

        // ---------
        loginFsm.applyEvent(OnLoginIdleEvent());
      }
  }
}

_getLoginClearAuthAction(AppState state, NextDispatcher next) async {
  bool success =
      await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeClearAuth));
  switch (success) {
    case false:
      logger(ApiResult.error.msg, hint: 'ERRORCHECKinvokeClearAuth');
      // Fail
      break;
    default:
      _getListServersAction(state, next);
  }
}

_getLoginRegisterAppAction(AppState state, NextDispatcher next) async {
  if (state.loginState.storeTerminal.id.isNotEmpty) {
    next(UpdateLoginAction(loginIsLoading: true));

    final _params = {'storeTerminalId': state.loginState.storeTerminal.id};
    bool success = await appStore.dispatch(
        GetRunApiFetchAction(ApiInvokes.invokeRegisterApp, params: _params));
    switch (success) {
      case false:
        next(UpdateLoginAction(loginIsLoading: false));
        // Fail
        break;
      default:
        loginFsm.applyEvent(OnLoginEvent());
    }
  } else {
    showError('Terminal must be selected!');
  }
}

_getLoginUpdateAppAction(AppState state, NextDispatcher next) async {
  final _params = SimpleSyncUpdateAppReq(
          state.loginState.simpleSyncVerifyLicenseRes.appPackage,
          state.loginState.simpleSyncVerifyLicenseRes.appVersion)
      .toJson();
  bool success = await appStore.dispatch(
      GetRunApiFetchAction(ApiInvokes.invokeUpdateApp, params: _params));
  switch (success) {
    case false:
      next(UpdateLoginAction(loginIsLoading: false));
      String msg = ApiResult.error.msg;
      next(UpdateLoginAction(loginMsg: msg));
      logger(ApiResult.error.msg, hint: 'ERRORCHECKinvokeUpdateApp');
      // Fail
      break;
    default:
    // EXIT APP
    // Success
  }
}

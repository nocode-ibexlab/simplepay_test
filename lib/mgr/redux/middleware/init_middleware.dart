import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';
import '../action.dart';

class InitMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetDeviceInitDeviceAction:
        return _getDeviceInitDeviceAction(store.state, next);
      default:
        return next(action);
    }
  }
}

_getDeviceInitDeviceAction(state, next) async {
  bool success = await appStore
      .dispatch(GetRunApiFetchAction(ApiInvokes.invokeInitDevice));
  switch (success) {
    case false:
      logger(ApiResult.error.msg, hint: 'ERRORCHECKinvokeGetRegistrationInfo');
      // Fail
      break;
    default:
      logger(ApiResult.value, hint: 'SUCCESSCHECKinvokeGetRegistrationInfo');
      // Success
      SimpleDeviceInitDeviceRes initDeviceRes =
          SimpleDeviceInitDeviceRes.fromJson(ApiResult.value);
      next(UpdateInitAction(initDeviceRes: initDeviceRes));
      // appStore.dispatch(
      //     NavigateToAction(to: AppRoutes.RouteToLOGIN_00_001, replace: true));
      loginFsm.applyEvent(OnLoginEvent());
      await loginFsm.waitUntilQuiescent;
  }
}

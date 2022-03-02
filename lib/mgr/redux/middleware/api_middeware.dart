import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/presentation/widgets/modals/show_loading.dart';

class ApiMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    // ALWAYS GO BY ORDER switch case -> top to bottom
    //                      functions -> top to bottom
    switch (action.runtimeType) {
      case GetRunApiFetchAction:
        return _getRunApiFetchAction(store.state, action, next);
      default:
        return next(action);
    }
  }
}
// API call using action is:
// Map? res = appStore.dispatch(GetRunApiFetchAction(invokeMethod));

///////////////////////DO NOT DECLARE FUNCTIONS BEFORE THIS LINE//////////////////////////

Future<bool> _getRunApiFetchAction(
    AppState state, GetRunApiFetchAction action, NextDispatcher next) async {
  apiMachine.applyEvent(OnFetchEvent(action.invokeMethod,
      showErrorPopup: action.showErrorPopup,
      params: action.params,
      json: action.json));
  await apiMachine.waitUntilQuiescent;
  switch (ApiResult.success) {
    case false:
      // Fail
      if (action.onFail != null) action.onFail!();
      break;
    default:
      //Success
      if (action.onSuccess != null) action.onSuccess!();
  }
  return ApiResult.success;
}

///////////////////////DO NOT WRITE CODE AFTER THIS LINE//////////////////////////

showLoading() {
  showLoadingDialog();
}

closeLoading() {
  appStore.dispatch(DismissPopupAction(all: true));
}

showError(error, {VoidCallback? onTap}) {
  showAlertDialog(horizontalPadding: 20, titleText: error.toString());
}

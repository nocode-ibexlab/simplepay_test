import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';

class SettingsMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action.runtimeType) {
      default:
        return next(action);
    }
  }
}

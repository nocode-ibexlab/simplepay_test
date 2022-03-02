import 'package:fsm2/fsm2.dart';
import 'package:simple_pay_api/simple_pay_api.dart';
import 'package:simple_pay_flutter/mgr/redux/middleware/api_middeware.dart';
import 'package:flutter_easylogger/flutter_logger.dart';

bool _printApiTrLog = false;
final apiMachine = StateMachine.create(
    (g) => g
      ..onTransition((from, e, to) => print(_printApiTrLog
          ? '${e.toString().replaceAll("Instance of ", "")} in ${from!.stateType} transitioning to ${to!.stateType}'
          : ""))
      ..initialState<IdleState>()
      ..state<IdleState>((b) => b
        ..on<OnFetchEvent, FetchState>(
          sideEffect: (event) async {
            Map res =
                await _fetch(event.invokeMethod, event.params, event.json);
            apiMachine.applyEvent(
                OnCheckResCodeEvent(res, showErrorPopup: event.showErrorPopup));
          },
        ))
      ..state<FetchState>((b) => b
        ..on<OnCheckResCodeEvent, CheckResCodeState>(
          sideEffect: (event) async {
            if (_checkResCode(event.res) < 0) {
              apiMachine.applyEvent(OnShowResMessageEvent(event.res,
                  showErrorPopup: event.showErrorPopup));
            } else {
              apiMachine.applyEvent(OnCheckSuccessfulEvent(event.res,
                  showErrorPopup: event.showErrorPopup));
            }
          },
        ))
      ..state<CheckResCodeState>((b) => b
        ..on<OnShowResMessageEvent, ShowResMessageState>(
          sideEffect: (event) async {
            //Values
            final resCode = _checkResCode(event.res);
            final msg = _resMessage(event.res);

            //Result
            ApiResult.value = {'errorMsg': ApiErrorSimple(msg, resCode)};
            if (event.showErrorPopup) {
              showError("$resCode\n$msg");
            }
            //Move
            apiMachine.applyEvent(OnIdleEvent());
            //DO ON ERROR
          },
        )
        ..on<OnCheckSuccessfulEvent, CheckSuccessfulState>(
          sideEffect: (event) async {
            if (_checkSuccess(event.res)) {
              apiMachine.applyEvent(OnSuccessEvent(event.res));
            } else {
              apiMachine.applyEvent(OnShowResMessageEvent(event.res,
                  showErrorPopup: event.showErrorPopup));
            }
          },
        ))
      ..state<CheckSuccessfulState>((b) => b
        ..on<OnSuccessEvent, SuccessState>(
          sideEffect: (event) async {
            ApiResult.value = _result(event.res);
            apiMachine.applyEvent(OnIdleEvent());
            //DO ON SUCCESS
          },
        )
        ..on<OnShowResMessageEvent, ShowResMessageState>(
          sideEffect: (event) async {
            //Values
            final resCode = _checkResCode(event.res);
            final msg = _resMessage(event.res);
            //Result
            ApiResult.value = {'errorMsg': ApiErrorSimple(msg, resCode)};
            //TODO: Add SocketException error case
            if (event.showErrorPopup) {
              showError("$resCode\n$msg");
            }
            //Move
            apiMachine.applyEvent(OnIdleEvent());
          },
        ))
      ..state<ShowResMessageState>((b) => b..on<OnIdleEvent, IdleState>())
      ..state<SuccessState>((b) => b..on<OnIdleEvent, IdleState>()),
    production: true);

class IdleState implements State {}

class FetchState implements State {}

class CheckSuccessfulState implements State {}

class SuccessState implements State {}

class ShowResMessageState implements State {}

class CheckResCodeState implements State {}

class OnIdleEvent implements Event {}

class OnFetchEvent implements Event {
  String invokeMethod;
  dynamic params;
  bool json;
  bool showErrorPopup;
  OnFetchEvent(this.invokeMethod,
      {this.params, this.json = false, this.showErrorPopup = true});
}

class OnCheckResCodeEvent implements Event {
  Map res;
  bool showErrorPopup;

  OnCheckResCodeEvent(this.res, {this.showErrorPopup = true});
}

class OnSuccessEvent implements Event {
  Map res;
  OnSuccessEvent(this.res);
}

class OnShowResMessageEvent implements Event {
  Map res;
  bool showErrorPopup;

  OnShowResMessageEvent(this.res, {this.showErrorPopup = true});
}

class OnCheckSuccessfulEvent implements Event {
  Map res;
  bool showErrorPopup;

  OnCheckSuccessfulEvent(this.res, {this.showErrorPopup = true});
}

Future<Map> _fetch(String invokeMethod, dynamic params, bool json) async {
  Map rst = await Simple.invoke(invokeMethod, params: params, json: json);

  Logger.d("Request: $invokeMethod\nParameters: $params",
      tag: 'simple_log_request'.toUpperCase());

  if (rst['common']['resCode'] == 200) {
    Logger.i(
        "Response: [Code: ${rst['common']['resCode']}]:[Result: ${rst['content']}]",
        tag: 'simple_log_success'.toUpperCase());
  } else {
    Logger.e(
        "Err: [Code: ${rst['common']['resCode']}]:[ErrMsg: ${rst['common']['resMessage']}]",
        tag: 'simple_log_error'.toUpperCase());
  }
  return rst;
}

int _checkResCode(value) {
  int resCode = Simple.resCode(value);
  ApiResult.success = resCode == 200;
  return resCode;
}

bool _checkSuccess(Map value) {
  bool success = Simple.successful(value);
  ApiResult.success = success;
  return success;
}

String _resMessage(Map value) {
  String message = Simple.resMessage(value);
  return message;
}

_result(Map value) {
  dynamic result = Simple.result(value);
  return result;
}

class ApiResult {
  static dynamic value = {};
  static bool success = false;
  static ApiErrorSimple get error => value['errorMsg'];
}

class ApiErrorSimple {
  String msg;
  int resCode;
  ApiErrorSimple(this.msg, this.resCode);
}

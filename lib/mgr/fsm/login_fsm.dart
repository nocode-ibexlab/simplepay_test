import 'dart:developer';
import 'package:fsm2/fsm2.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';

final loginFsm = StateMachine.create(
    (g) => g
      ..onTransition((from, e, to) => log(
          '${e.toString().replaceAll("Instance of ", "")} in ${from!.stateType} LOGINTRANSIT to ${to!.stateType}'))
      ..initialState<LoginIdleState>()
      ..state<LoginIdleState>((b) => b
        ..on<OnLoginEvent, LoginState>(sideEffect: (_) async {
          await appStore.dispatch(GetLoginLoginAction);
        })
        ..on<OnSetAuthEvent, SetAuthState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginSetAuthAction);
          },
        )
        ..on<OnClearAuthEvent, SetAuthState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginClearAuthAction);
          },
        ))
      ..state<LoginState>((b) => b
        ..on<OnLoginIdleEvent, LoginIdleState>()
        ..on<OnListServersEvent, ListServersState>(sideEffect: (_) async {
          await appStore.dispatch(GetListServersAction);
        }) //-2
        ..on<OnGetRegistrationInfoEvent, GetRegistrationInfoState>(
            sideEffect: (_) async {
          await appStore.dispatch(GetLoginRegistrationInfoAction);
        }) //-3
        ..on<OnVerifyLicenseEvent, VerifyLicenseState>(sideEffect: (_) async {
          await appStore.dispatch(GetLoginVerifyLicenseInfoAction);
        })
        ..on<OnSetAuthEvent, SetAuthState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginSetAuthAction);
          },
        ))
      ..state<ListServersState>((b) => b
        ..on<OnSetAuthEvent, SetAuthState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginSetAuthAction);
          },
        )
        ..on<OnListServersEvent, ListServersState>(sideEffect: (_) async {
          await appStore.dispatch(GetListServersAction);
        }))
      ..state<SetAuthState>((b) => b
        ..on<OnLoginEvent, LoginState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginLoginAction);
          },
        )
        ..on<OnSetAuthEvent, SetAuthState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginSetAuthAction);
          },
        ))
      ..state<GetRegistrationInfoState>((b) => b
        ..on<OnRegisterAppEvent, RegisterAppState>(sideEffect: (_) async {
          await appStore.dispatch(GetLoginRegisterAppAction);
        })
        ..on<OnSetAuthEvent, SetAuthState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginSetAuthAction);
          },
        ))
      ..state<RegisterAppState>((b) => b
        ..on<OnLoginEvent, LoginState>(sideEffect: (_) async {
          await appStore.dispatch(GetLoginLoginAction);
        })
        ..on<OnRegisterAppEvent, RegisterAppState>(
          sideEffect: (_) async {
            await appStore.dispatch(GetLoginRegisterAppAction);
          },
        ))
      ..state<VerifyLicenseState>((b) => b
        ..on<OnLoginIdleEvent, LoginIdleState>(sideEffect: (_) async {
          GETSTATE.loginState.loginIDContr.clear();
          GETSTATE.loginState.loginPwdContr.clear();
          appStore
              .dispatch(UpdateLoginAction(loginMsg: '', loginIsLoading: false));
        }) //TODO
        ..on<OnUpdateAppEvent, UpdateAppState>()) //TODO
      ..state<UpdateAppState>((b) => b..on<OnUpdateAppEvent, UpdateAppState>()),
    production: true); //TODO

//State Declaration and definition
class LoginIdleState implements State {}

class SetAuthState implements State {}

class RegisterAppState implements State {}

class LoginState implements State {}

class GetRegistrationInfoState implements State {}

class VerifyLicenseState implements State {}

class UpdateAppState implements State {}

class ListServersState implements State {}

class OnAppStartEvent implements Event {}

class OnLoginIdleEvent implements Event {}

class OnSetAuthEvent implements Event {}

class OnRegisterAppEvent implements Event {}

class OnLoginEvent implements Event {}

class OnGetRegistrationInfoEvent implements Event {}

class OnVerifyLicenseEvent implements Event {}

class OnUpdateAppEvent implements Event {}

class OnClearAuthEvent implements Event {}

class OnListServersEvent implements Event {}

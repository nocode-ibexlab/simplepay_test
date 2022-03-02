import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class LoginState {
  final TextEditingController loginIDContr;
  final TextEditingController loginPwdContr;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final String loginMsg;
  final bool loginIsLoading;
  final StoreTerminal storeTerminal;
  final Map serverList;
  final Map selectedDomain; //label, url
  final SimpleSyncGetRegistrationInfoRes simpleSyncGetRegistrationInfoRes;
  final SimpleSyncVerifyLicenseRes simpleSyncVerifyLicenseRes;

  LoginState({
    required this.loginIDContr,
    required this.loginPwdContr,
    required this.simpleSyncGetRegistrationInfoRes,
    required this.simpleSyncVerifyLicenseRes,
    required this.loginMsg,
    required this.loginIsLoading,
    required this.storeTerminal,
    required this.serverList,
    required this.selectedDomain,
  });
  factory LoginState.initial() {
    return LoginState(
      selectedDomain: {},
      storeTerminal: StoreTerminal(name: '', id: ''),
      serverList: {},
      loginIDContr: TextEditingController(text: ''),
      loginPwdContr: TextEditingController(text: ''),
      loginMsg: "",
      loginIsLoading: false,
      simpleSyncVerifyLicenseRes: SimpleSyncVerifyLicenseRes(
          appPackage: '',
          appVersion: '',
          currAppVersion: '',
          state: '',
          success: false,
          updatable: false),
      simpleSyncGetRegistrationInfoRes: SimpleSyncGetRegistrationInfoRes(
          marketingInfoAgreement: '',
          personalInfoAgreement: '',
          serviceTerms: '',
          softwareTerms: '',
          storeTerminals: []),
    );
  }

  LoginState copyWith({
    String? loginMsg,
    Map? selectedDomain,
    bool? loginIsMsgError,
    bool? loginIsLoading,
    StoreTerminal? storeTerminal,
    SimpleSyncGetRegistrationInfoRes? simpleSyncGetRegistrationInfoRes,
    SimpleSyncVerifyLicenseRes? simpleSyncVerifyLicenseRes,
    Map? serverList,
  }) {
    return LoginState(
      loginPwdContr: loginPwdContr,
      loginIDContr: loginIDContr,
      loginMsg: loginMsg ?? this.loginMsg,
      selectedDomain: selectedDomain ?? this.selectedDomain,
      serverList: serverList ?? this.serverList,
      storeTerminal: storeTerminal ?? this.storeTerminal,
      loginIsLoading: loginIsLoading ?? this.loginIsLoading,
      simpleSyncGetRegistrationInfoRes: simpleSyncGetRegistrationInfoRes ??
          this.simpleSyncGetRegistrationInfoRes,
      simpleSyncVerifyLicenseRes:
          simpleSyncVerifyLicenseRes ?? this.simpleSyncVerifyLicenseRes,
    );
  }
}

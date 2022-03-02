import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SyncState {
  final SyncListServersRes listServersRes;
  final SyncGetRegistrationInfoRes getRegistrationInfoRes;
  final SyncGetStatusRes getStatusRes;
  final SyncVerifyLicenseRes verifyLicenseRes;

  SyncState({
    required this.verifyLicenseRes,
    required this.getStatusRes,
    required this.getRegistrationInfoRes,
    required this.listServersRes,
  });
  factory SyncState.initial() {
    return SyncState(
        getRegistrationInfoRes: SyncGetRegistrationInfoRes(
            marketingInfoAgreement: '',
            personalInfoAgreement: '',
            serviceTerms: '',
            softwareTerms: '',
            storeTerminals: []),
        getStatusRes: SyncGetStatusRes(
            networkStatus: false, syncStatus: false, syncLastTime: ''),
        listServersRes: SyncListServersRes(index: 0, labels: [], urls: []),
        verifyLicenseRes: SyncVerifyLicenseRes(
            appPackage: '',
            appVersion: '',
            currAppVersion: '',
            state: '',
            success: false,
            updatable: false));
  }

  SyncState copyWith({
    SyncListServersRes? listServersRes,
    SyncGetRegistrationInfoRes? getRegistrationInfoRes,
    SyncGetStatusRes? getStatusRes,
    SyncVerifyLicenseRes? verifyLicenseRes,
  }) {
    return SyncState(
      listServersRes: listServersRes ?? this.listServersRes,
      getRegistrationInfoRes:
          getRegistrationInfoRes ?? this.getRegistrationInfoRes,
      getStatusRes: getStatusRes ?? this.getStatusRes,
      verifyLicenseRes: verifyLicenseRes ?? this.verifyLicenseRes,
    );
  }
}

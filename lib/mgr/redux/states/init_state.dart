import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';

class InitState {
  final SimpleDeviceInitDeviceRes initDeviceRes;
  InitState({required this.initDeviceRes});
  factory InitState.initial() {
    return InitState(
        initDeviceRes:
            SimpleDeviceInitDeviceRes(posDbPath: '', traceDbPath: ''));
  }

  InitState copyWith({SimpleDeviceInitDeviceRes? initDeviceRes}) {
    return InitState(initDeviceRes: initDeviceRes ?? this.initDeviceRes);
  }
}

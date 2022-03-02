import 'package:json_annotation/json_annotation.dart';

part 'device_init_device_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleDeviceInitDeviceRes {
  String posDbPath;
  String traceDbPath;
  String? storeTerminalId;
  String? storeId;
  String? employeeId;

  @override
  SimpleDeviceInitDeviceRes({
    required this.posDbPath,
    required this.traceDbPath,
    this.employeeId,
    this.storeId,
    this.storeTerminalId,
  });

  factory SimpleDeviceInitDeviceRes.fromJson(Map json) =>
      _$SimpleDeviceInitDeviceResFromJson(json);

  Map toJson() => _$SimpleDeviceInitDeviceResToJson(this);
}

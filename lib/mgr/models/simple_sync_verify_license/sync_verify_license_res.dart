import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/simple_store_terminal/store_terminal.dart';

part 'sync_verify_license_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleSyncVerifyLicenseRes {
  String appVersion;
  String appPackage;
  String currAppVersion;
  String state;
  bool updatable;
  bool success;

  @override
  SimpleSyncVerifyLicenseRes({
    required this.appPackage,
    required this.appVersion,
    required this.currAppVersion,
    required this.state,
    required this.updatable,
    required this.success,
  });

  factory SimpleSyncVerifyLicenseRes.fromJson(Map json) =>
      _$SimpleSyncVerifyLicenseResFromJson(json);

  Map toJson() => _$SimpleSyncVerifyLicenseResToJson(this);
}

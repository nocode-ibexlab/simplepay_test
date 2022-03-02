// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_verify_license_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSyncVerifyLicenseRes _$SimpleSyncVerifyLicenseResFromJson(Map json) =>
    SimpleSyncVerifyLicenseRes(
      appPackage: json['appPackage'] as String,
      appVersion: json['appVersion'] as String,
      currAppVersion: json['currAppVersion'] as String,
      state: json['state'] as String,
      updatable: json['updatable'] as bool,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$SimpleSyncVerifyLicenseResToJson(
        SimpleSyncVerifyLicenseRes instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'appPackage': instance.appPackage,
      'currAppVersion': instance.currAppVersion,
      'state': instance.state,
      'updatable': instance.updatable,
      'success': instance.success,
    };

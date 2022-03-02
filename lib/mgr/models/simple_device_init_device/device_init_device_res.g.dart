// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_init_device_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleDeviceInitDeviceRes _$SimpleDeviceInitDeviceResFromJson(Map json) =>
    SimpleDeviceInitDeviceRes(
      posDbPath: json['posDbPath'] as String,
      traceDbPath: json['traceDbPath'] as String,
      employeeId: json['employeeId'] as String?,
      storeId: json['storeId'] as String?,
      storeTerminalId: json['storeTerminalId'] as String?,
    );

Map<String, dynamic> _$SimpleDeviceInitDeviceResToJson(
        SimpleDeviceInitDeviceRes instance) =>
    <String, dynamic>{
      'posDbPath': instance.posDbPath,
      'traceDbPath': instance.traceDbPath,
      'storeTerminalId': instance.storeTerminalId,
      'storeId': instance.storeId,
      'employeeId': instance.employeeId,
    };

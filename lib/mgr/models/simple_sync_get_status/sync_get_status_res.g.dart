// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_get_status_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSyncGetStatusRes _$SimpleSyncGetStatusResFromJson(Map json) =>
    SimpleSyncGetStatusRes(
      syncStatus: json['syncStatus'] as bool,
      networkStatus: json['networkStatus'] as bool,
    );

Map<String, dynamic> _$SimpleSyncGetStatusResToJson(
        SimpleSyncGetStatusRes instance) =>
    <String, dynamic>{
      'syncStatus': instance.syncStatus,
      'networkStatus': instance.networkStatus,
    };

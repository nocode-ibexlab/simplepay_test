// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_change_password_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSyncChangePasswordReq _$SimpleSyncChangePasswordReqFromJson(
        Map<String, dynamic> json) =>
    SimpleSyncChangePasswordReq(
      id: json['id'] as String,
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
      domain: json['domain'] as String,
    );

Map<String, dynamic> _$SimpleSyncChangePasswordReqToJson(
        SimpleSyncChangePasswordReq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
      'domain': instance.domain,
    };

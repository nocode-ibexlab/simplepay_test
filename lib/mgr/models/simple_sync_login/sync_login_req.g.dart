// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_login_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSyncLoginReq _$SimpleSyncLoginReqFromJson(Map<String, dynamic> json) =>
    SimpleSyncLoginReq(
      id: json['id'] as String,
      password: json['password'] as String,
      domain: json['domain'] as String,
    );

Map<String, dynamic> _$SimpleSyncLoginReqToJson(SimpleSyncLoginReq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'domain': instance.domain,
    };

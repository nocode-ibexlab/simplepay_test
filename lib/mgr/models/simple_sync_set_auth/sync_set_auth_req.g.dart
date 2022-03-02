// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_set_auth_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSyncSetAuthReq _$SimpleSyncSetAuthReqFromJson(
        Map<String, dynamic> json) =>
    SimpleSyncSetAuthReq(
      loginId: json['loginId'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SimpleSyncSetAuthReqToJson(
        SimpleSyncSetAuthReq instance) =>
    <String, dynamic>{
      'loginId': instance.loginId,
      'password': instance.password,
    };

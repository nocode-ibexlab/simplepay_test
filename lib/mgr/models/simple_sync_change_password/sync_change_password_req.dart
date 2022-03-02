import 'package:json_annotation/json_annotation.dart';

part 'sync_change_password_req.g.dart';

@JsonSerializable()
class SimpleSyncChangePasswordReq {
  String id;
  String oldPassword;
  String newPassword;
  String domain;

  @override
  SimpleSyncChangePasswordReq({
    required this.id,
    required this.oldPassword,
    required this.newPassword,
    required this.domain,
  });

  factory SimpleSyncChangePasswordReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleSyncChangePasswordReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSyncChangePasswordReqToJson(this);
}

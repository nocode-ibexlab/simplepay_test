import 'package:json_annotation/json_annotation.dart';

part 'sync_set_auth_req.g.dart';

@JsonSerializable()
class SimpleSyncSetAuthReq {
  String? loginId;
  String? password;

  @override
  SimpleSyncSetAuthReq({
    this.loginId,
    this.password,
  });

  factory SimpleSyncSetAuthReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleSyncSetAuthReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSyncSetAuthReqToJson(this);
}

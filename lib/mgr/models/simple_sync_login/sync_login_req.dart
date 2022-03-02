import 'package:json_annotation/json_annotation.dart';

part 'sync_login_req.g.dart';

@JsonSerializable()
class SimpleSyncLoginReq {
  String id;
  String password;
  String domain;

  @override
  SimpleSyncLoginReq({
    required this.id,
    required this.password,
    required this.domain,
  });

  factory SimpleSyncLoginReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleSyncLoginReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSyncLoginReqToJson(this);
}

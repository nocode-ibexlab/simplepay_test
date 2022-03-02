import 'package:json_annotation/json_annotation.dart';

part 'sync_change_password_res.g.dart';

@JsonSerializable()
class SimpleSyncChangePasswordRes {
  bool success;
  String message;

  @override
  SimpleSyncChangePasswordRes({
    required this.success,
    required this.message,
  });

  factory SimpleSyncChangePasswordRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleSyncChangePasswordResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSyncChangePasswordResToJson(this);
}

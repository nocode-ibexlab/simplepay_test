import 'package:json_annotation/json_annotation.dart';

part 'sync_login_res.g.dart';

@JsonSerializable()
class SimpleSyncLoginRes {
  bool success;
  String message;

  @override
  SimpleSyncLoginRes({
    required this.success,
    required this.message,
  });

  factory SimpleSyncLoginRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleSyncLoginResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSyncLoginResToJson(this);
}

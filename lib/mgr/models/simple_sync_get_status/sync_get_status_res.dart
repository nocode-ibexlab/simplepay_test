import 'package:json_annotation/json_annotation.dart';

part 'sync_get_status_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleSyncGetStatusRes {
  bool syncStatus;
  bool networkStatus;

  @override
  SimpleSyncGetStatusRes({
    required this.syncStatus,
    required this.networkStatus,
  });

  factory SimpleSyncGetStatusRes.fromJson(Map json) =>
      _$SimpleSyncGetStatusResFromJson(json);

  Map toJson() => _$SimpleSyncGetStatusResToJson(this);
}

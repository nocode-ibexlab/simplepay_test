import 'package:json_annotation/json_annotation.dart';

part 'sync_update_app_req.g.dart';

@JsonSerializable()
class SimpleSyncUpdateAppReq {
  String packageName;
  String versionName;

  @override
  SimpleSyncUpdateAppReq(
    this.packageName,
    this.versionName,
  );

  Map<String, dynamic> toJson() => _$SimpleSyncUpdateAppReqToJson(this);
}

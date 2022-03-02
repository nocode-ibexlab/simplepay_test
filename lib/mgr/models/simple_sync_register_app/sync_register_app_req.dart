import 'package:json_annotation/json_annotation.dart';

part 'sync_register_app_req.g.dart';

@JsonSerializable()
class SimpleSyncRegisterAppReq {
  String storeTerminalId;

  @override
  SimpleSyncRegisterAppReq(
    this.storeTerminalId,
  );

  factory SimpleSyncRegisterAppReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleSyncRegisterAppReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSyncRegisterAppReqToJson(this);
}

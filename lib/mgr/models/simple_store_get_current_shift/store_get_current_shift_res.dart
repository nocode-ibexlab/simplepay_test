import 'package:json_annotation/json_annotation.dart';

part 'store_get_current_shift_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleStoreGetCurrentShiftRes {
  String shiftId;
  String shiftStartTime;
  String? shiftEndTime;

  @override
  SimpleStoreGetCurrentShiftRes(
      {required this.shiftId, required this.shiftStartTime, this.shiftEndTime});

  factory SimpleStoreGetCurrentShiftRes.fromJson(Map json) =>
      _$SimpleStoreGetCurrentShiftResFromJson(json);

  Map toJson() => _$SimpleStoreGetCurrentShiftResToJson(this);
}

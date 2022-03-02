// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_get_current_shift_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleStoreGetCurrentShiftRes _$SimpleStoreGetCurrentShiftResFromJson(
        Map json) =>
    SimpleStoreGetCurrentShiftRes(
      shiftId: json['shiftId'] as String,
      shiftStartTime: json['shiftStartTime'] as String,
      shiftEndTime: json['shiftEndTime'] as String?,
    );

Map<String, dynamic> _$SimpleStoreGetCurrentShiftResToJson(
        SimpleStoreGetCurrentShiftRes instance) =>
    <String, dynamic>{
      'shiftId': instance.shiftId,
      'shiftStartTime': instance.shiftStartTime,
      'shiftEndTime': instance.shiftEndTime,
    };

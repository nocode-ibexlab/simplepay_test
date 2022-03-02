// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summarize_amounts_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleReportSummarizeAmountsReq _$SimpleReportSummarizeAmountsReqFromJson(
        Map json) =>
    SimpleReportSummarizeAmountsReq(
      endDate: json['endDate'] as String?,
      startDate: json['startDate'] as String?,
    );

Map<String, dynamic> _$SimpleReportSummarizeAmountsReqToJson(
        SimpleReportSummarizeAmountsReq instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summarize_amounts_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleReportSummarizeAmountsRes _$SimpleReportSummarizeAmountsResFromJson(
        Map json) =>
    SimpleReportSummarizeAmountsRes(
      salesCount: json['salesCount'] as int,
      salesAmount: (json['salesAmount'] as num).toDouble(),
      refundCount: json['refundCount'] as int,
      refundAmount: (json['refundAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$SimpleReportSummarizeAmountsResToJson(
        SimpleReportSummarizeAmountsRes instance) =>
    <String, dynamic>{
      'salesCount': instance.salesCount,
      'salesAmount': instance.salesAmount,
      'refundCount': instance.refundCount,
      'refundAmount': instance.refundAmount,
    };

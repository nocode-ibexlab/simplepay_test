// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summarize_by_items_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleReportSummarizeByItemsReq _$SimpleReportSummarizeByItemsReqFromJson(
        Map json) =>
    SimpleReportSummarizeByItemsReq(
      isSales: json['isSales'] as bool,
      itemGroupId: json['itemGroupId'] as String,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$SimpleReportSummarizeByItemsReqToJson(
        SimpleReportSummarizeByItemsReq instance) =>
    <String, dynamic>{
      'isSales': instance.isSales,
      'itemGroupId': instance.itemGroupId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summarize_by_item_groups_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleReportSummarizeByItemGroupsReq
    _$SimpleReportSummarizeByItemGroupsReqFromJson(Map json) =>
        SimpleReportSummarizeByItemGroupsReq(
          isSales: json['isSales'] as bool,
          endDate: json['endDate'] as String?,
          startDate: json['startDate'] as String?,
        );

Map<String, dynamic> _$SimpleReportSummarizeByItemGroupsReqToJson(
        SimpleReportSummarizeByItemGroupsReq instance) =>
    <String, dynamic>{
      'isSales': instance.isSales,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

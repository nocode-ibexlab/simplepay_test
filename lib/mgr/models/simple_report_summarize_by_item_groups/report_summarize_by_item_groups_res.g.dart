// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summarize_by_item_groups_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleReportSummarizeByItemGroupsRes
    _$SimpleReportSummarizeByItemGroupsResFromJson(Map json) =>
        SimpleReportSummarizeByItemGroupsRes(
          itemGroupId: json['itemGroupId'] as String,
          itemGroupName: json['itemGroupName'] as String,
          qty: (json['qty'] as num).toDouble(),
          amount: (json['amount'] as num).toDouble(),
        );

Map<String, dynamic> _$SimpleReportSummarizeByItemGroupsResToJson(
        SimpleReportSummarizeByItemGroupsRes instance) =>
    <String, dynamic>{
      'itemGroupId': instance.itemGroupId,
      'itemGroupName': instance.itemGroupName,
      'qty': instance.qty,
      'amount': instance.amount,
    };

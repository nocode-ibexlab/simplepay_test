// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_get_sales_history_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleTenderGetSalesHistoryReq _$SimpleTenderGetSalesHistoryReqFromJson(
        Map<String, dynamic> json) =>
    SimpleTenderGetSalesHistoryReq(
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      receiptNo: json['receiptNo'] as String?,
    );

Map<String, dynamic> _$SimpleTenderGetSalesHistoryReqToJson(
        SimpleTenderGetSalesHistoryReq instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'receiptNo': instance.receiptNo,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_get_sales_history_by_shift_no_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleTenderGetSalesHistoryByShiftNoRes
    _$SimpleTenderGetSalesHistoryByShiftNoResFromJson(Map json) =>
        SimpleTenderGetSalesHistoryByShiftNoRes(
          salesHistoryId: json['salesHistoryId'] as String,
          totalAmount: (json['totalAmount'] as num).toDouble(),
          salesDate: json['salesDate'] as String,
        );

Map<String, dynamic> _$SimpleTenderGetSalesHistoryByShiftNoResToJson(
        SimpleTenderGetSalesHistoryByShiftNoRes instance) =>
    <String, dynamic>{
      'salesHistoryId': instance.salesHistoryId,
      'totalAmount': instance.totalAmount,
      'salesDate': instance.salesDate,
    };

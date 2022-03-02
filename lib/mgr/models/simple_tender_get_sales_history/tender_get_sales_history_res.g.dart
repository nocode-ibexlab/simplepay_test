// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_get_sales_history_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleTenderGetSalesHistoryRes _$SimpleTenderGetSalesHistoryResFromJson(
        Map json) =>
    SimpleTenderGetSalesHistoryRes(
      salesHistoryId: json['salesHistoryId'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      salesDate: json['salesDate'] as String,
      salesAccountHistory: (json['salesAccountHistory'] as List<dynamic>)
          .map((e) => SalesAccountHistoryModel.fromJson(e as Map))
          .toList(),
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$SimpleTenderGetSalesHistoryResToJson(
        SimpleTenderGetSalesHistoryRes instance) =>
    <String, dynamic>{
      'salesHistoryId': instance.salesHistoryId,
      'totalAmount': instance.totalAmount,
      'salesDate': instance.salesDate,
      'salesAccountHistory': instance.salesAccountHistory,
      'items': instance.items,
    };

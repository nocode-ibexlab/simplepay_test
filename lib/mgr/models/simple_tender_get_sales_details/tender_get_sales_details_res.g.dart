// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_get_sales_details_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleTenderGetSalesDetailsRes _$SimpleTenderGetSalesDetailsResFromJson(
        Map json) =>
    SimpleTenderGetSalesDetailsRes(
      items: json['items'] as List<dynamic>?,
      salesAccountHistory: json['salesAccountHistory'] as List<dynamic>,
      amount: (json['amount'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      salesDate: json['salesDate'] as String?,
    );

Map<String, dynamic> _$SimpleTenderGetSalesDetailsResToJson(
        SimpleTenderGetSalesDetailsRes instance) =>
    <String, dynamic>{
      'items': instance.items,
      'salesAccountHistory': instance.salesAccountHistory,
      'amount': instance.amount,
      'discount': instance.discount,
      'salesDate': instance.salesDate,
    };

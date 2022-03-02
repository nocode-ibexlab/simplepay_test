// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sale_details_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderGetSaleDetailsRes _$TenderGetSaleDetailsResFromJson(Map json) =>
    TenderGetSaleDetailsRes(
      salesDate: json['salesDate'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      isCanceled: json['isCanceled'] as bool,
      salesAccounts: (json['salesAccounts'] as List<dynamic>)
          .map(
              (e) => SalesAccount.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      salesId: json['salesId'] as String,
      salesItems: (json['salesItems'] as List<dynamic>)
          .map((e) => SalesItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$TenderGetSaleDetailsResToJson(
        TenderGetSaleDetailsRes instance) =>
    <String, dynamic>{
      'salesId': instance.salesId,
      'totalAmount': instance.totalAmount,
      'salesDate': instance.salesDate,
      'isCanceled': instance.isCanceled,
      'salesAccounts': instance.salesAccounts,
      'salesItems': instance.salesItems,
    };

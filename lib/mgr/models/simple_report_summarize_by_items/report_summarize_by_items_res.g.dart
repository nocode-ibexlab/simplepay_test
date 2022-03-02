// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summarize_by_items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleReportSummarizeByItemsRes _$SimpleReportSummarizeByItemsResFromJson(
        Map json) =>
    SimpleReportSummarizeByItemsRes(
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      barcode: json['barcode'] as String?,
      imageUri: json['imageUri'] as String?,
      amount: (json['amount'] as num).toDouble(),
      qty: (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$SimpleReportSummarizeByItemsResToJson(
        SimpleReportSummarizeByItemsRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'price': instance.price,
      'barcode': instance.barcode,
      'imageUri': instance.imageUri,
      'qty': instance.qty,
      'amount': instance.amount,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_sales_by_shift_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderListSalesByShiftRes _$TenderListSalesByShiftResFromJson(Map json) =>
    TenderListSalesByShiftRes(
      salesHistoryId: json['salesHistoryId'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      salesDate: json['salesDate'] as String,
      isCanceled: json['isCanceled'] as bool,
    );

Map<String, dynamic> _$TenderListSalesByShiftResToJson(
        TenderListSalesByShiftRes instance) =>
    <String, dynamic>{
      'salesHistoryId': instance.salesHistoryId,
      'totalAmount': instance.totalAmount,
      'salesDate': instance.salesDate,
      'isCanceled': instance.isCanceled,
    };

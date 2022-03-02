// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_save_order_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleOrderSaveOrderRes _$SimpleOrderSaveOrderResFromJson(Map json) =>
    SimpleOrderSaveOrderRes(
      orderId: json['orderId'] as String,
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$SimpleOrderSaveOrderResToJson(
        SimpleOrderSaveOrderRes instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'items': instance.items,
    };

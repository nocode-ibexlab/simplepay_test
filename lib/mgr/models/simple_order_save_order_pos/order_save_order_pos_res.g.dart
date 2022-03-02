// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_save_order_pos_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleOrderSaveOrderPosRes _$SimpleOrderSaveOrderPosResFromJson(
        Map<String, dynamic> json) =>
    SimpleOrderSaveOrderPosRes(
      orderId: json['orderId'] as String,
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$SimpleOrderSaveOrderPosResToJson(
        SimpleOrderSaveOrderPosRes instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'items': instance.items,
    };

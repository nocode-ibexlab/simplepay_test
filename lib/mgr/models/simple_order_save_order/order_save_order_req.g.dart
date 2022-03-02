// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_save_order_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleOrderSaveOrderReq _$SimpleOrderSaveOrderReqFromJson(
        Map<String, dynamic> json) =>
    SimpleOrderSaveOrderReq(
      id: json['id'] as String?,
      items: json['items'] as List<dynamic>,
      discount: (json['discount'] as num?)?.toDouble(),
      markup: (json['markup'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SimpleOrderSaveOrderReqToJson(
        SimpleOrderSaveOrderReq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'discount': instance.discount,
      'markup': instance.markup,
    };

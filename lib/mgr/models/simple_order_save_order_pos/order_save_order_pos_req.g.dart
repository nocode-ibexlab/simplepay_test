// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_save_order_pos_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleOrderSaveOrderPosReq _$SimpleOrderSaveOrderPosReqFromJson(
        Map<String, dynamic> json) =>
    SimpleOrderSaveOrderPosReq(
      orderId: json['orderId'] as String?,
      items: json['items'] as List<dynamic>,
      orderDiscount: (json['orderDiscount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SimpleOrderSaveOrderPosReqToJson(
        SimpleOrderSaveOrderPosReq instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'items': instance.items,
      'orderDiscount': instance.orderDiscount,
    };

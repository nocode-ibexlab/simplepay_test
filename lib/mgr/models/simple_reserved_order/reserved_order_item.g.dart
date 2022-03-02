// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservedOrderItemModel _$ReservedOrderItemModelFromJson(Map json) =>
    ReservedOrderItemModel(
      tableId: json['tableId'] as String,
      orderId: json['orderId'] as String,
      totalQty: (json['totalQty'] as num).toDouble(),
      lastRevisionDatetime: json['lastRevisionDatetime'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$ReservedOrderItemModelToJson(
        ReservedOrderItemModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'tableId': instance.tableId,
      'totalQty': instance.totalQty,
      'totalAmount': instance.totalAmount,
      'lastRevisionDatetime': instance.lastRevisionDatetime,
    };

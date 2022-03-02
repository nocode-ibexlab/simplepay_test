// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_get_order_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleOrderGetOrderRes _$SimpleOrderGetOrderResFromJson(Map json) =>
    SimpleOrderGetOrderRes(
      orderId: json['orderId'] as String,
      tableId: json['tableId'] as String,
      items: json['items'] as List<dynamic>,
      discount: (json['discount'] as num).toDouble(),
      markup: (json['markup'] as num).toDouble(),
      totalDue: (json['totalDue'] as num).toDouble(),
      totalReceived: (json['totalReceived'] as num).toDouble(),
      taxExemptReceived: (json['taxExemptReceived'] as num).toDouble(),
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$SimpleOrderGetOrderResToJson(
        SimpleOrderGetOrderRes instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'tableId': instance.tableId,
      'items': instance.items,
      'discount': instance.discount,
      'markup': instance.markup,
      'totalDue': instance.totalDue,
      'totalReceived': instance.totalReceived,
      'taxExemptReceived': instance.taxExemptReceived,
      'balance': instance.balance,
    };

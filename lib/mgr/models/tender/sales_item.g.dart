// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesItem _$SalesItemFromJson(Map<String, dynamic> json) => SalesItem(
      salesItemId: json['salesItemId'] as String,
      itemId: json['itemId'] as String,
      price: (json['price'] as num).toDouble(),
      qty: (json['qty'] as num).toDouble(),
      supplyValue: (json['supplyValue'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      supplyAmount: (json['supplyAmount'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      isRefund: json['isRefund'] as String,
    );

Map<String, dynamic> _$SalesItemToJson(SalesItem instance) => <String, dynamic>{
      'salesItemId': instance.salesItemId,
      'itemId': instance.itemId,
      'price': instance.price,
      'qty': instance.qty,
      'supplyValue': instance.supplyValue,
      'tax': instance.tax,
      'supplyAmount': instance.supplyAmount,
      'discount': instance.discount,
      'isRefund': instance.isRefund,
    };

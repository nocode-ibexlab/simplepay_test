// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_full_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemFullModel _$ItemFullModelFromJson(Map json) => ItemFullModel(
      itemId: json['itemId'] as String?,
      orderId: json['orderId'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      id: json['id'] as String?,
      qty: (json['qty'] as num?)?.toDouble(),
      taxApplied: json['taxApplied'] as String?,
      taxExempt: (json['taxExempt'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      imageUri: json['imageUri'] as String?,
      mark: json['mark'] as String?,
      orderDiscount: (json['orderDiscount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ItemFullModelToJson(ItemFullModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('itemId', instance.itemId);
  writeNotNull('orderId', instance.orderId);
  writeNotNull('name', instance.name);
  writeNotNull('qty', instance.qty);
  writeNotNull('taxExempt', instance.taxExempt);
  writeNotNull('price', instance.price);
  writeNotNull('discount', instance.discount);
  writeNotNull('orderDiscount', instance.orderDiscount);
  writeNotNull('imageUri', instance.imageUri);
  writeNotNull('taxApplied', instance.taxApplied);
  writeNotNull('mark', instance.mark);
  return val;
}

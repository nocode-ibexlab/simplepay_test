// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => ItemModel(
      orderItemId: json['orderItemId'] as String,
      itemId: json['itemId'] as String,
      itemGroupId: json['itemGroupId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      qty: json['qty'] as int? ?? 0,
      barcode: json['barcode'] as String?,
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      imageUri: json['imageUri'] as String?,
      discountPercent: json['discountPercent'] as String?,
    );

Map<String, dynamic> _$ItemModelToJson(ItemModel instance) => <String, dynamic>{
      'orderItemId': instance.orderItemId,
      'itemId': instance.itemId,
      'itemGroupId': instance.itemGroupId,
      'name': instance.name,
      'price': instance.price,
      'imageUri': instance.imageUri,
      'barcode': instance.barcode,
      'qty': instance.qty,
      'discountPrice': instance.discountPrice,
      'discountPercent': instance.discountPercent,
    };

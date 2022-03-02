// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_item_save_order_model_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModelSaveOrderRes _$ItemModelSaveOrderResFromJson(Map json) =>
    ItemModelSaveOrderRes(
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      id: json['id'] as String?,
      qty: (json['qty'] as num).toDouble(),
      taxApplied: json['taxApplied'] as String,
      taxExempt: (json['taxExempt'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      imageUri: json['imageUri'] as String?,
      mark: json['mark'] as String?,
      orderDiscount: (json['orderDiscount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ItemModelSaveOrderResToJson(
        ItemModelSaveOrderRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'name': instance.name,
      'qty': instance.qty,
      'taxExempt': instance.taxExempt,
      'price': instance.price,
      'discount': instance.discount,
      'orderDiscount': instance.orderDiscount,
      'imageUri': instance.imageUri,
      'taxApplied': instance.taxApplied,
      'mark': instance.mark,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_item_save_order_model_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModelSaveOrderReq _$ItemModelSaveOrderReqFromJson(Map json) =>
    ItemModelSaveOrderReq(
      itemId: json['itemId'] as String,
      qty: (json['qty'] as num).toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      id: json['id'] as String?,
      isDiscountStoreno: json['isDiscountStoreno'] as bool?,
      isStoreno: json['isStoreno'] as bool?,
    );

Map<String, dynamic> _$ItemModelSaveOrderReqToJson(
        ItemModelSaveOrderReq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'price': instance.price,
      'qty': instance.qty,
      'discount': instance.discount,
      'isStoreno': instance.isStoreno,
      'isDiscountStoreno': instance.isDiscountStoreno,
    };

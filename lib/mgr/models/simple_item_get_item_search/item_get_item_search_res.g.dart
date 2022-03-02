// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_get_item_search_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemGetItemSearchRes _$SimpleItemGetItemSearchResFromJson(Map json) =>
    SimpleItemGetItemSearchRes(
      itemId: json['itemId'] as String,
      groupId: json['groupId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      barcode: json['barcode'] as String?,
      imageUri: json['imageUri'] as String?,
      isRecommended: json['isRecommended'] as bool?,
    );

Map<String, dynamic> _$SimpleItemGetItemSearchResToJson(
        SimpleItemGetItemSearchRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'groupId': instance.groupId,
      'name': instance.name,
      'barcode': instance.barcode,
      'imageUri': instance.imageUri,
      'price': instance.price,
      'isRecommended': instance.isRecommended,
    };

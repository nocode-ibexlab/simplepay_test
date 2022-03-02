// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_item_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModelSearch _$ItemModelSearchFromJson(Map json) => ItemModelSearch(
      itemId: json['itemId'] as String,
      groupId: json['groupId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      barcode: json['barcode'] as String?,
      imageUri: json['imageUri'] as String?,
      isRecommended: json['isRecommended'] as bool?,
    );

Map<String, dynamic> _$ItemModelSearchToJson(ItemModelSearch instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'groupId': instance.groupId,
      'name': instance.name,
      'price': instance.price,
      'barcode': instance.barcode,
      'imageUri': instance.imageUri,
      'isRecommended': instance.isRecommended,
    };

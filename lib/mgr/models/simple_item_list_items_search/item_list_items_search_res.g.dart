// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list_items_search_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemListItemsSearchRes _$SimpleItemListItemsSearchResFromJson(Map json) =>
    SimpleItemListItemsSearchRes(
      itemId: json['itemId'] as String,
      groupId: json['groupId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      barcode: json['barcode'] as String?,
      imageUri: json['imageUri'] as String?,
      isRecommended: json['isRecommended'] as bool?,
      taxApplied: json['taxApplied'] as String?,
    );

Map<String, dynamic> _$SimpleItemListItemsSearchResToJson(
        SimpleItemListItemsSearchRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'groupId': instance.groupId,
      'name': instance.name,
      'barcode': instance.barcode,
      'taxApplied': instance.taxApplied,
      'imageUri': instance.imageUri,
      'price': instance.price,
      'isRecommended': instance.isRecommended,
    };

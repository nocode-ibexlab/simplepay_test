// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_list_recently_used_items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemsListRecentlyUsedItemsRes
    _$SimpleItemsListRecentlyUsedItemsResFromJson(Map json) =>
        SimpleItemsListRecentlyUsedItemsRes(
          itemId: json['itemId'] as String,
          groupId: json['groupId'] as String,
          name: json['name'] as String,
          price: (json['price'] as num).toDouble(),
          barcode: json['barcode'] as String?,
          taxApplied: json['taxApplied'] as String?,
          imageUri: json['imageUri'] as String?,
          isRecommended: json['isRecommended'] as bool?,
        );

Map<String, dynamic> _$SimpleItemsListRecentlyUsedItemsResToJson(
        SimpleItemsListRecentlyUsedItemsRes instance) =>
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_find_items_search_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemFindItemsSearchReq _$SimpleItemFindItemsSearchReqFromJson(
        Map<String, dynamic> json) =>
    SimpleItemFindItemsSearchReq(
      itemId: json['itemId'] as String?,
      itemGroupId: json['itemGroupId'] as String?,
      name: json['name'] as String?,
      barCode: json['barCode'] as String?,
      isFavorite: json['isFavorite'] as String?,
    );

Map<String, dynamic> _$SimpleItemFindItemsSearchReqToJson(
        SimpleItemFindItemsSearchReq instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemGroupId': instance.itemGroupId,
      'name': instance.name,
      'barCode': instance.barCode,
      'isFavorite': instance.isFavorite,
    };

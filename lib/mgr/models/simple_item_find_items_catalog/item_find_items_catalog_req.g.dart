// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_find_items_catalog_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleFindItemsCatalogReq _$SimpleFindItemsCatalogReqFromJson(
        Map<String, dynamic> json) =>
    SimpleFindItemsCatalogReq(
      itemId: json['itemId'] as String?,
      itemGroupId: json['itemGroupId'] as String,
      name: json['name'] as String?,
      barCode: json['barCode'] as String?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$SimpleFindItemsCatalogReqToJson(
        SimpleFindItemsCatalogReq instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemGroupId': instance.itemGroupId,
      'name': instance.name,
      'barCode': instance.barCode,
      'isFavorite': instance.isFavorite,
    };

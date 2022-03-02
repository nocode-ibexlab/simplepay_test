// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_get_item_search_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemGetItemSearchReq _$SimpleItemGetItemSearchReqFromJson(
        Map<String, dynamic> json) =>
    SimpleItemGetItemSearchReq(
      itemId: json['itemId'] as String?,
      barcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$SimpleItemGetItemSearchReqToJson(
        SimpleItemGetItemSearchReq instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'barcode': instance.barcode,
    };

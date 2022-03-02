// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list_items_search_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleItemListItemsSearchReq _$SimpleItemListItemsSearchReqFromJson(
        Map<String, dynamic> json) =>
    SimpleItemListItemsSearchReq(
      groupId: json['groupId'] as String?,
      name: json['name'] as String?,
      isRecommended: json['isRecommended'] as bool?,
    );

Map<String, dynamic> _$SimpleItemListItemsSearchReqToJson(
        SimpleItemListItemsSearchReq instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'isRecommended': instance.isRecommended,
    };

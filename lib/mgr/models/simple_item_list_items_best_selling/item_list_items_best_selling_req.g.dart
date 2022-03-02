// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list_items_best_selling_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleBestSellingItemListReq _$SimpleBestSellingItemListReqFromJson(Map json) =>
    SimpleBestSellingItemListReq(
      groupId: json['groupId'] as String?,
      name: json['name'] as String?,
      isRecommended: json['isRecommended'] as bool?,
    );

Map<String, dynamic> _$SimpleBestSellingItemListReqToJson(
        SimpleBestSellingItemListReq instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'isRecommended': instance.isRecommended,
    };

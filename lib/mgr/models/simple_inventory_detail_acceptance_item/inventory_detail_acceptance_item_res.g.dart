// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_detail_acceptance_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryDetailAcceptanceItemRes _$InventoryDetailAcceptanceItemResFromJson(
        Map json) =>
    InventoryDetailAcceptanceItemRes(
      acceptanceItemsId: json['acceptanceItemsId'] as String,
      name: json['name'] as String,
      date: json['date'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map(
              (e) => InventoryAcceptanceDetailProductItemRes.fromJson(e as Map))
          .toList(),
    );

Map<String, dynamic> _$InventoryDetailAcceptanceItemResToJson(
        InventoryDetailAcceptanceItemRes instance) =>
    <String, dynamic>{
      'acceptanceItemsId': instance.acceptanceItemsId,
      'date': instance.date,
      'name': instance.name,
      'items': instance.items,
    };

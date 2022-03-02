// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_acceptance_detail_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryAcceptanceDetailProductItemRes
    _$InventoryAcceptanceDetailProductItemResFromJson(Map json) =>
        InventoryAcceptanceDetailProductItemRes(
          itemId: json['itemId'] as String,
          name: json['name'] as String,
          purchasePrice: (json['purchasePrice'] as num).toDouble(),
          salePrice: json['salePrice'] as String,
          qty: json['qty'] as String,
          barcode: (json['barcode'] as num).toDouble(),
        );

Map<String, dynamic> _$InventoryAcceptanceDetailProductItemResToJson(
        InventoryAcceptanceDetailProductItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'salePrice': instance.salePrice,
      'purchasePrice': instance.purchasePrice,
      'qty': instance.qty,
      'barcode': instance.barcode,
    };

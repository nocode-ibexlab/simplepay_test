import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/order/item_res.dart';

part 'inventory_acceptance_detail_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryAcceptanceDetailProductItemRes {
  String itemId;
  String name;
  String salePrice;
  double purchasePrice;
  String qty;
  double barcode;

  @override
  InventoryAcceptanceDetailProductItemRes({
    required this.itemId,
    required this.name,
    required this.purchasePrice,
    required this.salePrice,
    required this.qty,
    required this.barcode,
  });

  factory InventoryAcceptanceDetailProductItemRes.fromJson(Map json) =>
      _$InventoryAcceptanceDetailProductItemResFromJson(json);

  Map toJson() => _$InventoryAcceptanceDetailProductItemResToJson(this);
}

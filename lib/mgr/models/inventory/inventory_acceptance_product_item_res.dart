import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/order/item_res.dart';

part 'inventory_acceptance_product_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryAcceptanceProductItemRes {
  String itemId;
  String itemGroupId;
  double qty;
  double purchasePrice;

  @override
  InventoryAcceptanceProductItemRes({
    required this.purchasePrice,
    required this.qty,
    required this.itemId,
    required this.itemGroupId,
  });

  factory InventoryAcceptanceProductItemRes.fromJson(Map json) =>
      _$InventoryAcceptanceProductItemResFromJson(json);

  Map toJson() => _$InventoryAcceptanceProductItemResToJson(this);
}

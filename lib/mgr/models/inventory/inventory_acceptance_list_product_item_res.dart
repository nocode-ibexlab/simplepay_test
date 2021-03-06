import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/order/item_res.dart';

part 'inventory_acceptance_list_product_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryAcceptanceListProductItemRes {
  String date;
  String name;
  double price;

  @override
  InventoryAcceptanceListProductItemRes({
    required this.price,
    required this.name,
    required this.date,
  });

  factory InventoryAcceptanceListProductItemRes.fromJson(Map json) =>
      _$InventoryAcceptanceListProductItemResFromJson(json);

  Map toJson() => _$InventoryAcceptanceListProductItemResToJson(this);
}

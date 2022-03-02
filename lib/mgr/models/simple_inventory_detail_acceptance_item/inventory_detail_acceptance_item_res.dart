import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/inventory/inventory_acceptance_detail_item_res.dart';

part 'inventory_detail_acceptance_item_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryDetailAcceptanceItemRes {
  String acceptanceItemsId;
  String? date;
  String name;
  List<InventoryAcceptanceDetailProductItemRes>? items;

  @override
  InventoryDetailAcceptanceItemRes({
    required this.acceptanceItemsId,
    required this.name,
    this.date,
    this.items,
  });

  factory InventoryDetailAcceptanceItemRes.fromJson(Map json) =>
      _$InventoryDetailAcceptanceItemResFromJson(json);

  Map toJson() => _$InventoryDetailAcceptanceItemResToJson(this);
}

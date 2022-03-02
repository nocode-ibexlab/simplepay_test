import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/inventory/inventory_detail_revision_item_res.dart';

part 'inventory_detail_revision_items_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryDetailRevisionItemsRes {
  String? date;
  String name;
  List<InventoryDetailRevisionItemRes>? items;

  @override
  InventoryDetailRevisionItemsRes({
    this.date,
    required this.name,
    this.items,
  });

  factory InventoryDetailRevisionItemsRes.fromJson(Map json) =>
      _$InventoryDetailRevisionItemsResFromJson(json);

  Map toJson() => _$InventoryDetailRevisionItemsResToJson(this);
}

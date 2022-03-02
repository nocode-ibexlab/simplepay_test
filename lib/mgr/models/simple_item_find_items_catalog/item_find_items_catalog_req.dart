import 'package:json_annotation/json_annotation.dart';

part 'item_find_items_catalog_req.g.dart';

@JsonSerializable()
class SimpleFindItemsCatalogReq {
  String? itemId;
  String itemGroupId;
  String? name;
  String? barCode;
  bool? isFavorite;

  @override
  SimpleFindItemsCatalogReq(
      {this.itemId,
      required this.itemGroupId,
      this.name,
      this.barCode,
      this.isFavorite});

  factory SimpleFindItemsCatalogReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleFindItemsCatalogReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleFindItemsCatalogReqToJson(this);
}

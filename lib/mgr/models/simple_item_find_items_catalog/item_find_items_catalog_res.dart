import 'package:json_annotation/json_annotation.dart';

part 'item_find_items_catalog_res.g.dart';

@JsonSerializable()
class SimpleFindItemsCatalogRes {
  List list;

  @override
  SimpleFindItemsCatalogRes({required this.list});

  factory SimpleFindItemsCatalogRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleFindItemsCatalogResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleFindItemsCatalogResToJson(this);
}

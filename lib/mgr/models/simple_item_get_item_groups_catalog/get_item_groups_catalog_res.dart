import 'package:json_annotation/json_annotation.dart';

part 'get_item_groups_catalog_res.g.dart';

@JsonSerializable()
class SimpleGetItemGroupsCatalogRes {
  List list;

  @override
  SimpleGetItemGroupsCatalogRes({required this.list});

  factory SimpleGetItemGroupsCatalogRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleGetItemGroupsCatalogResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleGetItemGroupsCatalogResToJson(this);
}

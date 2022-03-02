import 'package:json_annotation/json_annotation.dart';

part 'get_item_groups_catalog_req.g.dart';

@JsonSerializable()
class SimpleGetItemGroupsCatalogReq {
  bool isFavorite;

  @override
  SimpleGetItemGroupsCatalogReq({required this.isFavorite});

  factory SimpleGetItemGroupsCatalogReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleGetItemGroupsCatalogReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleGetItemGroupsCatalogReqToJson(this);
}

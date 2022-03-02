import 'package:json_annotation/json_annotation.dart';

part 'item_find_items_search_req.g.dart';

@JsonSerializable()
class SimpleItemFindItemsSearchReq {
  String? itemId;
  String? itemGroupId;
  String? name;
  String? barCode;
  String? isFavorite;

  @override
  SimpleItemFindItemsSearchReq(
      {this.itemId,
      this.itemGroupId,
      this.name,
      this.barCode,
      this.isFavorite});

  factory SimpleItemFindItemsSearchReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleItemFindItemsSearchReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleItemFindItemsSearchReqToJson(this);
}

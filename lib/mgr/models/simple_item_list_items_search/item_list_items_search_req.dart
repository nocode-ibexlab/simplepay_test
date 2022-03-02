import 'package:json_annotation/json_annotation.dart';

part 'item_list_items_search_req.g.dart';

@JsonSerializable()
class SimpleItemListItemsSearchReq {
  String? groupId;
  String? name;
  bool? isRecommended;

  @override
  SimpleItemListItemsSearchReq({
    this.groupId,
    this.name,
    this.isRecommended,
  });

  factory SimpleItemListItemsSearchReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleItemListItemsSearchReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleItemListItemsSearchReqToJson(this);
}

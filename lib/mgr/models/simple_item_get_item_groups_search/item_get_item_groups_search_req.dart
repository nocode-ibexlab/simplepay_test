import 'package:json_annotation/json_annotation.dart';

part 'item_get_item_groups_search_req.g.dart';

@JsonSerializable()
class SimpleGetItemGroupsSearchReq {
  bool? isFavorite;

  @override
  SimpleGetItemGroupsSearchReq({
    this.isFavorite,
  });

  factory SimpleGetItemGroupsSearchReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleGetItemGroupsSearchReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleGetItemGroupsSearchReqToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'item_get_item_groups_search_res.g.dart';

@JsonSerializable()
class SimpleGetItemGroupsSearchRes {
  List list; //it's not written the name in API doc

  @override
  SimpleGetItemGroupsSearchRes({required this.list});

  factory SimpleGetItemGroupsSearchRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleGetItemGroupsSearchResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleGetItemGroupsSearchResToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'item_list_groups_search_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleItemListGroupsSearchRes {
  String id;
  String name;

  @override
  SimpleItemListGroupsSearchRes({
    required this.id,
    required this.name,
  });

  factory SimpleItemListGroupsSearchRes.fromJson(Map json) =>
      _$SimpleItemListGroupsSearchResFromJson(json);

  Map toJson() => _$SimpleItemListGroupsSearchResToJson(this);
}

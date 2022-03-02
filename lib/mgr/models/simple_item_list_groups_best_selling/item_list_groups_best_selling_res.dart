import 'package:json_annotation/json_annotation.dart';

part 'item_list_groups_best_selling_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleBestSellingListGroupsRes {
  String id;
  String name;

  @override
  SimpleBestSellingListGroupsRes({
    required this.id,
    required this.name,
  });

  factory SimpleBestSellingListGroupsRes.fromJson(Map json) =>
      _$SimpleBestSellingListGroupsResFromJson(json);

  Map toJson() => _$SimpleBestSellingListGroupsResToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'items_get_cat_items_pos_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleItemsGetCatItemsPosRes {
  List list; // add Item

  @override
  SimpleItemsGetCatItemsPosRes({required this.list});

  factory SimpleItemsGetCatItemsPosRes.fromJson(Map json) =>
      _$SimpleItemsGetCatItemsPosResFromJson(json);

  Map toJson() => _$SimpleItemsGetCatItemsPosResToJson(this);
}

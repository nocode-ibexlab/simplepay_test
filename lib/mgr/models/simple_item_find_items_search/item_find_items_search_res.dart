import 'package:json_annotation/json_annotation.dart';

part 'item_find_items_search_res.g.dart';

@JsonSerializable()
class SimpleItemFindItemsSearchRes {
  List list; //it's not written the name in API doc
  @override
  SimpleItemFindItemsSearchRes({
    required this.list,
  });

  factory SimpleItemFindItemsSearchRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleItemFindItemsSearchResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleItemFindItemsSearchResToJson(this);
}

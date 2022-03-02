import 'package:json_annotation/json_annotation.dart';

part 'item_list_items_search_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleItemListItemsSearchRes {
  String itemId;
  String groupId;
  String name;
  String? barcode;
  String? taxApplied;
  String? imageUri;
  double price;
  bool? isRecommended;

  @override
  SimpleItemListItemsSearchRes({
    required this.itemId,
    required this.groupId,
    required this.name,
    required this.price,
    this.barcode,
    this.imageUri,
    this.isRecommended,
    this.taxApplied,
  });

  factory SimpleItemListItemsSearchRes.fromJson(Map json) =>
      _$SimpleItemListItemsSearchResFromJson(json);

  Map toJson() => _$SimpleItemListItemsSearchResToJson(this);
}

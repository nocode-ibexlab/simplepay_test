import 'package:json_annotation/json_annotation.dart';

part 'item_list_items_best_selling_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleBestSellingListItems {
  String itemId;
  String groupId;
  String name;
  String? barcode;
  String? taxApplied;
  String? imageUri;
  double price;
  bool? isRecommended;

  @override
  SimpleBestSellingListItems({
    required this.itemId,
    required this.groupId,
    required this.name,
    required this.price,
    this.barcode,
    this.imageUri,
    this.isRecommended,
    this.taxApplied,
  });

  factory SimpleBestSellingListItems.fromJson(Map json) =>
      _$SimpleBestSellingListItemsFromJson(json);

  Map toJson() => _$SimpleBestSellingListItemsToJson(this);
}

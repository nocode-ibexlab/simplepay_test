import 'package:json_annotation/json_annotation.dart';

part 'item_get_item_best_selling_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleItemGetItemBestSellingRes {
  String itemId;
  String groupId;
  String name;
  String? barcode;
  String? taxApplied;
  String? imageUri;

  double price;

  bool? isRecommended;

  @override
  SimpleItemGetItemBestSellingRes({
    required this.itemId,
    required this.groupId,
    required this.name,
    required this.price,
    this.barcode,
    this.imageUri,
    this.isRecommended,
    this.taxApplied,
  });

  factory SimpleItemGetItemBestSellingRes.fromJson(Map json) =>
      _$SimpleItemGetItemBestSellingResFromJson(json);

  Map toJson() => _$SimpleItemGetItemBestSellingResToJson(this);
}

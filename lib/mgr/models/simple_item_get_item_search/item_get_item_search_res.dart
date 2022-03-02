import 'package:json_annotation/json_annotation.dart';

part 'item_get_item_search_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleItemGetItemSearchRes {
  String itemId;
  String groupId;
  String name;
  String? barcode;
  String? imageUri;

  double price;

  bool? isRecommended;

  @override
  SimpleItemGetItemSearchRes({
    required this.itemId,
    required this.groupId,
    required this.name,
    required this.price,
    this.barcode,
    this.imageUri,
    this.isRecommended,
  });

  factory SimpleItemGetItemSearchRes.fromJson(Map json) =>
      _$SimpleItemGetItemSearchResFromJson(json);

  Map toJson() => _$SimpleItemGetItemSearchResToJson(this);
}

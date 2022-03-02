import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'items_list_recently_used_items_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleItemsListRecentlyUsedItemsRes {
  String itemId;
  String groupId;
  String name;
  String? barcode;
  String? taxApplied;
  String? imageUri;
  double price;
  bool? isRecommended;

  @override
  SimpleItemsListRecentlyUsedItemsRes({
    required this.itemId,
    required this.groupId,
    required this.name,
    required this.price,
    this.barcode,
    this.taxApplied,
    this.imageUri,
    this.isRecommended,
  });

  ModelFormatter get getPriceMap =>
      ModelFormatter(currencyFormatter(price), price);

  ModelFormatter get getTaxAppliedMap =>
      ModelFormatter(Constants.taxAppliedFormatter[taxApplied], taxApplied);

  factory SimpleItemsListRecentlyUsedItemsRes.fromJson(Map json) =>
      _$SimpleItemsListRecentlyUsedItemsResFromJson(json);

  Map toJson() => _$SimpleItemsListRecentlyUsedItemsResToJson(this);
}

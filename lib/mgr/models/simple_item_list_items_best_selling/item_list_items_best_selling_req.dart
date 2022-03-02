import 'package:json_annotation/json_annotation.dart';

part 'item_list_items_best_selling_req.g.dart';

@JsonSerializable(anyMap: true)
class SimpleBestSellingItemListReq {
  String? groupId;
  String? name;
  bool? isRecommended;

  @override
  SimpleBestSellingItemListReq({
    this.groupId,
    this.name,
    this.isRecommended,
  });

  factory SimpleBestSellingItemListReq.fromJson(Map json) =>
      _$SimpleBestSellingItemListReqFromJson(json);

  Map toJson() => _$SimpleBestSellingItemListReqToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'items_list_recently_used_items_req.g.dart';

@JsonSerializable()
class SimpleItemsListRecentlyUsedItemsReq {
  String? itemId;

  @override
  SimpleItemsListRecentlyUsedItemsReq({
    this.itemId,
  });

  factory SimpleItemsListRecentlyUsedItemsReq.fromJson(
          Map<String, dynamic> json) =>
      _$SimpleItemsListRecentlyUsedItemsReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleItemsListRecentlyUsedItemsReqToJson(this);
}

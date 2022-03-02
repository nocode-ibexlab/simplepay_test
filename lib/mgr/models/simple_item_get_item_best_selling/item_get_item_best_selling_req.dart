import 'package:json_annotation/json_annotation.dart';

part 'item_get_item_best_selling_req.g.dart';

@JsonSerializable()
class SimpleItemGetItemBestSellingReq {
  String? itemId;
  String? barcode;

  @override
  SimpleItemGetItemBestSellingReq({
    this.itemId,
    this.barcode,
  });

  factory SimpleItemGetItemBestSellingReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleItemGetItemBestSellingReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleItemGetItemBestSellingReqToJson(this);
}

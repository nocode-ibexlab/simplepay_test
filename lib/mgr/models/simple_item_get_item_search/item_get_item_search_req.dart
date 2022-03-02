import 'package:json_annotation/json_annotation.dart';

part 'item_get_item_search_req.g.dart';

@JsonSerializable()
class SimpleItemGetItemSearchReq {
  String? itemId;
  String? barcode;

  @override
  SimpleItemGetItemSearchReq({
    this.itemId,
    this.barcode,
  });

  factory SimpleItemGetItemSearchReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleItemGetItemSearchReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleItemGetItemSearchReqToJson(this);
}

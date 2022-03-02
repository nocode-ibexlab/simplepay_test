import 'package:json_annotation/json_annotation.dart';
part 'simple_item_save_order_model_req.g.dart';

@JsonSerializable(anyMap: true)
class ItemModelSaveOrderReq {
  String? id;
  String itemId;
  double? price;
  double qty;
  double? discount;
  bool? isStoreno;
  bool? isDiscountStoreno;

  @override
  ItemModelSaveOrderReq({
    required this.itemId,
    required this.qty,
    this.price,
    this.discount,
    this.id,
    this.isDiscountStoreno,
    this.isStoreno,
  });

  factory ItemModelSaveOrderReq.fromJson(json) =>
      _$ItemModelSaveOrderReqFromJson(json);

  Map toJson() => _$ItemModelSaveOrderReqToJson(this);
}

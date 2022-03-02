import 'package:json_annotation/json_annotation.dart';

part 'order_save_order_req.g.dart';

@JsonSerializable()
class SimpleOrderSaveOrderReq {
  String? id;
  List items;
  double? discount;
  double? markup;

  @override
  SimpleOrderSaveOrderReq({
    this.id,
    required this.items,
    this.discount,
    this.markup,
  });

  factory SimpleOrderSaveOrderReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderSaveOrderReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleOrderSaveOrderReqToJson(this);
}

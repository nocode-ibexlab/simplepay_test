import 'package:json_annotation/json_annotation.dart';

part 'order_save_order_pos_req.g.dart';

@JsonSerializable()
class SimpleOrderSaveOrderPosReq {
  String? orderId;
  List items; // add Item
  double? orderDiscount;

  @override
  SimpleOrderSaveOrderPosReq({
    this.orderId,
    required this.items,
    this.orderDiscount,
  });

  factory SimpleOrderSaveOrderPosReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderSaveOrderPosReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleOrderSaveOrderPosReqToJson(this);
}

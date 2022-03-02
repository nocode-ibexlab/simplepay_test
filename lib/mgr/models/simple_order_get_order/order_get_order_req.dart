import 'package:json_annotation/json_annotation.dart';

part 'order_get_order_req.g.dart';

@JsonSerializable()
class SimpleOrderGetOrderReq {
  String orderId;

  @override
  SimpleOrderGetOrderReq({required this.orderId});

  factory SimpleOrderGetOrderReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderGetOrderReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleOrderGetOrderReqToJson(this);
}

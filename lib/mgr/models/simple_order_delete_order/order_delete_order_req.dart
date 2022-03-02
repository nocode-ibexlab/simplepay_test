import 'package:json_annotation/json_annotation.dart';

part 'order_delete_order_req.g.dart';

@JsonSerializable()
class SimpleOrderDeleteOrderReq {
  String orderId;

  @override
  SimpleOrderDeleteOrderReq({required this.orderId});

  factory SimpleOrderDeleteOrderReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderDeleteOrderReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleOrderDeleteOrderReqToJson(this);
}

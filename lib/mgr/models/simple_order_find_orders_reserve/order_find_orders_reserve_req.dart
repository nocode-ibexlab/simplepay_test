import 'package:json_annotation/json_annotation.dart';

part 'order_find_orders_reserve_req.g.dart';

@JsonSerializable()
class SimpleOrderFindOrdersReserveReq {
  String? tableId;

  @override
  SimpleOrderFindOrdersReserveReq({
    this.tableId,
  });

  factory SimpleOrderFindOrdersReserveReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderFindOrdersReserveReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleOrderFindOrdersReserveReqToJson(this);
}

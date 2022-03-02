import 'package:json_annotation/json_annotation.dart';

part 'order_find_orders_reserve_res.g.dart';

@JsonSerializable()
class SimpleOrderFindOrdersReserveRes {
  List list; //it's not written the name in API doc

  @override
  SimpleOrderFindOrdersReserveRes({
    required this.list,
  });

  factory SimpleOrderFindOrdersReserveRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderFindOrdersReserveResFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleOrderFindOrdersReserveResToJson(this);
}

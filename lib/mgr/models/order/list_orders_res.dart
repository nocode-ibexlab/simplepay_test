import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/order/item_res.dart';

import 'get_order_res.dart';
import 'list_item_res.dart';

part 'list_orders_res.g.dart';

@JsonSerializable(anyMap: true)
class OrderListOrdersRes {
  List<OrderListItemRes> list;

  @override
  OrderListOrdersRes({required this.list});

  factory OrderListOrdersRes.fromJson(Map json) =>
      _$OrderListOrdersResFromJson(json);

  Map toJson() => _$OrderListOrdersResToJson(this);
}

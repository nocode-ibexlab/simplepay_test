import 'package:json_annotation/json_annotation.dart';

part 'order_get_order_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleOrderGetOrderRes {
  String orderId;
  String tableId;
  List items; // add Item
  double discount;
  double markup;
  double totalDue;
  double totalReceived;
  double taxExemptReceived;
  double balance;

  @override
  SimpleOrderGetOrderRes({
    required this.orderId,
    required this.tableId,
    required this.items,
    required this.discount,
    required this.markup,
    required this.totalDue,
    required this.totalReceived,
    required this.taxExemptReceived,
    required this.balance,
  });

  factory SimpleOrderGetOrderRes.fromJson(Map json) =>
      _$SimpleOrderGetOrderResFromJson(json);

  Map toJson() => _$SimpleOrderGetOrderResToJson(this);
}

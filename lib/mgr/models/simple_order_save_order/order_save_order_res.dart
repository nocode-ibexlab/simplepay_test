import 'package:json_annotation/json_annotation.dart';

part 'order_save_order_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleOrderSaveOrderRes {
  String orderId;
  List items; // add Item

  @override
  SimpleOrderSaveOrderRes({
    required this.orderId,
    required this.items,
  });

  factory SimpleOrderSaveOrderRes.fromJson(Map json) =>
      _$SimpleOrderSaveOrderResFromJson(json);

  Map toJson() => _$SimpleOrderSaveOrderResToJson(this);
}

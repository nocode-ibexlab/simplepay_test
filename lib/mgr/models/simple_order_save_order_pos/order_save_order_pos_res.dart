import 'package:json_annotation/json_annotation.dart';

part 'order_save_order_pos_res.g.dart';

@JsonSerializable()
class SimpleOrderSaveOrderPosRes {
  String orderId;
  List items; // add Item

  @override
  SimpleOrderSaveOrderPosRes({
    required this.orderId,
    required this.items,
  });

  factory SimpleOrderSaveOrderPosRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleOrderSaveOrderPosResFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleOrderSaveOrderPosResToJson(this);
}

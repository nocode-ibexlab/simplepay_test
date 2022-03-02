import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/utils/format/model_format.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

part 'reserved_order_item.g.dart';

@JsonSerializable(anyMap: true)
class ReservedOrderItemModel {
  String orderId;
  String tableId;
  double totalQty;
  double totalAmount;
  String lastRevisionDatetime;

  @override
  ReservedOrderItemModel({
    required this.tableId,
    required this.orderId,
    required this.totalQty,
    required this.lastRevisionDatetime,
    required this.totalAmount,
  });

  ModelFormatter get getTotalAmountMap =>
      ModelFormatter(currencyFormatter(totalAmount), totalAmount);

  factory ReservedOrderItemModel.fromJson(Map json) =>
      _$ReservedOrderItemModelFromJson(json);

  Map toJson() => _$ReservedOrderItemModelToJson(this);
}

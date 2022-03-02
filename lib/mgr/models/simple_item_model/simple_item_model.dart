import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'simple_item_model.g.dart';

@JsonSerializable()
class ItemModel {
  String orderItemId;
  String itemId;
  String itemGroupId;
  String name;
  double price; //
  String? imageUri;
  String? barcode;
  int qty;
  double? discountPrice; //
  String? discountPercent;

  @override
  ItemModel({
    required this.orderItemId,
    required this.itemId,
    required this.itemGroupId,
    required this.name,
    required this.price,
    this.qty = 0,
    this.barcode,
    this.discountPrice,
    this.imageUri,
    this.discountPercent,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}

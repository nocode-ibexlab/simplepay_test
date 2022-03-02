import 'package:json_annotation/json_annotation.dart';

import '../../../presentation/template/base/template.dart';
part 'item_full_model.g.dart';

@JsonSerializable(anyMap: true, includeIfNull: false)
class ItemFullModel {
  String? id;
  String? itemId;
  String? orderId;
  String? name;
  double? qty;
  double? taxExempt;
  double? price;
  double? discount;
  double? orderDiscount;
  String? imageUri;
  String? taxApplied;
  String? mark;

  @override
  ItemFullModel({
    this.itemId,
    this.orderId,
    this.name,
    this.price,
    this.id,
    this.qty,
    this.taxApplied,
    this.taxExempt,
    this.discount,
    this.imageUri,
    this.mark,
    this.orderDiscount,
  });

  ModelFormatter get getTaxAppliedMap => ModelFormatter(
      Constants.availableTaxAppliedTypes[taxApplied], taxApplied);

  ModelFormatter get getTaxExemptMap =>
      ModelFormatter(currencyFormatter(taxExempt!), taxExempt);

  ModelFormatter get getDiscountMap =>
      ModelFormatter(currencyFormatter(discount!), discount);

  ModelFormatter get getOrderDiscountMap =>
      ModelFormatter(currencyFormatter(orderDiscount!), orderDiscount);

  ModelFormatter? get getPriceMap =>
      price != null ? ModelFormatter(currencyFormatter(price!), price) : null;
  factory ItemFullModel.fromJson(json) => _$ItemFullModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemFullModelToJson(this);
}

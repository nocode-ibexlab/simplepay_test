import 'package:json_annotation/json_annotation.dart';

import '../../../presentation/template/base/template.dart';
part 'simple_item_save_order_model_res.g.dart';

@JsonSerializable(anyMap: true)
class ItemModelSaveOrderRes {
  String? id;
  String itemId;
  String name;
  double qty;
  double? taxExempt;
  double price;
  double? discount;
  double? orderDiscount;
  String? imageUri;
  String taxApplied;
  String? mark;

  @override
  ItemModelSaveOrderRes({
    required this.itemId,
    required this.name,
    required this.price,
    this.id,
    required this.qty,
    required this.taxApplied,
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

  factory ItemModelSaveOrderRes.fromJson(json) =>
      _$ItemModelSaveOrderResFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelSaveOrderResToJson(this);
}

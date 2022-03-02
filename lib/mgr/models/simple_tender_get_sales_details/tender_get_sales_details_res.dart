import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'tender_get_sales_details_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleTenderGetSalesDetailsRes {
  List? items;
  List salesAccountHistory;
  double amount;
  double? discount;
  String? salesDate;

  @override
  SimpleTenderGetSalesDetailsRes(
      {this.items,
      required this.salesAccountHistory,
      required this.amount,
      this.discount,
      this.salesDate});

  ModelFormatter get getSalesDetailsAmountMap =>
      ModelFormatter(currencyFormatter(amount), amount);

  ModelFormatter get getSalesDetailsDiscountMap =>
      ModelFormatter(currencyFormatter(discount!), discount);

  factory SimpleTenderGetSalesDetailsRes.fromJson(Map json) =>
      _$SimpleTenderGetSalesDetailsResFromJson(json);

  Map toJson() => _$SimpleTenderGetSalesDetailsResToJson(this);
}

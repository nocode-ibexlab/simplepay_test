import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'report_summarize_by_items_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleReportSummarizeByItemsRes {
  String itemId;
  String name;
  double price;
  String? barcode;
  String? imageUri;
  double qty;
  double amount;

  @override
  SimpleReportSummarizeByItemsRes(
      {required this.itemId,
      required this.name,
      required this.price,
      this.barcode,
      this.imageUri,
      required this.amount,
      required this.qty});

  ModelFormatter get getItemPriceMap =>
      ModelFormatter(currencyFormatter(price), price);

  ModelFormatter get getItemAmountMap =>
      ModelFormatter(currencyFormatter(amount), amount);

  factory SimpleReportSummarizeByItemsRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleReportSummarizeByItemsResFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleReportSummarizeByItemsResToJson(this);
}

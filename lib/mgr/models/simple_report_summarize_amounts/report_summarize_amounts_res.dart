import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'report_summarize_amounts_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleReportSummarizeAmountsRes {
  int salesCount;
  double salesAmount;
  int refundCount;
  double refundAmount;

  @override
  SimpleReportSummarizeAmountsRes(
      {required this.salesCount,
      required this.salesAmount,
      required this.refundCount,
      required this.refundAmount});

  ModelFormatter get getSalesAMountMap =>
      ModelFormatter(currencyFormatter(salesAmount), salesAmount);
  ModelFormatter get getRefundAmountMap =>
      ModelFormatter(currencyFormatter(refundAmount), refundAmount);

  factory SimpleReportSummarizeAmountsRes.fromJson(Map<String, dynamic> json) =>
      _$SimpleReportSummarizeAmountsResFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleReportSummarizeAmountsResToJson(this);
}

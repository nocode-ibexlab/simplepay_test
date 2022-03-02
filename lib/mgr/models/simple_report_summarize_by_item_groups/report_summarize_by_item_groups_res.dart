import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'report_summarize_by_item_groups_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleReportSummarizeByItemGroupsRes {
  String itemGroupId;
  String itemGroupName;
  double qty;
  double amount;
  @override
  SimpleReportSummarizeByItemGroupsRes(
      {required this.itemGroupId,
      required this.itemGroupName,
      required this.qty,
      required this.amount});

  ModelFormatter get getItemGroupAmountMap =>
      ModelFormatter(currencyFormatter(amount), amount);

  factory SimpleReportSummarizeByItemGroupsRes.fromJson(
          Map<String, dynamic> json) =>
      _$SimpleReportSummarizeByItemGroupsResFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleReportSummarizeByItemGroupsResToJson(this);
}

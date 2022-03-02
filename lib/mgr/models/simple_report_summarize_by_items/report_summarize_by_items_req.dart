import 'package:json_annotation/json_annotation.dart';

part 'report_summarize_by_items_req.g.dart';

@JsonSerializable(anyMap: true)
class SimpleReportSummarizeByItemsReq {
  bool isSales;
  String itemGroupId;
  String? startDate;
  String? endDate;

  @override
  SimpleReportSummarizeByItemsReq(
      {required this.isSales,
      required this.itemGroupId,
      this.startDate,
      this.endDate});

  factory SimpleReportSummarizeByItemsReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleReportSummarizeByItemsReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleReportSummarizeByItemsReqToJson(this);
}

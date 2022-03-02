import 'package:json_annotation/json_annotation.dart';

part 'report_summarize_by_item_groups_req.g.dart';

@JsonSerializable(anyMap: true)
class SimpleReportSummarizeByItemGroupsReq {
  bool isSales;
  String? startDate;
  String? endDate;

  @override
  SimpleReportSummarizeByItemGroupsReq({
    required this.isSales,
    this.endDate,
    this.startDate,
  });

  factory SimpleReportSummarizeByItemGroupsReq.fromJson(
          Map<String, dynamic> json) =>
      _$SimpleReportSummarizeByItemGroupsReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleReportSummarizeByItemGroupsReqToJson(this);
}

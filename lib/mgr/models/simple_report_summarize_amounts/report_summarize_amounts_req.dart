import 'package:json_annotation/json_annotation.dart';

part 'report_summarize_amounts_req.g.dart';

@JsonSerializable(anyMap: true)
class SimpleReportSummarizeAmountsReq {
  String? startDate;
  String? endDate;

  @override
  SimpleReportSummarizeAmountsReq({
    this.endDate,
    this.startDate,
  });

  factory SimpleReportSummarizeAmountsReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleReportSummarizeAmountsReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleReportSummarizeAmountsReqToJson(this);
}

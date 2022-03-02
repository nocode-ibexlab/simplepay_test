import 'package:json_annotation/json_annotation.dart';

part 'tender_get_sales_history_req.g.dart';

@JsonSerializable()
class SimpleTenderGetSalesHistoryReq {
  String? startDate;
  String? endDate;
  String? receiptNo;

  @override
  SimpleTenderGetSalesHistoryReq({
    this.startDate,
    this.endDate,
    this.receiptNo,
  });

  factory SimpleTenderGetSalesHistoryReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleTenderGetSalesHistoryReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleTenderGetSalesHistoryReqToJson(this);
}

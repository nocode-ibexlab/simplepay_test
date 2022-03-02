import 'package:json_annotation/json_annotation.dart';

part 'tender_get_sales_history_by_shift_no_req.g.dart';

@JsonSerializable(anyMap: true)
class SimpleTenderGetSalesHistoryByShiftNoReq {
  String? shiftNo;

  @override
  SimpleTenderGetSalesHistoryByShiftNoReq({this.shiftNo});

  factory SimpleTenderGetSalesHistoryByShiftNoReq.fromJson(
          Map<String, dynamic> json) =>
      _$SimpleTenderGetSalesHistoryByShiftNoReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SimpleTenderGetSalesHistoryByShiftNoReqToJson(this);
}

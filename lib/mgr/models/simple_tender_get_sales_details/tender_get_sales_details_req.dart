import 'package:json_annotation/json_annotation.dart';

part 'tender_get_sales_details_req.g.dart';

@JsonSerializable()
class SimpleTenderGetSalesDetailsReq {
  String salesHistoryId;

  @override
  SimpleTenderGetSalesDetailsReq({required this.salesHistoryId});

  factory SimpleTenderGetSalesDetailsReq.fromJson(Map<String, dynamic> json) =>
      _$SimpleTenderGetSalesDetailsReqFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleTenderGetSalesDetailsReqToJson(this);
}

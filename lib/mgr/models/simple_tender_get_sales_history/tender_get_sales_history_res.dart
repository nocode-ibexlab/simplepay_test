import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/simple_sales_account_history/sales_account_history.dart';

part 'tender_get_sales_history_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleTenderGetSalesHistoryRes {
  String salesHistoryId;
  double totalAmount;
  String salesDate;
  List<SalesAccountHistoryModel> salesAccountHistory;
  List items;

  @override
  SimpleTenderGetSalesHistoryRes({
    required this.salesHistoryId,
    required this.totalAmount,
    required this.salesDate,
    required this.salesAccountHistory,
    required this.items,
  });

  factory SimpleTenderGetSalesHistoryRes.fromJson(Map json) =>
      _$SimpleTenderGetSalesHistoryResFromJson(json);

  Map toJson() => _$SimpleTenderGetSalesHistoryResToJson(this);
}

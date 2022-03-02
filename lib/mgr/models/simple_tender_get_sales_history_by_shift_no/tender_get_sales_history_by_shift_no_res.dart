import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'tender_get_sales_history_by_shift_no_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleTenderGetSalesHistoryByShiftNoRes {
  String salesHistoryId;
  double totalAmount;
  String salesDate;

  @override
  SimpleTenderGetSalesHistoryByShiftNoRes({
    required this.salesHistoryId,
    required this.totalAmount,
    required this.salesDate,
  });

  ModelFormatter get getTotalAmountMap =>
      ModelFormatter(currencyFormatter(totalAmount), totalAmount);

  factory SimpleTenderGetSalesHistoryByShiftNoRes.fromJson(Map json) =>
      _$SimpleTenderGetSalesHistoryByShiftNoResFromJson(json);

  Map toJson() => _$SimpleTenderGetSalesHistoryByShiftNoResToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
part 'list_sales_by_shift_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderListSalesByShiftRes {
  String salesHistoryId;
  double totalAmount;
  String salesDate;
  bool isCanceled;

  @override
  TenderListSalesByShiftRes(
      {required this.salesHistoryId,
      required this.totalAmount,
      required this.salesDate,
      required this.isCanceled});

  factory TenderListSalesByShiftRes.fromJson(Map json) =>
      _$TenderListSalesByShiftResFromJson(json);

  Map toJson() => _$TenderListSalesByShiftResToJson(this);
}

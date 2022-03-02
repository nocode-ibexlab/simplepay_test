import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

part 'sales_account_history.g.dart';

@JsonSerializable(anyMap: true)
class SalesAccountHistoryModel {
  String salesAccountHistoryId;
  String paymentMethodCode;
  String paymentSectionCode;
  String paymentMethodName;
  String receiptNo;
  double approvalAmount;
  String approvalDate;
  bool isVoid;

  @override
  SalesAccountHistoryModel({
    required this.salesAccountHistoryId,
    required this.paymentMethodCode,
    required this.paymentSectionCode,
    required this.paymentMethodName,
    required this.receiptNo,
    required this.approvalAmount,
    required this.approvalDate,
    required this.isVoid,
  });

  ModelFormatter get getApprovalAmountMap =>
      ModelFormatter(currencyFormatter(approvalAmount), approvalAmount);

  factory SalesAccountHistoryModel.fromJson(Map json) =>
      _$SalesAccountHistoryModelFromJson(json);

  Map toJson() => _$SalesAccountHistoryModelToJson(this);
}

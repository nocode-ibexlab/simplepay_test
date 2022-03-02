import 'package:json_annotation/json_annotation.dart';
part 'get_partial_payment_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderPartialPaymentRes {
  String receiptNo;
  String? approvalNo;
  String approvalDate;
  double amount;
  String? cardName;
  String? cardNo;
  String? acquirerName;
  String? company;
  String? companyNo;
  String paymentSectionCode;
  String paymentMethodCode;

  @override
  TenderPartialPaymentRes({
    required this.receiptNo,
    required this.amount,
    required this.paymentMethodCode,
    required this.paymentSectionCode,
    required this.approvalDate,
    this.acquirerName,
    this.approvalNo,
    this.cardName,
    this.cardNo,
    this.company,
    this.companyNo,
  });

  factory TenderPartialPaymentRes.fromJson(Map json) =>
      _$TenderPartialPaymentResFromJson(json);

  Map toJson() => _$TenderPartialPaymentResToJson(this);
}

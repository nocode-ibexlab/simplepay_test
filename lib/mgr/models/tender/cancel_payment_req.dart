import 'package:json_annotation/json_annotation.dart';
part 'cancel_payment_req.g.dart';

@JsonSerializable(anyMap: true)
class TenderCancelPaymentReq {
  String paymentMethodCode;
  String receiptNo;
  double amount;

  @override
  TenderCancelPaymentReq(
      {required this.paymentMethodCode,
      required this.amount,
      required this.receiptNo});

  factory TenderCancelPaymentReq.fromJson(Map json) =>
      _$TenderCancelPaymentReqFromJson(json);

  Map toJson() => _$TenderCancelPaymentReqToJson(this);
}

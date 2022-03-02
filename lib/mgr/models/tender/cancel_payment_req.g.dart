// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_payment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderCancelPaymentReq _$TenderCancelPaymentReqFromJson(Map json) =>
    TenderCancelPaymentReq(
      paymentMethodCode: json['paymentMethodCode'] as String,
      amount: (json['amount'] as num).toDouble(),
      receiptNo: json['receiptNo'] as String,
    );

Map<String, dynamic> _$TenderCancelPaymentReqToJson(
        TenderCancelPaymentReq instance) =>
    <String, dynamic>{
      'paymentMethodCode': instance.paymentMethodCode,
      'receiptNo': instance.receiptNo,
      'amount': instance.amount,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_account_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesAccountHistoryModel _$SalesAccountHistoryModelFromJson(Map json) =>
    SalesAccountHistoryModel(
      salesAccountHistoryId: json['salesAccountHistoryId'] as String,
      paymentMethodCode: json['paymentMethodCode'] as String,
      paymentSectionCode: json['paymentSectionCode'] as String,
      paymentMethodName: json['paymentMethodName'] as String,
      receiptNo: json['receiptNo'] as String,
      approvalAmount: (json['approvalAmount'] as num).toDouble(),
      approvalDate: json['approvalDate'] as String,
      isVoid: json['isVoid'] as bool,
    );

Map<String, dynamic> _$SalesAccountHistoryModelToJson(
        SalesAccountHistoryModel instance) =>
    <String, dynamic>{
      'salesAccountHistoryId': instance.salesAccountHistoryId,
      'paymentMethodCode': instance.paymentMethodCode,
      'paymentSectionCode': instance.paymentSectionCode,
      'paymentMethodName': instance.paymentMethodName,
      'receiptNo': instance.receiptNo,
      'approvalAmount': instance.approvalAmount,
      'approvalDate': instance.approvalDate,
      'isVoid': instance.isVoid,
    };

import 'package:flutter/material.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';

@immutable
class TenderState {
  final List<TenderListPaymentMethodsRes> listPaymentMethodsRes;
  final TenderListPaymentMethodsRes selectedPaymentMethod;

  TenderState(
      {required this.listPaymentMethodsRes,
      required this.selectedPaymentMethod});
  factory TenderState.initial() {
    return TenderState(
        listPaymentMethodsRes: [],
        selectedPaymentMethod: TenderListPaymentMethodsRes(
            paymentMethodCode: '',
            paymentMethodName: '',
            paymentSectionCode: '',
            paymentSectionName: '',
            properties: {}));
  }

  TenderState copyWith({
    List<TenderListPaymentMethodsRes>? listPaymentMethodsRes,
    TenderListPaymentMethodsRes? selectedPaymentMethod,
  }) {
    return TenderState(
      listPaymentMethodsRes:
          listPaymentMethodsRes ?? this.listPaymentMethodsRes,
      selectedPaymentMethod:
          selectedPaymentMethod ?? this.selectedPaymentMethod,
    );
  }
}

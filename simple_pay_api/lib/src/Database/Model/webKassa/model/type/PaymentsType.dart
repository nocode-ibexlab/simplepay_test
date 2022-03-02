import 'dart:collection';

import 'DataSet.dart';

class PaymentsType implements DataSet {
  double? Sum;
  int? PaymentType;

  PaymentsType();

  PaymentsType.fromJson(Map json)
      : Sum = json['Sum'] ?? 0,
        PaymentType = json['PaymentType'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Sum'] = Sum;
    map['PaymentType'] = PaymentType;
    return map;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  int? getPaymentType() {
    return PaymentType;
  }

  void setPaymentType(int paymentType) {
    PaymentType = paymentType;
  }
}

import 'dart:collection';

class PaymentsTypeHistoryByNumber {
  double? Sum;
  String? PaymentTypeName;

  PaymentsTypeHistoryByNumber();

  PaymentsTypeHistoryByNumber.fromJson(Map json)
      : Sum = json['Sum'] ?? 0,
        PaymentTypeName = json['PaymentTypeName'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Sum'] = Sum;
    map['PaymentTypeName'] = PaymentTypeName;
    return map;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  String? getPaymentTypeName() {
    return PaymentTypeName;
  }

  void setPaymentTypeName(String paymentTypeName) {
    PaymentTypeName = paymentTypeName;
  }
}

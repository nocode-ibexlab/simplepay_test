import 'dart:collection';

import 'DataSet.dart';

class PaymentsByTypesApiModel implements DataSet {
  double? Sum;
  int? Type;

  PaymentsByTypesApiModel();

  PaymentsByTypesApiModel.fromJson(Map json)
      : Sum = json['Sum'] ?? 0,
        Type = json['Type'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Sum'] = Sum;
    map['Type'] = Type;
    return map;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  int? getType() {
    return Type;
  }

  void setType(int type) {
    Type = type;
  }
}

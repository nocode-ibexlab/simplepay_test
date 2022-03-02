import 'dart:collection';

import 'type/DataSet.dart';

class MoneyOperationRequest implements DataSet {
  String? Token;
  String? CashboxUniqueNumber;
  int? OperationType;
  double? Sum;
  String? ExternalCheckNumber;

  MoneyOperationRequest();

  MoneyOperationRequest.fromJson(Map json)
      : Token = json['Token'] ?? "",
        CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        OperationType = json['OperationType'] ?? 0,
        Sum = json['Sum'] ?? 0,
        ExternalCheckNumber = json['ExternalCheckNumber'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Token'] = Token;
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['OperationType'] = OperationType;
    map['Sum'] = Sum;
    map['ExternalCheckNumber'] = ExternalCheckNumber;
    return map;
  }

  String? getToken() {
    return Token;
  }

  void setToken(String? token) {
    Token = token;
  }

  String? getCashboxUniqueNumber() {
    return CashboxUniqueNumber;
  }

  void setCashboxUniqueNumber(String? cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }

  int? getOperationType() {
    return OperationType;
  }

  void setOperationType(int operationType) {
    OperationType = operationType;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  String? getExternalCheckNumber() {
    return ExternalCheckNumber;
  }

  void setExternalCheckNumber(String externalCheckNumber) {
    ExternalCheckNumber = externalCheckNumber;
  }
}

import 'dart:collection';

import 'type/DataSet.dart';

class XreportRequest implements DataSet {
  String? Token;
  String? CashboxUniqueNumber;

  XreportRequest();

  XreportRequest.fromJson(Map json)
      : Token = json['Token'] ?? "",
        CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Token'] = Token;
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
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

  void setCashboxUniqueNumber(String cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }
}

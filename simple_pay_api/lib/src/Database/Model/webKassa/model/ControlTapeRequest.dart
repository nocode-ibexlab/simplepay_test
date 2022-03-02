import 'dart:collection';

import 'type/DataSet.dart';

class ControlTapeRequest implements DataSet {
  String? Token;
  String? CashboxUniqueNumber;
  int? ShiftNumber;

  ControlTapeRequest();

  ControlTapeRequest.fromJson(Map json)
      : Token = json['Token'] ?? "",
        CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        ShiftNumber = json['ShiftNumber'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Token'] = Token;
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['ShiftNumber'] = ShiftNumber;
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

  int? getShiftNumber() {
    return ShiftNumber;
  }

  void setShiftNumber(int shiftNumber) {
    ShiftNumber = shiftNumber;
  }
}

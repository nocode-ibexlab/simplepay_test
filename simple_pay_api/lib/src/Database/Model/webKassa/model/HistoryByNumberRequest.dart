import 'dart:collection';

import 'type/DataSet.dart';

class HistoryByNumberRequest implements DataSet {
  String? CashboxUniqueNumber;
  String? Token;
  String? Number;
  int? ShiftNumber;

  HistoryByNumberRequest.fromJson(Map json)
      : CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        Token = json['Token'] ?? "",
        Number = json['Number'] ?? "",
        ShiftNumber = json['ShiftNumber'] ?? 0;

  HistoryByNumberRequest();

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['Token'] = Token;
    map['Number'] = Number;
    map['ShiftNumber'] = ShiftNumber;
    return map;
  }

  String? getCashboxUniqueNumber() {
    return CashboxUniqueNumber;
  }

  void setCashboxUniqueNumber(String cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }

  String? getToken() {
    return Token;
  }

  void setToken(String? token) {
    Token = token;
  }

  String? getNumber() {
    return Number;
  }

  void setNumber(String number) {
    Number = number;
  }

  int? getShiftNumber() {
    return ShiftNumber;
  }

  void setShiftNumber(int shiftNumber) {
    ShiftNumber = shiftNumber;
  }
}

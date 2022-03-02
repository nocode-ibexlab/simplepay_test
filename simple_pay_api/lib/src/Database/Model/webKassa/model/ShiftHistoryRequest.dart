import 'dart:collection';

import 'type/DataSet.dart';

class ShiftHistoryRequest implements DataSet {
  String? CashboxUniqueNumber;
  String? Token;
  int? Skip;
  int? Take;

  ShiftHistoryRequest();

  ShiftHistoryRequest.fromJson(Map json)
      : CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        Token = json['Token'] ?? "",
        Skip = json['Skip'] ?? 0,
        Take = json['Take'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['Token'] = Token;
    map['Skip'] = Skip;
    map['Take'] = Take;
    return map;
  }

  String? getCashboxUniqueNumber() {
    return CashboxUniqueNumber;
  }

  void setCashboxUniqueNumber(String? cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }

  String? getToken() {
    return Token;
  }

  void setToken(String? token) {
    Token = token;
  }

  int? getSkip() {
    return Skip;
  }

  void setSkip(int skip) {
    Skip = skip;
  }

  int? getTake() {
    return Take;
  }

  void setTake(int take) {
    Take = take;
  }
}

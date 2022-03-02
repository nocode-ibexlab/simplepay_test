import 'dart:collection';

import 'type/DataSet.dart';

class CashboxChangeToken implements DataSet {
  String? Token;
  String? CashboxUniqueNumber;
  String? OfdToken;

  CashboxChangeToken();

  CashboxChangeToken.fromJson(Map json)
      : Token = json['Token'] ?? "",
        CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        OfdToken = json['OfdToken'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Token'] = Token;
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['OfdToken'] = OfdToken;
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

  String? getOfdToken() {
    return OfdToken;
  }

  void setOfdToken(String ofdToken) {
    OfdToken = ofdToken;
  }
}

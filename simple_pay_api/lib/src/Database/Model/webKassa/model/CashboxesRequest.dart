import 'dart:collection';

import 'type/DataSet.dart';

class CashboxesRequest implements DataSet {
  String? Token;

  CashboxesRequest();

  CashboxesRequest.fromJson(Map json) : Token = json['Token'] ?? "false";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Token'] = Token;
    return map;
  }

  String? getToken() {
    return Token;
  }

  void setToken(String? token) {
    Token = token;
  }
}

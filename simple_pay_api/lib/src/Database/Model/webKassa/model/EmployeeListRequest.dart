import 'dart:collection';

import 'type/DataSet.dart';

class EmployeeListRequest implements DataSet {
  String? Token;

  EmployeeListRequest();

  EmployeeListRequest.fromJson(Map json) : Token = json['Token'] ?? "";

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

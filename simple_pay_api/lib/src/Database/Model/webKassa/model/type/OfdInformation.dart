import 'dart:collection';

import 'DataSet.dart';

class OfdInformation implements DataSet {
  String? Name;
  String? Host;
  int? Code;

  OfdInformation();

  OfdInformation.fromJson(Map json)
      : Name = json['Name'] ?? "",
        Host = json['Host'] ?? "",
        Code = json['Code'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Name'] = Name;
    map['Host'] = Host;
    map['Code'] = Code;
    return map;
  }

  String? getName() {
    return Name;
  }

  void setName(String name) {
    Name = name;
  }

  String? getHost() {
    return Host;
  }

  void setHost(String host) {
    Host = host;
  }

  int? getCode() {
    return Code;
  }

  void setCode(int code) {
    Code = code;
  }
}

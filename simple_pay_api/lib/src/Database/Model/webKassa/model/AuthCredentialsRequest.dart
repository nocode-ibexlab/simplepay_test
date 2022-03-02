import 'dart:collection';

import 'type/DataSet.dart';

class AuthCredentialsRequest implements DataSet {
  String? Login;
  String? Password;

  AuthCredentialsRequest();

  AuthCredentialsRequest.fromJson(Map json)
      : Login = json['Login'] ?? "",
        Password = json['Password'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Login'] = Login;
    map['Password'] = Password;
    return map;
  }

  String? getLogin() {
    return Login;
  }

  void setLogin(String? login) {
    Login = login;
  }

  String? getPassword() {
    return Password;
  }

  void setPassword(String? password) {
    Password = password;
  }
}

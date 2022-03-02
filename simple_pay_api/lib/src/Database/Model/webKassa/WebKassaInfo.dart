import 'dart:collection';

class WebKassaInfo {
  String? loginId;
  String? password;

  WebKassaInfo();

  WebKassaInfo.fromJson(Map json)
      : loginId = json['loginId'] ?? "",
        password = json['password'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['loginId'] = loginId;
    map['password'] = password;
    return map;
  }

  String? getLoginId() {
    return loginId;
  }

  void setLoginId(String? loginId) {
    this.loginId = loginId;
  }

  String? getPassword() {
    return password;
  }

  void setPassword(String password) {
    this.password = password;
  }
}

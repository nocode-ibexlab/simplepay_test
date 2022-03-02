import 'OutputMessage.dart';

class EmployeeListResponseData extends OutputMessage {
  String? FullName;
  String? Email;
  List<String>? Cashboxes = [];

  EmployeeListResponseData();

  EmployeeListResponseData.fromJson(Map json)
      : FullName = json['FullName'] ?? "",
        Email = json['Email'] ?? "",
        Cashboxes = json['Cashboxes'] == null
            ? <String>[]
            : json['Cashboxes'].map((json) => (json)).toList(),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['FullName'] = FullName;
    map['Email'] = Email;
    List list = [];
    for (String item in Cashboxes!) {
      list.add(item);
    }
    map['List'] = list;
    return map;
  }

  String? getFullName() {
    return FullName;
  }

  void setFullName(String fullName) {
    FullName = fullName;
  }

  String? getEmail() {
    return Email;
  }

  void setEmail(String email) {
    Email = email;
  }

  List<String>? getCashboxes() {
    return Cashboxes;
  }

  void setCashboxes(List<String> cashboxes) {
    Cashboxes = cashboxes;
  }
}

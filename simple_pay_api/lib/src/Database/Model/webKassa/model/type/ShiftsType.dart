import 'dart:collection';

import 'DataSet.dart';

class ShiftsType implements DataSet {
  int? ShiftNumber;
  String? OpenDate;
  String? CloseDate;

  ShiftsType();

  ShiftsType.fromJson(Map json)
      : ShiftNumber = json['ShiftNumber'] ?? 0,
        OpenDate = json['OpenDate'] ?? "",
        CloseDate = json['CloseDate'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['ShiftNumber'] = ShiftNumber;
    map['OpenDate'] = OpenDate;
    map['CloseDate'] = CloseDate;
    return map;
  }

  int? getShiftNumber() {
    return ShiftNumber;
  }

  void setShiftNumber(int shiftNumber) {
    ShiftNumber = shiftNumber;
  }

  String? getOpenDate() {
    return OpenDate;
  }

  void setOpenDate(String openDate) {
    OpenDate = openDate;
  }

  String? getCloseDate() {
    return CloseDate;
  }

  void setCloseDate(String closeDate) {
    CloseDate = closeDate;
  }
}

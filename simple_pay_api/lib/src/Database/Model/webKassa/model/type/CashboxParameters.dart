import 'dart:collection';

import 'DataSet.dart';
import 'OfdInformation.dart';

class CashboxParameters implements DataSet {
  String? UniqueNumber;
  String? RegistrationNumber;
  String? IdentityNumber;
  String? Address;
  OfdInformation? Ofd;

  CashboxParameters();

  CashboxParameters.fromJson(Map json)
      : UniqueNumber = json['UniqueNumber'] ?? "",
        RegistrationNumber = json['RegistrationNumber'] ?? "",
        IdentityNumber = json['IdentityNumber'] ?? "",
        Address = json['Address'] ?? "",
        Ofd = OfdInformation.fromJson(json['Ofd'] ?? Map());

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['UniqueNumber'] = UniqueNumber;
    map['RegistrationNumber'] = RegistrationNumber;
    map['IdentityNumber'] = IdentityNumber;
    map['Address'] = Address;
    map['Ofd'] = Ofd!.toMap();
    return map;
  }

  String? getUniqueNumber() {
    return UniqueNumber;
  }

  void setUniqueNumber(String uniqueNumber) {
    UniqueNumber = uniqueNumber;
  }

  String? getRegistrationNumber() {
    return RegistrationNumber;
  }

  void setRegistrationNumber(String registrationNumber) {
    RegistrationNumber = registrationNumber;
  }

  String? getIdentityNumber() {
    return IdentityNumber;
  }

  void setIdentityNumber(String identityNumber) {
    IdentityNumber = identityNumber;
  }

  String? getAddress() {
    return Address;
  }

  void setAddress(String address) {
    Address = address;
  }

  OfdInformation? getOfd() {
    return Ofd;
  }

  void setOfd(OfdInformation ofd) {
    Ofd = ofd;
  }
}

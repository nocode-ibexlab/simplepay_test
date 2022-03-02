import 'OutputMessage.dart';

class CashboxesResponseItem extends OutputMessage {
  String? UniqueNumber;
  String? RegistrationNumber;
  String? IdentificationNumber;
  String? Name;
  String? Description;
  bool? IsOffline;
  int? CurrentStatus;
  int? Shift;

  CashboxesResponseItem();

  CashboxesResponseItem.fromJson(Map json)
      : UniqueNumber = json['UniqueNumber'] ?? "",
        RegistrationNumber = json['RegistrationNumber'] ?? "",
        IdentificationNumber = json['IdentificationNumber'] ?? "",
        Name = json['Name'] ?? "",
        Description = json['Description'] ?? "",
        IsOffline = json['IsOffline'] ?? false,
        CurrentStatus = json['CurrentStatus'] ?? 0,
        Shift = json['Shift'] ?? 0,
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['UniqueNumber'] = UniqueNumber;
    map['RegistrationNumber'] = RegistrationNumber;
    map['IdentificationNumber'] = IdentificationNumber;
    map['Name'] = Name;
    map['Description'] = Description;
    map['IsOffline'] = IsOffline;
    map['CurrentStatus'] = CurrentStatus;
    map['Shift'] = Shift;
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

  String? getIdentificationNumber() {
    return IdentificationNumber;
  }

  void setIdentificationNumber(String identificationNumber) {
    IdentificationNumber = identificationNumber;
  }

  String? getName() {
    return Name;
  }

  void setName(String name) {
    Name = name;
  }

  String? getDescription() {
    return Description;
  }

  void setDescription(String description) {
    Description = description;
  }

  bool? getOffline() {
    return IsOffline;
  }

  void setOffline(bool offline) {
    IsOffline = offline;
  }

  int? getCurrentStatus() {
    return CurrentStatus;
  }

  void setCurrentStatus(int currentStatus) {
    CurrentStatus = currentStatus;
  }

  int? getShift() {
    return Shift;
  }

  void setShift(int shift) {
    Shift = shift;
  }
}

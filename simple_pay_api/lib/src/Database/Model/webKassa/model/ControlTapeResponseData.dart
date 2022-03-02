import 'OutputMessage.dart';

class ControlTapeResponseData extends OutputMessage {
  String? OperationTypeText;
  double? Sum;
  String? Date;
  int? EmployeeCode;
  String? Number;
  bool? IsOffline;
  String? ExternalOperationId;

  ControlTapeResponseData();

  ControlTapeResponseData.fromJson(Map json)
      : OperationTypeText = json['OperationTypeText'] ?? "",
        Sum = json['Sum'] ?? 0,
        Date = json['Date'] ?? "",
        EmployeeCode = json['EmployeeCode'] ?? 0,
        Number = json['Number'] ?? "",
        IsOffline = json['IsOffline'] ?? false,
        ExternalOperationId = json['ExternalOperationId'] ?? "",
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['OperationTypeText'] = OperationTypeText;
    map['Sum'] = Sum;
    map['Date'] = Date;
    map['EmployeeCode'] = EmployeeCode;
    map['Number'] = Number;
    map['IsOffline'] = IsOffline;
    map['ExternalOperationId'] = ExternalOperationId;
    return map;
  }

  String? getOperationTypeText() {
    return OperationTypeText;
  }

  void setOperationTypeText(String operationTypeText) {
    OperationTypeText = operationTypeText;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  String? getDate() {
    return Date;
  }

  void setDate(String date) {
    Date = date;
  }

  int? getEmployeeCode() {
    return EmployeeCode;
  }

  void setEmployeeCode(int employeeCode) {
    EmployeeCode = employeeCode;
  }

  String? getNumber() {
    return Number;
  }

  void setNumber(String number) {
    Number = number;
  }

  bool? getOffline() {
    return IsOffline;
  }

  void setOffline(bool offline) {
    IsOffline = offline;
  }

  String? getExternalOperationId() {
    return ExternalOperationId;
  }

  void setExternalOperationId(String externalOperationId) {
    ExternalOperationId = externalOperationId;
  }
}

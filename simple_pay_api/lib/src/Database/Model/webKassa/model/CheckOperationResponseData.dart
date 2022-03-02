import 'OutputMessage.dart';
import 'type/CashboxParameters.dart';

class CheckOperationResponseData extends OutputMessage {
  String? CheckNumber;
  String? DateTime;
  bool? OfflineMode;
  bool? CashboxOfflineMode;
  CashboxParameters? Cashbox;
  int? CheckOrderNumber;
  int? ShiftNumber;
  String? EmployeeName;
  String? TicketUrl;
  String? TicketPrintUrl;

  CheckOperationResponseData();

  CheckOperationResponseData.fromJson(Map json)
      : CheckNumber = json['CheckNumber'] ?? "",
        DateTime = json['DateTime'] ?? "",
        OfflineMode = json['OfflineMode'] ?? false,
        CashboxOfflineMode = json['CashboxOfflineMode'] ?? false,
        Cashbox = CashboxParameters.fromJson(json['Cashbox'] ?? Map()),
        CheckOrderNumber = json['CheckOrderNumber'] ?? 0,
        ShiftNumber = json['ShiftNumber'] ?? 0,
        EmployeeName = json['EmployeeName'] ?? "",
        TicketUrl = json['TicketUrl'] ?? "",
        TicketPrintUrl = json['TicketPrintUrl'] ?? "",
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['CheckNumber'] = CheckNumber;
    map['DateTime'] = DateTime;
    map['OfflineMode'] = OfflineMode;
    map['CashboxOfflineMode'] = CashboxOfflineMode;
    map['Cashbox'] = Cashbox!.toMap();
    map['CheckOrderNumber'] = CheckOrderNumber;
    map['ShiftNumber'] = ShiftNumber;
    map['EmployeeName'] = EmployeeName;
    map['TicketUrl'] = TicketUrl;
    map['TicketPrintUrl'] = TicketPrintUrl;
    return map;
  }

  String? getCheckNumber() {
    return CheckNumber;
  }

  void setCheckNumber(String checkNumber) {
    CheckNumber = checkNumber;
  }

  String? getDateTime() {
    return DateTime;
  }

  void setDateTime(String dateTime) {
    DateTime = dateTime;
  }

  bool? getOfflineMode() {
    return OfflineMode;
  }

  void setOfflineMode(bool offlineMode) {
    OfflineMode = offlineMode;
  }

  bool? getCashboxOfflineMode() {
    return CashboxOfflineMode;
  }

  void setCashboxOfflineMode(bool cashboxOfflineMode) {
    CashboxOfflineMode = cashboxOfflineMode;
  }

  CashboxParameters? getCashbox() {
    return Cashbox;
  }

  void setCashbox(CashboxParameters cashbox) {
    Cashbox = cashbox;
  }

  int? getCheckOrderNumber() {
    return CheckOrderNumber;
  }

  void setCheckOrderNumber(int checkOrderNumber) {
    CheckOrderNumber = checkOrderNumber;
  }

  int? getShiftNumber() {
    return ShiftNumber;
  }

  void setShiftNumber(int shiftNumber) {
    ShiftNumber = shiftNumber;
  }

  String? getEmployeeName() {
    return EmployeeName;
  }

  void setEmployeeName(String employeeName) {
    EmployeeName = employeeName;
  }

  String? getTicketUrl() {
    return TicketUrl;
  }

  void setTicketUrl(String ticketUrl) {
    TicketUrl = ticketUrl;
  }

  String? getTicketPrintUrl() {
    return TicketPrintUrl;
  }

  void setTicketPrintUrl(String ticketPrintUrl) {
    TicketPrintUrl = ticketPrintUrl;
  }
}

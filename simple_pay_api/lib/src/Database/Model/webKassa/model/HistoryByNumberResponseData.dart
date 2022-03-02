import 'OutputMessage.dart';
import 'type/PaymentsTypeHistoryByNumber.dart';
import 'type/PositionsTypeHistoryByNumber.dart';

class HistoryByNumberResponseData extends OutputMessage {
  String? CashboxUniqueNumber;
  String? CashboxRegistrationNumber;
  String? CashboxIdentityNumber;
  String? Address;
  String? Number;
  int? OrderNumber;
  String? RegistratedOn;
  String? EmployeeName;
  int? EmployeeCode;
  int? ShiftNumber;
  int? DocumentNumber;
  int? OperationType;
  String? OperationTypeText;
  List<PaymentsTypeHistoryByNumber>? Payments = [];
  double? Total;
  double? Change;
  double? Taken;
  double? Discount;
  double? MarkupPercent;
  double? Markup;
  double? TaxPercent;
  double? Tax;
  bool? VATPayer;
  List<PositionsTypeHistoryByNumber>? Positions = [];
  bool? IsOffline;
  String? TicketUrl;

  HistoryByNumberResponseData();

  HistoryByNumberResponseData.fromJson(Map json)
      : CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        CashboxRegistrationNumber = json['CashboxRegistrationNumber'] ?? "",
        CashboxIdentityNumber = json['CashboxIdentityNumber'] ?? "",
        Address = json['Address'] ?? "",
        Number = json['Number'] ?? "",
        OrderNumber = json['OrderNumber'] ?? 0,
        RegistratedOn = json['RegistratedOn'] ?? "",
        EmployeeName = json['EmployeeName'] ?? "",
        EmployeeCode = json['EmployeeCode'] ?? 0,
        ShiftNumber = json['ShiftNumber'] ?? 0,
        DocumentNumber = json['DocumentNumber'] ?? 0,
        OperationType = json['OperationType'] ?? 0,
        OperationTypeText = json['OperationTypeText'] ?? "",
        Payments = json['Payments'] == null
            ? <PaymentsTypeHistoryByNumber>[]
            : json['Payments']
                .map<PaymentsTypeHistoryByNumber>(
                    (json) => PaymentsTypeHistoryByNumber.fromJson(json))
                .toList(),
        Total = json['Total'] ?? 0,
        Change = json['Change'] ?? 0,
        Taken = json['Taken'] ?? 0,
        Discount = json['Discount'] ?? 0,
        MarkupPercent = json['MarkupPercent'] ?? 0,
        Markup = json['Markup'] ?? 0,
        TaxPercent = json['TaxPercent'] ?? 0,
        Tax = json['Tax'] ?? 0,
        VATPayer = json['VATPayer'] ?? false,
        Positions = json['Positions'] == null
            ? <PositionsTypeHistoryByNumber>[]
            : json['Positions']
                .map<PositionsTypeHistoryByNumber>(
                    (json) => PositionsTypeHistoryByNumber.fromJson(json))
                .toList(),
        IsOffline = json['IsOffline'] ?? false,
        TicketUrl = json['TicketUrl'] ?? "",
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['CashboxRegistrationNumber'] = CashboxRegistrationNumber;
    map['CashboxIdentityNumber'] = CashboxIdentityNumber;
    map['Address'] = Address;
    map['Number'] = Number;
    map['OrderNumber'] = OrderNumber;
    map['RegistratedOn'] = RegistratedOn;
    map['EmployeeName'] = EmployeeName;
    map['EmployeeCode'] = EmployeeCode;
    map['ShiftNumber'] = ShiftNumber;
    map['DocumentNumber'] = DocumentNumber;
    map['OperationType'] = OperationType;
    map['OperationTypeText'] = OperationTypeText;
    List PaymentsList = [];
    for (PaymentsTypeHistoryByNumber item in Payments!) {
      PaymentsList.add(item.toMap());
    }
    map['Payments'] = PaymentsList;
    map['Total'] = Total;
    map['Change'] = Change;
    map['Taken'] = Taken;
    map['Discount'] = Discount;
    map['MarkupPercent'] = MarkupPercent;
    map['Markup'] = Markup;
    map['TaxPercent'] = TaxPercent;
    map['Tax'] = Tax;
    map['VATPayer'] = VATPayer;

    List PositionsList = [];
    for (PositionsTypeHistoryByNumber item in Positions!) {
      PositionsList.add(item.toMap());
    }
    map['Positions'] = PositionsList;

    map['IsOffline'] = IsOffline;
    map['TicketUrl'] = TicketUrl;
    return map;
  }

  String? getCashboxUniqueNumber() {
    return CashboxUniqueNumber;
  }

  void setCashboxUniqueNumber(String cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }

  String? getCashboxRegistrationNumber() {
    return CashboxRegistrationNumber;
  }

  void setCashboxRegistrationNumber(String cashboxRegistrationNumber) {
    CashboxRegistrationNumber = cashboxRegistrationNumber;
  }

  String? getCashboxIdentityNumber() {
    return CashboxIdentityNumber;
  }

  void setCashboxIdentityNumber(String cashboxIdentityNumber) {
    CashboxIdentityNumber = cashboxIdentityNumber;
  }

  String? getAddress() {
    return Address;
  }

  void setAddress(String address) {
    Address = address;
  }

  String? getNumber() {
    return Number;
  }

  void setNumber(String number) {
    Number = number;
  }

  int? getOrderNumber() {
    return OrderNumber;
  }

  void setOrderNumber(int orderNumber) {
    OrderNumber = orderNumber;
  }

  String? getRegistratedOn() {
    return RegistratedOn;
  }

  void setRegistratedOn(String registratedOn) {
    RegistratedOn = registratedOn;
  }

  String? getEmployeeName() {
    return EmployeeName;
  }

  void setEmployeeName(String employeeName) {
    EmployeeName = employeeName;
  }

  int? getEmployeeCode() {
    return EmployeeCode;
  }

  void setEmployeeCode(int employeeCode) {
    EmployeeCode = employeeCode;
  }

  int? getShiftNumber() {
    return ShiftNumber;
  }

  void setShiftNumber(int shiftNumber) {
    ShiftNumber = shiftNumber;
  }

  int? getDocumentNumber() {
    return DocumentNumber;
  }

  void setDocumentNumber(int documentNumber) {
    DocumentNumber = documentNumber;
  }

  int? getOperationType() {
    return OperationType;
  }

  void setOperationType(int operationType) {
    OperationType = operationType;
  }

  String? getOperationTypeText() {
    return OperationTypeText;
  }

  void setOperationTypeText(String operationTypeText) {
    OperationTypeText = operationTypeText;
  }

  List<PaymentsTypeHistoryByNumber>? getPayments() {
    return Payments;
  }

  void setPayments(List<PaymentsTypeHistoryByNumber> payments) {
    Payments = payments;
  }

  double? getTotal() {
    return Total;
  }

  void setTotal(double total) {
    Total = total;
  }

  double? getChange() {
    return Change;
  }

  void setChange(double change) {
    Change = change;
  }

  double? getTaken() {
    return Taken;
  }

  void setTaken(double taken) {
    Taken = taken;
  }

  double? getDiscount() {
    return Discount;
  }

  void setDiscount(double discount) {
    Discount = discount;
  }

  double? getMarkupPercent() {
    return MarkupPercent;
  }

  void setMarkupPercent(double markupPercent) {
    MarkupPercent = markupPercent;
  }

  double? getMarkup() {
    return Markup;
  }

  void setMarkup(double markup) {
    Markup = markup;
  }

  double? getTaxPercent() {
    return TaxPercent;
  }

  void setTaxPercent(double taxPercent) {
    TaxPercent = taxPercent;
  }

  double? getTax() {
    return Tax;
  }

  void setTax(double tax) {
    Tax = tax;
  }

  bool? getVATPayer() {
    return VATPayer;
  }

  void setVATPayer(bool VATPayer) {
    this.VATPayer = VATPayer;
  }

  List<PositionsTypeHistoryByNumber>? getPositions() {
    return Positions;
  }

  void setPositions(List<PositionsTypeHistoryByNumber> positions) {
    Positions = positions;
  }

  bool? getOffline() {
    return IsOffline;
  }

  void setOffline(bool offline) {
    IsOffline = offline;
  }

  String? getTicketUrl() {
    return TicketUrl;
  }

  void setTicketUrl(String ticketUrl) {
    TicketUrl = ticketUrl;
  }
}

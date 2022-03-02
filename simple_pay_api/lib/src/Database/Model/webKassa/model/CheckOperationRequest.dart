import 'dart:collection';

import 'type/DataSet.dart';
import 'type/PaymentsType.dart';
import 'type/PositionsType.dart';
import 'type/TicketModifiersType.dart';

class CheckOperationRequest implements DataSet {
  String? Token;
  String? CashboxUniqueNumber;
  int? OperationType;
  List<PositionsType>? Positions = [];
  List<TicketModifiersType>? TicketModifiers = [];
  List<PaymentsType>? Payments = [];
  double? Change;
  int? RoundType;
  String? ExternalCheckNumber;
  String? CustomerEmail;

  CheckOperationRequest();

  CheckOperationRequest.fromJson(Map json)
      : Token = json['Token'] ?? "",
        CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        OperationType = json['OperationType'] ?? 0,
        Positions = json['Positions'] == null
            ? <PositionsType>[]
            : json['Positions']
                .map<PositionsType>((json) => PositionsType.fromJson(json))
                .toList(),
        TicketModifiers = json['TicketModifiers'] == null
            ? <TicketModifiersType>[]
            : json['TicketModifiers']
                .map<TicketModifiersType>(
                    (json) => TicketModifiersType.fromJson(json))
                .toList(),
        Payments = json['Payments'] == null
            ? <PaymentsType>[]
            : json['Payments']
                .map<PaymentsType>((json) => PaymentsType.fromJson(json))
                .toList(),
        Change = json['Change'] ?? 0,
        RoundType = json['RoundType'] ?? 0,
        ExternalCheckNumber = json['ExternalCheckNumber'] ?? "",
        CustomerEmail = json['CustomerEmail'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    List PositionsList = [];
    List TicketModifiersList = [];
    List PaymentsList = [];
    map['Token'] = Token;
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['OperationType'] = OperationType;
    for (PositionsType item in Positions!) {
      PositionsList.add(item.toMap());
    }
    map['Positions'] = PositionsList;

    for (TicketModifiersType item in TicketModifiers!) {
      TicketModifiersList.add(item.toMap());
    }
    map['TicketModifiers'] = TicketModifiersList;

    for (PaymentsType item in Payments!) {
      PaymentsList.add(item.toMap());
    }
    map['Payments'] = PaymentsList;

    map['Change'] = Change;
    map['RoundType'] = RoundType;
    map['ExternalCheckNumber'] = ExternalCheckNumber;
    map['CustomerEmail'] = CustomerEmail;
    return map;
  }

  String? getToken() {
    return Token;
  }

  void setToken(String? token) {
    Token = token;
  }

  String? getCashboxUniqueNumber() {
    return CashboxUniqueNumber;
  }

  void setCashboxUniqueNumber(String? cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }

  int? getOperationType() {
    return OperationType;
  }

  void setOperationType(int operationType) {
    OperationType = operationType;
  }

  List<PositionsType>? getPositions() {
    return Positions;
  }

  void setPositions(List<PositionsType> positions) {
    Positions = positions;
  }

  List<TicketModifiersType>? getTicketModifiers() {
    return TicketModifiers;
  }

  void setTicketModifiers(List<TicketModifiersType> ticketModifiers) {
    TicketModifiers = ticketModifiers;
  }

  List<PaymentsType>? getPayments() {
    return Payments;
  }

  void setPayments(List<PaymentsType> payments) {
    Payments = payments;
  }

  double? getChange() {
    return Change;
  }

  void setChange(double change) {
    Change = change;
  }

  int? getRoundType() {
    return RoundType;
  }

  void setRoundType(int roundType) {
    RoundType = roundType;
  }

  String? getExternalCheckNumber() {
    return ExternalCheckNumber;
  }

  void setExternalCheckNumber(String externalCheckNumber) {
    ExternalCheckNumber = externalCheckNumber;
  }

  String? getCustomerEmail() {
    return CustomerEmail;
  }

  void setCustomerEmail(String customerEmail) {
    CustomerEmail = customerEmail;
  }
}

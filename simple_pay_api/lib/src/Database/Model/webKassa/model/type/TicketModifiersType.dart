import 'dart:collection';

import 'DataSet.dart';

class TicketModifiersType implements DataSet {
  double? Sum;
  String? Text;
  int? Type;
  double? Tax;
  int? TaxType;

  TicketModifiersType();

  TicketModifiersType.fromJson(Map json)
      : Sum = json['Sum'] ?? 0,
        Text = json['Text'] ?? "",
        Type = json['Type'] ?? 0,
        Tax = json['Tax'] ?? 0,
        TaxType = json['TaxType'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Sum'] = Sum;
    map['Text'] = Text;
    map['Type'] = Type;
    map['Tax'] = Tax;
    map['TaxType'] = TaxType;
    return map;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  String? getText() {
    return Text;
  }

  void setText(String text) {
    Text = text;
  }

  int? getType() {
    return Type;
  }

  void setType(int type) {
    Type = type;
  }

  double? getTax() {
    return Tax;
  }

  void setTax(double tax) {
    Tax = tax;
  }

  int? getTaxType() {
    return TaxType;
  }

  void setTaxType(int taxType) {
    TaxType = taxType;
  }
}

import 'dart:collection';

import 'DataSet.dart';

class PositionsTypeHistoryByNumber implements DataSet {
  String? PositionName;
  String? PositionCode;
  double? Count;
  double? Price;
  double? DiscountPercent;
  double? DiscountTenge;
  double? MarkupPercent;
  double? Markup;
  double? TaxPercent;
  double? Tax;
  bool? IsNDS;
  bool? IsStorno;
  bool? MarkupDeleted;
  bool? DiscountDeleted;
  double? Sum;

  PositionsTypeHistoryByNumber();

  PositionsTypeHistoryByNumber.fromJson(Map json)
      : PositionName = json['PositionName'] ?? "",
        PositionCode = json['PositionCode'] ?? "",
        Count = json['Count'] ?? 0,
        Price = json['Price'] ?? 0,
        DiscountPercent = json['DiscountPercent'] ?? 0,
        DiscountTenge = json['DiscountTenge'] ?? 0,
        MarkupPercent = json['MarkupPercent'] ?? 0,
        Markup = json['Markup'] ?? 0,
        TaxPercent = json['TaxPercent'] ?? 0,
        Tax = json['Tax'] ?? 0,
        IsNDS = json['IsNDS'] ?? false,
        IsStorno = json['IsStorno'] ?? false,
        MarkupDeleted = json['MarkupDeleted'] ?? false,
        DiscountDeleted = json['DiscountDeleted'] ?? false,
        Sum = json['Sum'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['PositionName'] = PositionName;
    map['PositionCode'] = PositionCode;
    map['Count'] = Count;
    map['Price'] = Price;
    map['DiscountPercent'] = DiscountPercent;
    map['DiscountTenge'] = DiscountTenge;
    map['MarkupPercent'] = MarkupPercent;
    map['Markup'] = Markup;
    map['TaxPercent'] = TaxPercent;
    map['Tax'] = Tax;
    map['IsNDS'] = IsNDS;
    map['IsStorno'] = IsStorno;
    map['MarkupDeleted'] = MarkupDeleted;
    map['DiscountDeleted'] = DiscountDeleted;
    map['Sum'] = Sum;
    return map;
  }

  String? getPositionName() {
    return PositionName;
  }

  void setPositionName(String positionName) {
    PositionName = positionName;
  }

  String? getPositionCode() {
    return PositionCode;
  }

  void setPositionCode(String positionCode) {
    PositionCode = positionCode;
  }

  double? getCount() {
    return Count;
  }

  void setCount(double count) {
    Count = count;
  }

  double? getPrice() {
    return Price;
  }

  void setPrice(double price) {
    Price = price;
  }

  double? getDiscountPercent() {
    return DiscountPercent;
  }

  void setDiscountPercent(double discountPercent) {
    DiscountPercent = discountPercent;
  }

  double? getDiscountTenge() {
    return DiscountTenge;
  }

  void setDiscountTenge(double discountTenge) {
    DiscountTenge = discountTenge;
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

  bool? getNDS() {
    return IsNDS;
  }

  void setNDS(bool NDS) {
    IsNDS = NDS;
  }

  bool? getStorno() {
    return IsStorno;
  }

  void setStorno(bool storno) {
    IsStorno = storno;
  }

  bool? getMarkupDeleted() {
    return MarkupDeleted;
  }

  void setMarkupDeleted(bool markupDeleted) {
    MarkupDeleted = markupDeleted;
  }

  bool? getDiscountDeleted() {
    return DiscountDeleted;
  }

  void setDiscountDeleted(bool discountDeleted) {
    DiscountDeleted = discountDeleted;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  int? getUnitCode() {
    return UnitCode;
  }

  void setUnitCode(int unitCode) {
    UnitCode = unitCode;
  }

  int? UnitCode;
}

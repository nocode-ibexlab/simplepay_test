import 'dart:collection';

import 'DataSet.dart';

class PositionsType implements DataSet {
  double? Count;
  double? Price;
  double? Tax;
  int? TaxType;
  String? PositionName;
  String? PositionCode;
  double? Discount;
  double? Markup;
  String? SectionCode;
  bool? IsStorno;
  bool? MarkupDeleted;
  bool? DiscountDeleted;
  int? UnitCode;
  String? Mark;

  PositionsType();

  PositionsType.fromJson(Map json)
      : Count = json['Count'] ?? 0,
        Price = json['Price'] ?? 0,
        Tax = json['Tax'] ?? 0,
        TaxType = json['TaxType'] ?? 0,
        PositionName = json['PositionName'] ?? "",
        PositionCode = json['PositionCode'] ?? "",
        Discount = json['Discount'] ?? 0,
        Markup = json['Markup'] ?? 0,
        SectionCode = json['SectionCode'] ?? "",
        IsStorno = json['IsStorno'] ?? false,
        MarkupDeleted = json['MarkupDeleted'] ?? false,
        DiscountDeleted = json['DiscountDeleted'] ?? false,
        UnitCode = json['UnitCode'] ?? 0,
        Mark = json['Mark'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Count'] = Count;
    map['Price'] = Price;
    map['Tax'] = Tax;
    map['TaxType'] = TaxType;
    map['PositionName'] = PositionName;
    map['PositionCode'] = PositionCode;
    map['Discount'] = Discount;
    map['Markup'] = Markup;
    map['SectionCode'] = SectionCode;
    map['IsStorno'] = IsStorno;
    map['MarkupDeleted'] = MarkupDeleted;
    map['DiscountDeleted'] = DiscountDeleted;
    map['UnitCode'] = UnitCode;
    return map;
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

  String? getPositionName() {
    return PositionName;
  }

  void setPositionName(String? positionName) {
    PositionName = positionName;
  }

  String? getPositionCode() {
    return PositionCode;
  }

  void setPositionCode(String positionCode) {
    PositionCode = positionCode;
  }

  double? getDiscount() {
    return Discount;
  }

  void setDiscount(double discount) {
    Discount = discount;
  }

  double? getMarkup() {
    return Markup;
  }

  void setMarkup(double markup) {
    Markup = markup;
  }

  String? getSectionCode() {
    return SectionCode;
  }

  void setSectionCode(String? sectionCode) {
    SectionCode = sectionCode;
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

  int? getUnitCode() {
    return UnitCode;
  }

  void setUnitCode(int unitCode) {
    UnitCode = unitCode;
  }

  String? getMark() {
    return Mark;
  }

  void setMark(String mark) {
    Mark = mark;
  }
}

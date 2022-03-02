import 'dart:collection';

import 'DataSet.dart';
import 'PaymentsByTypesApiModel.dart';

class OperationTypeSummaryApiModel implements DataSet {
  List<PaymentsByTypesApiModel>? _PaymentsByTypesApiModel = [];
  double? Discount;
  double? Markup;
  double? Taken;
  double? Change;
  int? Count;
  double? VAT;

  OperationTypeSummaryApiModel();

  OperationTypeSummaryApiModel.fromJson(Map json)
      : _PaymentsByTypesApiModel = json['PaymentsByTypesApiModel'] == null
            ? <PaymentsByTypesApiModel>[]
            : json['PaymentsByTypesApiModel']
                .map<PaymentsByTypesApiModel>(
                    (json) => PaymentsByTypesApiModel.fromJson(json))
                .toList(),
        Discount = json['Discount'] ?? 0,
        Markup = json['Markup'] ?? 0,
        Taken = json['Taken'] ?? 0,
        Change = json['Change'] ?? 0,
        Count = json['Count'] ?? 0,
        VAT = json['VAT'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    List list = [];
    for (PaymentsByTypesApiModel item in _PaymentsByTypesApiModel!) {
      list.add(item.toMap());
    }
    map['PaymentsByTypesApiModel'] = list;
    map['Discount'] = Discount;
    map['Markup'] = Markup;
    map['Taken'] = Taken;
    map['Change'] = Change;
    map['Count'] = Count;
    map['VAT'] = VAT;
    return map;
  }

  List<PaymentsByTypesApiModel>? getPaymentsByTypesApiModel() {
    return _PaymentsByTypesApiModel;
  }

  void setPaymentsByTypesApiModel(
      List<PaymentsByTypesApiModel> paymentsByTypesApiModel) {
    _PaymentsByTypesApiModel = paymentsByTypesApiModel;
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

  double? getTaken() {
    return Taken;
  }

  void setTaken(double taken) {
    Taken = taken;
  }

  double? getChange() {
    return Change;
  }

  void setChange(double change) {
    Change = change;
  }

  int? getCount() {
    return Count;
  }

  void setCount(int count) {
    Count = count;
  }

  double? getVAT() {
    return VAT;
  }

  void setVAT(double VAT) {
    this.VAT = VAT;
  }
}

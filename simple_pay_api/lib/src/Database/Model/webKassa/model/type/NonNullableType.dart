import 'dart:collection';

import 'DataSet.dart';

class NonNullableType implements DataSet {
  double Sell;
  double Buy;
  double ReturnSell;
  double ReturnBuy;

  NonNullableType.fromJson(Map json)
      : Sell = json['Sell'] ?? 0,
        Buy = json['Buy'] ?? 0,
        ReturnSell = json['ReturnSell'] ?? 0,
        ReturnBuy = json['ReturnBuy'] ?? 0;

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['Sell'] = Sell;
    map['Buy'] = Buy;
    map['ReturnSell'] = ReturnSell;
    map['ReturnBuy'] = ReturnBuy;
    return map;
  }

  double getSell() {
    return Sell;
  }

  void setSell(double sell) {
    Sell = sell;
  }

  double getBuy() {
    return Buy;
  }

  void setBuy(double buy) {
    Buy = buy;
  }

  double getReturnSell() {
    return ReturnSell;
  }

  void setReturnSell(double returnSell) {
    ReturnSell = returnSell;
  }

  double getReturnBuy() {
    return ReturnBuy;
  }

  void setReturnBuy(double returnBuy) {
    ReturnBuy = returnBuy;
  }
}

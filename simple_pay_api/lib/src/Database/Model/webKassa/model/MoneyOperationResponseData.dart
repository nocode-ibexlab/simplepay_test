import 'dart:collection';

import 'type/CashboxParameters.dart';
import 'type/DataSet.dart';

class MoneyOperationResponseData implements DataSet {
  bool? OfflineMode;
  bool? CashboxOfflineMode;
  String? DateTime;
  double? Sum;
  CashboxParameters? Cashbox;

  MoneyOperationResponseData();

  MoneyOperationResponseData.fromJson(Map json)
      : OfflineMode = json['OfflineMode'] ?? false,
        CashboxOfflineMode = json['CashboxOfflineMode'] ?? false,
        DateTime = json['DateTime'] ?? "",
        Sum = json['Sum'] ?? 0,
        Cashbox = CashboxParameters.fromJson(json['Cashbox'] ?? Map());

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = HashMap<String, dynamic>();
    map['OfflineMode'] = OfflineMode;
    map['CashboxOfflineMode'] = CashboxOfflineMode;
    map['DateTime'] = DateTime;
    map['Sum'] = Sum;
    map['Cashbox'] = Cashbox!.toMap();
    return map;
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

  String? getDateTime() {
    return DateTime;
  }

  void setDateTime(String dateTime) {
    DateTime = dateTime;
  }

  double? getSum() {
    return Sum;
  }

  void setSum(double sum) {
    Sum = sum;
  }

  CashboxParameters? getCashbox() {
    return Cashbox;
  }

  void setCashbox(CashboxParameters cashbox) {
    Cashbox = cashbox;
  }
}

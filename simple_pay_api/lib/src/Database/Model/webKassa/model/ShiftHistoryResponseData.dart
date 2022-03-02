import 'OutputMessage.dart';
import 'type/ShiftsType.dart';

class ShiftHistoryResponseData extends OutputMessage {
  String? CashboxUniqueNumber;
  int? Skip;
  int? Take;
  int? Total;
  List<ShiftsType>? Shifts = [];

  ShiftHistoryResponseData();

  ShiftHistoryResponseData.fromJson(Map json)
      : CashboxUniqueNumber = json['CashboxUniqueNumber'] ?? "",
        Skip = json['Skip'] ?? 0,
        Take = json['Take'] ?? 0,
        Total = json['Total'] ?? 0,
        Shifts = json['Shifts'] == null
            ? <ShiftsType>[]
            : json['Shifts']
                .map<ShiftsType>((json) => ShiftsType.fromJson(json))
                .toList(),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['CashboxUniqueNumber'] = CashboxUniqueNumber;
    map['Skip'] = Skip;
    map['Take'] = Take;
    map['Total'] = Total;
    List list = [];
    for (ShiftsType item in Shifts!) {
      list.add(item.toMap());
    }
    map['Shifts'] = list;
    return map;
  }

  String? getCashboxUniqueNumber() {
    return CashboxUniqueNumber;
  }

  void setCashboxUniqueNumber(String cashboxUniqueNumber) {
    CashboxUniqueNumber = cashboxUniqueNumber;
  }

  int? getSkip() {
    return Skip;
  }

  void setSkip(int skip) {
    Skip = skip;
  }

  int? getTake() {
    return Take;
  }

  void setTake(int take) {
    Take = take;
  }

  int? getTotal() {
    return Total;
  }

  void setTotal(int total) {
    Total = total;
  }

  List<ShiftsType>? getShifts() {
    return Shifts;
  }

  void setShifts(List<ShiftsType> shifts) {
    Shifts = shifts;
  }
}

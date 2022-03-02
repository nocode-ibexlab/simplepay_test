import 'dart:core';

import 'CashboxesResponseItem.dart';
import 'OutputMessage.dart';

class CashboxesResponseData extends OutputMessage {
  List<CashboxesResponseItem>? _List = [];

  CashboxesResponseData();

  CashboxesResponseData.fromJson(Map json)
      : _List = json['List'] == null
            ? <CashboxesResponseItem>[]
            : json['List']
                .map<CashboxesResponseItem>(
                    (json) => CashboxesResponseItem.fromJson(json))
                .toList(),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    List list = [];
    for (CashboxesResponseItem item in _List!) {
      list.add(item.toMap());
    }
    map['List'] = list;
    return map;
  }

  List<CashboxesResponseItem>? getList() {
    return _List;
  }

  void setList(List<CashboxesResponseItem> list) {
    _List = list;
  }
}

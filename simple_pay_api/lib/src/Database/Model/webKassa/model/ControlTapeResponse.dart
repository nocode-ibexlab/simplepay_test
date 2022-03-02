import 'dart:core';

import 'ControlTapeResponseData.dart';
import 'OutputMessage.dart';

class ControlTapeResponse extends OutputMessage {
  List<ControlTapeResponseData>? Data = [];

  ControlTapeResponse();

  ControlTapeResponse.fromJson(Map json)
      : Data = json['Data'] == null
            ? <ControlTapeResponseData>[]
            : json['Data']
                .map<ControlTapeResponseData>(
                    (json) => ControlTapeResponseData.fromJson(json))
                .toList(),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    List list = [];
    for (ControlTapeResponseData item in Data!) {
      list.add(item.toMap());
    }
    map['Data'] = list;

    return map;
  }

  List<ControlTapeResponseData>? getData() {
    return Data;
  }

  void setData(List<ControlTapeResponseData> data) {
    Data = data;
  }
}

import 'OutputMessage.dart';
import 'RefUnitsResponseData.dart';

class RefUnitsResponse extends OutputMessage {
  List<RefUnitsResponseData>? Data = [];

  RefUnitsResponse();

  RefUnitsResponse.fromJson(Map json)
      : Data = json['Data'] == null
            ? <RefUnitsResponseData>[]
            : json['Data']
                .map<RefUnitsResponseData>(
                    (json) => RefUnitsResponseData.fromJson(json))
                .toList(),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    List list = [];
    for (RefUnitsResponseData item in Data!) {
      list.add(item.toMap());
    }
    map['Data'] = list;

    return map;
  }

  List<RefUnitsResponseData>? getData() {
    return Data;
  }

  void setData(List<RefUnitsResponseData> data) {
    Data = data;
  }
}

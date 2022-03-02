import 'EmployeeListResponseData.dart';
import 'OutputMessage.dart';

class EmployeeListResponse extends OutputMessage {
  List<EmployeeListResponseData>? Data = [];

  EmployeeListResponse();

  EmployeeListResponse.fromJson(Map json)
      : Data = json['Data'] == null
            ? <EmployeeListResponseData>[]
            : json['Data']
                .map<EmployeeListResponseData>(
                    (json) => EmployeeListResponseData.fromJson(json))
                .toList(),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    List list = [];
    for (EmployeeListResponseData item in Data!) {
      list.add(item.toMap());
    }
    map['Data'] = list;

    return map;
  }

  List<EmployeeListResponseData>? getData() {
    return Data;
  }

  void setData(List<EmployeeListResponseData> data) {
    Data = data;
  }
}

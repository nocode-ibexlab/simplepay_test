import 'HistoryByNumberResponseData.dart';
import 'OutputMessage.dart';

class HistoryByNumberResponse extends OutputMessage {
  HistoryByNumberResponseData? Data;

  HistoryByNumberResponse();

  HistoryByNumberResponse.fromJson(Map json)
      : Data = HistoryByNumberResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();

    return map;
  }

  HistoryByNumberResponseData? getData() {
    return Data;
  }

  void setData(HistoryByNumberResponseData data) {
    Data = data;
  }
}

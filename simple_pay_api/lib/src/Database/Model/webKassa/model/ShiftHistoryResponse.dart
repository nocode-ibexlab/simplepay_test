import 'OutputMessage.dart';
import 'ShiftHistoryResponseData.dart';

class ShiftHistoryResponse extends OutputMessage {
  ShiftHistoryResponseData? Data;

  ShiftHistoryResponse();

  ShiftHistoryResponse.fromJson(Map json)
      : Data = ShiftHistoryResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();
    return map;
  }

  ShiftHistoryResponseData? getData() {
    return Data;
  }

  void setData(ShiftHistoryResponseData data) {
    Data = data;
  }
}

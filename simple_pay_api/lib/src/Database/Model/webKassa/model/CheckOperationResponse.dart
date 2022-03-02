import 'CheckOperationResponseData.dart';
import 'OutputMessage.dart';

class CheckOperationResponse extends OutputMessage {
  CheckOperationResponseData? Data;

  CheckOperationResponse();

  CheckOperationResponse.fromJson(Map json)
      : Data = CheckOperationResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();

    return map;
  }

  CheckOperationResponseData? getData() {
    return Data;
  }

  void setData(CheckOperationResponseData data) {
    Data = data;
  }
}

import 'MoneyOperationResponseData.dart';
import 'OutputMessage.dart';

class MoneyOperationResponse extends OutputMessage {
  MoneyOperationResponseData? Data;

  MoneyOperationResponse();

  MoneyOperationResponse.fromJson(Map json)
      : Data = MoneyOperationResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();
    return map;
  }

  MoneyOperationResponseData? getData() {
    return Data;
  }

  void setData(MoneyOperationResponseData data) {
    Data = data;
  }
}

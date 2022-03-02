import 'CashboxesResponseData.dart';
import 'OutputMessage.dart';

class CashboxesResponse extends OutputMessage {
  CashboxesResponseData? Data;

  CashboxesResponse();

  CashboxesResponse.fromJson(Map json)
      : Data = CashboxesResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();

    return map;
  }

  CashboxesResponseData? getData() {
    return Data;
  }

  void setData(CashboxesResponseData data) {
    Data = data;
  }
}

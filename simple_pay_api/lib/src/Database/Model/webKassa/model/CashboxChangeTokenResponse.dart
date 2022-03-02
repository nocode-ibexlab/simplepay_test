import 'OutputMessage.dart';

class CashboxChangeTokenResponse extends OutputMessage {
  bool? Data;

  CashboxChangeTokenResponse();

  CashboxChangeTokenResponse.fromJson(Map json)
      : Data = json['Data'] ?? false,
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data;

    return map;
  }

  bool? getData() {
    return Data;
  }

  void setData(bool data) {
    Data = data;
  }
}

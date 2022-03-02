import 'OutputMessage.dart';
import 'TokenResponseData.dart';

class TokenResponse extends OutputMessage {
  TokenResponseData? Data;

  TokenResponse();

  TokenResponse.fromJson(Map json)
      : Data = TokenResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();

    return map;
  }

  TokenResponseData? getData() {
    return Data;
  }

  void setData(TokenResponseData data) {
    Data = data;
  }
}

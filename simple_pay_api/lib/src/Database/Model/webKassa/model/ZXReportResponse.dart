import 'OutputMessage.dart';
import 'ZXReportResponseData.dart';

class ZXReportResponse extends OutputMessage {
  ZXReportResponseData? Data;

  ZXReportResponse();

  ZXReportResponse.fromJson(Map json)
      : Data = ZXReportResponseData.fromJson(json['Data'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Data'] = Data!.toMap();

    return map;
  }

  ZXReportResponseData? getData() {
    return Data;
  }

  void setData(ZXReportResponseData Data) {
    this.Data = Data;
  }
}

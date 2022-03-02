import 'DataSet.dart';

class ErrorsResponse implements DataSet {
  int? Code;
  String? Text;

  ErrorsResponse();

  ErrorsResponse.fromJson(Map json)
      : Code = json['Code'] ?? 0,
        Text = json['Text'] ?? "";

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = Map<String, dynamic>();
    map['Code'] = Code;
    map['Text'] = Text;
    return map;
  }

  int? getCode() {
    return Code;
  }

  void setCode(int code) {
    Code = code;
  }

  String? getText() {
    return Text;
  }

  void setText(String text) {
    Text = text;
  }
}

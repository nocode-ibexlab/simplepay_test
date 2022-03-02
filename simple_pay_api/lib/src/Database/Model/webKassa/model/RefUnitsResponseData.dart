import 'OutputMessage.dart';

class RefUnitsResponseData extends OutputMessage {
  int? Code;
  String? NameRu;
  String? NameKz;
  String? NameEn;

  RefUnitsResponseData();

  RefUnitsResponseData.fromJson(Map json)
      : Code = json['Code'] ?? 0,
        NameRu = json['NameRu'] ?? "",
        NameKz = json['NameKz'] ?? "",
        NameEn = json['NameEn'] ?? "",
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['Code'] = Code;
    map['NameRu'] = NameRu;
    map['NameKz'] = NameKz;
    map['NameEn'] = NameEn;

    return map;
  }

  int? getCode() {
    return Code;
  }

  void setCode(int code) {
    Code = code;
  }

  String? getNameRu() {
    return NameRu;
  }

  void setNameRu(String nameRu) {
    NameRu = nameRu;
  }

  String? getNameKz() {
    return NameKz;
  }

  void setNameKz(String nameKz) {
    NameKz = nameKz;
  }

  String? getNameEn() {
    return NameEn;
  }

  void setNameEn(String nameEn) {
    NameEn = nameEn;
  }
}

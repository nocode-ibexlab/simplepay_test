//List 포맷 사용 방법
//<@@CMD_LIST    -- 리스트 고정값
//	TEMPLATE="템플릿 명"
//	DATA_KEY="List Tag명"
// FILTER_KEY="ITEM_CNT" FILTER_VALUE=1
// @@>

import 'dart:collection';
import 'dart:core';

import 'ConvertTxt.dart';

class RULECvt implements ConvertTxt {
  static final RULECvt _singleton = RULECvt._internal();

  factory RULECvt() => _singleton;

  RULECvt._internal();

  static int adcnt = 0;

  //데모용 임시코드임....
  //String을 최대한 Parsing 하지 않도록 넣은 임시처리...
  List<String>? adTemplateList = null;
  String? HttpADValue = null;

  @override
  Future<String> convert(Map<String, Object?> data,
      HashMap<String, String> params, Iterator em) async {
    return "";
  }
}

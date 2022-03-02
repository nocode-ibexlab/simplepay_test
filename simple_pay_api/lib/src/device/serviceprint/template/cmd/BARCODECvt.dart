//IF 포맷 사용 방법
//<@@CMD_BARCODE    -- IF 고정값
//	CONTENTS="내용"
//	FORMAT="" //
//  WIDTH="폭" HEIGHT ="높이"
// @@>

import 'dart:collection';

import '../TemplateStatic.dart';
import 'ConvertTxt.dart';

class BARCODECvt implements ConvertTxt {
  static final BARCODECvt _singleton = BARCODECvt._internal();

  factory BARCODECvt() => _singleton;

  BARCODECvt._internal();

  @override
  Future<String> convert(Map<String, Object?> data,
      HashMap<String, String> params, Iterator em) async {
    //변수 셋팅
    StringBuffer sb = new StringBuffer();

    String readTag = "";

    //List 변환
    String? paramContents = params["CONTENTS"];
    String? paramFormat = params["FORMAT"];
    String? paramWidth = params["WIDTH"];
    String? paramHeight = params["HEIGHT"];

    paramContents = _convertInnerTag(data, paramContents);
    paramFormat = _convertInnerTag(data, paramFormat);
    paramWidth = _convertInnerTag(data, paramWidth);
    paramHeight = _convertInnerTag(data, paramHeight);

    return _generateBarCode(
        paramContents, paramFormat, paramWidth, paramHeight);
  }

  String? _convertInnerTag(Map<String, Object?> data, String? innerTag) {
    int stdPos = 0; //기준 위치 설정

    int startPos = 0;
    int endPos = 0;
    if (innerTag == null) {
      return "";
    }
    startPos = innerTag.indexOf(TemplateStatic.INNER_START_TAG, stdPos);
    if (startPos != 0) {
      return innerTag;
    }
    endPos = innerTag.indexOf(TemplateStatic.INNER_END_TAG,
        startPos + TemplateStatic.INNER_START_TAG.length);
    if (endPos < TemplateStatic.INNER_END_TAG.length) {
      return innerTag;
    }
    innerTag = innerTag.substring(TemplateStatic.INNER_START_TAG.length);
    innerTag = innerTag.substring(
        0, innerTag.length - TemplateStatic.INNER_END_TAG.length);
    innerTag = innerTag.trim();
    if (data.containsKey(innerTag)) {
      return data[innerTag] as String?;
    } else {
      return innerTag;
    }
  }

  String _generateBarCode(
      String? contents, String? format, String? width, String? height) {
    return "";
  }
}

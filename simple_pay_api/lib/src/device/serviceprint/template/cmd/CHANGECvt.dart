//Change 포맷 사용 방법
//<@@CMD_CHANGE    -- Change 고정값
//	CHANGE_KEY="payment" CHANGE_VALUE="001,002,003" CHANGE_DATA="cash,card,manual" DEFAULT_DATA="가나다"
//	CHANGE_KEY="payment" CHANGE_VALUE="001,002,003" CHANGE_DATA="0015,9765,7756"  DEFAULT_DATA="가나다" FIND_DB=1
// @@>

import 'dart:async';
import 'dart:collection';
import 'dart:core';

import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Util/Format/tokenizer.dart';

import 'ConvertTxt.dart';

class CHANGECvt implements ConvertTxt {
  static final CHANGECvt _singleton = CHANGECvt._internal();

  factory CHANGECvt() => _singleton;

  CHANGECvt._internal();

  @override
  Future<String> convert(Map<String, Object?> data,
      HashMap<String, String> params, Iterator em) async {
    String? changeKey = params["CHANGE_KEY"];
    String? changeValue = params["CHANGE_VALUE"];
    String? changeData = params["CHANGE_DATA"];
    String? defaultData = params["DEFAULT_DATA"];
    String? findDb = params["FIND_DB"];

    String? value = data[changeKey!] as String?;

    HashMap<String, String> paramMap = new HashMap();

    if (changeValue != null || changeData != null || value != null) {
      final tokenizerValue = Tokenizer({"|"});
      final v = StreamController<String?>();

      v.add(changeValue);
      v.close();

      final stValueList = await v.stream
          .transform(tokenizerValue.streamTransformer)
          .toList(); //List<Token>

      final tokenizerData = Tokenizer({"|"});
      final d = StreamController<String?>();

      d.add(changeData);
      d.close();

      final stDataList = await d.stream
          .transform(tokenizerData.streamTransformer)
          .toList(); //List<Token>
      for (int i = 0; i < stValueList.length; i++) {
        String paramValue = "";
        String paramData = "";
        paramValue = stValueList[i].value.trim();
        if (paramValue == "|") continue;

        paramValue = paramValue.replaceAll("\"", "");
        paramValue = paramValue.replaceAll("\'", "");

        paramData = stDataList[i].value.trim();
        paramData = paramData.replaceAll("\"", "");
        paramData = paramData.replaceAll("\'", "");

        paramMap[paramValue] = paramData;
      }

      value = paramMap[value!];
      if (findDb != null) {
        if (findDb == ("0") || findDb == ("no") || findDb == ("false")) {
        } else {
          int intValue = CommonUtil.stringToInteger(value);
          value = BaseBL.receiptLang[intValue];
        }
      }
    }
    if (value == null) {
      value = defaultData;
    }
    return value!;
  }
}

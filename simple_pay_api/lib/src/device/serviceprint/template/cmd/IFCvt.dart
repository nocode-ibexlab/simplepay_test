//IF 포맷 사용 방법
//<@@CMD_IF    -- IF 고정값
//	HAVE_KEY="키값" //default HAVE_VALUE="notnull"
//	or HAVE_KEY="키값" HAVE_VALUE="value"

// @@>

import 'dart:async';
import 'dart:collection';
import 'dart:core';

import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Util/Format/token.dart';
import 'package:simple_pay_api/src/Util/Format/tokenizer.dart';

import '../../BuildText.dart';
import '../TemplateStatic.dart';
import 'ConvertTxt.dart';

class IFCvt implements ConvertTxt {
  static final IFCvt _singleton = IFCvt._internal();

  factory IFCvt() => _singleton;

  IFCvt._internal();

  @override
  Future<String?> convert(Map<String, Object?> data,
      HashMap<String, String> params, Iterator em) async {
    bool afterCmdTag = true;
    bool getFirst = false;
    bool hasElse = false;

    String? firstData = null;
    String? secondData = null;
    //변수 셋팅
    StringBuffer sb = new StringBuffer();

    String readTag = "";

    //List 변환
    String? paramHave = params["HAVE_KEY"];
    String? paramValue = params["HAVE_VALUE"];
    List<String> paramValueList = [];

    if (paramHave != null) {
      if (data.containsKey(paramHave)) {
        if (paramValue == null) {
          if (data[paramHave] != null) {
            getFirst = true;
          }
        } else {
          if (paramValue.contains("|")) {
            final tokenizer = Tokenizer({' '});
            final c = StreamController<String>();

            c.add(paramValue);
            c.close();

            final tokens = await c.stream
                .transform(tokenizer.streamTransformer)
                .toList(); //List<Token>
            HashMap<String, String> paramMap = new HashMap();
            for (Token st in tokens) {
              String param = "";
              try {
                param = st.value.trim();
                if (param.isEmpty) continue;
                param = param.replaceAll("\"", "");
                param = param.replaceAll("\'", "");
                paramValueList.add(param);
              } catch (e) {}
            }

            for (String value in paramValueList) {
              if (value == (data[paramHave].toString())) {
                getFirst = true;
                break;
              }
            }
          } else {
            String value = paramValue.toLowerCase();
            if (value == ("null")) {
              if (data[paramHave] == null) {
                getFirst = true;
              }
            } else if (value == ("notnull")) {
              if (data[paramHave] != null) {
                getFirst = true;
              }
            } else {
              String? dataValue = data[paramHave] as String?;
              if (dataValue != null) {
                if (dataValue == (value)) {
                  getFirst = true;
                }
              }
            }
          }
        }
      }
    }

    while (em.moveNext()) {
      readTag = await em.current;

      if (afterCmdTag) {
        if (readTag.startsWith("\r\n")) {
          readTag = readTag.replaceFirst("\r\n", "");
        } else if (readTag.startsWith("\n\r")) {
          readTag = readTag.replaceFirst("\n\r", "");
        } else if (readTag.startsWith("\r")) {
          readTag = readTag.replaceFirst("\r", "");
        } else if (readTag.startsWith("\n")) {
          readTag = readTag.replaceFirst("\n", "");
        }
        afterCmdTag = false;
      }
      if (!readTag.startsWith(TemplateStatic.BASE_TAG)) {
        //BASE TAG로 시작하지 않으면 고정 문자열 임
        sb.write(readTag);
      } else {
        //변수 처리 처리

        //Prefix 삭제
        readTag = readTag.substring(TemplateStatic.BASE_TAG.length);

        //Cmd 여부 판단
        if (readTag.startsWith(TemplateStatic.I18N_TAG)) {
          //I18N Key 값 찾기
          readTag = readTag.substring(TemplateStatic.I18N_TAG.length);
          sb.write(await CommonUtil.getI18NText(readTag, readTag));
        } else if (readTag.startsWith(TemplateStatic.CMD_TAG)) {
          //커맨드별 처리
          try {
            String? cmdString = await BuildText.convertText(readTag, data, em);
            if (cmdString != null) {
              sb.write(cmdString);
            }
          } catch (e, stack) {
            print('IFCvt.convert: $e\n$stack');
            sb.write('$e');
          }
          afterCmdTag = true;
        } else if (readTag.startsWith(TemplateStatic.ELSE)) {
          //커맨드별 처리
          firstData = sb.toString();
          hasElse = true;
          sb.clear();
        } else if (readTag.startsWith(TemplateStatic.ENDIF)) {
          //커맨드별 처리
          if (hasElse) {
            secondData = sb.toString();
            if (secondData.startsWith("\r\n")) {
              secondData = secondData.replaceFirst("\r\n", "");
            } else if (secondData.startsWith("\n\r")) {
              secondData = secondData.replaceFirst("\n\r", "");
            } else if (secondData.startsWith("\r")) {
              secondData = secondData.replaceFirst("\r", "");
            } else if (secondData.startsWith("\n")) {
              secondData = secondData.replaceFirst("\n", "");
            }
          } else {
            firstData = sb.toString();
          }
          break;
        } else {
          //일반 변수 처리
          sb.write(BuildText.nvNA(data[readTag] as String?));
        }
      }
    }

    if (getFirst) {
      return firstData;
    } else {
      return secondData;
    }
  }
}

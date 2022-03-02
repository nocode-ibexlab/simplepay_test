//그리고 이 패키지는 Util쪽에 가는게 적합해 보임..
//딱히 프린트를 위한 기능만은 아님
import 'dart:async';
import 'dart:collection';

import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Util/Format/token.dart';
import 'package:simple_pay_api/src/Util/Format/tokenizer.dart';

import 'template/DebugUtil.dart';
import 'template/TemplateLoader.dart';
import 'template/TemplateStatic.dart';
import 'template/cmd/BARCODECvt.dart';
import 'template/cmd/CHANGECvt.dart';
import 'template/cmd/ConvertTxt.dart';
import 'template/cmd/IFCvt.dart';
import 'template/cmd/LISTCvt.dart';
import 'template/cmd/RULECvt.dart';

class BuildText {
  static final String TAG = "BuildText";

  static void init() {}

  static Future<String> buildTemplate(
      String? templateKey, Map<String, Object?> inputData) async {
    init();
    List template = await TemplateLoader.loadFileTemplate(templateKey);

    DebugUtil.printMap(inputData);

    //변수 셋팅
    StringBuffer sb = new StringBuffer();

    String readTag = "";

    //이건 멀까??
    bool afterCmdTag = false;

    if (inputData == null) inputData = new HashMap();

    // for (Iterator em = template.elements(); em.hasMoreElements(); ) {
    Iterator em = template.iterator;
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
            String? cmdString = await convertText(readTag, inputData, em);
            if (cmdString != null) {
              sb.write(cmdString);
            }
            // } catch (e) {
            //     Log.d(TAG, "PrintDataException: " + e.toString());
            //     return "";
          } catch (e) {
            print('Exception: $e');
            sb.write("Format Err[" + templateKey! + "][" + e.toString() + "]");
          }
          afterCmdTag = true;
        } else {
          //일반 변수 처리
          try {
            sb.write(nvNA(inputData[readTag] as String?));
          } catch (e) {
            print('Exception: $e');
            Object? obj = inputData[readTag];
            if (obj is int) {
              sb.write(nvNA(obj.toString()));
            } else if (obj is double) {
              sb.write(nvNA((double as int).toString()));
            } else if (obj is String) {
              sb.write(nvNA(inputData[readTag] as String?));
            } else {
              sb.write(nvNA(readTag));
            }
            Log.e(
                "buildTemplate",
                "ClassCastException : " +
                    readTag +
                    " value : " +
                    (inputData[readTag] as String));
          }
        }
      }
    }

    return sb.toString();
  }

  //null이면 N/A로 리턴
  static String nvNA(String? input) {
    if (input == null) return "N/A";

    return input;
  }

  //CMD에 따른 동작
  //이 코드도 성능으로 보면 미리 Parsing 하는것이 좋음...
  static Future<String?> convertText(
      String cmdTag, Map<String, Object?> inputData, Iterator em) async {
    //CMD의 명령/변수 Parsing
    cmdTag = cmdTag.replaceAll("\r\n", " ");
    cmdTag = cmdTag.replaceAll("\n\r", " ");
    cmdTag = cmdTag.replaceAll("\r", " ");
    cmdTag = cmdTag.replaceAll("\n", " ");
    //첫번째 Space 까지가 명령 이후는 분할 변수
    String command =
        cmdTag.substring(TemplateStatic.CMD_TAG.length, cmdTag.indexOf(" "));
    String params = cmdTag.substring(cmdTag.indexOf(" "));

    //Param 분할
    //Param은 Key=Value 형태에 Space로 Param간 분할

    final tokenizer = Tokenizer({' '});
    final c = StreamController<String>();

    c.add(params);
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

        paramMap[param.substring(0, param.indexOf("="))] =
            param.substring(param.indexOf("=") + 1, param.length);
      } catch (e) {
        print('formatErr Exception: $e');
      }
    }

    //    StringTokenizer st = new StringTokenizer(params, " ");
    //    String param = "";
    //    HashMap<String, String> paramMap = new HashMap();
    //    while (st.hasMoreTokens()) {
    //        try {
    //            param = st.nextToken().trim();
    //            param = param.replace("\"", "");
    //            param = param.replace("\'", "");
    //
    //            paramMap.put(param.substring(0, param.indexOf("=")),
    //                    param.substring(param.indexOf("=") + 1, param.length));
    //        } catch (e) {
    // print('formatErr Exception: $e');
    //        }
    //    }

    //Convert 실행
    late ConvertTxt convertor;
    switch (command) {
      case "BARCODE":
        convertor = BARCODECvt();
        break;
      case "BARCODE":
        convertor = BARCODECvt();
        break;
      case "CHANGE":
        convertor = CHANGECvt();
        break;
      case "IF":
        convertor = IFCvt();
        break;
      case "LIST":
        convertor = LISTCvt();
        break;
      case "RULE":
        convertor = RULECvt();
        break;
    }

    return await convertor.convert(inputData, paramMap, em);
  }
}

//템플릿을 로딩/관리하는 Class
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//템플릿은 Name으로 호출됨 (ID는 사용자가 인식할 수 없음)
//찾는 순서 DB -> File : File은 입력된 Name + 고정된 확장자 사용
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import 'dart:collection';

import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import 'DebugUtil.dart';
import 'TemplateStatic.dart';

class TemplateLoader {
  static final String TAG = "TemplateLoader";

  // 템플릿 저장 공간

  static HashMap<String?, List<String>>? _templateBank = null;

  // 로딩된 템플릿을 Return
  //templateKey = templateFileLocation (fullpath)
  static Future<List<String>> loadFileTemplate(String? templateKey) async {
    if (_templateBank == null)
      _templateBank = new HashMap<String?, List<String>>();

    List<String>? retList;
    retList = _templateBank![templateKey];

    //로딩된 파일이 없어 새로 로딩
    if (retList == null) {
      retList = await loadFromDB(templateKey!);
    }

    if (retList == null) {
      throw 'Template($templateKey) not found';
    }

    Log.d(TAG, "========== LoadTemplate ===============");
    DebugUtil.printList(retList);
    Log.d(TAG, "========== LoadTemplate ===============");
    _templateBank![templateKey] = retList;

    return retList;
  }

  //로딩된 템플릿이 없을 경우 데이터에서 부터 읽어 들이기
  //DB 읽어내기 템플릿 이름으로 읽어내야 함
  static Future<List<String>?> loadFromDB(String templateKey) async {
    Log.d("GMLWND", "Template DB Loading[" + templateKey + "]");
    ItemBL itemBL = ItemBL();
    TemplateItem? template = await itemBL.getTemplateItemByName(templateKey);
    if (template == null) return null;

    String templateContent = template.getTemplate()!;

    return parseTemplate(templateContent);
  }

  //템플릿 분석
  static List<String> parseTemplate(String readLn) {
    //템플릿 분석
    int stdPos = 0; //기준 위치 설정
    List<String> retVec = [];

    int startPos = 0;
    int endPos = 0;

    String tmpStr = "";
    bool findTag = true; //변경 Tag 확인 여부
    do {
      startPos = readLn.indexOf(TemplateStatic.START_TAG, stdPos);
      if (startPos == -1) {
        startPos = readLn.length;
        findTag = false;
      }

      //Tag 이전 문자열 기록
      retVec.add(readLn.substring(stdPos, startPos));

      //Tag가 있으면 중간 문자열 확인
      if (findTag) {
        endPos = readLn.indexOf(
            TemplateStatic.END_TAG, startPos + TemplateStatic.START_TAG.length);
        if (endPos < TemplateStatic.END_TAG.length)
          retVec.add(
              "Can't Find Template endTag[" + TemplateStatic.END_TAG + "]");

        tmpStr = readLn.substring(
            startPos + TemplateStatic.START_TAG.length, endPos);

        retVec.add(TemplateStatic.BASE_TAG + tmpStr);

        //기준 위치 변경
        stdPos = endPos + TemplateStatic.END_TAG.length;
      }
    } while (startPos < readLn.length);

    return retVec;
  }
}

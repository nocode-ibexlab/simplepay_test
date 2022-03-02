//List 포맷 사용 방법
//<@@CMD_LIST    -- 리스트 고정값
//	TEMPLATE="템플릿 명"
//	DATA_KEY="List Tag명"
// FILTER_KEY="ITEM_CNT" FILTER_VALUE=1
// @@>

import 'dart:collection';
import 'dart:core';

import 'package:simple_pay_api/src/Database/Util/Log.dart';

import '../../BuildText.dart';
import 'ConvertTxt.dart';

class LISTCvt implements ConvertTxt {
  static final LISTCvt _singleton = LISTCvt._internal();

  factory LISTCvt() => _singleton;

  LISTCvt._internal();

  @override
  Future<String> convert(Map<String, Object?> data,
      HashMap<String, String> params, Iterator em) async {
    //List 변환
    String? listTemplate = params["TEMPLATE"];
    String? listName = params["DATA_KEY"];
    String? filterKey = params["FILTER_KEY"];
    String? filterValue = params["FILTER_VALUE"];

    List? mList = data[listName!] as List<dynamic>?;

    if (mList == null || mList.isEmpty) {
      return "";
    }

    StringBuffer sb = new StringBuffer();

    for (int i = 0; i < mList.length; i++) {
      Map rowData = mList.elementAt(i);
      if (filterKey != null || filterValue != null) {
        if (rowData.containsKey(filterKey)) {
          if (rowData[filterKey] != (filterValue)) {
            break;
          }
        } else {
          break;
        }
      }

      sb.write(await BuildText.buildTemplate(
          listTemplate, rowData as Map<String, Object?>));
    }

    _verifyData(listName, sb.toString());
    return sb.toString();
  }

  void _verifyData(String? tag, String data) {
    if ("KITCHEN_ORDER_ITEM_LIST" == (tag) && data.isEmpty) {
      Log.e("LISTCvt", "No kitchen order items");
    } else if ("ORDER_ITEM_LIST" == (tag) && data.isEmpty) {
      Log.e("LISTCvt", "No order items");
    }
  }
}

import 'package:simple_pay_api/src/Database/BusinessLogic/us/OperationBL.dart';

import 'BuildText.dart';

/**
 * Created by dhjeon on 2018-12-07.
 */

class GeneratePrintData {
  String? _printerType;
  int? _paperSize;

  static final GeneratePrintData _singleton = GeneratePrintData._internal();

  factory GeneratePrintData() => _singleton;

  GeneratePrintData._internal();

  String? getPrinterType() {
    return _printerType;
  }

  void setPrinterType(String? printerType) {
    this._printerType = printerType;
  }

  int? getPaperSize() {
    return _paperSize;
  }

  void setPaperSize(int paperSize) {
    if (paperSize == int.parse(OperationBL.PAPER_SIZE_2)) {
      paperSize = 2;
    } else {
      paperSize = 3;
    }
    this._paperSize = paperSize;
  }

  Future<String> Parser(String? templateKey, Map map) async {
    return await BuildText.buildTemplate(
        templateKey, map as Map<String, Object?>);
  }

/*
    public String Parser(String file,Map map,String template) {
        return BuildText.buildTemplate(file,map,template);
    }
    */

//  static String getDeviceFolderName() {
//     String type = GeneratePrintData().getPrinterType();
//
//     if (type==(OperationBL.PRINTER_TYPE_EMBEDDED) ||
//         type==(OperationBL.PRINTER_TYPE_CENTERM_IMAGE) ||
//         type==(OperationBL.PRINTER_TYPE_COBALT)) {
//         return "embedded" + "_" + GeneratePrintData().getPaperSize().toString();
//     } else {
//         return "printer" + "_" + GeneratePrintData().getPaperSize().toString();
//     }
// }
}

import 'dart:typed_data';

import 'package:convert/convert.dart'; //hex 클래스를 사용하기 위함
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';

class InstallBL extends BaseBL {
  static const String INSTALL = "install";
  static const String REBOOT_REQUEST = "reboot_request";
  static const String REBOOT_COMPLETE = "reboot_complete";

  static int count = 0;

  static final InstallBL _singleton = InstallBL._internal();

  factory InstallBL() => _singleton;

  InstallBL._internal();

  Future<void> install(String host, String remoteDir, String filename) async {
    // String msg = String.format("Install %s (from %s/%s)", filename, host, remoteDir);
    String msg = "Install $filename (from $host/$remoteDir)";
    await insert(INSTALL, msg);
  }

  Future<void> requestReboot() async {
    await insert(REBOOT_REQUEST, "Request reboot");
  }

  Future<bool> isNeedReboot() async {
    List<InstallLog> logs =
        await installLogDao!.findAllByLogType(REBOOT_COMPLETE, REBOOT_REQUEST);
    return logs.length > 0 && REBOOT_REQUEST == (logs[0].getLogType());
  }

  Future<void> rebootComplete() async {
    await insert(REBOOT_COMPLETE, "Reboot complete");
  }

  Future<void> insert(String type, String msg) async {
    InstallLog log = InstallLog();
    log.setLogId(generateKey());
    log.setLogType(type);
    log.setLogMessage(msg);
    log.updateTime();
    await installLogDao!.insertOne(log);
  }

  // 추후 아래 코드가 더 사용하게 된다면 BaseBL로 이동할 것
  // ASP 또는 API 서버 KeyGenerator.java 와 동일
  String generateKey() {
    String key = "";
    int tableId = 5810;
    List<int> tableIdList =
        CommonUtil.convertInt2Bytes(tableId, Endian.big, 2)!;
    key += hex.encode(tableIdList).toString();

    int currentTimeMillis =
        (DateTime.now().millisecondsSinceEpoch / 1000).toInt();
    List<int> currentTimeMillisList =
        CommonUtil.convertInt2Bytes(currentTimeMillis, Endian.big, 4)!;
    key += hex.encode(currentTimeMillisList).toString();

    int count = getCount();
    List<int> countList = CommonUtil.convertInt2Bytes(count, Endian.big, 2)!;
    key += hex.encode(countList).toString();

    return key;
  }

  getCount() {
    if (count == 0xff) {
      count = 0;
    }

    return count++;
  }
}

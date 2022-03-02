import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_pay_api/src/grpc/exception.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';

import '../BusinessLogic/us/OperationBL.dart';
import '../Util/BuildConfig.dart';
import 'CommonUtil.dart';
import 'Log.dart';
import 'Security.dart';

class License {
  static const String TAG = "License";
  static const VERSION = 1.0;
  static const appKey = BuildConfig.APP_DISTINCT_KEYWORD;
  static const pkgKey = BuildConfig.APP_PKG_DISTINCT_KEYWORD;
  static const String LIC_STAT_USED = "0000"; //사용중
  static const String LIC_STAT_WAITING_FOR_APPROVAL = "1000"; //승인대기
  static const String LIC_STAT_PAUSE = "8000"; //일시중지
  static const String LIC_STAT_DISPOSAL = "9000"; //폐기
  static const String LIC_STAT_EXPIRED = "9100"; //만료
  static const String LIC_STAT_INVALID_LICENSE = "9200"; //invalid license

  static Map? license;

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<Map> checkLicenseFile() async {
    Log.d(TAG, '+++ License/checkLicenseFile >>> Start');

    Map<String, Object> map = Map();
    map["success"] = true;
    map["invalidLicense"] = false;

    String packageName = await CommonUtil.getPackageName();

    try {
      File file = File('${await _localPath}/$packageName.lic');
      Log.d(
          TAG, '+++ License/FilePath >>> ${await _localPath}/$packageName.lic');

      // for a file
      if (await file.exists()) {
        String contents = await file.readAsString();
        license = jsonDecode(contents);

        if (license!.containsKey("permission")) {
          Map? permissionMap = license!["permission"];
          if (permissionMap != null &&
              permissionMap.containsKey("deviceId") &&
              permissionMap.containsKey("storeId") &&
              permissionMap.containsKey("terminalId")) {
            var operationBL = OperationBL();
            String deviceId = await CommonUtil.getDeviceId();
            String? storeId = await operationBL.getStoreId();
            String? terminalId = await operationBL.getStoreTerminalId();
            if (permissionMap["deviceId"] == deviceId &&
                permissionMap["storeId"] == storeId &&
                permissionMap["terminalId"] == terminalId) {
            } else {
              map["success"] = false;
              map["invalidLicense"] = true;
            }
          }
        }
      } else {
        license = await gRpcClient.issueLicense(
            licenseVersion: License.VERSION.toString(),
            packageName: packageName);
        file.writeAsString(jsonEncode(license));
      }
    } catch (e, stacktrace) {
      Log.d(TAG, '+++ License/checkLicenseFile >>> FAIL ($e)');
      print(stacktrace);
      map["success"] = false;
    }
    return map;
  }

  static Future<void> issueLicense() async {
    Log.d(TAG, '+++ License/issueLicense >>> Start');
    String packageName = await CommonUtil.getPackageName();
    try {
      File file = File('${await _localPath}/$packageName.lic');
      // for a file
      license = await gRpcClient.issueLicense(
          licenseVersion: License.VERSION.toString(), packageName: packageName);
      file.writeAsString(jsonEncode(license));
    } catch (e, stacktrace) {
      Log.d(TAG, '+++ License/issueLicense >>> FAIL ($e)');
      print(stacktrace);
    }
  }

  static Future<void> requestPermission() async {
    Log.d(TAG, '+++ License/requestPermission >>> Start');
    if (license!.containsKey("permission")) {
      Map? permissionMap = license!["permission"];
      if (permissionMap != null &&
          permissionMap.containsKey("sign") &&
          permissionMap.containsKey("state")) {
        if (permissionMap["state"] == License.LIC_STAT_USED) {
          return;
        }
      }
    }
    var operationBL = OperationBL();

    String packageName = await CommonUtil.getPackageName();
    try {
      File file = File('${await _localPath}/$packageName.lic');
      String regDate = DateFormat('yyyyMMdd').format(DateTime.now());

      try {
        license = await gRpcClient.requestPermission(
          licenseMap: license!,
          deviceId: await CommonUtil.getDeviceId(),
          storeId: await operationBL.getStoreId(),
          terminalId: await operationBL.getStoreTerminalId(),
          regDate: regDate,
          expireDate: 0,
          updateDate: regDate,
          appVersion: await CommonUtil.getVersionName(),
          appVersionCode: (await CommonUtil.getVersionCode()).toString(),
          sign: "",
          state: "",
          note: "",
        );
      } on GRpcException catch (e) {
        switch (e.code) {
          case '14':
          default:
            Log.e(TAG, e.toString());
        }
      }

      file.writeAsString(jsonEncode(license));
    } catch (e, stacktrace) {
      Log.d(TAG, '+++ License/requestPermission >>> FAIL ($e)');
      print(stacktrace);
    }
  }

  static Future<Map> verifyLicense() async {
    Log.d(TAG, '+++ License/verifyLicense >>> Start');
    String packageName = await CommonUtil.getPackageName();

    try {
      File file = File('${await _localPath}/$packageName.lic');
      String updateDate = DateFormat('yyyyMMdd').format(DateTime.now());
      String appVersion = await CommonUtil.getVersionName();
      String appVersionCode = (await CommonUtil.getVersionCode()).toString();
      license = await gRpcClient.verifyLicense(
        licenseMap: license!,
        updateDate: updateDate,
        appVersion: appVersion,
        appVersionCode: appVersionCode,
      );
      file.writeAsString(jsonEncode(license));
      return {
        'minVer': license!["appVerInfo"]["minVer"] ?? "0",
        'isLock': license!["appVerInfo"]["isLock"] ?? "0",
        'lastVer': license!["appVerInfo"]["lastVer"] ?? "0",
        'currVer': license!["permission"]["appVersionCode"] ??
            (await CommonUtil.getVersionCode()).toString(),
        'appVersion': license!["permission"]["appVersion"] ?? "",
        'appPackage': license!["licenseInfo"]["pkg"] ?? packageName,
        'currAppVersion': await CommonUtil.getVersionName(),
        'state': license!["permission"]["state"] ?? "",
        'success':
            (license!["permission"]["state"] ?? "") == License.LIC_STAT_USED,
      };
    } catch (e, stacktrace) {
      Log.d(TAG, '+++ License/verifyLicense >>> FAIL ($e)');
      print(stacktrace);

      var operationBL = OperationBL();
      String deviceUniqueValue = license!["permission"][
          "deviceId"]; //await CommonUtil.getDeviceId();//licensePermission.getDeviceId();
      String? storeId =
          await operationBL.getStoreId(); //licensePermission.getStoreId();
      String? storeTerminalId = await operationBL
          .getStoreTerminalId(); //licensePermission.getTerminalId();
      String appPackage =
          await CommonUtil.getPackageName(); //licenseInfo.getPkg();
      int expireDate = license!["permission"]
          ["expireDate"]; //licensePermission.getExpireDate();

      String state = license!["permission"]["state"] ?? "";

      debugPrint(DateFormat('yyyyMMdd').format(DateTime(expireDate)));
      debugPrint(DateFormat('yyyyMMdd').format(DateTime.now()));
      debugPrint("expireDate $expireDate");
      debugPrint("now ${DateTime.now().millisecondsSinceEpoch}");

      String text = deviceUniqueValue +
          "|" +
          (storeId ?? "") +
          "|" +
          (storeTerminalId ?? "") +
          "|" +
          appPackage +
          "|" +
          expireDate.toString();
      String sign = await Security.encrypt(text, "license");
      if (license!["permission"]["sign"].toLowerCase() != sign.toLowerCase()) {
        state = License.LIC_STAT_INVALID_LICENSE;
      } else if (DateTime.now().millisecondsSinceEpoch > expireDate) {
        state = License.LIC_STAT_EXPIRED;
      }

      return {
        'minVer': license!["appVerInfo"]["minVer"] ?? "0",
        'isLock': license!["appVerInfo"]["isLock"] ?? "0",
        'lastVer': license!["appVerInfo"]["lastVer"] ?? "0",
        'currVer': license!["permission"]["appVersionCode"] ??
            (await CommonUtil.getVersionCode()).toString(),
        'appVersion': license!["permission"]["appVersion"] ?? "",
        'appPackage': license!["licenseInfo"]["pkg"] ?? appPackage,
        'currAppVersion': await CommonUtil.getVersionName(),
        'state': state,
        'success': state == License.LIC_STAT_USED,
      };
    }
  }
}

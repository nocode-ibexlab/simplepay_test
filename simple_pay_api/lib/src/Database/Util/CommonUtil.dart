import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/BasBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/CashierBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/EmployeeBL.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/device.dart';
import 'package:simple_pay_api/src/simple.dart';

import 'CrmConstants.dart';
import 'CultureManager.dart';
import 'Log.dart';

class CommonUtil {
  static const String TAG = "CommonUtil";
  static Map mock = {};

  static List<int>? convertInt2Bytes(int value,
      [Endian order = Endian.big, int bytesSize = -1]) {
    if (bytesSize == -1) {
      bytesSize = (value.toString().length / 2).floor();
    }
    try {
      final kMaxBytes = 8;
      var bytes = Uint8List(kMaxBytes)
        ..buffer.asByteData().setInt64(0, value, order);
      List<int> intArray;
      if (order == Endian.big) {
        intArray = bytes.sublist(kMaxBytes - bytesSize, kMaxBytes).toList();
      } else {
        intArray = bytes.sublist(0, bytesSize).toList();
      }
      return intArray;
    } catch (e) {
      print('util convert error: $e');
    }
    return null;
  }

  static bool isNullEmpty(String? s) {
    return s == null || s.isEmpty;
  }

  static bool isNullZero(int i) {
    return i == null || i == 0;
  }

  static double stringToDouble(String? s) {
    if (isNullEmpty(s)) {
      return 0;
    }

    try {
      return double.parse(s!);
    } catch (e) {
      return 0;
    }
  }

  static int stringToInteger(String? s) {
    if (isNullEmpty(s)) {
      return 0;
    }

    try {
      return num.parse(s!).toInt();
    } catch (e) {
      return 0;
    }
  }

  static int stringToLong(String? s) {
    if (isNullEmpty(s)) {
      return 0;
    }

    try {
      return num.parse(s!).toInt();
    } catch (e) {
      return 0;
    }
  }

  /// yyyyMMddHHmmssSSS => DateTime
  static DateTime convertStringToDate(String? date) {
    if (date == null) {
      return DateTime.now();
    }

    var year = date.length >= 4 ? int.tryParse(date.substring(0, 4)) ?? 1 : 1;
    var month = date.length >= 6 ? int.tryParse(date.substring(4, 6)) ?? 1 : 1;
    var day = date.length >= 8 ? int.tryParse(date.substring(6, 8)) ?? 0 : 0;
    var hour = date.length >= 10 ? int.tryParse(date.substring(8, 10)) ?? 0 : 0;
    var min = date.length >= 12 ? int.tryParse(date.substring(10, 12)) ?? 0 : 0;
    var sec = date.length >= 14 ? int.tryParse(date.substring(12, 14)) ?? 0 : 0;
    var msec = date.length > 14 ? int.tryParse(date.substring(14)) ?? 0 : 0;
    return DateTime(year, month, day, hour, min, sec, msec);
  }

  static String convertDateForm0(DateTime date) {
    return DateFormat('yyyyMMddHHmmss').format(date);
  }

  static String convertDateForm1(DateTime date) {
    return DateFormat('yyyyMMddHHmmssSSS').format(date);
  }

  static String convertDateFormDateOnly(DateTime date) {
    return DateFormat('yyyyMMdd').format(date);
  }

  /// yyyyMMddHHmm => DateTime
  static DateTime convertDateForm2(String? date) {
    return convertStringToDate(date);
  }

  static String convertDateFormat(String inPattern, String inDate,
      {String outPattern = "yyyyMMddHHmmss"}) {
    DateTime dateTime;

    if (inPattern != null && inDate != null) {
      if (RegExp(r'^[0-9]+$').hasMatch(inPattern)) {
        dateTime = convertStringToDate(inDate);
      } else {
        try {
          dateTime = DateFormat(inPattern).parse(inDate);
        } catch (e) {
          dateTime = DateTime.now();
        }
      }
    } else {
      dateTime = DateTime.now();
    }

    return DateFormat(outPattern).format(dateTime);
  }

  /// 캐셔인 기준 영업일 마감시간 반환
  /// @param commonDate 캐셔인 시간의 영업시작일, ex) 20170519
  /// @param closeTime  영업 종료 시간
  /// @return 영업일 마감시간
  static DateTime getBusinessCashierInCloseDateTime(
      String commonDate, String closeTime) {
    DateTime startTime = convertDateForm2(commonDate + closeTime);
    return startTime.add(Duration(days: 1));
  }

  // 오늘기준 영업일 마감시간 반환
  static DateTime? getBusinessTodayCloseDateTime(String closeTime) {
    String commonDate = DateFormat('yyyyMMdd').format(DateTime.now());
    String startDate = commonDate + closeTime;
    // return convertDateForm2(startDate);
    try {
      // return DateFormat("yyyyMMddHHmm").parse(startDate);
      return convertStringToDate(startDate);
    } catch (e) {
      return null;
    }
  }

  static String getUserDefinedDiscountName(bool isRate, double? amount) {
    return isRate
        ? amount!.toInt().toString() + "% D/C"
        : CultureManager().currencyFormat(amount) + " D/C";
  }

  static String substring(String str, int beginIndex) {
    return str.substring(beginIndex);
  }

  static Future<String> getPackageName() async {
    if (mock.containsKey('packageName')) {
      return mock['packageName'];
    }

    try {
      PackageInfo info = await PackageInfo.fromPlatform();
      return info.packageName;
    } catch (e, stack) {
      debugPrint('getPackageName: $e\n$stack');
      return 'unknown';
    }
  }

  static Future<String> getVersionName() async {
    if (mock.containsKey('versionName')) {
      return mock['versionName'];
    }

    try {
      PackageInfo info = await PackageInfo.fromPlatform();
      return info.version;
    } catch (e, stack) {
      debugPrint('getVersionName: $e\n$stack');
      return '1.0.0';
    }
  }

  static Future<int> getVersionCode() async {
    if (mock.containsKey('versionCode')) {
      return mock['versionCode'];
    }

    try {
      PackageInfo info = await PackageInfo.fromPlatform();
      int versionCode = int.parse(info.buildNumber);
      // --split-per-abi 로 빌드할 시 버전코드의 천 자리에 abi 를 구분하는 값이 들어감
      // 정확한 버전코드를 구하기 위해 % 1000 사용
      return versionCode % 1000;
    } catch (e, stack) {
      debugPrint('getVersionCode: $e\n$stack');
      return 1;
    }
  }

  static String getAreaCode(String tel) {
    if (tel != null) {
      int index = tel.indexOf("-");

      if (index > 0) {
        return tel.substring(0, index);
      }
    }

    return "0";
  }

  static Future<String?> getI18NText(String id, String defaultValue) async {
    //only use printTemplate
    BasBL basBL = BasBL();

    if (id.length == 4) {
      int? index = int.tryParse(id);

      if (index != null) {
        return BaseBL.receiptLang[index];
      }

      return defaultValue;
    }

    return await basBL.getString(id, defaultValue);
  }

  static Future<String> _getMacAddress() async {
    var r = await Device().getDeviceId();

    if (Simple.successful(r)) {
      String id = Simple.result(r, 'deviceId');
      return id.toLowerCase();
    }

    return '';
  }

  static Future<String> getDeviceId() async {
    String mac = await _getMacAddress();

    if (mac.isEmpty) {
      BasBL basBL = BasBL();
      StoreTerminal? storeTerminal =
          await basBL.getStoreTerminalById(BaseBL.storeTerminalId);
      if (storeTerminal != null) {
        mac = storeTerminal.getDeviceUniqueValue()!;
      }
    }

    return mac.replaceAll(":", "");
  }

  /// CRM Operator 정보
  static Future<Map<String, Object?>?> getCashierInOperator() async {
    EmployeeBL employeeBL = EmployeeBL();
    Map<String, Object?> operator = Map();
    Employee? employee = await employeeBL.getEmployeeByEmpId(
        BaseBL.cashierInEmployeeId == null
            ? BaseBL.employeeId
            : BaseBL.cashierInEmployeeId);

    if (employee != null) {
      Log.d(TAG, "EmployeeCode : " + employee.getEmployeeCode().toString());
      Log.d(TAG, "BaseBL.employeeId : " + BaseBL.employeeId!);
      Log.d(TAG, "BaseBL.cashierInEmployeeId : " + BaseBL.cashierInEmployeeId!);

      operator[CrmConstants.OPERATOR_CODE] = employee.getEmployeeCode();
      operator[CrmConstants.OPERATOR_NAME] = employee.getEmployeeName();
      operator[CrmConstants.OPERATOR_LINK] = employee.getEmployeeId();
      return operator;
    } else {
      Log.d(TAG, "Employee is null ");
    }

    return null;
  }

  /// CashierIn 여부 확인
  static Future<bool> checkCashierIn() async {
    CashierBL cashierBL = CashierBL();
    List<CashierBankHistory> list =
        await cashierBL.getCashierInList(BaseBL.storeTerminalId);
    return list.length > 0;
  }

  static Object? getMap(Map<String, Object> map, String key) {
    if (map != null && map.containsKey(key)) {
      return map[key];
    }
    return null;
  }

  static double toDouble(dynamic value) =>
      double.tryParse(value?.toString() ?? '0') ?? 0.0;
}

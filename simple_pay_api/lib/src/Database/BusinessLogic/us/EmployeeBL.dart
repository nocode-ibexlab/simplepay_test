import 'dart:convert';

import 'package:simple_pay_api/src/Database/Model/crm/WebKassaInfo.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/Security.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';

class EmployeeBL extends BaseBL {
  static const int CLOCK_OUT_STATUS = 0;
  static const int CLOCK_IN_STATUS = 1;
  static const int UNKNOWN_STATUS = 2;

  static final EmployeeBL _singleton = EmployeeBL._internal();

  factory EmployeeBL() => _singleton;

  EmployeeBL._internal() {}

  /// password 조회
  ///
  /// @param password password
  /// @return employee
  Future<Employee?> findPassword(String password) async {
    password = Security.digestSHA256(password);

    if (password == null) {
      return null;
    }

    List<Employee> employees = await employeeDao!
        .findAllByLoginPasswordAndStateCode(password, BaseBL.STATE_DELETE);

    return employees.length > 0 ? employees.elementAt(0) : null;
  }

  /// update employeeBreakHistory
  ///
  /// @param targetEmployeeBreakHistory targetEmployeeBreakHistory
  Future<void> updateEmployeeBreakOut(
      EmployeeBreakHistory targetEmployeeBreakHistory) async {
    if (targetEmployeeBreakHistory == null) {
      return;
    }

    DateTime endDate = DateTime.now();
    targetEmployeeBreakHistory.setBreakEndTime(endDate);
    await employeeBreakHistoryDao!.updateOne(targetEmployeeBreakHistory);
    Log.d(
        "EmployeeBL",
        "Update EmployeeBreakHistory =>> " +
            targetEmployeeBreakHistory.toString());
  }

  /// get Employee by empCode
  ///
  /// @param empId : String
  /// @return Employee Entity
  Future<Employee?> getEmployeeByEmpId(String? empId) async {
    Employee? entity = null;
    if (empId != null) {
      entity = await employeeDao!.findById(empId);
    }
    return entity;
  }

  Future<Employee?> getEmployeeByEmpCode(String empCode) async {
    Employee? entity = null;
    if (empCode != null) {
      entity = await employeeDao!
          .findByEmployeeCodeAndStateCode(empCode, BaseBL.STATE_DELETE);
    }
    return entity;
  }

  /// Employee List paging
  ///
  /// @return Employee List
  Future<List<Employee>> getEmpList() async {
    return await employeeDao!.findAllByStateCode(BaseBL.STATE_DELETE);
  }

  //////////////////////////////////////////////////////////
  // Employee Insert
  //////////////////////////////////////////////////////////

  /// EmployeeGroup 데이터 insert
  ///
  /// @param list EmployeeGroup 데이터
  Future<void> insertEmployeeGroupList(List<EmployeeGroup> list) async {
    if (list == null) {
      return;
    }

    for (EmployeeGroup i in list) {
      if (BaseBL.STATE_DELETE == (i.getStateCode())) {
        await employeeGroupDao!.deleteOne(i);
      } else {
        // employeeGroupDao.insertOrReplace(i);
        EmployeeGroup? employeeGroup =
        await employeeGroupDao!.findById(i.getEmployeeGroupId()!);
        if (employeeGroup == null) {
          await employeeGroupDao!.insertOne(i);
        } else {
          await employeeGroupDao!.updateOne(i);
        }
      }
    }
  }

  /// Employee 데이터 insert
  ///
  /// @param list Employee 데이터
  Future<void> insertEmployeeList(List<Employee> list) async {
    if (list == null) {
      return;
    }

    for (Employee i in list) {
      // employeeDao.insertOrReplace(employee);
      Employee? employee = await employeeDao!.findById(i.getEmployeeId()!);
      if (employee == null) {
        await employeeDao!.insertOne(i);
      } else {
        await employeeDao!.updateOne(i);
      }
    }
  }

  Future<bool> hasPermission(Employee employee, List<String?>? allowed) async {
    if (allowed == null || allowed.length == 0) {
      // 권한 설정을 하지 않은 경우라면 허용
      return true;
    }
    List<EmployeeAuthority> list = await employee.getEmployeeAuthorities();
    for (EmployeeAuthority i in list) {
      if (allowed.indexOf(i.getClientAuthorityGroupCode()) != -1) {
        return true;
      }
    }

    return false;
  }

  Future<WebKassaInfo?> getWebkassaInfo(String? employeeId) async {
    if (employeeId == null) {
      return null;
    }

    Employee? employee = await employeeDao!.findById(employeeId);

    if (employee == null) {
      return null;
    }

    String? data = employee.getData1();

    if (data == null || data.isEmpty) {
      return null;
    }

    try {
      Map jsonMap = jsonDecode(data);
      String? linkType = jsonMap["linkType"];
      String? loginId = jsonMap["loginId"];
      String? password = jsonMap["password"];

      if ("webkassa" == (linkType)) {
        WebKassaInfo info = WebKassaInfo();
        info.setLoginId(loginId);
        info.setPassword(
            await Security.decrypt(password!, employeeId + loginId!));
        return info;
      }
    } catch (e) {
      print('Exception: $e');
    }

    return null;
  }
}

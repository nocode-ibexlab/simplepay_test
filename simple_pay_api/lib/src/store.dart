import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/LangCode.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/Util/StringUtils.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Format/NumberFormatUtil.dart';
import 'package:simple_pay_api/src/exception.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';
import 'package:simple_pay_api/src/utils.dart';

class Store with Utils {
  static final Store _singleton = Store._internal();

  factory Store() => _singleton;

  Store._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'checkPassword':
        return checkPassword(data);
      case 'businessDay':
        return businessDay();
      case 'getCashBalance':
        return cashDrawerBalance(data);
      case 'getCashierName':
        return getCashierName();
      case 'getCurrentShift':
        return getCurrentShift();
      case 'getSalesCount':
        return getSalesCount();
      case 'cashierIn':
        return cashierIn(data);
      case 'cashierOut':
        return cashierOut(data);
      case 'cashInOut':
        return addCashDrawerLog(data);
      case 'getCashInOutHistory':
        return getCashInOutHistory(data);
      case 'listShifts':
        return listShifts(data);
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> businessDay() async {
    BasBL basBL = BasBL();
    DateTime businessDayDateTime =
        CommonUtil.convertStringToDate(await basBL.getCommonDate());
    String? businessDay = DateFormat('yyyyMMdd').format(businessDayDateTime);

    return bizResponse(200, 'success', {
      'businessDay': businessDay,
    });
  }

  Future<Map> checkPassword(Map? data) async {
    String minPermissionsAllowed =
        data?['minPermissionsAllowed'] ?? EmployeeAuthority.PERM_SERVER;
    bool isCashierInEmployee = data?['isCashierInEmployee'] ?? false;
    String password = data?['password'] ?? '';
    List<String?> permissionsAllowed = [];

    switch (minPermissionsAllowed) {
      case EmployeeAuthority.PERM_SERVER:
        permissionsAllowed.add(EmployeeAuthority.PERM_SERVER);
        permissionsAllowed.add(EmployeeAuthority.PERM_CASHIER);
        permissionsAllowed.add(EmployeeAuthority.PERM_MANAGER);
        permissionsAllowed.add(EmployeeAuthority.PERM_OWNER);
        break;
      case EmployeeAuthority.PERM_CASHIER:
        permissionsAllowed.add(EmployeeAuthority.PERM_CASHIER);
        permissionsAllowed.add(EmployeeAuthority.PERM_MANAGER);
        permissionsAllowed.add(EmployeeAuthority.PERM_OWNER);
        break;
      case EmployeeAuthority.PERM_MANAGER:
        permissionsAllowed.add(EmployeeAuthority.PERM_MANAGER);
        permissionsAllowed.add(EmployeeAuthority.PERM_OWNER);
        break;
      case EmployeeAuthority.PERM_OWNER:
        permissionsAllowed.add(EmployeeAuthority.PERM_OWNER);
        break;
      default:
        break;
    }

    String? currentEmployeeId = '';
    EmployeeBL employeeBL = EmployeeBL();
    String? employeeName = '';

    if (password.length >= 4) {
      // check password with dao
      Employee? currentEmployee = await employeeBL.findPassword(password);

      if (currentEmployee != null) {
        if (await employeeBL.hasPermission(
            currentEmployee, permissionsAllowed)) {
          currentEmployeeId = currentEmployee.getEmployeeId();
          employeeName = currentEmployee.getEmployeeName();

          if (isCashierInEmployee) {
            if (BaseBL.cashierInEmployeeId != currentEmployeeId) {
              throw ApiException(403, 'different_employee_signed_in');
            }
          }

          BaseBL.employeeId = currentEmployeeId;
        } else {
          throw ApiException(401, 'user_not_authorized');
        }
      } else {
        throw ApiException(401, 'password_error');
      }
    } else {
      throw ApiException(401, 'password_error');
    }

    return bizResponse(200, 'success', {
      'name': employeeName ?? '',
    });
  }

  ///
  /// 괸리자 (대리점 또는 총판) 비밀번호 검증
  ///
  Future<Map> checkAdminSettingPassword(String password) async {
    bool verified = await gRpcClient.verifyAdminPassword(password);

    if (!verified) {
      throw ApiException(401, 'password_error');
    }

    return bizResponse(200, 'success');
  }

  Future<Map> cashierInCashDrawer() async {
    List<CashDrawer> drawers = await getCashDrawers();
    var list = <Map<String, dynamic>>[];

    for (CashDrawer i in drawers) {
      list.add({
        'name': i.name,
        'lastCashier': i.lastCashier,
        'lastCloseTime': i.lastCloseTime,
        'section': i.section,
      });
    }

    return bizResponse(200, 'success', {
      'list': list,
    });
  }

  Future<List<CashDrawer>> getCashDrawers() async {
    List<CashDrawer> available = [];
    List<BasicDataItem> drawers;
    BasBL basBL = BasBL();
    CashierBL cashierBL = CashierBL();

    try {
      drawers = await basBL.getCashDrawerList();
    } catch (e) {
      print('getCashDrawers: $e');
      return available;
    }

    List<CashierBankHistory> banks;

    try {
      banks = await cashierBL
          .getCashierBankListByCloseType(CashierBL.CASHIER_CLOSE_TYPE_START);
    } catch (e) {
      print('getCashDrawers: $e');
      return available;
    }

    for (BasicDataItem drawer in drawers) {
      bool found = false;

      for (CashierBankHistory bank in banks) {
        if (bank.getCashdrawSectionCode() ==
            drawer.getBasicDataItemCodeName()) {
          found = true;
          break;
        }
      }

      if (!found) {
        try {
          CashierBankHistory? bank =
              await cashierBL.getCashierBankByCashDrawerSection(
                  drawer.getBasicDataItemCodeName());
          CashDrawer cashDrawer = CashDrawer()
            ..name = await basBL.getString(
                drawer.getI18nTermId(), drawer.getBasicDataItemName())
            ..section = drawer.getBasicDataItemCodeName();

          if (bank != null) {
            Employee? employee = await bank.getEmployee();
            cashDrawer.lastCashier = employee?.getEmployeeName() ?? '';
            cashDrawer.lastCloseTime = DateFormat('(yyyy/MM/dd HH:mm:ss)')
                .format(bank.getBusinessEndDate());
          }

          available.add(cashDrawer);
        } catch (e) {
          print('getCashDrawers: $e');
        }
      }
    }

    return available;
  }

  Future<Map> cashierInOutStatus() async {
    var result = await refreshCashierState();
    return bizResponse(200, 'success', result);
  }

  Future<Map<String, Object?>> refreshCashierState() async {
    var result = <String, Object?>{};
    DateFormat format = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    CashierBL cashierBL = CashierBL();
    List<CashierBankHistory> banks =
        await cashierBL.getCashierInList(BaseBL.storeTerminalId);

    if (banks.isEmpty) {
      setCashdrawSection(null);
      result['CashierIn'] = false;
      result['CashierOut'] = true;
      CashierBankHistory? last = await cashierBL.getLastClosedCashierBank();

      if (last != null) {
        Employee? lastEmployee = await last.getEmployee();

        if (lastEmployee != null) {
          BaseBL.cashierInEmployeeId = lastEmployee.getEmployeeId();
          result['LastCashierName'] = lastEmployee.getEmployeeName();

          if (BaseBL.employeeId != null) {
            CashierBankHistory? lastCashierBankHistory =
                await getLastCashierBankHistory();

            if (lastCashierBankHistory == null) {
            } else {
              CashierBankHistoryBill? bill =
                  await getCashierBankHistoryBill(lastCashierBankHistory);

              if (bill != null) {
                double? totalUnitValue = bill.getUserInputAmount();
                result['totalUnitValue'] = totalUnitValue;
              }
            }
          }
        } else {
          BaseBL.cashierInEmployeeId = null;
          result['LastCashierName'] = '';
        }
      } else {
        BaseBL.cashierInEmployeeId = null;
        result['LastCashierName'] = '';
      }

      result['CashierInTime'] = '';
    } else {
      CashierBankHistory bank = banks.first;
      setCashdrawSection(bank.getCashdrawSectionCode());
      result['CashierIn'] = true;
      result['CashierOut'] = false;
      Employee? employee = await bank.getEmployee();

      if (employee != null) {
        BaseBL.cashierInEmployeeId = employee.getEmployeeId();
        result['CashierName'] = employee.getEmployeeName();
      } else {
        BaseBL.cashierInEmployeeId = null;
        result['CashierName'] = '';
      }

      result['CashierInTime'] = format.format(bank.getBusinessStartDate());
    }

    return result;
  }

  Future<Map> getCashierName() async {
    final cashierBL = CashierBL();
    List<CashierBankHistory> banks =
        await cashierBL.getCashierInList(BaseBL.storeTerminalId);
    String name = '';

    if (banks.isEmpty) {
      CashierBankHistory? last = await cashierBL.getLastClosedCashierBank();

      if (last != null) {
        Employee? lastEmployee = await last.getEmployee();

        if (lastEmployee != null) {
          name = lastEmployee.getEmployeeName() ?? '';
        }
      }
    } else {
      CashierBankHistory bank = banks.first;
      Employee? employee = await bank.getEmployee();

      if (employee != null) {
        name = employee.getEmployeeName() ?? '';
      }
    }

    return bizResponse(200, 'success', {'name': name});
  }

  Future<Map> getCurrentShift() async {
    final cashierBL = CashierBL();
    CashierBankHistory? bank = await cashierBL.last();

    if (bank == null) {
      throw ApiException(404, 'No shift exists');
    }

    return bizResponse(200, 'success', {
      'shiftId': bank.getId(),
      'shiftStartTime': bank.getBusinessStartDatetime()?.substring(0, 14),
      'shiftEndTime': bank.getBusinessEndDatetime()?.substring(0, 14),
    });
  }

  Future<Map> listShifts(Map? params) async {
    final cashierBL = CashierBL();
    String? startDate = params?['startDate'];
    String? endDate = params?['endDate'];
    DateTime start = parseSearchDate(startDate, true, 7);
    DateTime end = parseSearchDate(endDate, false);

    List<CashierBankHistory> banks = await cashierBL.findBetween(start, end);
    List<Map> list = banks
        .map((i) => {
              'shiftId': i.getId(),
              'shiftStartTime': i.getBusinessStartDatetime()?.substring(0, 14),
              'shiftEndTime': i.getBusinessEndDatetime()?.substring(0, 14),
            })
        .toList();
    return bizResponse(200, 'success', list);
  }

  Future<bool> isCashierIn() async {
    CashierBL cashierBL = CashierBL();
    List<CashierBankHistory> banks =
        await cashierBL.getCashierInList(BaseBL.storeTerminalId);
    return banks.isNotEmpty;
  }

  void setCashdrawSection(String? cashdrawSection) {
    BaseBL.cashdrawSection = cashdrawSection;
  }

  Future<CashierBankHistory?> getLastCashierBankHistory() async {
    CashierBL cashierBL = CashierBL();
    DateTime today = DateTime.now();
    String startDate =
        CommonUtil.convertDateForm1(today.subtract(const Duration(days: 100)));
    String endDate = CommonUtil.convertDateForm1(today);
    return await cashierBL.getLastCashierOutListForCancelCloseWithoutEmpID(
      startDate,
      endDate,
      BaseBL.storeTerminalId,
    );
  }

  Future<Map> cashierIn([Map? data]) async {
    String section = data?['section'] ?? 'CB100';
    bool _isCashierIn = await isCashierIn();

    if (_isCashierIn) {
      return bizResponse(200, 'already_cashier_in');
    }

    double totalUnitValue = data?['amount'] ?? 0.0;
    String userInput =
        CurrencyFormatter.noSymbolCurrency.format(totalUnitValue);

    const unitListSize = 13;
    List<String> unitList = [];
    unitList.add(userInput);

    for (int i = 0; i < unitListSize - 1; i++) {
      unitList.add('0');
    }

    CashierBL cashierBL = CashierBL();

    try {
      await cashierBL.cashierInProcess(
        section,
        unitList,
        CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_RESERVE,
        totalUnitValue,
        '',
        '',
        BaseBL.storeTerminalId,
      );
      setCashdrawSection(section);
    } catch (e) {
      print('cashierIn: $e');
    }

    return bizResponse(200, 'success');
  }

  Future<Map> cashierOutCheck(Map? data) async {
    bool _isCashierIn = await isCashierIn();

    if (!_isCashierIn) {
      throw ApiException(500, 'already_cashier_out');
    }

    double totalUnitValue = data?['amount'] ?? 0.0;
    double cashDrawerBalance = await getBalance();

    if (cashDrawerBalance != totalUnitValue) {
      throw ApiException(500, 'estimated_and_actual_different');
    }

    String? msg = await checkEndOfDay(true);

    if (msg != null) {
      throw ApiException(500, msg);
    }

    return bizResponse(200, 'success');
  }

  Future<Map> cashierOut(Map? data) async {
    bool _isCashierIn = await isCashierIn();

    if (!_isCashierIn) {
      return bizResponse(200, 'already_cashier_out');
    }

    double totalUnitValue = data?['amount'] ?? 0.0;
    String userInput =
        CurrencyFormatter.noSymbolCurrency.format(totalUnitValue);

    const unitListSize = 13;
    List<String> unitList = [];
    unitList.add(userInput);

    for (int i = 0; i < unitListSize - 1; i++) {
      unitList.add('0');
    }

    double cashDrawerBalance = await getBalance();

    if (cashDrawerBalance != totalUnitValue) {
      throw ApiException(500, 'estimated_and_actual_different');
    }

    String? msg = await checkEndOfDay(true);

    if (msg != null) {
      throw ApiException(500, msg);
    }

    Map result = await processCashierOut(unitList, totalUnitValue, true, true);

    if (result.isNotEmpty && result['result']) {
      return bizResponse(200, 'success', result);
    } else {
      throw ApiException(500, 'result Fail');
    }
  }

  Future<String?> checkEndOfDay(bool isEndOfDay) async {
    if (!isEndOfDay) {
      return null;
    }

    // Cashier In 된 다른 POS가 있을 경우 EOD 불가
    List<CashierBankHistory> banks;

    try {
      banks = await CashierBL().getCashierInListForEOD(BaseBL.storeTerminalId);
    } catch (e) {
      print('checkEndOfDay: $e');
      return null;
    }

    if (banks.isEmpty) {
      return null;
    }

    String msg = BaseBL.lang[LangCode
            .you_must_cashier_out_all_the_other_pos_stations_first_for_the_end_of_day]! +
        '\n' +
        BaseBL.lang[LangCode.cashier]! +
        ': ';

    // msg 에 POS name Cashier Name 추가
    List<String> cashiers = [];

    for (CashierBankHistory bank in banks) {
      StoreTerminal? storeTerminal = await bank.getStoreTerminal();
      String posName = storeTerminal?.getStoreTerminalName() ?? '';
      Employee? employee = await bank.getEmployee();
      cashiers.add(posName + ' ' + (employee?.getEmployeeName()! ?? ''));
    }

    return msg + StringUtils.join(cashiers, '\n');
  }

  Future<Map> processCashierOut(
      List<String> unitList, double total, bool isSettlement, bool isEndOfDay) {
    return setCashierOutParam(
      BaseBL.cashdrawSection,
      unitList,
      CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_CLOSE,
      total,
      // remark A
      '',
      // account code
      '',
      BaseBL.storeTerminalId,
      isSettlement,
      isEndOfDay,
    );
  }

  Future<Map> setCashierOutParam(
    String? cashdrawSection,
    List<String> unitList,
    CashierBL_CASHDRAWLOG inputType,
    double totalUnitamt,
    String rema,
    String accountCode,
    String? storeTerminalId,
    bool isSettlement,
    bool isEndOfDay,
  ) {
    CashierBL cashierBL = CashierBL();
    return cashierBL.cashierOutProcess(
      cashdrawSection,
      unitList,
      inputType,
      totalUnitamt,
      rema,
      accountCode,
      storeTerminalId,
      isSettlement,
      isEndOfDay,
      true,
    );
  }

  Future<Map> cashDrawerBalance(Map? data) async {
    String? cashdrawSection = data?['cashdrawSection'] ?? 'CB100';
    double cashDrawerBalance = await getBalance(cashdrawSection);
    return bizResponse(200, 'success', {
      'balance': cashDrawerBalance,
    });
  }

  Future<Map> payInOut(Map? data) async {
    bool payIn = data?['payIn'] ?? true;
    BasBL basBL = BasBL();
    List<AccountSubject>? groups = await getAccountGroups(payIn);
    groups = groups ?? [];
    List<Map<String, Object?>> groupList = <Map<String, Object?>>[];
    List<Map<String, Object?>> itemList = <Map<String, Object?>>[];

    for (AccountSubject i in groups) {
      Map<String, Object?> item = <String, Object?>{};
      String? text =
          await basBL.getString(i.getI18nTermId(), i.getAccountSubjectName());
      item['accountGroup'] = '0000';
      item['accountId'] = i.getAccountSubjectId();
      item['accountName'] = text;
      groupList.add(item);
    }

    for (AccountSubject i in groups) {
      String accountGroup = i.getAccountSubjectId()!;
      List<AccountSubject>? accounts = await getAccounts(payIn, accountGroup);
      accounts = accounts ?? [];

      for (AccountSubject j in accounts) {
        Map<String, Object?> item = <String, Object?>{};
        String? text =
            await basBL.getString(j.getI18nTermId(), j.getAccountSubjectName());
        item['accountGroup'] = accountGroup;
        item['accountId'] = j.getAccountSubjectId();
        item['accountName'] = text;
        itemList.add(item);
      }
    }

    return bizResponse(200, 'success', {
      'group': groupList,
      'item': itemList,
    });
  }

  Future<List<AccountSubject>?> getAccountGroups(bool payIn) async {
    CashierBL_CASHDRAWLOG payMode = payIn
        ? CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT
        : CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW;
    return await PayBL().getAccountSubGroupList(payMode);
  }

  Future<List<AccountSubject>?> getAccounts(
      final bool payIn, String groupCode) async {
    CashierBL_CASHDRAWLOG payMode = payIn
        ? CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT
        : CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW;
    return await PayBL().getAccountListsWithSubGroup(payMode, groupCode);
  }

  Future<Map> addCashDrawerLog(Map? data) async {
    String inOutType = data?['inOutType'] ?? '';
    bool isPayIn = false;

    if (!(await isCashierIn())) {
      print('Now cashier out. So cashier in first.');
      await cashierIn();
    }

    if (inOutType == 'I') {
      isPayIn = true;
    } else if (inOutType == 'O') {
      isPayIn = false;
    } else {
      throw ApiException(400, 'invalid_type');
    }
    String memoValue = data?['memo'] ?? '';
    String accountCode = data?['accountCode'] ?? (isPayIn ? '7001' : '7002');
    double amount = data?['amount'] ?? 0.0;

    CashierBL cashierBL = CashierBL();
    CashierBL_CASHDRAWLOG inputType = isPayIn
        ? CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT
        : CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW;

    if (amount == 0.0) {
      throw ApiException(400, 'input_amount');
    }

    if (accountCode.isEmpty) {
      throw ApiException(400, 'select_account');
    }

    double cashDrawerBalance = await getBalance();

    if (!isPayIn && cashDrawerBalance < amount) {
      throw ApiException(500, 'not_enough_cash');
    }

    try {
      await cashierBL.addCashdrawLog(
        inputType,
        amount,
        memoValue,
        accountCode,
        BaseBL.cashdrawSection,
        BaseBL.storeTerminalId,
        null,
      );
    } catch (e) {
      print('addCashDrawerLog: $e');
    }

    await openCashDrawer();
    cashDrawerBalance = await getBalance();

    // final printer = device.getPrinter();
    // PayBL payBL = PayBL();
    // Map<String, Object?>? printPayinoutMap = await printer.printPayInOut(inputType,amount, memoValue, await payBL.getAccountGroupName(inputType,accountCode),await payBL.getAccountName(accountCode), cashDrawerBalance);
    // await printer.receiptPrint(printPayinoutMap);
    // printer.nextPrint();

    return bizResponse(200, 'success', {
      'cashDrawerBalance': cashDrawerBalance,
    });
  }

  Future<DateTime> getOpenDate() async {
    DateTime openDate = DateTime.now();
    List<CashierBankHistory> banks =
        await CashierBL().getCashierInList(BaseBL.storeTerminalId);

    if (banks.isNotEmpty) {
      openDate = banks.first.getBusinessStartDate();
    }

    return openDate;
  }

  Future<double> getBalance([String? cashdrawSection]) async {
    cashdrawSection ??= BaseBL.cashdrawSection;
    cashdrawSection ??= '';
    MonetaryCalculator cashDrawerBalance = MonetaryCalculator();
    DateTime openDate = await getOpenDate();
    DateTime closeDate = DateTime.now();
    List<CashdrawCashInOutHistory> log = await CashierBL()
        .getCashdrawLogBetween(
            cashdrawSection, openDate, closeDate.add(const Duration(hours: 1)));

    for (CashdrawCashInOutHistory i in log) {
      double? value = i.getAmount();
      int sign =
          CashierBL_CASHDRAWLOG.getType(i.getInOutTypeCode())!.getMSign();

      if (sign == -1) {
        value = value! * -1;
      }

      cashDrawerBalance.add(value);
    }

    return cashDrawerBalance.getValue();
  }

  Future<Map> openDrawer() async {
    await openCashDrawer();
    return bizResponse(200, 'success');
  }

  Future<void> openCashDrawer() async {
    try {
      // await Device().getPrinter().openDrawer();
    } catch (e) {
      print('openCashDrawer: $e');
    }
  }

  Future<CashierBankHistoryBill?> getCashierBankHistoryBill(
      CashierBankHistory cashierBankHistory) async {
    try {
      CashierBL cashierBL = CashierBL();
      return await cashierBL.getCashierBankHistoryBillClosed(
        cashierBankHistory.getCommonDate(),
        cashierBankHistory.getCommonSerialNumber(),
      );
    } catch (e) {
      print('getCashierBankHistoryBill: $e');
    }

    return null;
  }

  Future<Map> getCashInOutHistory(Map? params) async {
    final _cashierBL = CashierBL();
    String? startDate = params?['startDate'];
    String? endDate = params?['endDate'];
    DateTime start = parseSearchDate(startDate, true);
    DateTime end = parseSearchDate(endDate, false);

    List<CashdrawCashInOutHistory> history = await _cashierBL
        .getCashdrawPayInOutLogBetween(BaseBL.cashdrawSection, start, end);
    List<Map> list = history
        .map((i) => {
              'inOutId': i.getId(),
              'inOutTypeCode': i.getInOutTypeCode() ==
                      CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT
                          .getCode()
                  ? 'I'
                  : i.getInOutTypeCode() ==
                          CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW
                              .getCode()
                      ? 'O'
                      : i.getInOutTypeCode(),
              'amount': i.getAmount(),
              'memo': i.getRemarkA(),
              'inOutTime': i.getFirstRegistrationDatetime()!.substring(0, 14),
            })
        .toList();

    return bizResponse(200, 'success', list);
  }

  Future<Map> getSalesCount() async {
    final _saleBL = SaleBL();
    DateTime openDate = await getOpenDate();
    DateTime closeDate = DateTime.now();
    List<SalesHistory>? list =
        await _saleBL.getSaleHListBetweenDate(openDate, closeDate);
    int count = list.length;
    return bizResponse(200, 'success', {'count': count});
  }
}

class CashDrawer {
  String? name;
  String? lastCashier;
  String? lastCloseTime;
  String? section;
}

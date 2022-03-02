import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'CashierBL.dart';

class PayBL extends BaseBL {
  static final PayBL _singleton = PayBL._internal();

  factory PayBL() => _singleton;

  PayBL._internal() {
    _basBL = BasBL();
  }

  late BasBL _basBL;

  Future<List<AccountSubject>?> getAccountSubGroupList(
      CashierBL_CASHDRAWLOG payMode) async {
    if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT == payMode) {
      // Pay-in
      return await accountSubjectDao!.findAllPayInGroup(BaseBL.STATE_DELETE);
    } else if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW ==
        payMode) {
      // Pay-out
      return await accountSubjectDao!.findAllPayOutGroup(BaseBL.STATE_DELETE);
    }

    return null;
  }

  Future<List<AccountSubject>?> getAccountListsWithSubGroup(
      CashierBL_CASHDRAWLOG payMode, String groupCode) async {
    if (groupCode.length > 2) {
      String fix = "7001";
      String pre = groupCode.substring(0, 2) + "%";

      if ("7000" == (groupCode)) {
        if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT == payMode) {
          // Pay-in
          fix = "7001";
        } else if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW ==
            payMode) {
          // Pay-out
          fix = "7002";
        }

        return await accountSubjectDao!
            .findAllPayAccountLists(pre, fix, BaseBL.STATE_DELETE);
      } else {
        return await accountSubjectDao!
            .findAllPayAccountLists2(pre, groupCode, BaseBL.STATE_DELETE);
      }
    }

    return null;
  }

  Future<String?> getAccountName(String code) async {
    AccountSubject? subject = await accountSubjectDao!.findById(code);

    if (subject == null) {
      return null;
    }

    return await _basBL.getString(
        subject.getI18nTermId(), subject.getAccountSubjectName());
  }

  Future<String?> getAccountGroupName(
      CashierBL_CASHDRAWLOG payMode, String code) async {
    if (code.length > 2) {
      code = code.substring(0, 2) + "00";
      if ("7000" == (code)) {
        if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT == payMode) {
          // Pay-in
          code = "7001";
        } else if (CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW ==
            payMode) {
          // Pay-out
          code = "7002";
        }
      }
    }
    AccountSubject? subject = await accountSubjectDao!.findById(code);

    if (subject == null) {
      return null;
    }

    return await _basBL.getString(
        subject.getI18nTermId(), subject.getAccountSubjectName());
  }
}

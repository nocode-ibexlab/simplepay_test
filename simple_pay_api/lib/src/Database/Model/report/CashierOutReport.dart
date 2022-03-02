import 'CashierOutReportByActualBalance.dart';
import 'CashierOutReportByBalanceDifference.dart';
import 'CashierOutReportByBeginBalance.dart';
import 'CashierOutReportByOtherActivity.dart';
import 'CashierOutReportByPaymentSection.dart';

class CashierOutReport {
  String? cashierName;
  String? storeTerminalIdNTray;
  String? signInTime;
  String? signOutTime;

  String? getCashierName() {
    return cashierName;
  }

  void setCashierName(String? cashierName) {
    this.cashierName = cashierName;
  }

  String? getStoreTerminalIdNTray() {
    return storeTerminalIdNTray;
  }

  void setStoreTerminalIdNTray(String storeTerminalIdNTray) {
    this.storeTerminalIdNTray = storeTerminalIdNTray;
  }

  String? getSignInTime() {
    return signInTime;
  }

  void setSignInTime(String signInTime) {
    this.signInTime = signInTime;
  }

  String? getSignOutTime() {
    return signOutTime;
  }

  void setSignOutTime(String signOutTime) {
    this.signOutTime = signOutTime;
  }

  CashierOutReportByPaymentSection? cashierOutReportByPaymentSection;
  CashierOutReportByOtherActivity? cashierOutReportByOtherActivity;
  CashierOutReportByBeginBalance? cashierOutReportByBeginBalance;
  CashierOutReportByActualBalance? cashierOutReportByActualBalance;
  CashierOutReportByBalanceDifference? cashierOutReportByBalanceDifference;

  CashierOutReportByPaymentSection? getCashierOutReportByPaymentSection() {
    return cashierOutReportByPaymentSection;
  }

  void setCashierOutReportByPaymentSection(
      CashierOutReportByPaymentSection cashierOutReportByPaymentSection) {
    this.cashierOutReportByPaymentSection = cashierOutReportByPaymentSection;
  }

  CashierOutReportByOtherActivity? getCashierOutReportByOtherActivity() {
    return cashierOutReportByOtherActivity;
  }

  void setCashierOutReportByOtherActivity(
      CashierOutReportByOtherActivity cashierOutReportByOtherActivity) {
    this.cashierOutReportByOtherActivity = cashierOutReportByOtherActivity;
  }

  CashierOutReportByBeginBalance? getCashierOutReportByBeginBalance() {
    return cashierOutReportByBeginBalance;
  }

  void setCashierOutReportByBeginBalance(
      CashierOutReportByBeginBalance cashierOutReportByBeginBalance) {
    this.cashierOutReportByBeginBalance = cashierOutReportByBeginBalance;
  }

  CashierOutReportByActualBalance? getCashierOutReportByActualBalance() {
    return cashierOutReportByActualBalance;
  }

  void setCashierOutReportByActualBalance(
      CashierOutReportByActualBalance cashierOutReportByActualBalance) {
    this.cashierOutReportByActualBalance = cashierOutReportByActualBalance;
  }

  CashierOutReportByBalanceDifference?
      getCashierOutReportByBalanceDifference() {
    return cashierOutReportByBalanceDifference;
  }

  void setCashierOutReportByBalanceDifference(
      CashierOutReportByBalanceDifference cashierOutReportByBalanceDifference) {
    this.cashierOutReportByBalanceDifference =
        cashierOutReportByBalanceDifference;
  }
}

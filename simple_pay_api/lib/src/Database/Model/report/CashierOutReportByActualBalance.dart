import 'CashUnitRow.dart';

class CashierOutReportByActualBalance {
  double _E_actualAmountInRegister = 0;

  List<CashUnitRow>? cashUnitRowList;

  double _Ea_totalCash = 0;
  double _Eb_totalCard = 0;
  double _Ec_totalMyd = 0;
  double _Ed_totalTook = 0;
  double _Ee_totalUnionPay = 0;
  double _Ef_totalSmartPay = 0;
  double _Eg_totalKiwiPG = 0;
  double _Eh_totalCoupon = 0;

  double _E_total = 0;

  CashierOutReportByActualBalance() {
    cashUnitRowList = <CashUnitRow>[];
  }

  double get_E_actualAmountInRegister() {
    return _E_actualAmountInRegister;
  }

  void set_E_actualAmountInRegister(double _E_actualAmountInRegister) {
    this._E_actualAmountInRegister = _E_actualAmountInRegister;
  }

  double get_Ea_totalCash() {
    return _Ea_totalCash;
  }

  void set_Ea_totalCash(double _Ea_totalCash) {
    this._Ea_totalCash = _Ea_totalCash;
  }

  double get_Eb_totalCard() {
    return _Eb_totalCard;
  }

  void set_Eb_totalCard(double _Ec_totalCard) {
    this._Eb_totalCard = _Ec_totalCard;
  }

  double get_Ec_totalMyd() {
    return _Ec_totalMyd;
  }

  void set_Ec_totalMyd(double _Ec_totalMyd) {
    this._Ec_totalMyd = _Ec_totalMyd;
  }

  double get_Ed_totalTook() {
    return _Ed_totalTook;
  }

  void set_Ed_totalTook(double _Ed_totalTook) {
    this._Ed_totalTook = _Ed_totalTook;
  }

  double get_Ee_totalUnionPay() {
    return _Ee_totalUnionPay;
  }

  void set_Ee_totalUnionPay(double _Ee_totalUnionPay) {
    this._Ee_totalUnionPay = _Ee_totalUnionPay;
  }

  double get_Ef_totalSmartPay() {
    return _Ef_totalSmartPay;
  }

  void set_Ef_totalSmartPay(double _Ef_totalSmartPay) {
    this._Ef_totalSmartPay = _Ef_totalSmartPay;
  }

  double get_Eg_totalKiwiPG() {
    return _Eg_totalKiwiPG;
  }

  void set_Eg_totalKiwiPG(double _Eg_totalKiwiPG) {
    this._Eg_totalKiwiPG = _Eg_totalKiwiPG;
  }

  double get_Eh_totalCoupon() {
    return _Eh_totalCoupon;
  }

  void set_Eh_totalCoupon(double _Eh_totalCoupon) {
    this._Eh_totalCoupon = _Eh_totalCoupon;
  }


  List<CashUnitRow>? getCashierOutUnitRowList() {
    return cashUnitRowList;
  }

  void setCashierOutUnitRowList(List<CashUnitRow> cashUnitRowList) {
    this.cashUnitRowList = cashUnitRowList;
  }

  void addCashierOutUnitRow(CashUnitRow cashUnitRow) {
    this.cashUnitRowList!.add(cashUnitRow);
  }

  double get_E_total() {
    return _E_total;
  }

  void set_E_total(double _E_total) {
    this._E_total = _E_total;
  }
}

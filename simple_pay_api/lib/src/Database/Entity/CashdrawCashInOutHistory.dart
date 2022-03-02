import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BI1_CDRW_CASH_IO_HIS", indices: const [
  Index(value: ["COM_DT", "COM_SNO"], unique: true)
])
class CashdrawCashInOutHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "ACC_SBJ_ID")
  String? accountSubjectId;

  @ColumnInfo(name: "CDRW_SEC_CD")
  String? cashdrawSectionCode;

  @ColumnInfo(name: "IO_TP_CD")
  String? inOutTypeCode;

  @ColumnInfo(name: "AMT")
  double? amount;

  @ColumnInfo(name: "RMK_A")
  String? remarkA;

  @ColumnInfo(name: "RMK_B")
  String? remarkB;

  @ColumnInfo(name: "RMK_C")
  String? remarkC;

  @ColumnInfo(name: "PER_ACC_ID")
  String? personalAccountId;

  @ColumnInfo(name: "SLS_LNK")
  String? salesLink;

  @ColumnInfo(name: "CSHR_BNK_LNK")
  String? cashierBankLink;

  @ColumnInfo(name: "IO_EMP_ID")
  String? inOutEmployeeId;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  // transient DaoSession daoSession;

  // transient CashdrawCashInOutHistoryDao myDao;

  //todo @Generated(hash = 659986564)
  // CashdrawCashInOutHistory() {
  // }

  //todo @Generated(hash = 140474654)
  CashdrawCashInOutHistory(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      String? storeTerminalId,
      String? accountSubjectId,
      String? cashdrawSectionCode,
      String? inOutTypeCode,
      double? amount,
      String? remarkA,
      String? remarkB,
      String? remarkC,
      String? personalAccountId,
      String? salesLink,
      String? cashierBankLink,
      String? inOutEmployeeId,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.storeTerminalId = storeTerminalId;
    this.accountSubjectId = accountSubjectId;
    this.cashdrawSectionCode = cashdrawSectionCode;
    this.inOutTypeCode = inOutTypeCode;
    this.amount = amount;
    this.remarkA = remarkA;
    this.remarkB = remarkB;
    this.remarkC = remarkC;
    this.personalAccountId = personalAccountId;
    this.salesLink = salesLink;
    this.cashierBankLink = cashierBankLink;
    this.inOutEmployeeId = inOutEmployeeId;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getId() {
    return id;
  }

  void setId(String id) {
    this.id = id;
  }

  String? getCommonDate() {
    return commonDate;
  }

  void setCommonDate(String commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getAccountSubjectId() {
    return accountSubjectId;
  }

  void setAccountSubjectId(String accountSubjectId) {
    this.accountSubjectId = accountSubjectId;
  }

  String? getCashdrawSectionCode() {
    return cashdrawSectionCode;
  }

  void setCashdrawSectionCode(String? cashdrawSectionCode) {
    this.cashdrawSectionCode = cashdrawSectionCode;
  }

  String? getInOutTypeCode() {
    return inOutTypeCode;
  }

  void setInOutTypeCode(String? inOutTypeCode) {
    this.inOutTypeCode = inOutTypeCode;
  }

  double? getAmount() {
    return amount;
  }

  void setAmount(double amount) {
    this.amount = amount;
  }

  String? getRemarkA() {
    return remarkA;
  }

  void setRemarkA(String remarkA) {
    this.remarkA = remarkA;
  }

  String? getRemarkB() {
    return remarkB;
  }

  void setRemarkB(String remarkB) {
    this.remarkB = remarkB;
  }

  String? getRemarkC() {
    return remarkC;
  }

  void setRemarkC(String remarkC) {
    this.remarkC = remarkC;
  }

  String? getPersonalAccountId() {
    return personalAccountId;
  }

  void setPersonalAccountId(String personalAccountId) {
    this.personalAccountId = personalAccountId;
  }

  String? getSalesLink() {
    return salesLink;
  }

  void setSalesLink(String salesLink) {
    this.salesLink = salesLink;
  }

  String? getCashierBankLink() {
    return cashierBankLink;
  }

  void setCashierBankLink(String cashierBankLink) {
    this.cashierBankLink = cashierBankLink;
  }

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

  void createId() {
    id = '${commonDate}_${commonSerialNumber}_$cashdrawSectionCode';
  }

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());
    synchronizedYn = false;

    if (firstRegistrantId == null) {
      firstRegistrantId = BaseBL.employeeId;
    }

    if (firstRegistrationDatetime == null) {
      firstRegistrationDatetime = now;
    }

    lastReviserId = BaseBL.employeeId;
    lastRevisionDatetime = now;

    inOutEmployeeId = BaseBL.employeeId;
    if (stateCode == null) {
      stateCode = "00";
    }
  }

  String? getInOutEmployeeId() {
    return this.inOutEmployeeId;
  }

  void setInOutEmployeeId(String inOutEmployeeId) {
    this.inOutEmployeeId = inOutEmployeeId;
  }
}

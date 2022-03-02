import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BI1_CSHR_BNK_HIS_BIL", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "CDRW_SEC_CD", "BIL_SNO"], unique: true)
])
class CashierBankHistoryBill {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "CDRW_SEC_CD")
  String? cashdrawSectionCode;

  @ColumnInfo(name: "BIL_SNO")
  int? billSerialNumber;

  @ColumnInfo(name: "BIZ_OPN_CLS_SEC_CD")
  String? businessOpenCloseSectionCode;

  @ColumnInfo(name: "TOT_AMT")
  double? totalAmount;

  @ColumnInfo(name: "BIL_0_NUM")
  int? bill0Number;

  @ColumnInfo(name: "BIL_1_NUM")
  int? bill1Number;

  @ColumnInfo(name: "BIL_2_NUM")
  int? bill2Number;

  @ColumnInfo(name: "BIL_3_NUM")
  int? bill3Number;

  @ColumnInfo(name: "BIL_4_NUM")
  int? bill4Number;

  @ColumnInfo(name: "BIL_5_NUM")
  int? bill5Number;

  @ColumnInfo(name: "BIL_6_NUM")
  int? bill6Number;

  @ColumnInfo(name: "BIL_7_NUM")
  int? bill7Number;

  @ColumnInfo(name: "BIL_8_NUM")
  int? bill8Number;

  @ColumnInfo(name: "BIL_9_NUM")
  int? bill9Number;

  @ColumnInfo(name: "BIL_10_NUM")
  int? bill10Number;

  @ColumnInfo(name: "BIL_11_NUM")
  int? bill11Number;

  @ColumnInfo(name: "BIL_12_NUM")
  int? bill12Number;

  @ColumnInfo(name: "BIL_13_NUM")
  int? bill13Number;

  @ColumnInfo(name: "BIL_14_NUM")
  int? bill14Number;

  @ColumnInfo(name: "BIL_15_NUM")
  int? bill15Number;

  @ColumnInfo(name: "BIL_16_NUM")
  int? bill16Number;

  @ColumnInfo(name: "BIL_17_NUM")
  int? bill17Number;

  @ColumnInfo(name: "BIL_18_NUM")
  int? bill18Number;

  @ColumnInfo(name: "BIL_19_NUM")
  int? bill19Number;

  @ColumnInfo(name: "USR_INPT_AMT")
  double? userInputAmount;

  @ColumnInfo(name: "SHIFT_SNO")
  String? shiftSerialNumber;

  @ColumnInfo(name: "CNCL_SNO")
  int? cancelSerialNumber;

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

  //todo @Generated(hash = 1396427612)
  CashierBankHistoryBill(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      String? cashdrawSectionCode,
      int? billSerialNumber,
      String? businessOpenCloseSectionCode,
      double? totalAmount,
      int? bill0Number,
      int? bill1Number,
      int? bill2Number,
      int? bill3Number,
      int? bill4Number,
      int? bill5Number,
      int? bill6Number,
      int? bill7Number,
      int? bill8Number,
      int? bill9Number,
      int? bill10Number,
      int? bill11Number,
      int? bill12Number,
      int? bill13Number,
      int? bill14Number,
      int? bill15Number,
      int? bill16Number,
      int? bill17Number,
      int? bill18Number,
      int? bill19Number,
      double? userInputAmount,
      String? shiftSerialNumber,
      int? cancelSerialNumber,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.cashdrawSectionCode = cashdrawSectionCode;
    this.billSerialNumber = billSerialNumber;
    this.businessOpenCloseSectionCode = businessOpenCloseSectionCode;
    this.totalAmount = totalAmount;
    this.bill0Number = bill0Number;
    this.bill1Number = bill1Number;
    this.bill2Number = bill2Number;
    this.bill3Number = bill3Number;
    this.bill4Number = bill4Number;
    this.bill5Number = bill5Number;
    this.bill6Number = bill6Number;
    this.bill7Number = bill7Number;
    this.bill8Number = bill8Number;
    this.bill9Number = bill9Number;
    this.bill10Number = bill10Number;
    this.bill11Number = bill11Number;
    this.bill12Number = bill12Number;
    this.bill13Number = bill13Number;
    this.bill14Number = bill14Number;
    this.bill15Number = bill15Number;
    this.bill16Number = bill16Number;
    this.bill17Number = bill17Number;
    this.bill18Number = bill18Number;
    this.bill19Number = bill19Number;
    this.userInputAmount = userInputAmount;
    this.shiftSerialNumber = shiftSerialNumber;
    this.cancelSerialNumber = cancelSerialNumber;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 1988728693)
  // CashierBankHistoryBill() {
  // }

  String? getId() {
    return id;
  }

  void setId(String id) {
    this.id = id;
  }

  String? getCommonDate() {
    return commonDate;
  }

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int? commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  String? getCashdrawSectionCode() {
    return cashdrawSectionCode;
  }

  void setCashdrawSectionCode(String? cashdrawSectionCode) {
    this.cashdrawSectionCode = cashdrawSectionCode;
  }

  int? getBillSerialNumber() {
    return billSerialNumber;
  }

  void setBillSerialNumber(int billSerialNumber) {
    this.billSerialNumber = billSerialNumber;
  }

  String? getBusinessOpenCloseSectionCode() {
    return businessOpenCloseSectionCode;
  }

  void setBusinessOpenCloseSectionCode(String businessOpenCloseSectionCode) {
    this.businessOpenCloseSectionCode = businessOpenCloseSectionCode;
  }

  double? getTotalAmount() {
    return totalAmount;
  }

  void setTotalAmount(double? totalAmount) {
    this.totalAmount = totalAmount;
  }

  int? getBill0Number() {
    return bill0Number == null ? 0 : bill0Number;
  }

  void setBill0Number(int? bill0Number) {
    this.bill0Number = bill0Number;
  }

  int? getBill1Number() {
    return bill1Number == null ? 0 : bill1Number;
  }

  void setBill1Number(int? bill1Number) {
    this.bill1Number = bill1Number;
  }

  int? getBill2Number() {
    return bill2Number == null ? 0 : bill2Number;
  }

  void setBill2Number(int? bill2Number) {
    this.bill2Number = bill2Number;
  }

  int? getBill3Number() {
    return bill3Number == null ? 0 : bill3Number;
  }

  void setBill3Number(int? bill3Number) {
    this.bill3Number = bill3Number;
  }

  int? getBill4Number() {
    return bill4Number == null ? 0 : bill4Number;
  }

  void setBill4Number(int? bill4Number) {
    this.bill4Number = bill4Number;
  }

  int? getBill5Number() {
    return bill5Number == null ? 0 : bill5Number;
  }

  void setBill5Number(int? bill5Number) {
    this.bill5Number = bill5Number;
  }

  int? getBill6Number() {
    return bill6Number == null ? 0 : bill6Number;
  }

  void setBill6Number(int? bill6Number) {
    this.bill6Number = bill6Number;
  }

  int? getBill7Number() {
    return bill7Number == null ? 0 : bill7Number;
  }

  void setBill7Number(int? bill7Number) {
    this.bill7Number = bill7Number;
  }

  int? getBill8Number() {
    return bill8Number == null ? 0 : bill8Number;
  }

  void setBill8Number(int? bill8Number) {
    this.bill8Number = bill8Number;
  }

  int? getBill9Number() {
    return bill9Number == null ? 0 : bill9Number;
  }

  void setBill9Number(int? bill9Number) {
    this.bill9Number = bill9Number;
  }

  int? getBill10Number() {
    return bill10Number == null ? 0 : bill10Number;
  }

  void setBill10Number(int? bill10Number) {
    this.bill10Number = bill10Number;
  }

  int? getBill11Number() {
    return bill11Number == null ? 0 : bill11Number;
  }

  void setBill11Number(int? bill11Number) {
    this.bill11Number = bill11Number;
  }

  int? getBill12Number() {
    return bill12Number == null ? 0 : bill12Number;
  }

  void setBill12Number(int bill12Number) {
    this.bill12Number = bill12Number;
  }

  int? getBill13Number() {
    return bill13Number == null ? 0 : bill13Number;
  }

  void setBill13Number(int bill13Number) {
    this.bill13Number = bill13Number;
  }

  int? getBill14Number() {
    return bill14Number == null ? 0 : bill14Number;
  }

  void setBill14Number(int bill14Number) {
    this.bill14Number = bill14Number;
  }

  int? getBill15Number() {
    return bill15Number == null ? 0 : bill15Number;
  }

  void setBill15Number(int bill15Number) {
    this.bill15Number = bill15Number;
  }

  int? getBill16Number() {
    return bill16Number == null ? 0 : bill16Number;
  }

  void setBill16Number(int bill16Number) {
    this.bill16Number = bill16Number;
  }

  int? getBill17Number() {
    return bill17Number == null ? 0 : bill17Number;
  }

  void setBill17Number(int bill17Number) {
    this.bill17Number = bill17Number;
  }

  int? getBill18Number() {
    return bill18Number == null ? 0 : bill18Number;
  }

  void setBill18Number(int bill18Number) {
    this.bill18Number = bill18Number;
  }

  int? getBill19Number() {
    return bill19Number == null ? 0 : bill19Number;
  }

  void setBill19Number(int bill19Number) {
    this.bill19Number = bill19Number;
  }

  double? getUserInputAmount() {
    return userInputAmount == null ? 0 : userInputAmount;
  }

  void setUserInputAmount(double? userInputAmount) {
    this.userInputAmount = userInputAmount;
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
    id = commonDate! +
        "_" +
        cashdrawSectionCode! +
        "_" +
        businessOpenCloseSectionCode! +
        "_" +
        commonSerialNumber.toString();
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

    if (stateCode == null) {
      stateCode = "00";
    }
  }

  int? getCancelSerialNumber() {
    return this.cancelSerialNumber;
  }

  void setCancelSerialNumber(int? cancelSerialNumber) {
    this.cancelSerialNumber = cancelSerialNumber;
  }

  String? getShiftSerialNumber() {
    return this.shiftSerialNumber;
  }

  void setShiftSerialNumber(String shiftSerialNumber) {
    this.shiftSerialNumber = shiftSerialNumber;
  }
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BI1_DAILY_RPT_HIS", indices: const [
  Index(value: ["STR_TRM_ID", "COM_DT", "COM_SNO"], unique: true)
])
class DailyReportHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "BIZ_DTTM")
  String? businessDatetime;

  @ColumnInfo(name: "TOT_SLS_AMT")
  double? totalSalesAmount;

  @ColumnInfo(name: "TOT_SLS_CNT")
  int? totalSalesCount;

  @ColumnInfo(name: "TOT_SPLY_VAL")
  double? totalSupplyValue;

  @ColumnInfo(name: "TOT_TAX_AMT")
  double? totalTaxAmount;

  @ColumnInfo(name: "TOT_TIP_AMT")
  double? totalTipAmount;

  @ColumnInfo(name: "TOT_TIP_TAX_AMT")
  double? totalTipTaxAmount;

  @ColumnInfo(name: "DC_TOT_AMT")
  double? discountTotalAmount;

  @ColumnInfo(name: "TOT_CNCL_AMT")
  double? totalCancelAmount;

  @ColumnInfo(name: "TOT_REF_AMT")
  double? totalRefundAmount;

  @ColumnInfo(name: "POS_CASH_TOT_AMT")
  double? posCashTotalAmount;

  @ColumnInfo(name: "CASH_DEPSIT_TOT_AMT")
  double? cashDepositTotalAmount;

  @ColumnInfo(name: "CASH_WDRWL_TOT_AMT")
  double? cashWithdrawalAmount;

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

  //todo @Generated(hash = 862480652)
  DailyReportHistory(
      {String? id,
      String? storeTerminalId,
      String? commonDate,
      int? commonSerialNumber,
      String? businessDatetime,
      double? totalSalesAmount,
      int? totalSalesCount,
      double? totalSupplyValue,
      double? totalTaxAmount,
      double? totalTipAmount,
      double? totalTipTaxAmount,
      double? discountTotalAmount,
      double? totalCancelAmount,
      double? totalRefundAmount,
      double? posCashTotalAmount,
      double? cashDepositTotalAmount,
      double? cashWithdrawalAmount,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.storeTerminalId = storeTerminalId;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.businessDatetime = businessDatetime;
    this.totalSalesAmount = totalSalesAmount;
    this.totalSalesCount = totalSalesCount;
    this.totalSupplyValue = totalSupplyValue;
    this.totalTaxAmount = totalTaxAmount;
    this.totalTipAmount = totalTipAmount;
    this.totalTipTaxAmount = totalTipTaxAmount;
    this.discountTotalAmount = discountTotalAmount;
    this.totalCancelAmount = totalCancelAmount;
    this.totalRefundAmount = totalRefundAmount;
    this.posCashTotalAmount = posCashTotalAmount;
    this.cashDepositTotalAmount = cashDepositTotalAmount;
    this.cashWithdrawalAmount = cashWithdrawalAmount;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 989021068)
  // DailyReportHistory() {
  // }

  void createId() {
    id = commonDate! + "_" + commonSerialNumber.toString();
  }

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());

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

  String? getId() {
    return this.id;
  }

  void setId(String id) {
    this.id = id;
  }

  String? getStoreTerminalId() {
    return this.storeTerminalId;
  }

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getCommonDate() {
    return this.commonDate;
  }

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return this.commonSerialNumber;
  }

  void setCommonSerialNumber(int commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  String? getBusinessDatetime() {
    return this.businessDatetime;
  }

  void setBusinessDatetime(String? businessDatetime) {
    this.businessDatetime = businessDatetime;
  }

  double? getTotalSalesAmount() {
    return this.totalSalesAmount;
  }

  void setTotalSalesAmount(double totalSalesAmount) {
    this.totalSalesAmount = totalSalesAmount;
  }

  int? getTotalSalesCount() {
    return this.totalSalesCount;
  }

  void setTotalSalesCount(int totalSalesCount) {
    this.totalSalesCount = totalSalesCount;
  }

  double? getTotalSupplyValue() {
    return this.totalSupplyValue;
  }

  void setTotalSupplyValue(double totalSupplyValue) {
    this.totalSupplyValue = totalSupplyValue;
  }

  double? getTotalTaxAmount() {
    return this.totalTaxAmount;
  }

  void setTotalTaxAmount(double totalTaxAmount) {
    this.totalTaxAmount = totalTaxAmount;
  }

  double? getTotalTipAmount() {
    return this.totalTipAmount;
  }

  void setTotalTipAmount(double totalTipAmount) {
    this.totalTipAmount = totalTipAmount;
  }

  double? getTotalTipTaxAmount() {
    return this.totalTipTaxAmount;
  }

  void setTotalTipTaxAmount(double totalTipTaxAmount) {
    this.totalTipTaxAmount = totalTipTaxAmount;
  }

  double? getDiscountTotalAmount() {
    return this.discountTotalAmount;
  }

  void setDiscountTotalAmount(double discountTotalAmount) {
    this.discountTotalAmount = discountTotalAmount;
  }

  double? getTotalCancelAmount() {
    return this.totalCancelAmount;
  }

  void setTotalCancelAmount(double totalCancelAmount) {
    this.totalCancelAmount = totalCancelAmount;
  }

  double? getTotalRefundAmount() {
    return this.totalRefundAmount;
  }

  void setTotalRefundAmount(double totalRefundAmount) {
    this.totalRefundAmount = totalRefundAmount;
  }

  double? getPosCashTotalAmount() {
    return this.posCashTotalAmount;
  }

  void setPosCashTotalAmount(double posCashTotalAmount) {
    this.posCashTotalAmount = posCashTotalAmount;
  }

  double? getCashDepositTotalAmount() {
    return this.cashDepositTotalAmount;
  }

  void setCashDepositTotalAmount(double cashDepositTotalAmount) {
    this.cashDepositTotalAmount = cashDepositTotalAmount;
  }

  double? getCashWithdrawalAmount() {
    return this.cashWithdrawalAmount;
  }

  void setCashWithdrawalAmount(double cashWithdrawalAmount) {
    this.cashWithdrawalAmount = cashWithdrawalAmount;
  }

  bool? getSynchronizedYn() {
    return this.synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }

  String? getFirstRegistrantId() {
    return this.firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return this.firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return this.lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return this.lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return this.stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }
}

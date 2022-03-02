import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "SL1_SLS_HIS_DC", indices: const [
  Index(value: ["COM_DT", "SL_SNO", "DC_SNO"], unique: true)
])
class SalesHistoryDiscount {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "SL_SNO")
  int? saleSerialNumber;

  @ColumnInfo(name: "DC_SNO")
  int? discountSerialNumber;

  @ColumnInfo(name: "DC_SEC_CD")
  String? discountSectionCode;

  @ColumnInfo(name: "DC_RATE")
  double? discountRate;

  @ColumnInfo(name: "DC_AMT")
  double? discountAmount;

  @ColumnInfo(name: "DC_NAME")
  String? discountName;

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  @ColumnInfo(name: "CNCL_SNO")
  int? cancelSerialNumber;

  @ColumnInfo(name: "CNCL_EMP_ID")
  String? cancelEmployeeId;

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

  //todo @Generated(hash = 346789049)
  // SalesHistoryDiscount() {
  // }

  //todo @Generated(hash = 836754089)
  SalesHistoryDiscount(
      {String? id,
      String? commonDate,
      int? saleSerialNumber,
      int? discountSerialNumber,
      String? discountSectionCode,
      double? discountRate,
      double? discountAmount,
      String? discountName,
      String? itemId,
      int? cancelSerialNumber,
      String? cancelEmployeeId,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.saleSerialNumber = saleSerialNumber;
    this.discountSerialNumber = discountSerialNumber;
    this.discountSectionCode = discountSectionCode;
    this.discountRate = discountRate;
    this.discountAmount = discountAmount;
    this.discountName = discountName;
    this.itemId = itemId;
    this.cancelSerialNumber = cancelSerialNumber;
    this.cancelEmployeeId = cancelEmployeeId;
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

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getSaleSerialNumber() {
    return saleSerialNumber;
  }

  void setSaleSerialNumber(int? saleSerialNumber) {
    this.saleSerialNumber = saleSerialNumber;
  }

  int? getDiscountSerialNumber() {
    return discountSerialNumber;
  }

  void setDiscountSerialNumber(int? discountSerialNumber) {
    this.discountSerialNumber = discountSerialNumber;
  }

  String? getDiscountSectionCode() {
    return discountSectionCode;
  }

  void setDiscountSectionCode(String? discountSectionCode) {
    this.discountSectionCode = discountSectionCode;
  }

  double? getDiscountRate() {
    return discountRate;
  }

  void setDiscountRate(double? discountRate) {
    this.discountRate = discountRate;
  }

  double? getDiscountAmount() {
    return discountAmount;
  }

  void setDiscountAmount(double? discountAmount) {
    this.discountAmount = discountAmount;
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
    NumberFormat df = NumberFormat("0000");
    id = commonDate! +
        "_" +
        df.format(saleSerialNumber) +
        "_" +
        df.format(discountSerialNumber);
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

  String? getDiscountName() {
    return this.discountName;
  }

  void setDiscountName(String? discountName) {
    this.discountName = discountName;
  }

  String? getItemId() {
    return this.itemId;
  }

  void setItemId(String? itemId) {
    this.itemId = itemId;
  }

  /*
        TODO: 아래 cancelSerialNumber, cancelEmployeeId 는 추후 로직 수정으로 삭제하는게 좋을 것임
        기존 pos 코드에서 TenderKazCashPaymentCancelController.vanCallbackHandler =>  SaleBL.restoreCancelSaleData() => SaleBL.getSaleHistoryDiscountList() 참조
        DB에 이미 저장된 결제 취소된 할인 항목을 찾기 위해서는 결제 취소된 SaleHistory 를 참조하여야 하나
        원 거래의 SaleHistory 를 참조하게 구현되어 있어 어쩔 수 없이 아래 값의 존재 유무를 이용하여 찾고 있음
     */
  int? getCancelSerialNumber() {
    return this.cancelSerialNumber;
  }

  void setCancelSerialNumber(int? cancelSerialNumber) {
    this.cancelSerialNumber = cancelSerialNumber;
  }

  String? getCancelEmployeeId() {
    return this.cancelEmployeeId;
  }

  void setCancelEmployeeId(String cancelEmployeeId) {
    this.cancelEmployeeId = cancelEmployeeId;
  }
}

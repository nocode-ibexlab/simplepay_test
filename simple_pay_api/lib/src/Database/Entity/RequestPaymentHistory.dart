import 'package:floor/floor.dart';
import 'package:intl/intl.dart';

@Entity(tableName: "SY1_REQ_PAY_HIS")
class RequestPaymentHistory {
  @primaryKey
  @ColumnInfo(name: "REQ_ID")
  String? reqId;

  @ColumnInfo(name: "PAY_SEC_CD")
  String? paymentSectionCode;

  @ColumnInfo(name: "APRVL_PT_CD")
  String? approvalPointCode;

  @ColumnInfo(name: "PAY_AMT")
  double? paymentAmount;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  String? commonSerialNumber;

  @ColumnInfo(name: "AC_SNO")
  String? accountSerialNumber;

  @ColumnInfo(name: "REQ_TKN")
  String? requestToken;

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

  RequestPaymentHistory({
    String? reqId,
    String? paymentSectionCode,
    String? approvalPointCode,
    double? paymentAmount,
    String? commonDate,
    String? commonSerialNumber,
    String? accountSerialNumber,
    String? requestToken,
    String? firstRegistrantId,
    String? firstRegistrationDatetime,
    String? lastReviserId,
    String? lastRevisionDatetime,
    String? stateCode,
  }) {
    this.reqId = reqId;
    this.paymentSectionCode = paymentSectionCode;
    this.approvalPointCode = approvalPointCode;
    this.paymentAmount = paymentAmount;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.accountSerialNumber = accountSerialNumber;
    this.requestToken = requestToken;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String createId() {
    return DateFormat('yyMMddhhmmssSSS').format(DateTime.now());
  }

  String? getReqId() {
    return this.reqId;
  }

  void setReqId(String reqId) {
    this.reqId = reqId;
  }

  String? getPaymentSectionCode() {
    return this.paymentSectionCode;
  }

  void setPaymentSectionCode(String paymentSectionCode) {
    this.paymentSectionCode = paymentSectionCode;
  }

  String? getApprovalPointCode() {
    return this.approvalPointCode;
  }

  void setApprovalPointCode(String approvalPointCode) {
    this.approvalPointCode = approvalPointCode;
  }

  double? getPaymentAmount() {
    return this.paymentAmount;
  }

  void setPaymentAmount(double paymentAmount) {
    this.paymentAmount = paymentAmount;
  }

  String? getCommonDate() {
    return this.commonDate;
  }

  void setCommonDate(String commonDate) {
    this.commonDate = commonDate;
  }

  String? getCommonSerialNumber() {
    return this.commonSerialNumber;
  }

  void setCommonSerialNumber(String commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  String? getAccountSerialNumber() {
    return this.accountSerialNumber;
  }

  void setAccountSerialNumber(String accountSerialNumber) {
    this.accountSerialNumber = accountSerialNumber;
  }

  String? getRequestToken() {
    return this.requestToken;
  }

  void setRequestToken(String requestToken) {
    this.requestToken = requestToken;
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

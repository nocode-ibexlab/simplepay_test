import 'package:floor/floor.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "SY1_INTEG_VERIF_HIS")
class IntegrityVerificationHistory {
  @primaryKey
  @ColumnInfo(name: "HIS_ID")
  String? historyId;

  @ColumnInfo(name: "VERIF_DTTM")
  DateTime? verificationDatetime;

  @ColumnInfo(name: "VERIF_TP_CD")
  String? verificationTypeCode;

  @ColumnInfo(name: "VERIF_RSLT_CD")
  String? verificationResultCode;

  @ColumnInfo(name: "RMKS")
  String? remarks;

  @ColumnInfo(name: "DAT_1")
  String? data1;

  @ColumnInfo(name: "DAT_2")
  String? data2;

  @ColumnInfo(name: "DAT_3")
  String? data3;

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

  //todo @Generated(hash = 1385449028)
  // IntegrityVerificationHistory() {
  // }

  //todo @Generated(hash = 262534755)
  IntegrityVerificationHistory(
      {String? historyId,
      DateTime? verificationDatetime,
      String? verificationTypeCode,
      String? verificationResultCode,
      String? remarks,
      String? data1,
      String? data2,
      String? data3,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.historyId = historyId;
    this.verificationDatetime = verificationDatetime;
    this.verificationTypeCode = verificationTypeCode;
    this.verificationResultCode = verificationResultCode;
    this.remarks = remarks;
    this.data1 = data1;
    this.data2 = data2;
    this.data3 = data3;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getHistoryId() {
    return historyId;
  }

  void setHistoryId(String historyId) {
    this.historyId = historyId;
  }

  DateTime? getVerificationDatetime() {
    return verificationDatetime;
  }

  void setVerificationDatetime(DateTime verificationDatetime) {
    this.verificationDatetime = verificationDatetime;
  }

  String? getVerificationTypeCode() {
    return verificationTypeCode;
  }

  void setVerificationTypeCode(String? verificationTypeCode) {
    this.verificationTypeCode = verificationTypeCode;
  }

  String? getVerificationResultCode() {
    return verificationResultCode;
  }

  void setVerificationResultCode(String? verificationResultCode) {
    this.verificationResultCode = verificationResultCode;
  }

  String? getRemarks() {
    return remarks;
  }

  void setRemarks(String? remarks) {
    this.remarks = remarks;
  }

  String? getData1() {
    return data1;
  }

  void setData1(String? data1) {
    this.data1 = data1;
  }

  String? getData2() {
    return data2;
  }

  void setData2(String? data2) {
    this.data2 = data2;
  }

  String? getData3() {
    return data3;
  }

  void setData3(String? data3) {
    this.data3 = data3;
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
}

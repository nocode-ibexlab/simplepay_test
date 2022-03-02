import 'package:floor/floor.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_NOTI")
class Notice {
  @primaryKey
  @ColumnInfo(name: "NOTI_ID")
  String? noticeId;

  String? getNoticeId() {
    return noticeId;
  }

  void setNoticeId(String noticeId) {
    this.noticeId = noticeId;
  }

  @ColumnInfo(name: "NOTI_SEC_CD")
  String? noticeSectionCode;

  String? getNoticeSectionCode() {
    return noticeSectionCode;
  }

  void setNoticeSectionCode(String noticeSectionCode) {
    this.noticeSectionCode = noticeSectionCode;
  }

  @ColumnInfo(name: "UGNT_YN")
  bool? urgentYn;

  bool? getUrgentYn() {
    return urgentYn;
  }

  void setUrgentYn(bool urgentYn) {
    this.urgentYn = urgentYn;
  }

  @ColumnInfo(name: "NOTI_TIT")
  String? noticeTitle;

  String? getNoticeTitle() {
    return noticeTitle;
  }

  void setNoticeTitle(String noticeTitle) {
    this.noticeTitle = noticeTitle;
  }

  @ColumnInfo(name: "NOTI_CNTNT")
  String? noticeContents;

  String? getNoticeContents() {
    return noticeContents;
  }

  void setNoticeContents(String noticeContents) {
    this.noticeContents = noticeContents;
  }

  @ColumnInfo(name: "START_DT")
  DateTime? startDate;

  DateTime? getStartDate() {
    return startDate;
  }

  void setStartDate(DateTime startDate) {
    this.startDate = startDate;
  }

  @ColumnInfo(name: "END_DT")
  DateTime? endDate;

  DateTime? getEndDate() {
    return endDate;
  }

  void setEndDate(DateTime endDate) {
    this.endDate = endDate;
  }

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  //todo @Generated(hash = 1880392847)
  // Notice() {
  // }

  //todo @Generated(hash = 1351869296)
  Notice(
      {String? noticeId,
      String? noticeSectionCode,
      bool? urgentYn,
      String? noticeTitle,
      String? noticeContents,
      DateTime? startDate,
      DateTime? endDate,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.noticeId = noticeId;
    this.noticeSectionCode = noticeSectionCode;
    this.urgentYn = urgentYn;
    this.noticeTitle = noticeTitle;
    this.noticeContents = noticeContents;
    this.startDate = startDate;
    this.endDate = endDate;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getStateCode() {
    return stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }
}

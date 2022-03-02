import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:uuid/uuid.dart' as UUID;

@Entity(tableName: "CU1_ENT_REG")
class EntranceRegistration {
  @primaryKey
  @ColumnInfo(name: "ENT_REG_ID")
  String? entranceRegistrationId;

  @ColumnInfo(name: "STR_ID")
  String? storeId;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "HP_NO")
  String? phoneNumber;

  @ColumnInfo(name: "AGREE_YN")
  String? agreementYN;

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

  EntranceRegistration(
      {String? entranceRegistrationId,
      String? storeId,
      String? storeTerminalId,
      String? phoneNumber,
      String? agreementYN,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.entranceRegistrationId = entranceRegistrationId;
    this.storeId = storeId;
    this.storeTerminalId = storeTerminalId;
    this.phoneNumber = phoneNumber;
    this.agreementYN = agreementYN;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getEntranceRegistrationId() {
    return entranceRegistrationId;
  }

  void setEntranceRegistrationId(String? entranceRegistrationId) {
    this.entranceRegistrationId = entranceRegistrationId;
  }

  String? getStoreId() {
    return storeId;
  }

  void setStoreId(String? storeId) {
    this.storeId = storeId;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getPhoneNumber() {
    return phoneNumber;
  }

  void setPhoneNumber(String? phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  String? getAgreementYN() {
    return agreementYN;
  }

  void setAgreementYN(String? agreementYN) {
    this.agreementYN = agreementYN;
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
    String id = UUID.Uuid().v4();
    entranceRegistrationId = id;
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
}

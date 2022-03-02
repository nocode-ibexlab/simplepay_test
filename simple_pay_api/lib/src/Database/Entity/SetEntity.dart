import 'package:floor/floor.dart';

@Entity(tableName: "IT1_SET_ENTY")
class SetEntity {
  @primaryKey
  @ColumnInfo(name: "SET_ENTY_ID")
  String? setIEntityId;

  @ColumnInfo(name: "SET_ITM_ID")
  String? setItemId;

  @ColumnInfo(name: "ENTY_ITM_ID")
  String? entityItemId;

  @ColumnInfo(name: "SET_ENTY_SNO")
  String? setEntitySerialNumber;

  @ColumnInfo(name: "QTY")
  double? quantity;

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

  //todo @Generated(hash = 9405601)
  // SetEntity() {
  // }

  //todo @Generated(hash = 790532776)
  SetEntity(
      {String? setEntityId,
      String? setItemId,
      String? entityItemId,
      String? setEntitySerialNumber,
      double? quantity,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.setIEntityId = setEntityId;
    this.setItemId = setItemId;
    this.entityItemId = entityItemId;
    this.setEntitySerialNumber = setEntitySerialNumber;
    this.quantity = quantity;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getSetIEntityId() {
    return setIEntityId;
  }

  void setSetIEntityId(String setIEntityId) {
    this.setIEntityId = setIEntityId;
  }

  String? getSetItemId() {
    return setItemId;
  }

  void setSetItemId(String setItemId) {
    this.setItemId = setItemId;
  }

  String? getEntityItemId() {
    return entityItemId;
  }

  void setEntityItemId(String entityItemId) {
    this.entityItemId = entityItemId;
  }

  String? getSetEntitySerialNumber() {
    return setEntitySerialNumber;
  }

  void setSetEntitySerialNumber(String setEntitySerialNumber) {
    this.setEntitySerialNumber = setEntitySerialNumber;
  }

  double? getQuantity() {
    return quantity;
  }

  void setQuantity(double quantity) {
    this.quantity = quantity;
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

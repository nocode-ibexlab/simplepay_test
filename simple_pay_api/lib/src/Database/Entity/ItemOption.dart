import 'package:floor/floor.dart';

@Entity(tableName: "IT1_ITM_OPT")
class ItemOption {
  @primaryKey
  @ColumnInfo(name: "ITM_OPT_ID")
  String? itemOptionId;

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  @ColumnInfo(name: "OPT_GRP_ID")
  String? optionGroupId;

  @ColumnInfo(name: "ITM_OPT_SNO")
  int? itemOptionSerialNumber;

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

  //todo @Generated(hash = 788507406)
  ItemOption(
      {String? itemOptionId,
      String? itemId,
      String? optionGroupId,
      int? itemOptionSerialNumber,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.itemOptionId = itemOptionId;
    this.itemId = itemId;
    this.optionGroupId = optionGroupId;
    this.itemOptionSerialNumber = itemOptionSerialNumber;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 217165399)
  // ItemOption() {
  // }

  String? getItemOptionId() {
    return itemOptionId;
  }

  void setItemOptionId(String itemOptionId) {
    this.itemOptionId = itemOptionId;
  }

  String? getItemId() {
    return itemId;
  }

  void setItemId(String itemId) {
    this.itemId = itemId;
  }

  String? getOptionGroupId() {
    return optionGroupId;
  }

  void setOptionGroupId(String optionGroupId) {
    this.optionGroupId = optionGroupId;
  }

  int? getItemOptionSerialNumber() {
    return itemOptionSerialNumber;
  }

  void setItemOptionSerialNumber(int itemOptionSerialNumber) {
    this.itemOptionSerialNumber = itemOptionSerialNumber;
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

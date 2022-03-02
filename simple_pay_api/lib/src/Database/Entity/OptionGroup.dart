import 'package:floor/floor.dart';

@Entity(tableName: "IT1_OPT_GRP")
class OptionGroup {
  @primaryKey
  @ColumnInfo(name: "OPT_GRP_ID")
  String? optionGroupId;

  @ColumnInfo(name: "OPT_GRP_NM")
  String? optionGroupName;

  @ColumnInfo(name: "LOC_X")
  int? locationX;

  @ColumnInfo(name: "LOC_Y")
  int? locationY;

  @ColumnInfo(name: "LOC_Z")
  int? locationZ;

  @ColumnInfo(name: "REQUIRED_YN")
  bool? requiredYn;

  @ColumnInfo(name: "HIDE_YN")
  bool? hidingYn;

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

  //todo @Generated(hash = 1350769254)
  // OptionGroup() {
  // }

  //todo @Generated(hash = 1769826813)
  OptionGroup(
      {String? optionGroupId,
      String? optionGroupName,
      int? locationX,
      int? locationY,
      int? locationZ,
      bool? requiredYn,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.optionGroupId = optionGroupId;
    this.optionGroupName = optionGroupName;
    this.locationX = locationX;
    this.locationY = locationY;
    this.locationZ = locationZ;
    this.requiredYn = requiredYn;
    this.hidingYn = hidingYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getOptionGroupId() {
    return optionGroupId;
  }

  void setOptionGroupId(String optionGroupId) {
    this.optionGroupId = optionGroupId;
  }

  String? getOptionGroupName() {
    return optionGroupName;
  }

  void setOptionGroupName(String optionGroupName) {
    this.optionGroupName = optionGroupName;
  }

  int? getLocationX() {
    return locationX;
  }

  void setLocationX(int locationX) {
    this.locationX = locationX;
  }

  int? getLocationY() {
    return locationY;
  }

  String getBackgroundColor() {
    return "eeb26d";
  }

  String? getFontColor() {
    return null;
  }

  void setLocationY(int locationY) {
    this.locationY = locationY;
  }

  int? getLocationZ() {
    return locationZ;
  }

  void setLocationZ(int locationZ) {
    this.locationZ = locationZ;
  }

  bool? getRequiredYn() {
    return requiredYn;
  }

  void setRequiredYn(bool requiredYn) {
    this.requiredYn = requiredYn;
  }

  bool? getHidingYn() {
    return hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
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

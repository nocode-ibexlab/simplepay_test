import 'package:floor/floor.dart';

/**
 * 상점공간
 */
@Entity(tableName: "ST1_ST_PLACE")
class StorePlace {
  @primaryKey
  @ColumnInfo(name: "STR_PLACE_ID")
  String? storePlaceId;

  @ColumnInfo(name: "STR_ID")
  String? storeId;

  @ColumnInfo(name: "PLACE_TYPE")
  String? placeType;

  @ColumnInfo(name: "IS_DEFAULT")
  String? isDefault;

  @ColumnInfo(name: "PLACE_NAME")
  String? placeName;

  @ColumnInfo(name: "PLACE_SHT_NAME")
  String? placeShortName;

  @ColumnInfo(name: "PLACE_DESC")
  String? placeDesc;

  @ColumnInfo(name: "PLACE_ADDRESS1")
  String? placeAddress1;

  @ColumnInfo(name: "PLACE_ADDRESS2")
  String? placeAddress2;

  @ColumnInfo(name: "EMP_ID")
  String? employeeId;

  @ColumnInfo(name: "PLACE_TEL")
  String? placeTel;

  @ColumnInfo(name: "PLACE_TIMEZONE")
  String? placeTimezone;

  @ColumnInfo(name: "USE_DST")
  String? useDst;

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

  //todo @Generated(hash = 1686190321)
  StorePlace(
      {String? storePlaceId,
      String? storeId,
      String? placeType,
      String? isDefault,
      String? placeName,
      String? placeShortName,
      String? placeDesc,
      String? placeAddress1,
      String? placeAddress2,
      String? employeeId,
      String? placeTel,
      String? placeTimezone,
      String? useDst,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.storePlaceId = storePlaceId;
    this.storeId = storeId;
    this.placeType = placeType;
    this.isDefault = isDefault;
    this.placeName = placeName;
    this.placeShortName = placeShortName;
    this.placeDesc = placeDesc;
    this.placeAddress1 = placeAddress1;
    this.placeAddress2 = placeAddress2;
    this.employeeId = employeeId;
    this.placeTel = placeTel;
    this.placeTimezone = placeTimezone;
    this.useDst = useDst;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 57434924)
  // StorePlace() {
  // }

  String? getStorePlaceId() {
    return storePlaceId;
  }

  void setStorePlaceId(String storePlaceId) {
    this.storePlaceId = storePlaceId;
  }

  String? getStoreId() {
    return storeId;
  }

  void setStoreId(String storeId) {
    this.storeId = storeId;
  }

  String? getPlaceType() {
    return placeType;
  }

  void setPlaceType(String placeType) {
    this.placeType = placeType;
  }

  String? getIsDefault() {
    return isDefault;
  }

  void setIsDefault(String isDefault) {
    this.isDefault = isDefault;
  }

  String? getPlaceName() {
    return placeName;
  }

  void setPlaceName(String placeName) {
    this.placeName = placeName;
  }

  String? getPlaceShortName() {
    return placeShortName;
  }

  void setPlaceShortName(String placeShortName) {
    this.placeShortName = placeShortName;
  }

  String? getPlaceDesc() {
    return placeDesc;
  }

  void setPlaceDesc(String placeDesc) {
    this.placeDesc = placeDesc;
  }

  String? getPlaceAddress1() {
    return placeAddress1;
  }

  void setPlaceAddress1(String placeAddress1) {
    this.placeAddress1 = placeAddress1;
  }

  String? getPlaceAddress2() {
    return placeAddress2;
  }

  void setPlaceAddress2(String placeAddress2) {
    this.placeAddress2 = placeAddress2;
  }

  String? getEmployeeId() {
    return employeeId;
  }

  void setEmployeeId(String employeeId) {
    this.employeeId = employeeId;
  }

  String? getPlaceTel() {
    return placeTel;
  }

  void setPlaceTel(String placeTel) {
    this.placeTel = placeTel;
  }

  String? getPlaceTimezone() {
    return placeTimezone;
  }

  void setPlaceTimezone(String placeTimezone) {
    this.placeTimezone = placeTimezone;
  }

  String? getUseDst() {
    return useDst;
  }

  void setUseDst(String useDst) {
    this.useDst = useDst;
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

  bool? getSynchronizedYn() {
    return this.synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }
}

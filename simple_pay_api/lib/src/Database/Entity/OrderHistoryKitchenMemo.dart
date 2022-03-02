import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "OD1_ODR_HIS_KTCHN_MMO", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "ITM_SNO", "KTCHN_MMO_SNO"], unique: true)
])
class OrderHistoryKitchenMemo {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "ITM_SNO")
  int? itemSerialNumber;

  @ColumnInfo(name: "KTCHN_MMO_SNO")
  int? kitchenMemoSerialNumber;

  @ColumnInfo(name: "KTCHN_MMO_ID")
  String? kitchenMemoId;

  @ColumnInfo(name: "KTCHN_MMO")
  String? kitchenMemo;

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

  //todo @Generated(hash = 1092085594)
  // OrderHistoryKitchenMemo() {
  // }

  //todo @Generated(hash = 1661329370)
  OrderHistoryKitchenMemo(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      int? itemSerialNumber,
      int? kitchenMemoSerialNumber,
      String? kitchenMemoId,
      String? kitchenMemo,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.itemSerialNumber = itemSerialNumber;
    this.kitchenMemoSerialNumber = kitchenMemoSerialNumber;
    this.kitchenMemoId = kitchenMemoId;
    this.kitchenMemo = kitchenMemo;
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

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int? commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  int? getItemSerialNumber() {
    return itemSerialNumber;
  }

  void setItemSerialNumber(int? itemSerialNumber) {
    this.itemSerialNumber = itemSerialNumber;
  }

  int? getKitchenMemoSerialNumber() {
    return kitchenMemoSerialNumber;
  }

  void setKitchenMemoSerialNumber(int kitchenMemoSerialNumber) {
    this.kitchenMemoSerialNumber = kitchenMemoSerialNumber;
  }

  String? getKitchenMemoId() {
    return kitchenMemoId;
  }

  void setKitchenMemoId(String kitchenMemoId) {
    this.kitchenMemoId = kitchenMemoId;
  }

  String? getKitchenMemo() {
    return kitchenMemo;
  }

  void setKitchenMemo(String kitchenMemo) {
    this.kitchenMemo = kitchenMemo;
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
    NumberFormat df = NumberFormat("00000");
    id = commonDate! +
        "_" +
        commonSerialNumber.toString() +
        "_" +
        df.format(itemSerialNumber) +
        "_" +
        df.format(kitchenMemoSerialNumber);
  }

  bool isCustomMemo() {
    return KitchenMemo.CUSTOM_MEMO == (kitchenMemoId);
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

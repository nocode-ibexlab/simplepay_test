import 'package:floor/floor.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_EMP_BRK_HIS", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "EMP_BRK_SNO"], unique: true)
])
class EmployeeBreakHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "EMP_BRK_SNO")
  int? employeeBreakSerialNumber;

  @ColumnInfo(name: "BRK_START_TM")
  DateTime? breakStartTime;

  @ColumnInfo(name: "BRK_END_TM")
  DateTime? breakEndTime;

  @ColumnInfo(name: "TOT_BRK_TM")
  int? totalBreakTime;

  @ColumnInfo(name: "BRK_START_MMO")
  String? breakStartMemo;

  @ColumnInfo(name: "BRK_END_MMO")
  String? breakEndMemo;

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

  //todo @Generated(hash = 817226304)
  // EmployeeBreakHistory() {
  // }

  //todo @Generated(hash = 76085180)
  EmployeeBreakHistory(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      int? employeeBreakSerialNumber,
      DateTime? breakStartTime,
      DateTime? breakEndTime,
      int? totalBreakTime,
      String? breakStartMemo,
      String? breakEndMemo,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.employeeBreakSerialNumber = employeeBreakSerialNumber;
    this.breakStartTime = breakStartTime;
    this.breakEndTime = breakEndTime;
    this.totalBreakTime = totalBreakTime;
    this.breakStartMemo = breakStartMemo;
    this.breakEndMemo = breakEndMemo;
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

  void setCommonDate(String commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  int? getEmployeeBreakSerialNumber() {
    return employeeBreakSerialNumber;
  }

  void setEmployeeBreakSerialNumber(int employeeBreakSerialNumber) {
    this.employeeBreakSerialNumber = employeeBreakSerialNumber;
  }

  DateTime? getBreakStartTime() {
    return breakStartTime;
  }

  void setBreakStartTime(DateTime breakStartTime) {
    this.breakStartTime = breakStartTime;
  }

  DateTime? getBreakEndTime() {
    return breakEndTime;
  }

  void setBreakEndTime(DateTime breakEndTime) {
    this.breakEndTime = breakEndTime;
  }

  int? getTotalBreakTime() {
    return totalBreakTime;
  }

  void setTotalBreakTime(int totalBreakTime) {
    this.totalBreakTime = totalBreakTime;
  }

  String? getBreakStartMemo() {
    return breakStartMemo;
  }

  void setBreakStartMemo(String breakStartMemo) {
    this.breakStartMemo = breakStartMemo;
  }

  String? getBreakEndMemo() {
    return breakEndMemo;
  }

  void setBreakEndMemo(String breakEndMemo) {
    this.breakEndMemo = breakEndMemo;
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
    id = commonDate! +
        "_" +
        commonSerialNumber.toString() +
        "_" +
        employeeBreakSerialNumber.toString();
  }
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_EMP_WRK_HIS", indices: const [
  Index(value: ["COM_DT", "COM_SNO"], unique: true)
])
class EmployeeWorkHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "EMP_ID")
  String? employeeId;

  @ColumnInfo(name: "WRK_START_TM")
  DateTime? workStartTime;

  @ColumnInfo(name: "WRK_END_TM")
  DateTime? workEndTime;

  @ColumnInfo(name: "TOT_WRK_TM")
  int? totalWorkTime;

  @ColumnInfo(name: "WRK_START_MMO")
  String? workStartMemo;

  @ColumnInfo(name: "WRK_END_MMO")
  String? workEndMemo;

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

  //todo @ToOne(joinProperty = "employeeId")
  @ignore
  Employee? employee;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "commonDate", referencedName = "commonDate"),
  //         @JoinProperty(name = "commonSerialNumber", referencedName = "commonSerialNumber")
  // })
  @ignore
  List<EmployeeBreakHistory>? employeeBreakHistories;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1795870232)
  // transient EmployeeWorkHistoryDao myDao;

  //todo @Generated(hash = 1937818519)
  // transient String employee__resolvedKey;

  //todo @Generated(hash = 2040331390)
  // EmployeeWorkHistory() {
  // }

  //todo @Generated(hash = 419558542)
  EmployeeWorkHistory(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      String? employeeId,
      DateTime? workStartTime,
      DateTime? workEndTime,
      int? totalWorkTime,
      String? workStartMemo,
      String? workEndMemo,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.employeeId = employeeId;
    this.workStartTime = workStartTime;
    this.workEndTime = workEndTime;
    this.totalWorkTime = totalWorkTime;
    this.workStartMemo = workStartMemo;
    this.workEndMemo = workEndMemo;
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

  String? getEmployeeId() {
    return employeeId;
  }

  void setEmployeeId(String employeeId) {
    this.employeeId = employeeId;
  }

  DateTime? getWorkStartTime() {
    return workStartTime;
  }

  void setWorkStartTime(DateTime workStartTime) {
    this.workStartTime = workStartTime;
  }

  DateTime? getWorkEndTime() {
    return workEndTime;
  }

  void setWorkEndTime(DateTime workEndTime) {
    this.workEndTime = workEndTime;
  }

  int? getTotalWorkTime() {
    return totalWorkTime;
  }

  void setTotalWorkTime(int totalWorkTime) {
    this.totalWorkTime = totalWorkTime;
  }

  String? getWorkStartMemo() {
    return workStartMemo;
  }

  void setWorkStartMemo(String workStartMemo) {
    this.workStartMemo = workStartMemo;
  }

  String? getWorkEndMemo() {
    return workEndMemo;
  }

  void setWorkEndMemo(String workEndMemo) {
    this.workEndMemo = workEndMemo;
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
    id = commonDate! + "_" + commonSerialNumber.toString();
  }
//
// /** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 1807065322)
// Employee getEmployee() {
//     String __key = this.employeeId;
//     if (employee__resolvedKey == null || employee__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         EmployeeDao targetDao = daoSession.getEmployeeDao();
//         Employee employeeNew = targetDao.load(__key);
//         synchronized (this) {
//             employee = employeeNew;
//             employee__resolvedKey = __key;
//         }
//     }
//     return employee;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 2030934486)
// void setEmployee(Employee employee) {
//     synchronized (this) {
//         this.employee = employee;
//         employeeId = employee == null ? null : employee.getEmployeeId();
//         employee__resolvedKey = employeeId;
//     }
// }
//
// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 229195489)
// List<EmployeeBreakHistory> getEmployeeBreakHistories() {
//     if (employeeBreakHistories == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         EmployeeBreakHistoryDao targetDao = daoSession.getEmployeeBreakHistoryDao();
//         List<EmployeeBreakHistory> employeeBreakHistoriesNew = targetDao
//                 ._queryEmployeeWorkHistory_EmployeeBreakHistories(commonDate,
//                         commonSerialNumber);
//         synchronized (this) {
//             if (employeeBreakHistories == null) {
//                 employeeBreakHistories = employeeBreakHistoriesNew;
//             }
//         }
//     }
//     return employeeBreakHistories;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1575548180)
// synchronized void resetEmployeeBreakHistories() {
//     employeeBreakHistories = null;
// }
//
// /**
//  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#delete(Object)}.
//  * Entity must attached to an entity context.
//  */
// //todo @Generated(hash = 128553479)
// void delete() {
//     if (myDao == null) {
//         throw DaoException("Entity is detached from DAO context");
//     }
//     myDao.delete(this);
// }
//
// /**
//  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#refresh(Object)}.
//  * Entity must attached to an entity context.
//  */
// //todo @Generated(hash = 1942392019)
// void refresh() {
//     if (myDao == null) {
//         throw DaoException("Entity is detached from DAO context");
//     }
//     myDao.refresh(this);
// }
//
// /**
//  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#update(Object)}.
//  * Entity must attached to an entity context.
//  */
// //todo @Generated(hash = 713229351)
// void update() {
//     if (myDao == null) {
//         throw DaoException("Entity is detached from DAO context");
//     }
//     myDao.update(this);
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1055096692)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getEmployeeWorkHistoryDao() : null;
// }
}

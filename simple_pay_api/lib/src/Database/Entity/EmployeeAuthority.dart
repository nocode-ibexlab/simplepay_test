import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_EMP_AUTH")
class EmployeeAuthority {
  static const String PERM_OWNER = "000";
  static const String PERM_MANAGER = "100";
  static const String PERM_CASHIER = "300";
  static const String PERM_SERVER = "400";
  // static const String PERM_TAX_OFFICER = "999";

  @primaryKey
  @ColumnInfo(name: "EMP_AUTH_ID")
  String? employeeAuthorityId;

  @ColumnInfo(name: "EMP_ID")
  String? employeeId;

  @ColumnInfo(name: "CLI_AUTH_GRP_CD")
  String? clientAuthorityGroupCode;

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

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 259564818)
  // transient EmployeeAuthorityDao myDao;

  //todo @Generated(hash = 1534586985)
  EmployeeAuthority(
      {String? employeeAuthorityId,
      String? employeeId,
      String? clientAuthorityGroupCode,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.employeeAuthorityId = employeeAuthorityId;
    this.employeeId = employeeId;
    this.clientAuthorityGroupCode = clientAuthorityGroupCode;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 23158005)
  // EmployeeAuthority() {
  // }

  String? getEmployeeAuthorityId() {
    return this.employeeAuthorityId;
  }

  void setEmployeeAuthorityId(String employeeAuthorityId) {
    this.employeeAuthorityId = employeeAuthorityId;
  }

  String? getEmployeeId() {
    return this.employeeId;
  }

  void setEmployeeId(String employeeId) {
    this.employeeId = employeeId;
  }

  String? getClientAuthorityGroupCode() {
    return this.clientAuthorityGroupCode;
  }

  void setClientAuthorityGroupCode(String clientAuthorityGroupCode) {
    this.clientAuthorityGroupCode = clientAuthorityGroupCode;
  }

  String? getFirstRegistrantId() {
    return this.firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return this.firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return this.lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return this.lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return this.stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

//todo @Generated(hash = 1937818519)
// transient String employee__resolvedKey;

/** To-one relationship, resolved on first access. */
//todo @Generated(hash = 1807065322)
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
// //todo @Generated(hash = 1433489052)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getEmployeeAuthorityDao() : null;
// }

}

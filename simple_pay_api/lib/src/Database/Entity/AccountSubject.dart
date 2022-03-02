import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_ACC_SBJ")
class AccountSubject {
  @primaryKey
  @ColumnInfo(name: "ACC_SBJ_ID")
  String? accountSubjectId;

  @ColumnInfo(name: "I18N_TER_ID")
  String? i18nTermId;

  @ColumnInfo(name: "ACC_SBJ_NM")
  String? accountSubjectName;

  @ColumnInfo(name: "ACC_SBJ_USE_TP")
  String? accountSubjectUseType;

  @ColumnInfo(name: "ACC_SBJ_TP")
  String? accountSubjectType;

  @ColumnInfo(name: "FXD_EXP_YN")
  bool? fixedExpensesYn;

  @ColumnInfo(name: "RMK_A")
  String? remarkA;

  @ColumnInfo(name: "RMK_B")
  String? remarkB;

  @ColumnInfo(name: "RMK_C")
  String? remarkC;

  @ColumnInfo(name: "RMK_D")
  String? remarkD;

  @ColumnInfo(name: "RMK_E")
  String? remarkE;

  @ColumnInfo(name: "USR_INPT")
  String? userInput;

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

  //todo @ToOne(joinProperty = "i18nTermId")
  @ignore
  I18NTerm? i18NTerm;

  //todo @ToMany(referencedJoinProperty = "accountSubjectId")
  @ignore
  List<CashdrawCashInOutHistory>? cashdrawCashInOutHistories;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 994950891)
  // transient AccountSubjectDao myDao;

  //todo @Generated(hash = 954869768)
  // transient String i18NTerm__resolvedKey;

  //todo @Generated(hash = 355623752)
  // AccountSubject() {
  // }

  //todo @Generated(hash = 1840439517)
  AccountSubject(
      {String? accountSubjectId,
      String? i18nTermId,
      String? accountSubjectName,
      String? accountSubjectUseType,
      String? accountSubjectType,
      bool? fixedExpensesYn,
      String? remarkA,
      String? remarkB,
      String? remarkC,
      String? remarkD,
      String? remarkE,
      String? userInput,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.accountSubjectId = accountSubjectId;
    this.i18nTermId = i18nTermId;
    this.accountSubjectName = accountSubjectName;
    this.accountSubjectUseType = accountSubjectUseType;
    this.accountSubjectType = accountSubjectType;
    this.fixedExpensesYn = fixedExpensesYn;
    this.remarkA = remarkA;
    this.remarkB = remarkB;
    this.remarkC = remarkC;
    this.remarkD = remarkD;
    this.remarkE = remarkE;
    this.userInput = userInput;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getAccountSubjectId() {
    return accountSubjectId;
  }

  void setAccountSubjectId(String accountSubjectId) {
    this.accountSubjectId = accountSubjectId;
  }

  String? getI18nTermId() {
    return i18nTermId;
  }

  void setI18nTermId(String i18nTermId) {
    this.i18nTermId = i18nTermId;
  }

  String? getAccountSubjectName() {
    return accountSubjectName;
  }

  void setAccountSubjectName(String accountSubjectName) {
    this.accountSubjectName = accountSubjectName;
  }

  String? getAccountSubjectUseType() {
    return accountSubjectUseType;
  }

  void setAccountSubjectUseType(String accountSubjectUseType) {
    this.accountSubjectUseType = accountSubjectUseType;
  }

  String? getAccountSubjectType() {
    return accountSubjectType;
  }

  void setAccountSubjectType(String accountSubjectType) {
    this.accountSubjectType = accountSubjectType;
  }

  bool? getFixedExpensesYn() {
    return fixedExpensesYn;
  }

  void setFixedExpensesYn(bool fixedExpensesYn) {
    this.fixedExpensesYn = fixedExpensesYn;
  }

  String? getRemarkA() {
    return remarkA;
  }

  void setRemarkA(String remarkA) {
    this.remarkA = remarkA;
  }

  String? getRemarkB() {
    return remarkB;
  }

  void setRemarkB(String remarkB) {
    this.remarkB = remarkB;
  }

  String? getRemarkC() {
    return remarkC;
  }

  void setRemarkC(String remarkC) {
    this.remarkC = remarkC;
  }

  String? getRemarkD() {
    return remarkD;
  }

  void setRemarkD(String remarkD) {
    this.remarkD = remarkD;
  }

  String? getRemarkE() {
    return remarkE;
  }

  void setRemarkE(String remarkE) {
    this.remarkE = remarkE;
  }

  String? getUserInput() {
    return userInput;
  }

  void setUserInput(String userInput) {
    this.userInput = userInput;
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
//
// /** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 654264843)
// I18NTerm getI18NTerm() {
//     String __key = this.i18nTermId;
//     if (i18NTerm__resolvedKey == null || i18NTerm__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         I18NTermDao targetDao = daoSession.getI18NTermDao();
//         I18NTerm i18NTermNew = targetDao.load(__key);
//         synchronized (this) {
//             i18NTerm = i18NTermNew;
//             i18NTerm__resolvedKey = __key;
//         }
//     }
//     return i18NTerm;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 355515067)
// void setI18NTerm(I18NTerm i18NTerm) {
//     synchronized (this) {
//         this.i18NTerm = i18NTerm;
//         i18nTermId = i18NTerm == null ? null : i18NTerm.getI18nTermId();
//         i18NTerm__resolvedKey = i18nTermId;
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
// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 1920591316)
// List<CashdrawCashInOutHistory> getCashdrawCashInOutHistories() {
//     if (cashdrawCashInOutHistories == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         CashdrawCashInOutHistoryDao targetDao = daoSession
//                 .getCashdrawCashInOutHistoryDao();
//         List<CashdrawCashInOutHistory> cashdrawCashInOutHistoriesNew = targetDao
//                 ._queryAccountSubject_CashdrawCashInOutHistories(accountSubjectId);
//         synchronized (this) {
//             if (cashdrawCashInOutHistories == null) {
//                 cashdrawCashInOutHistories = cashdrawCashInOutHistoriesNew;
//             }
//         }
//     }
//     return cashdrawCashInOutHistories;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 728576849)
// synchronized void resetCashdrawCashInOutHistories() {
//     cashdrawCashInOutHistories = null;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1828026182)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getAccountSubjectDao() : null;
// }
}

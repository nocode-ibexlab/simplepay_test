import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_STR_TRM_BAS_DAT")
class StoreTerminalBasicData {
  @primaryKey
  @ColumnInfo(name: "STR_TRM_BAS_DAT_ID")
  String? storeTerminalBasicDataId;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "I18N_TER_ID")
  String? i18nTermId;

  @ColumnInfo(name: "STR_TRM_BAS_DAT_CD_NM")
  String? storeTerminalBasicDataCodeName;

  @ColumnInfo(name: "STR_TRM_BAS_DAT_NM")
  String? storeTerminalBasicDataName;

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

  //todo @ToMany(referencedJoinProperty = "storeTerminalBasicDataId")
  @ignore
  List<StoreTerminalBasicDataItem>? storeTerminalBasicDataItems;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1145470892)
  // transient StoreTerminalBasicDataDao myDao;

  //todo @Generated(hash = 1598610756)
  StoreTerminalBasicData(
      {String? storeTerminalBasicDataId,
      String? storeTerminalId,
      String? i18nTermId,
      String? storeTerminalBasicDataCodeName,
      String? storeTerminalBasicDataName,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.storeTerminalBasicDataId = storeTerminalBasicDataId;
    this.storeTerminalId = storeTerminalId;
    this.i18nTermId = i18nTermId;
    this.storeTerminalBasicDataCodeName = storeTerminalBasicDataCodeName;
    this.storeTerminalBasicDataName = storeTerminalBasicDataName;
    this.hidingYn = hidingYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 1668568819)
  // StoreTerminalBasicData() {
  // }

  String? getStoreTerminalBasicDataId() {
    return this.storeTerminalBasicDataId;
  }

  void setStoreTerminalBasicDataId(String storeTerminalBasicDataId) {
    this.storeTerminalBasicDataId = storeTerminalBasicDataId;
  }

  String? getStoreTerminalId() {
    return this.storeTerminalId;
  }

  void setStoreTerminalId(String storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getI18nTermId() {
    return this.i18nTermId;
  }

  void setI18nTermId(String i18nTermId) {
    this.i18nTermId = i18nTermId;
  }

  String? getStoreTerminalBasicDataCodeName() {
    return this.storeTerminalBasicDataCodeName;
  }

  void setStoreTerminalBasicDataCodeName(
      String storeTerminalBasicDataCodeName) {
    this.storeTerminalBasicDataCodeName = storeTerminalBasicDataCodeName;
  }

  String? getStoreTerminalBasicDataName() {
    return this.storeTerminalBasicDataName;
  }

  void setStoreTerminalBasicDataName(String storeTerminalBasicDataName) {
    this.storeTerminalBasicDataName = storeTerminalBasicDataName;
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

  bool? getHidingYn() {
    return this.hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
  }

/**
 * To-many relationship, resolved on first access (and after reset).
 * Changes to to-many relations are not persisted, make changes to the target entity.
 */
//todo @Generated(hash = 1299312778)
// List<StoreTerminalBasicDataItem> getStoreTerminalBasicDataItems() {
//     if (storeTerminalBasicDataItems == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         StoreTerminalBasicDataItemDao targetDao = daoSession
//                 .getStoreTerminalBasicDataItemDao();
//         List<StoreTerminalBasicDataItem> storeTerminalBasicDataItemsNew = targetDao
//                 ._queryStoreTerminalBasicData_StoreTerminalBasicDataItems(
//                         storeTerminalBasicDataId);
//         synchronized (this) {
//             if (storeTerminalBasicDataItems == null) {
//                 storeTerminalBasicDataItems = storeTerminalBasicDataItemsNew;
//             }
//         }
//     }
//     return storeTerminalBasicDataItems;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1685139212)
// synchronized void resetStoreTerminalBasicDataItems() {
//     storeTerminalBasicDataItems = null;
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
// //todo @Generated(hash = 1906157069)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getStoreTerminalBasicDataDao() : null;
// }

}

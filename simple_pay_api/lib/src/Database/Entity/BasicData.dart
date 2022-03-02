import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_BAS_DAT")
class BasicData {
  @primaryKey
  @ColumnInfo(name: "BAS_DAT_ID")
  String? basicDataId;

  @ColumnInfo(name: "BAS_DAT_CD_NM")
  String? basicDataCodeName;

  @ColumnInfo(name: "BAS_DAT_NM")
  String? basicDataName;

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

  //todo @ToMany(referencedJoinProperty = "basicDataId")
  @ignore
  List<BasicDataItem>? basicDataItems;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1161702438)
  // transient BasicDataDao myDao;

  //todo @Generated(hash = 629758079)
  // BasicData() {
  // }

  //todo @Generated(hash = 372160201)
  BasicData(
      {String? basicDataId,
      String? basicDataCodeName,
      String? basicDataName,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.basicDataId = basicDataId;
    this.basicDataCodeName = basicDataCodeName;
    this.basicDataName = basicDataName;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getBasicDataId() {
    return basicDataId;
  }

  void setBasicDataId(String basicDataId) {
    this.basicDataId = basicDataId;
  }

  String? getBasicDataCodeName() {
    return basicDataCodeName;
  }

  void setBasicDataCodeName(String basicDataCodeName) {
    this.basicDataCodeName = basicDataCodeName;
  }

  String? getBasicDataName() {
    return basicDataName;
  }

  void setBasicDataName(String basicDataName) {
    this.basicDataName = basicDataName;
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

// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 280751958)
// List<BasicDataItem> getBasicDataItems() {
//     if (basicDataItems == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         BasicDataItemDao targetDao = daoSession.getBasicDataItemDao();
//         List<BasicDataItem> basicDataItemsNew = targetDao
//                 ._queryBasicData_BasicDataItems(basicDataId);
//         synchronized (this) {
//             if (basicDataItems == null) {
//                 basicDataItems = basicDataItemsNew;
//             }
//         }
//     }
//     return basicDataItems;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1029956687)
// synchronized void resetBasicDataItems() {
//     basicDataItems = null;
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
// //todo @Generated(hash = 123933185)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getBasicDataDao() : null;
// }
}

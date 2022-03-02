import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_TAB_GRP")
class TableGroup {
  @primaryKey
  @ColumnInfo(name: "TAB_GRP_ID")
  String? tableGroupId;

  @ColumnInfo(name: "TAB_GRP_NM")
  String? tableGroupName;

  @ColumnInfo(name: "LOC_X")
  int? locationX;

  @ColumnInfo(name: "LOC_Y")
  int? locationY;

  @ColumnInfo(name: "LOC_Z")
  int? locationZ;

  @ColumnInfo(name: "BG_IMG_NM")
  String? backgroundImageName;

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

  //todo @ToMany(referencedJoinProperty = "tableGroupId")
  @ignore
  List<Table>? tables;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 883175603)
  // transient TableGroupDao myDao;

  //todo @Generated(hash = 1895168193)
  // TableGroup() {
  // }

  //todo @Generated(hash = 2016986972)
  TableGroup(
      {String? tableGroupId,
      String? tableGroupName,
      int? locationX,
      int? locationY,
      int? locationZ,
      String? backgroundImageName,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.tableGroupId = tableGroupId;
    this.tableGroupName = tableGroupName;
    this.locationX = locationX;
    this.locationY = locationY;
    this.locationZ = locationZ;
    this.backgroundImageName = backgroundImageName;
    this.hidingYn = hidingYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getTableGroupId() {
    return tableGroupId;
  }

  void setTableGroupId(String tableGroupId) {
    this.tableGroupId = tableGroupId;
  }

  String? getTableGroupName() {
    return tableGroupName;
  }

  void setTableGroupName(String tableGroupName) {
    this.tableGroupName = tableGroupName;
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

  void setLocationY(int locationY) {
    this.locationY = locationY;
  }

  int? getLocationZ() {
    return locationZ;
  }

  void setLocationZ(int locationZ) {
    this.locationZ = locationZ;
  }

  String? getBackgroundImageName() {
    return backgroundImageName;
  }

  void setBackgroundImageName(String backgroundImageName) {
    this.backgroundImageName = backgroundImageName;
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

/**
 * To-many relationship, resolved on first access (and after reset).
 * Changes to to-many relations are not persisted, make changes to the target entity.
 */
//todo @Generated(hash = 553978389)
// List<Table> getTables() {
//     if (tables == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableDao targetDao = daoSession.getTableDao();
//         List<Table> tablesNew = targetDao._queryTableGroup_Tables(tableGroupId);
//         synchronized (this) {
//             if (tables == null) {
//                 tables = tablesNew;
//             }
//         }
//     }
//     return tables;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 715624335)
// synchronized void resetTables() {
//     tables = null;
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
// //todo @Generated(hash = 1674217357)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getTableGroupDao() : null;
// }
}

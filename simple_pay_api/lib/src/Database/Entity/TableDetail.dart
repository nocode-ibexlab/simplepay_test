import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/Table.dart' as db;

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_TAB_DTL")
class TableDetail {
  @primaryKey
  @ColumnInfo(name: "TAB_ID")
  String? tableId;

  @ColumnInfo(name: "SEAT_CNT")
  int? seatCount;

  @ColumnInfo(name: "SMK_PSBL_YN")
  bool? smokingPossibleYn;

  @ColumnInfo(name: "WIN_YN")
  bool? windowYn;

  @ColumnInfo(name: "BTH_YN")
  bool? boothYn;

  @ColumnInfo(name: "PRVCY_PRTCT_YN")
  bool? privacyProtectionYn;

  @ColumnInfo(name: "CHRGD_SVR_ID")
  String? chargedServerId;

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

  //todo @ToOne(joinProperty = "tableId")
  @ignore
  db.Table? Table;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 323091061)
  // transient TableDetailDao myDao;

  //todo @Generated(hash = 1133527380)
  // transient String Table__resolvedKey;

  //todo @Generated(hash = 1292974705)
  // TableDetail() {
  // }

  //todo @Generated(hash = 1870460001)
  TableDetail(
      {String? tableId,
      int? seatCount,
      bool? smokingPossibleYn,
      bool? windowYn,
      bool? boothYn,
      bool? privacyProtectionYn,
      String? chargedServerId,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.tableId = tableId;
    this.seatCount = seatCount;
    this.smokingPossibleYn = smokingPossibleYn;
    this.windowYn = windowYn;
    this.boothYn = boothYn;
    this.privacyProtectionYn = privacyProtectionYn;
    this.chargedServerId = chargedServerId;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getTableId() {
    return tableId;
  }

  void setTableId(String tableId) {
    this.tableId = tableId;
  }

  int? getSeatCount() {
    return seatCount;
  }

  void setSeatCount(int seatCount) {
    this.seatCount = seatCount;
  }

  bool? getSmokingPossibleYn() {
    return smokingPossibleYn;
  }

  void setSmokingPossibleYn(bool smokingPossibleYn) {
    this.smokingPossibleYn = smokingPossibleYn;
  }

  bool? getWindowYn() {
    return windowYn;
  }

  void setWindowYn(bool windowYn) {
    this.windowYn = windowYn;
  }

  bool? getBoothYn() {
    return boothYn;
  }

  void setBoothYn(bool boothYn) {
    this.boothYn = boothYn;
  }

  bool? getPrivacyProtectionYn() {
    return privacyProtectionYn;
  }

  void setPrivacyProtectionYn(bool privacyProtectionYn) {
    this.privacyProtectionYn = privacyProtectionYn;
  }

  String? getChargedServerId() {
    return chargedServerId;
  }

  void setChargedServerId(String chargedServerId) {
    this.chargedServerId = chargedServerId;
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

/** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 903868781)
// Table getTable() {
//     String __key = this.tableId;
//     if (Table__resolvedKey == null || Table__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableDao targetDao = daoSession.getTableDao();
//         Table TableNew = targetDao.load(__key);
//         synchronized (this) {
//             Table = TableNew;
//             Table__resolvedKey = __key;
//         }
//     }
//     return Table;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1093047180)
// void setTable(Table Table) {
//     synchronized (this) {
//         this.Table = Table;
//         tableId = Table == null ? null : Table.getTableId();
//         Table__resolvedKey = tableId;
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
// //todo @Generated(hash = 308404286)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getTableDetailDao() : null;
// }
}

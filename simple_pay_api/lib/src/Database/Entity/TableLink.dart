import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_TAB_LNK", indices: const [
  Index(value: ["TAB_ID", "LNKD_TAB_ID"], unique: true)
])
class TableLink {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "TAB_ID")
  String? tableId;

  @ColumnInfo(name: "LNKD_TAB_ID")
  String? linkedTableId;

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
  Table? parentTableInfo;

  //todo @ToOne(joinProperty = "linkedTableId")
  @ignore
  Table? childTableInfo;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 860170742)
  // transient TableLinkDao myDao;

  //todo @Generated(hash = 1590135128)
  // transient String parentTableInfo__resolvedKey;

  //todo @Generated(hash = 989117875)
  // transient String childTableInfo__resolvedKey;

  //todo @Generated(hash = 2026430997)
  // TableLink() {
  // }

  // TableLink(String id) {
  //     this.id = id;
  // }

  //todo @Generated(hash = 804240838)
  TableLink(
      {String? id,
      String? tableId,
      String? linkedTableId,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.tableId = tableId;
    this.linkedTableId = linkedTableId;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getTableId() {
    return tableId;
  }

  void setTableId(String? tableId) {
    this.tableId = tableId;
  }

  String? getLinkedTableId() {
    return linkedTableId;
  }

  void setLinkedTableId(String linkedTableId) {
    this.linkedTableId = linkedTableId;
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

  String? getId() {
    return this.id;
  }

  void setId(String id) {
    this.id = id;
  }

  void createId() {
    id = tableId! + linkedTableId!;
  }

/** To-one relationship, resolved on first access. */
//todo @Generated(hash = 1805161969)
// Table getParentTableInfo() {
//     String __key = this.tableId;
//     if (parentTableInfo__resolvedKey == null
//             || parentTableInfo__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableDao targetDao = daoSession.getTableDao();
//         Table parentTableInfoNew = targetDao.load(__key);
//         synchronized (this) {
//             parentTableInfo = parentTableInfoNew;
//             parentTableInfo__resolvedKey = __key;
//         }
//     }
//     return parentTableInfo;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 301259797)
// void setParentTableInfo(Table parentTableInfo) {
//     synchronized (this) {
//         this.parentTableInfo = parentTableInfo;
//         tableId = parentTableInfo == null ? null : parentTableInfo.getTableId();
//         parentTableInfo__resolvedKey = tableId;
//     }
// }
//
// /** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 615527338)
// Table getChildTableInfo() {
//     String __key = this.linkedTableId;
//     if (childTableInfo__resolvedKey == null
//             || childTableInfo__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableDao targetDao = daoSession.getTableDao();
//         Table childTableInfoNew = targetDao.load(__key);
//         synchronized (this) {
//             childTableInfo = childTableInfoNew;
//             childTableInfo__resolvedKey = __key;
//         }
//     }
//     return childTableInfo;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 18565878)
// void setChildTableInfo(Table childTableInfo) {
//     synchronized (this) {
//         this.childTableInfo = childTableInfo;
//         linkedTableId = childTableInfo == null ? null
//                 : childTableInfo.getTableId();
//         childTableInfo__resolvedKey = linkedTableId;
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
// //todo @Generated(hash = 2123375557)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getTableLinkDao() : null;
// }
}

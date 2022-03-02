import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_TAB")
class Table {
  @primaryKey
  @ColumnInfo(name: "TAB_ID")
  String? tableId;

  @ColumnInfo(name: "SRV_TAB_ID")
  String? serverTableId;

  @ColumnInfo(name: "TAB_GRP_ID")
  String? tableGroupId;

  @ColumnInfo(name: "TAB_NM")
  String? tableName;

  @ColumnInfo(name: "LOC_X")
  int? locationX;

  @ColumnInfo(name: "LOC_Y")
  int? locationY;

  @ColumnInfo(name: "WID")
  int? width;

  @ColumnInfo(name: "HGHT")
  int? height;

  @ColumnInfo(name: "TAB_IMG_NM")
  String? tableImageName;

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

  //todo @ToOne(joinProperty = "tableGroupId")
  @ignore
  TableGroup? tableGroup;

  //todo @ToOne(joinProperty = "tableId")
  @ignore
  TableDetail? tableDetail;

  //todo @ToMany(referencedJoinProperty = "tableId")
  @ignore
  List<TableLink>? tableLinksChild;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "tableId", referencedName = "linkedTableId")
  // })
  @ignore
  List<TableLink>? TableLinksParent;

  //todo @ToMany(referencedJoinProperty = "tableId")
  @ignore
  List<SalesHistory>? saleHs;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1200932703)
  // transient TableDao myDao;

  //todo @Generated(hash = 979462502)
  // transient String tableGroup__resolvedKey;

  //todo @Generated(hash = 15576435)
  // transient String tableDetail__resolvedKey;

  //todo @Generated(hash = 752389689)

  //todo @Generated(hash = 1292684393)
  Table(
      {String? tableId,
      String? serverTableId,
      String? tableGroupId,
      String? tableName,
      int? locationX,
      int? locationY,
      int? width,
      int? height,
      String? tableImageName,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.tableId = tableId;
    this.serverTableId = serverTableId;
    this.tableGroupId = tableGroupId;
    this.tableName = tableName;
    this.locationX = locationX;
    this.locationY = locationY;
    this.width = width;
    this.height = height;
    this.tableImageName = tableImageName;
    this.hidingYn = hidingYn;
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

  String? getServerTableId() {
    return serverTableId;
  }

  void setServerTableId(String serverTableId) {
    this.serverTableId = serverTableId;
  }

  String? getTableGroupId() {
    return tableGroupId;
  }

  void setTableGroupId(String tableGroupId) {
    this.tableGroupId = tableGroupId;
  }

  String? getTableName() {
    return tableName;
  }

  void setTableName(String tableName) {
    this.tableName = tableName;
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

  int? getWidth() {
    return width;
  }

  void setWidth(int width) {
    this.width = width;
  }

  int? getHeight() {
    return height;
  }

  void setHeight(int height) {
    this.height = height;
  }

  String? getTableImageName() {
    return tableImageName;
  }

  void setTableImageName(String tableImageName) {
    this.tableImageName = tableImageName;
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

  Future<List<OrderHistory>> getOrderHistories() {
    return Common.db!.orderHistoryDao.findAllByTableId(tableId!);
  }

  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 566401309)
  // synchronized void resetOrderHistories() {
  //     orderHistories = null;
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

  Future<TableProcess?> getTableProcess() {
    return Common.db!.tableProcessDao.findById(tableId!);
  }

// /** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 1339509315)
// TableGroup getTableGroup() {
//     String __key = this.tableGroupId;
//     if (tableGroup__resolvedKey == null || tableGroup__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableGroupDao targetDao = daoSession.getTableGroupDao();
//         TableGroup tableGroupNew = targetDao.load(__key);
//         synchronized (this) {
//             tableGroup = tableGroupNew;
//             tableGroup__resolvedKey = __key;
//         }
//     }
//     return tableGroup;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1140792662)
// void setTableGroup(TableGroup tableGroup) {
//     synchronized (this) {
//         this.tableGroup = tableGroup;
//         tableGroupId = tableGroup == null ? null : tableGroup.getTableGroupId();
//         tableGroup__resolvedKey = tableGroupId;
//     }
// }
//
// /** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 1783467787)
// TableDetail getTableDetail() {
//     String __key = this.tableId;
//     if (tableDetail__resolvedKey == null || tableDetail__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableDetailDao targetDao = daoSession.getTableDetailDao();
//         TableDetail tableDetailNew = targetDao.load(__key);
//         synchronized (this) {
//             tableDetail = tableDetailNew;
//             tableDetail__resolvedKey = __key;
//         }
//     }
//     return tableDetail;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1653779139)
// void setTableDetail(TableDetail tableDetail) {
//     synchronized (this) {
//         this.tableDetail = tableDetail;
//         tableId = tableDetail == null ? null : tableDetail.getTableId();
//         tableDetail__resolvedKey = tableId;
//     }
// }
//
// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 839524846)
// List<TableLink> getTableLinksChild() {
//     if (tableLinksChild == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableLinkDao targetDao = daoSession.getTableLinkDao();
//         List<TableLink> tableLinksChildNew = targetDao._queryTable_TableLinksChild(tableId);
//         synchronized (this) {
//             if (tableLinksChild == null) {
//                 tableLinksChild = tableLinksChildNew;
//             }
//         }
//     }
//     return tableLinksChild;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1163155069)
// synchronized void resetTableLinksChild() {
//     tableLinksChild = null;
// }
//
// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 1548883798)
// List<TableLink> getTableLinksParent() {
//     if (TableLinksParent == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableLinkDao targetDao = daoSession.getTableLinkDao();
//         List<TableLink> TableLinksParentNew = targetDao._queryTable_TableLinksParent(tableId);
//         synchronized (this) {
//             if (TableLinksParent == null) {
//                 TableLinksParent = TableLinksParentNew;
//             }
//         }
//     }
//     return TableLinksParent;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1752074995)
// synchronized void resetTableLinksParent() {
//     TableLinksParent = null;
// }
//
// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 150439057)
// List<SalesHistory> getSaleHs() {
//     if (saleHs == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         SalesHistoryDao targetDao = daoSession.getSalesHistoryDao();
//         List<SalesHistory> saleHsNew = targetDao._queryTable_SaleHs(tableId);
//         synchronized (this) {
//             if (saleHs == null) {
//                 saleHs = saleHsNew;
//             }
//         }
//     }
//     return saleHs;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 40168958)
// synchronized void resetSaleHs() {
//     saleHs = null;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1052514995)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getTableDao() : null;
// }
}

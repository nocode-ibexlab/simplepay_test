import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

@Entity(tableName: "ST1_TAB_PROC")
class TableProcess {
  static int ORDER_COMPLETE_STATE = 1;
  static int SERVING_COMPLETE_STATE = 2;
  static int PAYMENT_COMPLETE_STATE = 3;
  static int CHECK_IN_STATE = 4;

  @primaryKey
  @ColumnInfo(name: "TAB_ID")
  String? tableId;

  @ColumnInfo(name: "TAB_PROC_STAT_CD")
  int? tableProcessStateCode;

  @ColumnInfo(name: "VIP_YN")
  bool? vipYn;

  //todo @ToOne(joinProperty = "tableId")
  @ignore
  Table? table;

  //todo @ToOne(joinProperty = "tableId")
  @ignore
  OrderHistory? orderHistory;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1501870599)
  // transient TableProcessDao myDao;

  //todo @Generated(hash = 579284854)
  // transient String table__resolvedKey;
  //todo @Generated(hash = 164931143)
  // transient String orderHistory__resolvedKey;

  //todo @Generated(hash = 1644038519)
  // TableProcess() {
  // }

  //todo @Generated(hash = 588689031)
  TableProcess({String? tableId, int? tableProcessStateCode, bool? vipYn}) {
    this.tableId = tableId;
    this.tableProcessStateCode = tableProcessStateCode;
    this.vipYn = vipYn;
  }

  String? getTableId() {
    return tableId;
  }

  void setTableId(String? tableId) {
    this.tableId = tableId;
  }

  int? getTableProcessStateCode() {
    return tableProcessStateCode;
  }

  void setTableProcessStateCode(int tableProcessStateCode) {
    this.tableProcessStateCode = tableProcessStateCode;
  }

  bool? getVipYn() {
    return vipYn;
  }

  void setVipYn(bool vipYn) {
    this.vipYn = vipYn;
  }

/** To-one relationship, resolved on first access. */
//todo @Generated(hash = 2086210944)
// Table getTable() {
//     String __key = this.tableId;
//     if (table__resolvedKey == null || table__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         TableDao targetDao = daoSession.getTableDao();
//         Table tableNew = targetDao.load(__key);
//         synchronized (this) {
//             table = tableNew;
//             table__resolvedKey = __key;
//         }
//     }
//     return table;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 437348300)
// void setTable(Table table) {
//     synchronized (this) {
//         this.table = table;
//         tableId = table == null ? null : table.getTableId();
//         table__resolvedKey = tableId;
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
// /** To-one relationship, resolved on first access. */
// //todo @Generated(hash = 551447206)
// OrderHistory getOrderHistory() {
//     String __key = this.tableId;
//     if (orderHistory__resolvedKey == null || orderHistory__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         OrderHistoryDao targetDao = daoSession.getOrderHistoryDao();
//         OrderHistory orderHistoryNew = targetDao.load(__key);
//         synchronized (this) {
//             orderHistory = orderHistoryNew;
//             orderHistory__resolvedKey = __key;
//         }
//     }
//     return orderHistory;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 685575314)
// void setOrderHistory(OrderHistory orderHistory) {
//     synchronized (this) {
//         this.orderHistory = orderHistory;
//         tableId = orderHistory == null ? null : orderHistory.getId();
//         orderHistory__resolvedKey = tableId;
//     }
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 347188841)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getTableProcessDao() : null;
// }
}

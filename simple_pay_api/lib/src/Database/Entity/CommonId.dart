import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_COM_ID", indices: const [
  Index(value: ["COM_DT", "COM_SNO"], unique: true)
])
class CommonId {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "commonDate", referencedName = "commonDate"),
  //         @JoinProperty(name = "commonSerialNumber", referencedName = "commonSerialNumber")
  // })
  @ignore
  List<OrderHistory>? orderHistories;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 190403674)
  // transient CommonIdDao myDao;

  //todo @Generated(hash = 383708897)
  // CommonId() {
  // }

  //todo @Generated(hash = 2146238590)
  CommonId(
      [String? id = "", String? commonDate = "", int? commonSerialNumber = 0]) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
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

  void createId() {
    id = commonDate! + "_" + commonSerialNumber.toString();
  }

/**
 * To-many relationship, resolved on first access (and after reset).
 * Changes to to-many relations are not persisted, make changes to the target entity.
 */
//todo @Generated(hash = 609150568)
// List<OrderHistory> getOrderHistories() {
//     if (orderHistories == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         OrderHistoryDao targetDao = daoSession.getOrderHistoryDao();
//         List<OrderHistory> orderHistoriesNew = targetDao
//                 ._queryCommonId_OrderHistories(commonDate, commonSerialNumber);
//         synchronized (this) {
//             if (orderHistories == null) {
//                 orderHistories = orderHistoriesNew;
//             }
//         }
//     }
//     return orderHistories;
// }
//
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
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1332488551)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getCommonIdDao() : null;
// }
}

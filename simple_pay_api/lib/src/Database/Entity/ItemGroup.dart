import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "IT1_ITM_GRP")
class ItemGroup {
  static String ITEM_GROUP_TYPE_NORMAL = "S"; //일반 품목 그룹
  static String ITEM_GROUP_TYPE_FOOD = "I"; //식자재 품목 그룹
  static String ITEM_GROUP_TYPE_DISCOUNT = "D";
  static String ITEM_GROUP_TYPE_CAT = "C";
  static String ITEM_GROUP_TYPE_VOID = "V";
  @primaryKey
  @ColumnInfo(name: "ITM_GRP_ID")
  String? itemGroupId;

  @ColumnInfo(name: "UPR_ITM_GRP_ID")
  String? upperItemGroupId;

  @ColumnInfo(name: "ITM_GRP_NM")
  String? itemGroupName;

  @ColumnInfo(name: "ITM_GRP_TP_CD")
  String? itemGroupTypeCode;

  @ColumnInfo(name: "OPR_TP_CD")
  String? operationTypeCode;

  @ColumnInfo(name: "HIDE_YN")
  bool? hidingYn;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

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

  //todo @ToMany(referencedJoinProperty = "itemGroupId")
  @ignore
  List<Item>? items;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 7492365)
  // transient ItemGroupDao myDao;

  //todo @Generated(hash = 2102631127)
  // ItemGroup() {
  // }

  //todo @Generated(hash = 1389586467)
  ItemGroup(
      {String? itemGroupId,
      String? upperItemGroupId,
      String? itemGroupName,
      String? itemGroupTypeCode,
      String? operationTypeCode,
      bool? hidingYn,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.itemGroupId = itemGroupId;
    this.upperItemGroupId = upperItemGroupId;
    this.itemGroupName = itemGroupName;
    this.itemGroupTypeCode = itemGroupTypeCode;
    this.operationTypeCode = operationTypeCode;
    this.hidingYn = hidingYn;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getItemGroupId() {
    return itemGroupId;
  }

  void setItemGroupId(String itemGroupId) {
    this.itemGroupId = itemGroupId;
  }

  void createId() {
    // String id;
    // BasicKeyGenerator basic_id = BasicKeyGenerator();
    //     id = basic_id.generate(BasicKeyGenerator.TableEnum.ItemGroup, "ItemGroup").toString();
    //     setItemGroupId(id);
    print("please check ItemGroup createId");
  }

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());
    synchronizedYn = false;

    if (firstRegistrantId == null) {
      // firstRegistrantId = BaseBL.loginId;
      firstRegistrantId = BaseBL.employeeId;
    }

    if (firstRegistrationDatetime == null) {
      firstRegistrationDatetime = now;
    }

    // lastReviserId = BaseBL.loginId;
    lastReviserId = BaseBL.employeeId;
    lastRevisionDatetime = now;

    if (stateCode == null) {
      stateCode = "00";
    }
  }

  String? getUpperItemGroupId() {
    return upperItemGroupId;
  }

  void setUpperItemGroupId(String upperItemGroupId) {
    this.upperItemGroupId = upperItemGroupId;
  }

  String? getItemGroupName() {
    return itemGroupName;
  }

  void setItemGroupName(String nameInDb) {
    this.itemGroupName = nameInDb;
  }

  String? getItemGroupTypeCode() {
    return itemGroupTypeCode;
  }

  void setItemGroupTypeCode(String itemGroupTypeCode) {
    this.itemGroupTypeCode = itemGroupTypeCode;
  }

  String? getOperationTypeCode() {
    return operationTypeCode;
  }

  void setOperationTypeCode(String operationTypeCode) {
    this.operationTypeCode = operationTypeCode;
  }

  bool? getHidingYn() {
    return hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
  }

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
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
//todo @Generated(hash = 45840722)
// List<Item> getItems() {
//     if (items == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         ItemDao targetDao = daoSession.getItemDao();
//         List<Item> itemsNew = targetDao._queryItemGroup_Items(itemGroupId);
//         synchronized (this) {
//             if (items == null) {
//                 items = itemsNew;
//             }
//         }
//     }
//     return items;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1727286264)
// synchronized void resetItems() {
//     items = null;
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
// //todo @Generated(hash = 641568481)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getItemGroupDao() : null;
// }
}

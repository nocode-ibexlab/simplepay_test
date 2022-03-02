import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_KTCHN_MMO_GRP")
class KitchenMemoGroup {
  static String CUSTOM_MEMO_GRP = "CUSTOM_MEMO_GRP";

  @primaryKey
  @ColumnInfo(name: "KTCHN_MMO_GRP_ID")
  String? kitchenMemoGroupId;

  String? getKitchenMemoGroupId() {
    return kitchenMemoGroupId;
  }

  void setKitchenMemoGroupId(String kitchenMemoGroupId) {
    this.kitchenMemoGroupId = kitchenMemoGroupId;
  }

  @ColumnInfo(name: "KTCHN_MMO_GRP_NM")
  String? kitchenMemoGroupName;

  String? getKitchenMemoGroupName() {
    return kitchenMemoGroupName;
  }

  void setKitchenMemoGroupName(String kitchenMemoGroupName) {
    this.kitchenMemoGroupName = kitchenMemoGroupName;
  }

  @ColumnInfo(name: "HIDE_YN")
  bool? hidingYn;

  bool? getHidingYn() {
    return hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
  }

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  //todo @ToMany(referencedJoinProperty = "kitchenMemoGroupId")
  @ignore
  List<KitchenMemo>? kitchenMemos;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1174266060)
  // transient KitchenMemoGroupDao myDao;

  //todo @Generated(hash = 1695782117)
  // KitchenMemoGroup() {
  // }

  //todo @Generated(hash = 1134485248)
  KitchenMemoGroup(
      {String? kitchenMemoGroupId,
      String? kitchenMemoGroupName,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.kitchenMemoGroupId = kitchenMemoGroupId;
    this.kitchenMemoGroupName = kitchenMemoGroupName;
    this.hidingYn = hidingYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
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
  //todo @Generated(hash = 1454955982)
  // List<KitchenMemo> getKitchenMemos() {
  //     if (kitchenMemos == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         KitchenMemoDao targetDao = daoSession.getKitchenMemoDao();
  //         List<KitchenMemo> kitchenMemosNew = targetDao
  //                 ._queryKitchenMemoGroup_KitchenMemos(kitchenMemoGroupId);
  //         synchronized (this) {
  //             if (kitchenMemos == null) {
  //                 kitchenMemos = kitchenMemosNew;
  //             }
  //         }
  //     }
  //     return kitchenMemos;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1037523935)
  // synchronized void resetKitchenMemos() {
  //     kitchenMemos = null;
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

  void setCustomMemo(String name) {
    kitchenMemoGroupId = CUSTOM_MEMO_GRP;
    kitchenMemoGroupName = name;
  }

  bool isCustomMemo() {
    return CUSTOM_MEMO_GRP == (kitchenMemoGroupId);
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 548359523)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getKitchenMemoGroupDao() : null;
// }
}

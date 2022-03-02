import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_KTCHN_MMO")
class KitchenMemo {
  static String CUSTOM_MEMO = "CUSTOM_MEMO";

  @primaryKey
  @ColumnInfo(name: "KTCHN_MMO_ID")
  String? kitchenMemoId;

  String? getKitchenMemoId() {
    return kitchenMemoId;
  }

  void setKitchenMemoId(String kitchenMemoId) {
    this.kitchenMemoId = kitchenMemoId;
  }

  @ColumnInfo(name: "KTCHN_MMO_GRP_ID")
  String? kitchenMemoGroupId;

  String? getKitchenMemoGroupId() {
    return kitchenMemoGroupId;
  }

  void setKitchenMemoGroupId(String kitchenMemoGroupId) {
    this.kitchenMemoGroupId = kitchenMemoGroupId;
  }

  @ColumnInfo(name: "KTCHN_MMO_NM")
  String? kitchenMemoName;

  String? getKitchenMemoName() {
    return kitchenMemoName;
  }

  void setKitchenMemoName(String kitchenMemoName) {
    this.kitchenMemoName = kitchenMemoName;
  }

  @ColumnInfo(name: "KTCHN_MMO_CD")
  String? kitchenMemoCode;

  String? getKitchenMemoCode() {
    return kitchenMemoCode;
  }

  void setKitchenMemoCode(String kitchenMemoCode) {
    this.kitchenMemoCode = kitchenMemoCode;
  }

  @ColumnInfo(name: "KTCHN_MMO_CNTNT")
  String? kitchenMemoContents;

  String? getKitchenMemoContents() {
    return kitchenMemoContents;
  }

  void setKitchenMemoContents(String kitchenMemoContents) {
    this.kitchenMemoContents = kitchenMemoContents;
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

  //todo @ToOne(joinProperty = "kitchenMemoGroupId")
  @ignore
  KitchenMemoGroup? kitchenMemoGroup;

  //todo @ToMany(referencedJoinProperty = "kitchenMemoId")
  @ignore
  List<OrderHistoryKitchenMemo>? orderHistoryKitchenMemos;

  //todo @Generated(hash = 1608296517)
  // KitchenMemo() {
  // }

  //todo @Generated(hash = 1956865858)
  KitchenMemo(
      {String? kitchenMemoId,
      String? kitchenMemoGroupId,
      String? kitchenMemoName,
      String? kitchenMemoCode,
      String? kitchenMemoContents,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.kitchenMemoId = kitchenMemoId;
    this.kitchenMemoGroupId = kitchenMemoGroupId;
    this.kitchenMemoName = kitchenMemoName;
    this.kitchenMemoCode = kitchenMemoCode;
    this.kitchenMemoContents = kitchenMemoContents;
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

  //todo @Transient
  @ignore
  bool? _isCanceled;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1100504228)
  // transient KitchenMemoDao myDao;

  //todo @Generated(hash = 748763388)
  // transient String kitchenMemoGroup__resolvedKey;

  bool? isCanceled() {
    return _isCanceled;
  }

  void setCanceled(bool canceled) {
    _isCanceled = canceled;
  }

  /** To-one relationship, resolved on first access. */
  //todo @Generated(hash = 963518656)
  // KitchenMemoGroup getKitchenMemoGroup() {
  //     String __key = this.kitchenMemoGroupId;
  //     if (kitchenMemoGroup__resolvedKey == null
  //             || kitchenMemoGroup__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         KitchenMemoGroupDao targetDao = daoSession.getKitchenMemoGroupDao();
  //         KitchenMemoGroup kitchenMemoGroupNew = targetDao.load(__key);
  //         synchronized (this) {
  //             kitchenMemoGroup = kitchenMemoGroupNew;
  //             kitchenMemoGroup__resolvedKey = __key;
  //         }
  //     }
  //     return kitchenMemoGroup;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 772239562)
  // void setKitchenMemoGroup(KitchenMemoGroup kitchenMemoGroup) {
  //     synchronized (this) {
  //         this.kitchenMemoGroup = kitchenMemoGroup;
  //         kitchenMemoGroupId = kitchenMemoGroup == null ? null
  //                 : kitchenMemoGroup.getKitchenMemoGroupId();
  //         kitchenMemoGroup__resolvedKey = kitchenMemoGroupId;
  //     }
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 1047432961)
  // List<OrderHistoryKitchenMemo> getOrderHistoryKitchenMemos() {
  //     if (orderHistoryKitchenMemos == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryKitchenMemoDao targetDao = daoSession
  //                 .getOrderHistoryKitchenMemoDao();
  //         List<OrderHistoryKitchenMemo> orderHistoryKitchenMemosNew = targetDao
  //                 ._queryKitchenMemo_OrderHistoryKitchenMemos(kitchenMemoId);
  //         synchronized (this) {
  //             if (orderHistoryKitchenMemos == null) {
  //                 orderHistoryKitchenMemos = orderHistoryKitchenMemosNew;
  //             }
  //         }
  //     }
  //     return orderHistoryKitchenMemos;
  // }
  Future<List<OrderHistoryKitchenMemo>> getOrderHistoryKitchenMemos() {
    return Common.db!.orderHistoryKitchenMemoDao
        .findAllByKitchenMemoId(kitchenMemoId!);
  }

  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1739748566)
  // synchronized void resetOrderHistoryKitchenMemos() {
  //     orderHistoryKitchenMemos = null;
  // }
  void resetOrderHistoryKitchenMemos() {
    // orderHistoryKitchenMemos = null;
  }

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

  void setCustomMemo(String name, bool canceled) {
    kitchenMemoId = CUSTOM_MEMO;
    kitchenMemoCode = CUSTOM_MEMO;
    kitchenMemoGroupId = KitchenMemoGroup.CUSTOM_MEMO_GRP;
    kitchenMemoName = name;
    _isCanceled = canceled;
  }

  bool isCustomMemo() {
    return CUSTOM_MEMO == (kitchenMemoId);
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 1951639619)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getKitchenMemoDao() : null;
// }
}

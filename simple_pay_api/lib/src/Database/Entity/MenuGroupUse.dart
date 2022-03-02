import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_MNU_GRP_USE", indices: const [
  Index(value: ["MNU_GRP_ID", "BIZ_SEC_CD"], unique: true)
])
class MenuGroupUse {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  String? getId() {
    return id;
  }

  void setId(String id) {
    this.id = id;
  }

  @ColumnInfo(name: "MNU_GRP_ID")
  String? menuGroupId;

  String? getMenuGroupId() {
    return menuGroupId;
  }

  void setMenuGroupId(String menuGroupId) {
    this.menuGroupId = menuGroupId;
  }

  @ColumnInfo(name: "BIZ_SEC_CD")
  String? businessSectionCode;

  String? getBusinessSectionCode() {
    return businessSectionCode;
  }

  void setBusinessSectionCode(String businessSectionCode) {
    this.businessSectionCode = businessSectionCode;
  }

  @ColumnInfo(name: "USE_YN")
  bool? useYn;

  bool? getUseYn() {
    return useYn;
  }

  void setUseYn(bool useYn) {
    this.useYn = useYn;
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

  //todo @ToOne(joinProperty = "menuGroupId")
  @ignore
  MenuGroup? menuGroup;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 273241908)
  // transient MenuGroupUseDao myDao;

  //todo @Generated(hash = 1562222535)
  // transient String menuGroup__resolvedKey;

  //todo @Generated(hash = 1724742774)
  // MenuGroupUse() {
  // }

  //todo @Generated(hash = 846727697)
  MenuGroupUse(
      {String? id,
      String? menuGroupId,
      String? businessSectionCode,
      bool? useYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.menuGroupId = menuGroupId;
    this.businessSectionCode = businessSectionCode;
    this.useYn = useYn;
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

  void createId() {
    id = menuGroupId! + "_" + businessSectionCode!;
  }

/** To-one relationship, resolved on first access. */
//todo @Generated(hash = 499126487)
// MenuGroup getMenuGroup() {
//     String __key = this.menuGroupId;
//     if (menuGroup__resolvedKey == null || menuGroup__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         MenuGroupDao targetDao = daoSession.getMenuGroupDao();
//         MenuGroup menuGroupNew = targetDao.load(__key);
//         synchronized (this) {
//             menuGroup = menuGroupNew;
//             menuGroup__resolvedKey = __key;
//         }
//     }
//     return menuGroup;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1247345289)
// void setMenuGroup(MenuGroup menuGroup) {
//     synchronized (this) {
//         this.menuGroup = menuGroup;
//         menuGroupId = menuGroup == null ? null : menuGroup.getMenuGroupId();
//         menuGroup__resolvedKey = menuGroupId;
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
// //todo @Generated(hash = 180697651)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getMenuGroupUseDao() : null;
// }
}

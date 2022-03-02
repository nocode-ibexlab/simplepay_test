import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_MNU_GRP")
class MenuGroup {
  @primaryKey
  @ColumnInfo(name: "MNU_GRP_ID")
  String? menuGroupId;

  String? getMenuGroupId() {
    return menuGroupId;
  }

  void setMenuGroupId(String menuGroupId) {
    this.menuGroupId = menuGroupId;
  }

  @ColumnInfo(name: "MNU_GRP_NM")
  String? menuGroupName;

  String? getMenuGroupName() {
    return menuGroupName;
  }

  void setMenuGroupName(String menuGroupName) {
    this.menuGroupName = menuGroupName;
  }

  @ColumnInfo(name: "LOC_X")
  int? locationX;

  int? getLocationX() {
    return locationX;
  }

  void setLocationX(int locationX) {
    this.locationX = locationX;
  }

  @ColumnInfo(name: "LOC_Y")
  int? locationY;

  int? getLocationY() {
    return locationY;
  }

  void setLocationY(int locationY) {
    this.locationY = locationY;
  }

  @ColumnInfo(name: "LOC_Z")
  int? locationZ;

  int? getLocationZ() {
    return locationZ;
  }

  void setLocationZ(int locationZ) {
    this.locationZ = locationZ;
  }

  @ColumnInfo(name: "BG_IMG_NM")
  String? backgroundImageName;

  String? getBackgroundImageName() {
    return backgroundImageName;
  }

  void setBackgroundImageName(String backgroundImageName) {
    this.backgroundImageName = backgroundImageName;
  }

  @ColumnInfo(name: "BG_COLR")
  String? backgroundColor;

  String? getBackgroundColor() {
    return backgroundColor;
  }

  void setBackgroundColor(String backgroundColor) {
    this.backgroundColor = backgroundColor;
  }

  @ColumnInfo(name: "FNT_NM")
  String? fontName;

  String? getFontName() {
    return fontName;
  }

  void setFontName(String fontName) {
    this.fontName = fontName;
  }

  @ColumnInfo(name: "FNT_SZ")
  double? fontSize;

  double? getFontSize() {
    return fontSize;
  }

  void setFontSize(double fontSize) {
    this.fontSize = fontSize;
  }

  @ColumnInfo(name: "FNT_STYL")
  String? fontStyle;

  String? getFontStyle() {
    return fontStyle;
  }

  void setFontStyle(String fontStyle) {
    this.fontStyle = fontStyle;
  }

  @ColumnInfo(name: "FNT_COLR")
  String? fontColor;

  String? getFontColor() {
    return fontColor;
  }

  void setFontColor(String fontColor) {
    this.fontColor = fontColor;
  }

  @ColumnInfo(name: "DEF_YN")
  bool? defaultYn;

  bool? getDefaultYn() {
    return defaultYn;
  }

  void setDefaultYn(bool defaultYn) {
    this.defaultYn = defaultYn;
  }

  @ColumnInfo(name: "ONLINE_SLS_YN")
  bool? onlineSaleYn;

  bool? getOnlineSaleYn() {
    return onlineSaleYn;
  }

  void setOnlineSaleYn(bool onlineSaleYn) {
    this.onlineSaleYn = onlineSaleYn;
  }

  @ColumnInfo(name: "LNK_INFO")
  String? linkInformation;

  String? getLinkInformation() {
    return linkInformation;
  }

  void setLinkInformation(String linkInformation) {
    this.linkInformation = linkInformation;
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

  //todo @ToMany(referencedJoinProperty = "menuGroupId")
  @ignore
  List<MenuGroupUse>? menuGroupUses;

  //todo @ToMany(referencedJoinProperty = "menuGroupId")
  @ignore
  List<MenuItem>? menuItems;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 699659270)
  // transient MenuGroupDao myDao;

  //todo @Generated(hash = 276464207)
  // MenuGroup() {
  // }

  //todo @Generated(hash = 1648862325)
  MenuGroup(
      {String? menuGroupId,
      String? menuGroupName,
      int? locationX,
      int? locationY,
      int? locationZ,
      String? backgroundImageName,
      String? backgroundColor,
      String? fontName,
      double? fontSize,
      String? fontStyle,
      String? fontColor,
      bool? defaultYn,
      bool? onlineSaleYn,
      String? linkInformation,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.menuGroupId = menuGroupId;
    this.menuGroupName = menuGroupName;
    this.locationX = locationX;
    this.locationY = locationY;
    this.locationZ = locationZ;
    this.backgroundImageName = backgroundImageName;
    this.backgroundColor = backgroundColor;
    this.fontName = fontName;
    this.fontSize = fontSize;
    this.fontStyle = fontStyle;
    this.fontColor = fontColor;
    this.defaultYn = defaultYn;
    this.onlineSaleYn = onlineSaleYn;
    this.linkInformation = linkInformation;
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
//todo @Generated(hash = 367735359)
// List<MenuGroupUse> getMenuGroupUses() {
//     if (menuGroupUses == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         MenuGroupUseDao targetDao = daoSession.getMenuGroupUseDao();
//         List<MenuGroupUse> menuGroupUsesNew = targetDao
//                 ._queryMenuGroup_MenuGroupUses(menuGroupId);
//         synchronized (this) {
//             if (menuGroupUses == null) {
//                 menuGroupUses = menuGroupUsesNew;
//             }
//         }
//     }
//     return menuGroupUses;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1266027020)
// synchronized void resetMenuGroupUses() {
//     menuGroupUses = null;
// }
//
// /**
//  * To-many relationship, resolved on first access (and after reset).
//  * Changes to to-many relations are not persisted, make changes to the target entity.
//  */
// //todo @Generated(hash = 1733111415)
// List<MenuItem> getMenuItems() {
//     if (menuItems == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         MenuItemDao targetDao = daoSession.getMenuItemDao();
//         List<MenuItem> menuItemsNew = targetDao
//                 ._queryMenuGroup_MenuItems(menuGroupId);
//         synchronized (this) {
//             if (menuItems == null) {
//                 menuItems = menuItemsNew;
//             }
//         }
//     }
//     return menuItems;
// }
//
// /** Resets a to-many relationship, making the next get call to query for a fresh result. */
// //todo @Generated(hash = 1878566421)
// synchronized void resetMenuItems() {
//     menuItems = null;
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
// //todo @Generated(hash = 374492139)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getMenuGroupDao() : null;
// }
}

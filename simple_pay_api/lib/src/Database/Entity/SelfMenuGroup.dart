import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_SLF_MNU_GRP")
class SelfMenuGroup {
  @primaryKey
  @ColumnInfo(name: "SLF_MNU_GRP_ID")
  String? selfMenuGroupId;

  String? getSelfMenuGroupId() {
    return selfMenuGroupId;
  }

  void setSelfMenuGroupId(String selfMenuGroupId) {
    this.selfMenuGroupId = selfMenuGroupId;
  }

  @ColumnInfo(name: "SLF_MNU_GRP_NM")
  String? selfMenuGroupName;

  String? getSelfMenuGroupName() {
    return selfMenuGroupName;
  }

  void setSelfMenuGroupName(String selfMenuGroupName) {
    this.selfMenuGroupName = selfMenuGroupName;
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

  //todo @ToMany(referencedJoinProperty = "selfMenuGroupId")
  @ignore
  List<SelfMenuItem>? menuItems;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 771916058)
  // transient SelfMenuGroupDao myDao;

  //todo @Generated(hash = 1250867180)
  SelfMenuGroup(
      {String? selfMenuGroupId,
      String? selfMenuGroupName,
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
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.selfMenuGroupId = selfMenuGroupId;
    this.selfMenuGroupName = selfMenuGroupName;
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
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 1917113388)
  // SelfMenuGroup() {
  // }

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
//todo @Generated(hash = 1921465668)
// List<SelfMenuItem> getMenuItems() {
//     if (menuItems == null) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         SelfMenuItemDao targetDao = daoSession.getSelfMenuItemDao();
//         List<SelfMenuItem> menuItemsNew = targetDao
//                 ._querySelfMenuGroup_MenuItems(selfMenuGroupId);
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
// //todo @Generated(hash = 372276171)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getSelfMenuGroupDao() : null;
// }

}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_MNU_ITM")
class MenuItem {
  @primaryKey
  @ColumnInfo(name: "MNU_ITM_ID")
  String? menuItemId;

  String? getMenuItemId() {
    return menuItemId;
  }

  void setMenuItemId(String menuItemId) {
    this.menuItemId = menuItemId;
  }

  @ColumnInfo(name: "MNU_GRP_ID")
  String? menuGroupId;

  String? getMenuGroupId() {
    return menuGroupId;
  }

  void setMenuGroupId(String menuGroupId) {
    this.menuGroupId = menuGroupId;
  }

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  String? getItemId() {
    return itemId;
  }

  void setItemId(String itemId) {
    this.itemId = itemId;
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

  @ColumnInfo(name: "BG_COLR")
  String? backgroundColor;

  String? getBackgroundColor() {
    return backgroundColor;
  }

  void setBackgroundColor(String backgroundColor) {
    this.backgroundColor = backgroundColor;
  }

  @ColumnInfo(name: "FNT_COLR")
  String? fontColor;

  String? getFontColor() {
    return fontColor;
  }

  void setFontColor(String fontColor) {
    this.fontColor = fontColor;
  }

  @ColumnInfo(name: "BTN_SZ_TP_CD")
  String? buttonSizeTypeCode;

  String? getButtonSizeTypeCode() {
    return buttonSizeTypeCode;
  }

  void setButtonSizeTypeCode(String buttonSizeTypeCode) {
    this.buttonSizeTypeCode = buttonSizeTypeCode;
  }

  @ColumnInfo(name: "LNK_INFO")
  String? linkInformation;

  String? getLinkInformation() {
    return linkInformation;
  }

  void setLinkInformation(String linkInformation) {
    this.linkInformation = linkInformation;
  }

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
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

  //todo @ToOne(joinProperty = "itemId")
  @ignore
  Item? item;

  //todo @ToOne(joinProperty = "menuGroupId")
  @ignore
  MenuGroup? menuGroup;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1055554912)
  // transient MenuItemDao myDao;

  //todo @Generated(hash = 1457923192)
  // transient String item__resolvedKey;

  //todo @Generated(hash = 1562222535)
  // transient String menuGroup__resolvedKey;

  //todo @Generated(hash = 1324140183)
  // MenuItem() {
  // }

  //todo @Generated(hash = 713756458)
  MenuItem(
      {String? menuItemId,
      String? menuGroupId,
      String? itemId,
      int? locationX,
      int? locationY,
      int? locationZ,
      String? backgroundColor,
      String? fontColor,
      String? buttonSizeTypeCode,
      String? linkInformation,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.menuItemId = menuItemId;
    this.menuGroupId = menuGroupId;
    this.itemId = itemId;
    this.locationX = locationX;
    this.locationY = locationY;
    this.locationZ = locationZ;
    this.backgroundColor = backgroundColor;
    this.fontColor = fontColor;
    this.buttonSizeTypeCode = buttonSizeTypeCode;
    this.linkInformation = linkInformation;
    this.synchronizedYn = synchronizedYn;
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

  /** To-one relationship, resolved on first access. */
  //todo @Generated(hash = 704650334)
  // Item getItem() {
  //     String __key = this.itemId;
  //     if (item__resolvedKey == null || item__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         ItemDao targetDao = daoSession.getItemDao();
  //         Item itemNew = targetDao.load(__key);
  //         synchronized (this) {
  //             item = itemNew;
  //             item__resolvedKey = __key;
  //         }
  //     }
  //     return item;
  // }

  Future<Item?> getItem() async {
    return await Common.db!.itemDao.findById(itemId!);
  }

  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 1344890590)
  // void setItem(Item item) {
  //     synchronized (this) {
  //         this.item = item;
  //         itemId = item == null ? null : item.getItemId();
  //         item__resolvedKey = itemId;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 499126487)
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

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());
    synchronizedYn = false;

    if (firstRegistrantId == null) {
      firstRegistrantId = BaseBL.employeeId;
    }

    if (firstRegistrationDatetime == null) {
      firstRegistrationDatetime = now;
    }

    lastReviserId = BaseBL.employeeId;
    lastRevisionDatetime = now;

    if (stateCode == null) {
      stateCode = "00";
    }
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 657545547)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getMenuItemDao() : null;
// }
}

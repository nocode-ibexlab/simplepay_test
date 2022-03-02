import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

@Entity(tableName: "IT1_OPT_ENTY")
class OptionEntity {
  @primaryKey
  @ColumnInfo(name: "OPT_ENTY_ID")
  String? optionEntityId;

  @ColumnInfo(name: "OPT_GRP_ID")
  String? optionGroupId;

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  @ColumnInfo(name: "OPT_ENTY_SNO")
  int? optionEntitySerialNumber;

  @ColumnInfo(name: "LOC_X")
  int? locationX;

  @ColumnInfo(name: "LOC_Y")
  int? locationY;

  @ColumnInfo(name: "LOC_Z")
  int? locationZ;

  @ColumnInfo(name: "BTN_SZ_TP_CD")
  String? buttonSizeTypeCode;

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

  //todo @ToOne(joinProperty = "itemId")
  @ignore
  Item? item;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1964558445)
  // transient OptionEntityDao myDao;

  //todo @Generated(hash = 1457923192)
  // transient String item__resolvedKey;

  //todo @Generated(hash = 1731465318)
  // OptionEntity() {
  // }

  //todo @Generated(hash = 192610976)
  OptionEntity(
      {String? optionEntityId,
      String? optionGroupId,
      String? itemId,
      int? optionEntitySerialNumber,
      int? locationX,
      int? locationY,
      int? locationZ,
      String? buttonSizeTypeCode,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.optionEntityId = optionEntityId;
    this.optionGroupId = optionGroupId;
    this.itemId = itemId;
    this.optionEntitySerialNumber = optionEntitySerialNumber;
    this.locationX = locationX;
    this.locationY = locationY;
    this.locationZ = locationZ;
    this.buttonSizeTypeCode = buttonSizeTypeCode;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getOptionEntityId() {
    return optionEntityId;
  }

  void setOptionEntityId(String optionEntityId) {
    this.optionEntityId = optionEntityId;
  }

  String? getOptionGroupId() {
    return optionGroupId;
  }

  void setOptionGroupId(String optionGroupId) {
    this.optionGroupId = optionGroupId;
  }

  String? getItemId() {
    return itemId;
  }

  void setItemId(String itemId) {
    this.itemId = itemId;
  }

  int? getOptionEntitySerialNumber() {
    return optionEntitySerialNumber;
  }

  void setOptionEntitySerialNumber(int optionEntitySerialNumber) {
    this.optionEntitySerialNumber = optionEntitySerialNumber;
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

  String? getBackgroundColor() {
    return null;
  }

  String? getFontColor() {
    return null;
  }

  void setLocationY(int locationY) {
    this.locationY = locationY;
  }

  int? getLocationZ() {
    return locationZ;
  }

  void setLocationZ(int locationZ) {
    this.locationZ = locationZ;
  }

  String? getButtonSizeTypeCode() {
    return buttonSizeTypeCode;
  }

  void setButtonSizeTypeCode(String buttonSizeTypeCode) {
    this.buttonSizeTypeCode = buttonSizeTypeCode;
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
// //todo @Generated(hash = 437397706)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getOptionEntityDao() : null;
// }
}

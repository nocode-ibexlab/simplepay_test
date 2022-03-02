import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "OD1_ODR_HIS_DC", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "DC_SNO"], unique: true)
])
class OrderHistoryDiscount {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "DC_SNO")
  int? discountSerialNumber;

  @ColumnInfo(name: "DC_SEC_CD")
  String? discountSectionCode;

  @ColumnInfo(name: "DC_RATE")
  double? discountRate;

  @ColumnInfo(name: "DC_AMT")
  double? discountAmount;

  @ColumnInfo(name: "DC_NAME")
  String? discountName;

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

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
  //todo @Generated(hash = 1185902285)
  // transient OrderHistoryDiscountDao myDao;

  //todo @Generated(hash = 146569835)
  OrderHistoryDiscount(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      int? discountSerialNumber,
      String? discountSectionCode,
      double? discountRate,
      double? discountAmount,
      String? discountName,
      String? itemId,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.discountSerialNumber = discountSerialNumber;
    this.discountSectionCode = discountSectionCode;
    this.discountRate = discountRate;
    this.discountAmount = discountAmount;
    this.discountName = discountName;
    this.itemId = itemId;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 264673218)
  // OrderHistoryDiscount() {
  // }

  //todo @Generated(hash = 1457923192)
  // transient String item__resolvedKey;

  String? getId() {
    return id;
  }

  void setId(String id) {
    this.id = id;
  }

  String? getCommonDate() {
    return commonDate;
  }

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int? commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  int? getDiscountSerialNumber() {
    return discountSerialNumber;
  }

  void setDiscountSerialNumber(int discountSerialNumber) {
    this.discountSerialNumber = discountSerialNumber;
  }

  String? getDiscountSectionCode() {
    return discountSectionCode;
  }

  void setDiscountSectionCode(String discountSectionCode) {
    this.discountSectionCode = discountSectionCode;
  }

  double? getDiscountRate() {
    return discountRate;
  }

  void setDiscountRate(double discountRate) {
    this.discountRate = discountRate;
  }

  double? getDiscountAmount() {
    return discountAmount;
  }

  void setDiscountAmount(double? discountAmount) {
    this.discountAmount = discountAmount;
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

  void createId() {
    id = (commonDate ?? "") + "_" + commonSerialNumber.toString();
  }

  String? getDiscountName() {
    return this.discountName;
  }

  void setDiscountName(String discountName) {
    this.discountName = discountName;
  }

  String? getItemId() {
    return this.itemId;
  }

  void setItemId(String itemId) {
    this.itemId = itemId;
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
  // //todo @Generated(hash = 878834880)
  // void __setDaoSession(DaoSession daoSession) {
  //     this.daoSession = daoSession;
  //     myDao = daoSession != null ? daoSession.getOrderHistoryDiscountDao() : null;
  // }
  @override
  String toString() {
    return 'OrderHistoryDiscount{ID: $id, COM_DT: $commonDate, COM_SNO: $commonSerialNumber, DC_SNO: $discountSerialNumber, DC_SEC_CD: $discountSectionCode, DC_RATE: $discountRate, DC_AMT: $discountAmount, DC_NAME: $discountName, ITM_ID: $itemId }';
  }

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());

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
}

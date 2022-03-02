import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "SL1_SLS_HIS_ITM", indices: const [
  Index(value: ["COM_DT", "SL_SNO", "ITM_SNO"], unique: true)
])
class SalesHistoryItem {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "SL_SNO")
  int? saleSerialNumber;

  @ColumnInfo(name: "ITM_SNO")
  int? itemSerialNumber;

  @ColumnInfo(name: "UPR_ITM_SNO")
  int? upperItemSerialNumber;

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "QTY")
  double? quantity;

  @ColumnInfo(name: "PRICE")
  double? price;

  @ColumnInfo(name: "SPLY_VAL")
  double? supplyValue;

  @ColumnInfo(name: "SPLY_AMT")
  double? supplyAmount;

  @ColumnInfo(name: "TAX_AMT_0")
  double? taxAmount0;

  @ColumnInfo(name: "TAX_AMT_1")
  double? taxAmount1;

  @ColumnInfo(name: "TAX_AMT_2")
  double? taxAmount2;

  @ColumnInfo(name: "DC_SEC_CD")
  String? discountSectionCode;

  @ColumnInfo(name: "DC_TP_CD")
  String? discountTypeCode;

  @ColumnInfo(name: "DC_AMT")
  double? discountAmount;

  @ColumnInfo(name: "ODR_DC_AMT")
  double? orderDiscountAmount;

  @ColumnInfo(name: "ODR_OPT_CD")
  String? orderOptionCode;

  @ColumnInfo(name: "CNCL_SNO")
  int? cancelSerialNumber;

  @ColumnInfo(name: "CNCL_RESN")
  String? cancelReason;

  @ColumnInfo(name: "CNCL_EMP_ID")
  String? cancelEmployeeId;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  @ColumnInfo(name: "MNU_PAY_SNO")
  int? menuPaymentSerialNumber;

  @ColumnInfo(name: "TRACKING_INFO")
  String? trackingInfo;

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

  //todo @ToOne(joinProperty = "discountSectionCode")
  @ignore
  BasicDataItem? discountBasicDataItemInfo;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1040093122)
  // transient SalesHistoryItemDao myDao;

  //todo @Generated(hash = 1457923192)
  // transient String item__resolvedKey;

  //todo @Generated(hash = 1082371788)
  // transient String discountBasicDataItemInfo__resolvedKey;

  //todo @Generated(hash = 1040989732)
  // SalesHistoryItem() {
  // }

  //todo @Generated(hash = 1478761666)
  SalesHistoryItem(
      {String? id,
      String? commonDate,
      int? saleSerialNumber,
      int? itemSerialNumber,
      int? upperItemSerialNumber,
      String? itemId,
      String? storeTerminalId,
      double? quantity,
      double? price,
      double? supplyValue,
      double? supplyAmount,
      double? taxAmount0,
      double? taxAmount1,
      double? taxAmount2,
      String? discountSectionCode,
      String? discountTypeCode,
      double? discountAmount,
      double? orderDiscountAmount,
      String? orderOptionCode,
      int? cancelSerialNumber,
      String? cancelReason,
      String? cancelEmployeeId,
      bool? synchronizedYn,
      int? menuPaymentSerialNumber,
      String? trackingInfo,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.saleSerialNumber = saleSerialNumber;
    this.itemSerialNumber = itemSerialNumber;
    this.upperItemSerialNumber = upperItemSerialNumber;
    this.itemId = itemId;
    this.storeTerminalId = storeTerminalId;
    this.quantity = quantity;
    this.price = price;
    this.supplyValue = supplyValue;
    this.supplyAmount = supplyAmount;
    this.taxAmount0 = taxAmount0;
    this.taxAmount1 = taxAmount1;
    this.taxAmount2 = taxAmount2;
    this.discountSectionCode = discountSectionCode;
    this.discountTypeCode = discountTypeCode;
    this.discountAmount = discountAmount;
    this.orderDiscountAmount = orderDiscountAmount;
    this.orderOptionCode = orderOptionCode;
    this.cancelSerialNumber = cancelSerialNumber;
    this.cancelReason = cancelReason;
    this.cancelEmployeeId = cancelEmployeeId;
    this.synchronizedYn = synchronizedYn;
    this.menuPaymentSerialNumber = menuPaymentSerialNumber;
    this.trackingInfo = trackingInfo;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
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

  int? getSaleSerialNumber() {
    return saleSerialNumber;
  }

  void setSaleSerialNumber(int saleSerialNumber) {
    this.saleSerialNumber = saleSerialNumber;
  }

  int? getItemSerialNumber() {
    return itemSerialNumber;
  }

  void setItemSerialNumber(int? itemSerialNumber) {
    this.itemSerialNumber = itemSerialNumber;
  }

  int? getUpperItemSerialNumber() {
    return upperItemSerialNumber;
  }

  void setUpperItemSerialNumber(int? upperItemSerialNumber) {
    this.upperItemSerialNumber = upperItemSerialNumber;
  }

  String? getItemId() {
    return itemId;
  }

  void setItemId(String? itemId) {
    this.itemId = itemId;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  double getQuantity() {
    return quantity == null ? 0 : MonetaryCalculator.value(quantity);
  }

  void setQuantity(double? quantity) {
    this.quantity = quantity;
  }

  double getPrice() {
    return price == null ? 0 : MonetaryCalculator.value(price);
  }

  void setPrice(double? price) {
    this.price = price;
  }

  double getSupplyValue() {
    return supplyValue == null ? 0 : MonetaryCalculator.value(supplyValue);
  }

  void setSupplyValue(double? supplyValue) {
    this.supplyValue = supplyValue;
  }

  double getSupplyAmount() {
    return supplyAmount == null ? 0 : MonetaryCalculator.value(supplyAmount);
  }

  void setSupplyAmount(double? supplyAmount) {
    this.supplyAmount = supplyAmount;
  }

  double getTaxAmount0() {
    return taxAmount0 == null ? 0 : MonetaryCalculator.value(taxAmount0);
  }

  void setTaxAmount0(double? taxAmount0) {
    this.taxAmount0 = taxAmount0;
  }

  double getTaxAmount1() {
    return taxAmount1 == null ? 0 : MonetaryCalculator.value(taxAmount1);
  }

  void setTaxAmount1(double? taxAmount1) {
    this.taxAmount1 = taxAmount1;
  }

  double getTaxAmount2() {
    return taxAmount2 == null ? 0 : MonetaryCalculator.value(taxAmount2);
  }

  void setTaxAmount2(double? taxAmount2) {
    this.taxAmount2 = taxAmount2;
  }

  String? getDiscountSectionCode() {
    return discountSectionCode;
  }

  void setDiscountSectionCode(String? discountSectionCode) {
    this.discountSectionCode = discountSectionCode;
  }

  String? getDiscountTypeCode() {
    return discountTypeCode;
  }

  void setDiscountTypeCode(String? discountTypeCode) {
    this.discountTypeCode = discountTypeCode;
  }

  double getDiscountAmount() {
    return discountAmount == null
        ? 0
        : MonetaryCalculator.value(discountAmount);
  }

  void setDiscountAmount(double? discountAmount) {
    this.discountAmount = discountAmount;
  }

  int? getCancelSerialNumber() {
    return cancelSerialNumber;
  }

  void setCancelSerialNumber(int? cancelSerialNumber) {
    this.cancelSerialNumber = cancelSerialNumber;
  }

  String? getCancelReason() {
    return cancelReason;
  }

  void setCancelReason(String? cancelReason) {
    this.cancelReason = cancelReason;
  }

  String? getCancelEmployeeId() {
    return cancelEmployeeId;
  }

  void setCancelEmployeeId(String? cancelEmployeeId) {
    this.cancelEmployeeId = cancelEmployeeId;
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

  double getTotalTax() {
    return getTaxAmount0() + getTaxAmount1() + getTaxAmount2();
  }

  double getOrderTotalAmount() {
    return getSupplyAmount() + getOrderDiscountAmount() + getDiscountAmount();
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
    return Common.db!.itemDao.findById(itemId!);
  }

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

  void createId() {
    NumberFormat df1 = NumberFormat("0000");
    NumberFormat df2 = NumberFormat("00000");
    id = commonDate! +
        "_" +
        df1.format(saleSerialNumber) +
        "_" +
        df2.format(itemSerialNumber);
  }

  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 577304442)
  // BasicDataItem getDiscountBasicDataItemInfo() {
  //     String __key = this.discountSectionCode;
  //     if (discountBasicDataItemInfo__resolvedKey == null
  //             || discountBasicDataItemInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         BasicDataItemDao targetDao = daoSession.getBasicDataItemDao();
  //         BasicDataItem discountBasicDataItemInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             discountBasicDataItemInfo = discountBasicDataItemInfoNew;
  //             discountBasicDataItemInfo__resolvedKey = __key;
  //         }
  //     }
  //     return discountBasicDataItemInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 1300225766)
  // void setDiscountBasicDataItemInfo(BasicDataItem discountBasicDataItemInfo) {
  //     synchronized (this) {
  //         this.discountBasicDataItemInfo = discountBasicDataItemInfo;
  //         discountSectionCode = discountBasicDataItemInfo == null ? null
  //                 : discountBasicDataItemInfo.getBasicDataItemId();
  //         discountBasicDataItemInfo__resolvedKey = discountSectionCode;
  //     }
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

  double getOrderDiscountAmount() {
    return orderDiscountAmount == null ? 0 : orderDiscountAmount!;
  }

  void setOrderDiscountAmount(double? orderDiscountAmount) {
    this.orderDiscountAmount = orderDiscountAmount;
  }

  int? getMenuPaymentSerialNumber() {
    return menuPaymentSerialNumber == null ? 0 : menuPaymentSerialNumber;
  }

  void setMenuPaymentSerialNumber(int? menuPaymentSerialNumber) {
    this.menuPaymentSerialNumber = menuPaymentSerialNumber;
  }

  //
  // @override
  // SalesHistoryItem clone() {
  //     Object object = null;
  //     try {
  //         object = super.clone();
  //     } catch (CloneNotSupportedException e) {
  //         print('Exception: $e');
  //     }
  //     return (SalesHistoryItem) object;
  // }

  String? getOrderOptionCode() {
    return this.orderOptionCode;
  }

  void setOrderOptionCode(String? orderOptionCode) {
    this.orderOptionCode = orderOptionCode;
  }

  String? getTrackingInfo() {
    return this.trackingInfo;
  }

  void setTrackingInfo(String? trackingInfo) {
    this.trackingInfo = trackingInfo;
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 76722961)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getSalesHistoryItemDao() : null;
// }
}

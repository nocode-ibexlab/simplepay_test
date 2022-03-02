import 'dart:async';

import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/ItemBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "OD1_ODR_HIS_ITM", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "ITM_SNO"], unique: true)
])
class OrderHistoryItem {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

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

  @ColumnInfo(name: "TAX_AMT_0")
  double? taxAmount0;

  @ColumnInfo(name: "TAX_AMT_1")
  double? taxAmount1;

  // 현재 면세금액을 저장하기 위해 사용함
  @ColumnInfo(name: "TAX_AMT_2")
  double? taxAmount2;

  @ColumnInfo(name: "DC_SEC_CD")
  String? discountSectionCode;

  @ColumnInfo(name: "DC_RATE")
  double? discountRate;

  @ColumnInfo(name: "DC_AMT")
  double? discountAmount;

  @ColumnInfo(name: "DC_TP_CD")
  String? discountTypeCode;

  @ColumnInfo(name: "MENU_DC_AMT")
  double? menuDiscountAmount;

  @ColumnInfo(name: "ODR_DC_AMT")
  double? orderDiscountAmount;

  @ColumnInfo(name: "SPLY_AMT")
  double? supplyAmount;

  @ColumnInfo(name: "ODR_OPT_CD")
  String? orderOptionCode;

  @ColumnInfo(name: "ODR_HOLD_TM")
  String? orderHoldingTime;

  @ColumnInfo(name: "CNCL_SNO")
  int? cancelSerialNumber;

  @ColumnInfo(name: "CNCL_EMP_ID")
  String? cancelEmployeeId;

  @ColumnInfo(name: "CNCL_RESN")
  String? cancelReason;

  @ColumnInfo(name: "MNU_PAY_YN")
  int? menuPaymentYn;

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

  //todo @ToOne(joinProperty = "itemId")
  @ignore
  Item? item;

  //todo @Transient
  @ignore
  OrderHistoryItem? relationKey; //주문시에 기주문 , 추가주문 의 주문아이템 연결 키

  //todo @ToOne(joinProperty = "discountSectionCode")
  @ignore
  BasicDataItem? discountBasicDataItemInfo;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "commonDate", referencedName = "commonDate"),
  //         @JoinProperty(name = "commonSerialNumber", referencedName = "commonSerialNumber"),
  //         @JoinProperty(name = "itemSerialNumber", referencedName = "itemSerialNumber")
  // })
  @ignore
  List<OrderHistoryKitchenMemo>? orderHistoryKitchenMemos;

  //todo @Transient
  @ignore
  List<OrderHistoryKitchenMemo>? orderHistoryKitchenMemoList;

  //todo @Transient
  @ignore
  bool? _isOrderedItem;

  //todo @Transient
  @ignore
  String? discountName;

  //todo @Transient
  @ignore
  String? itemName;

  //todo @Transient
  @ignore
  String? applyTax0Yn, applyTax1Yn, applyTax2Yn;

  //todo @Transient
  @ignore
  bool? _isCatItem;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 235400514)
  // transient OrderHistoryItemDao myDao;

  //todo @Generated(hash = 1457923192)
  // transient String item__resolvedKey;

  //todo @Generated(hash = 1082371788)
  // transient String discountBasicDataItemInfo__resolvedKey;

  // OrderHistoryItem() {
  //     this.setRelationKey(this);
  // }

  //todo @Generated(hash = 1447232715)
  OrderHistoryItem(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      int? itemSerialNumber,
      int? upperItemSerialNumber,
      String? itemId,
      String? storeTerminalId,
      double? quantity,
      double? price,
      double? supplyValue,
      double? taxAmount0,
      double? taxAmount1,
      double? taxAmount2,
      String? discountSectionCode,
      double? discountRate,
      double? discountAmount,
      String? discountTypeCode,
      double? menuDiscountAmount,
      double? orderDiscountAmount,
      double? supplyAmount,
      String? orderOptionCode,
      String? orderHoldingTime,
      int? cancelSerialNumber,
      String? cancelEmployeeId,
      String? cancelReason,
      int? menuPaymentYn,
      int? menuPaymentSerialNumber,
      String? trackingInfo,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.itemSerialNumber = itemSerialNumber;
    this.upperItemSerialNumber = upperItemSerialNumber;
    this.itemId = itemId;
    this.storeTerminalId = storeTerminalId;
    this.quantity = quantity;
    this.price = price;
    this.supplyValue = supplyValue;
    this.taxAmount0 = taxAmount0;
    this.taxAmount1 = taxAmount1;
    this.taxAmount2 = taxAmount2;
    this.discountSectionCode = discountSectionCode;
    this.discountRate = discountRate;
    this.discountAmount = discountAmount;
    this.discountTypeCode = discountTypeCode;
    this.menuDiscountAmount = menuDiscountAmount;
    this.orderDiscountAmount = orderDiscountAmount;
    this.supplyAmount = supplyAmount;
    this.orderOptionCode = orderOptionCode;
    this.orderHoldingTime = orderHoldingTime;
    this.cancelSerialNumber = cancelSerialNumber;
    this.cancelEmployeeId = cancelEmployeeId;
    this.cancelReason = cancelReason;
    this.menuPaymentYn = menuPaymentYn;
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

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int? commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
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

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  double? getQuantity() {
    return quantity;
  }

  void setQuantity(double? quantity) {
    this.quantity = quantity;
  }

  double? getPrice() {
    return price;
  }

  void setPrice(double? price) {
    this.price = price;
  }

  double? getSupplyValue() {
    return supplyValue;
  }

  void setSupplyValue(double? supplyValue) {
    this.supplyValue = supplyValue;
  }

  double? getTaxAmount0() {
    return taxAmount0 == null ? 0 : taxAmount0;
  }

  void setTaxAmount0(double taxAmount0) {
    this.taxAmount0 = taxAmount0;
  }

  double? getTaxAmount1() {
    return taxAmount1 == null ? 0 : taxAmount1;
  }

  void setTaxAmount1(double taxAmount1) {
    this.taxAmount1 = taxAmount1;
  }

  double? getTaxAmount2() {
    return taxAmount2 == null ? 0 : taxAmount2;
  }

  void setTaxAmount2(double taxAmount2) {
    this.taxAmount2 = taxAmount2;
  }

  String? getDiscountSectionCode() {
    return discountSectionCode;
  }

  void setDiscountSectionCode(String? discountSectionCode) {
    this.discountSectionCode = discountSectionCode;
  }

  double? getDiscountRate() {
    return discountRate;
  }

  void setDiscountRate(double? discountRate) {
    this.discountRate = discountRate;
  }

  double? getDiscountAmount() {
    return discountAmount == null ? 0 : discountAmount;
  }

  void setDiscountAmount(double? discountAmount) {
    this.discountAmount = discountAmount;
  }

  String? getDiscountTypeCode() {
    return discountTypeCode;
  }

  void setDiscountTypeCode(String? discountTypeCode) {
    this.discountTypeCode = discountTypeCode;
  }

  double? getMenuDiscountAmount() {
    return menuDiscountAmount == null ? 0 : menuDiscountAmount;
  }

  void setMenuDiscountAmount(double? menuDiscountAmount) {
    this.menuDiscountAmount = menuDiscountAmount;
  }

  double? getSupplyAmount() {
    return supplyAmount == null ? 0 : supplyAmount;
  }

  void setSupplyAmount(double supplyAmount) {
    this.supplyAmount = supplyAmount;
  }

  String? getOrderHoldingTime() {
    return orderHoldingTime;
  }

  void setOrderHoldingTime(String orderHoldingTime) {
    this.orderHoldingTime = orderHoldingTime;
  }

  int? getCancelSerialNumber() {
    return cancelSerialNumber;
  }

  void setCancelSerialNumber(int? cancelSerialNumber) {
    this.cancelSerialNumber = cancelSerialNumber;
  }

  String? getCancelEmployeeId() {
    return cancelEmployeeId;
  }

  void setCancelEmployeeId(String? cancelEmployeeId) {
    this.cancelEmployeeId = cancelEmployeeId;
  }

  String? getCancelReason() {
    return cancelReason;
  }

  void setCancelReason(String cancelReason) {
    this.cancelReason = cancelReason;
  }

  int? getMenuPaymentYn() {
    return menuPaymentYn == null ? 0 : menuPaymentYn;
  }

  void setMenuPaymentYn(int? menuPaymentYn) {
    this.menuPaymentYn = menuPaymentYn;
  }

  int? getMenuPaymentSerialNumber() {
    return menuPaymentSerialNumber == null ? 0 : menuPaymentSerialNumber;
  }

  void setMenuPaymentSerialNumber(int? menuPaymentSerialNumber) {
    this.menuPaymentSerialNumber = menuPaymentSerialNumber;
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

  List<OrderHistoryKitchenMemo>? getOrderHistoryKitchenMemoList() {
    if (orderHistoryKitchenMemoList == null) {
      orderHistoryKitchenMemoList = <OrderHistoryKitchenMemo>[];
    }

    return orderHistoryKitchenMemoList;
  }

  void setOrderHistoryKitchenMemoList(
      List<OrderHistoryKitchenMemo> orderHistoryKitchenMemoList) {
    this.orderHistoryKitchenMemoList = orderHistoryKitchenMemoList;
  }

  void addOrderHistoryOrderOptionList(
      OrderHistoryKitchenMemo orderHistoryKitchenMemo) {
    if (orderHistoryKitchenMemoList == null) {
      orderHistoryKitchenMemoList = <OrderHistoryKitchenMemo>[];
    }

    orderHistoryKitchenMemoList!.add(orderHistoryKitchenMemo);
  }

  bool? isOrderedItem() {
    return _isOrderedItem;
  }

  void setOrderedItem(bool orderedItem) {
    _isOrderedItem = orderedItem;
  }

  String? getDiscountName() {
    return discountName;
  }

  void setDiscountName(String? discountName) {
    this.discountName = discountName;
  }

  String? getItemName() {
    return itemName;
  }

  void setItemName(String? itemName) {
    this.itemName = itemName;
  }

  String? getApplyTax0Yn() {
    return applyTax0Yn == null ? "0" : applyTax0Yn;
  }

  void setApplyTax0Yn(String? applyTax0Yn) {
    this.applyTax0Yn = applyTax0Yn;
  }

  String? getApplyTax1Yn() {
    return applyTax1Yn == null ? "0" : applyTax1Yn;
  }

  void setApplyTax1Yn(String? applyTax1Yn) {
    this.applyTax1Yn = applyTax1Yn;
  }

  String? getApplyTax2Yn() {
    return applyTax2Yn == null ? "0" : applyTax2Yn;
  }

  void setApplyTax2Yn(String? applyTax2Yn) {
    this.applyTax2Yn = applyTax2Yn;
  }

  // taxAmount2은 면세금액으로 사용 중
  double getTotalTax() {
    return getTaxAmount0()! + getTaxAmount1()!;
  }

  void setRelationKey(OrderHistoryItem relationKey) {
    this.relationKey = relationKey;
  }

  OrderHistoryItem? getRelationKey() {
    return relationKey;
  }

  double getOrderTotalAmount() {
    return getSupplyAmount()! +
        getOrderDiscountAmount()! +
        getMenuDiscountAmount()!;
  }

  OrderHistoryItem clone() {
    return OrderHistoryItem(
      id: this.id,
      commonDate: this.commonDate,
      commonSerialNumber: this.commonSerialNumber,
      itemSerialNumber: this.itemSerialNumber,
      upperItemSerialNumber: this.upperItemSerialNumber,
      itemId: this.itemId,
      storeTerminalId: this.storeTerminalId,
      quantity: this.quantity,
      price: this.price,
      supplyValue: this.supplyValue,
      taxAmount0: this.taxAmount0,
      taxAmount1: this.taxAmount1,
      taxAmount2: this.taxAmount2,
      discountSectionCode: this.discountSectionCode,
      discountRate: this.discountRate,
      discountAmount: this.discountAmount,
      discountTypeCode: this.discountTypeCode,
      menuDiscountAmount: this.menuDiscountAmount,
      orderDiscountAmount: this.orderDiscountAmount,
      supplyAmount: this.supplyAmount,
      orderOptionCode: this.orderOptionCode,
      orderHoldingTime: this.orderHoldingTime,
      cancelSerialNumber: this.cancelSerialNumber,
      cancelEmployeeId: this.cancelEmployeeId,
      cancelReason: this.cancelReason,
      menuPaymentYn: this.menuPaymentYn,
      menuPaymentSerialNumber: this.menuPaymentSerialNumber,
      trackingInfo: this.trackingInfo,
      firstRegistrantId: this.firstRegistrantId,
      firstRegistrationDatetime: this.firstRegistrationDatetime,
      lastReviserId: this.lastReviserId,
      lastRevisionDatetime: this.lastRevisionDatetime,
      stateCode: this.stateCode,
    )
      .._isOrderedItem = this._isOrderedItem
      ..discountName = this.discountName
      ..itemName = this.itemName
      ..applyTax0Yn = this.applyTax0Yn
      ..applyTax1Yn = this.applyTax1Yn
      ..applyTax2Yn = this.applyTax2Yn
      .._isCatItem = this._isCatItem
      ..relationKey = this;
  }

  /**
   * To-many relationship, resolved on first access (and after reset).
   * Changes to to-many relations are not persisted, make changes to the target entity.
   */
  //todo @Generated(hash = 1503608765)
  // List<OrderHistoryKitchenMemo> getOrderHistoryKitchenMemos() {
  //     if (orderHistoryKitchenMemos == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryKitchenMemoDao targetDao = daoSession.getOrderHistoryKitchenMemoDao();
  //         List<OrderHistoryKitchenMemo> orderHistoryKitchenMemosNew = targetDao._queryOrderHistoryItem_OrderHistoryKitchenMemos(commonDate, commonSerialNumber,
  //                 itemSerialNumber);
  //         synchronized (this) {
  //             if (orderHistoryKitchenMemos == null) {
  //                 orderHistoryKitchenMemos = orderHistoryKitchenMemosNew;
  //             }
  //         }
  //     }
  //     return orderHistoryKitchenMemos;
  // }
  //

  Future<List<OrderHistoryKitchenMemo>> getOrderHistoryKitchenMemos() {
    return Common.db!.orderHistoryKitchenMemoDao.findAllByOrderItem(
        commonDate!, commonSerialNumber!, itemSerialNumber!);
  }

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
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 704650334)
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

  void createId() {
    NumberFormat df = NumberFormat("00000");
    id = commonDate! +
        "_" +
        commonSerialNumber.toString() +
        "_" +
        df.format(itemSerialNumber);
  }

  /** To-one relationship, resolved on first access. */
  //todo @Generated(hash = 577304442)
  // BasicDataItem getDiscountBasicDataItemInfo() {
  //     String __key = this.discountSectionCode;
  //     if (discountBasicDataItemInfo__resolvedKey == null || discountBasicDataItemInfo__resolvedKey != __key) {
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
  //         discountSectionCode = discountBasicDataItemInfo == null ? null : discountBasicDataItemInfo.getBasicDataItemId();
  //         discountBasicDataItemInfo__resolvedKey = discountSectionCode;
  //     }
  // }

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

  double? getOrderDiscountAmount() {
    return this.orderDiscountAmount == null ? 0 : orderDiscountAmount;
  }

  void setOrderDiscountAmount(double orderDiscountAmount) {
    this.orderDiscountAmount = orderDiscountAmount;
  }

  // void setUpperItemSerialNumber(int upperItemSerialNumber) {
  //     this.upperItemSerialNumber = upperItemSerialNumber;
  // }

  String? getOrderOptionCode() {
    return this.orderOptionCode;
  }

  void setOrderOptionCode(String orderOptionCode) {
    this.orderOptionCode = orderOptionCode;
  }

  Future<bool?> isCatItem() async {
    if (_isCatItem == null) {
      Item? item = await ItemBL().getItemById(itemId);
      _isCatItem = item?.isCatItem();
    }

    return _isCatItem;
  }

  void setCatItem(bool catItem) {
    _isCatItem = catItem;
  }

  String? getTrackingInfo() {
    return this.trackingInfo;
  }

  void setTrackingInfo(String trackingInfo) {
    this.trackingInfo = trackingInfo;
  }

  /** called by internal mechanisms, do not call yourself. */
  //todo @Generated(hash = 1160173389)
  // void __setDaoSession(DaoSession daoSession) {
  //     this.daoSession = daoSession;
  //     myDao = daoSession != null ? daoSession.getOrderHistoryItemDao() : null;
  // }

  bool isCanceled() {
    return orderOptionCode == OrderCheck.ORDER_OPTION_STORNO_ORDER;
  }
}

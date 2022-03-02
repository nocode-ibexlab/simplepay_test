import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "OD1_ODR_HIS", indices: const [
  Index(value: ["COM_DT", "COM_SNO"], unique: true)
])
class OrderHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "TAB_ID")
  String? tableId;

  @ColumnInfo(name: "OPR_TP_CD")
  String? operationTypeCode;

  @ColumnInfo(name: "BIZ_SEC_CD")
  String? businessSectionCode;

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

  @ColumnInfo(name: "ODR_DC_TOT_AMT")
  double? orderDiscountTotalAmount;

  @ColumnInfo(name: "ODR_TOT_AMT")
  double? orderTotalAmount;

  @ColumnInfo(name: "TAX_FREE_YN")
  bool? taxFreeYn;

  @ColumnInfo(name: "TAX_FREE_RESN")
  String? taxFreeReason;

  @ColumnInfo(name: "PRE_TIP_TOT_AMT")
  double? preTipTotalAmount;

  @ColumnInfo(name: "PRE_TIP_AMT")
  double? preTipAmount;

  @ColumnInfo(name: "PRE_TIP_TAX_AMT")
  double? preTipTaxAmount;

  @ColumnInfo(name: "PAY_TIP_TOT_AMT")
  double? paymentTipTotalAmount;

  @ColumnInfo(name: "PAY_TIP_AMT")
  double? paymentTipAmount;

  @ColumnInfo(name: "PAY_TIP_TAX_AMT")
  double? paymentTipTaxAmount;

  @ColumnInfo(name: "SRV_EMP_ID")
  String? servingEmployeeId;

  @ColumnInfo(name: "ODR_EMP_ID")
  String? orderEmployeeId;

  @ColumnInfo(name: "CNF_YN")
  bool? conflictYn;

  @ColumnInfo(name: 'PAY_INI_ID')
  String? paymentInitiatorId;

  @ColumnInfo(name: "SYNCD_YN")
  bool synchronizedYn;

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

  @ColumnInfo(name: "PGR_NO")
  int? pagerNumber;

  @ColumnInfo(name: "MEMO")
  String? memo;

  //todo @ToOne(joinProperty = "tableId")
  @ignore
  Table? table;

  //todo @ToOne(joinProperty = "orderEmployeeId")
  @ignore
  Employee? orderEmployeeInfo;

  //todo @ToOne(joinProperty = "servingEmployeeId")
  @ignore
  Employee? servingEmployeeInfo;

  //todo @Transient
  @ignore
  double menuDcAmt = 0;

  //todo @Transient
  @ignore
  double orderDcAmt = 0;

  //todo @Transient
  @ignore
  List<OrderHistoryKitchenMemo> dssMemos = <OrderHistoryKitchenMemo>[];

  //todo @Transient
  @ignore
  List<OrderHistoryDiscount> dssDiscounts = <OrderHistoryDiscount>[];

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 501427241)
  // transient OrderHistoryDao myDao;

  //todo @Generated(hash = 579284854)
  // transient String table__resolvedKey;

  //todo @Generated(hash = 166110428)
  // transient String orderEmployeeInfo__resolvedKey;

  //todo @Generated(hash = 690646894)
  // transient String servingEmployeeInfo__resolvedKey;

  //todo @Generated(hash = 117463898)
  // OrderHistory() {
  // }

  //todo @Generated(hash = 415909909)
  OrderHistory(
      {this.id,
      this.commonDate,
      this.commonSerialNumber,
      this.tableId,
      this.operationTypeCode,
      this.businessSectionCode,
      this.supplyValue,
      this.supplyAmount,
      this.taxAmount0,
      this.taxAmount1,
      this.taxAmount2,
      this.orderDiscountTotalAmount,
      this.orderTotalAmount,
      this.taxFreeYn,
      this.taxFreeReason,
      this.preTipTotalAmount,
      this.preTipAmount,
      this.preTipTaxAmount,
      this.paymentTipTotalAmount,
      this.paymentTipAmount,
      this.paymentTipTaxAmount,
      this.servingEmployeeId,
      this.orderEmployeeId,
      this.conflictYn,
      this.paymentInitiatorId,
      this.synchronizedYn = false,
      this.firstRegistrantId,
      this.firstRegistrationDatetime,
      this.lastReviserId,
      this.lastRevisionDatetime,
      this.stateCode,
      this.pagerNumber,
      this.memo});

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

  String? getTableId() {
    return tableId;
  }

  void setTableId(String? tableId) {
    this.tableId = tableId;
  }

  String? getBusinessSectionCode() {
    return businessSectionCode;
  }

  void setBusinessSectionCode(String? businessSectionCode) {
    this.businessSectionCode = businessSectionCode;
  }

  double getSupplyValue() {
    return supplyValue == null ? 0 : MonetaryCalculator.value(supplyValue);
  }

  void setSupplyValue(double supplyValue) {
    this.supplyValue = supplyValue;
  }

  double getSupplyAmount() {
    return supplyAmount == null ? 0 : MonetaryCalculator.value(supplyAmount);
  }

  void setSupplyAmount(double supplyAmount) {
    this.supplyAmount = supplyAmount;
  }

  double getTaxAmount0() {
    return taxAmount0 == null ? 0 : MonetaryCalculator.value(taxAmount0);
  }

  void setTaxAmount0(double taxAmount0) {
    this.taxAmount0 = taxAmount0;
  }

  double getTaxAmount1() {
    return taxAmount1 == null ? 0 : MonetaryCalculator.value(taxAmount1);
  }

  void setTaxAmount1(double taxAmount1) {
    this.taxAmount1 = taxAmount1;
  }

  double getTaxAmount2() {
    return taxAmount2 == null ? 0 : MonetaryCalculator.value(taxAmount2);
  }

  void setTaxAmount2(double taxAmount2) {
    this.taxAmount2 = taxAmount2;
  }

  double getOrderDiscountTotalAmount() {
    return orderDiscountTotalAmount == null
        ? 0
        : MonetaryCalculator.value(orderDiscountTotalAmount);
  }

  void setOrderDiscountTotalAmount(double orderDiscountTotalAmount) {
    this.orderDiscountTotalAmount = orderDiscountTotalAmount;
  }

  double getMenuDcAmt() {
    return MonetaryCalculator.value(menuDcAmt);
  }

  void setMenuDcAmt(double amt) {
    menuDcAmt = amt;
  }

  double getOrderDcAmt() {
    return MonetaryCalculator.value(orderDcAmt);
  }

  void setOrderDcAmt(double amt) {
    orderDcAmt = amt;
  }

  double getOrderTotalAmount() {
    return orderTotalAmount == null
        ? 0
        : MonetaryCalculator.value(orderTotalAmount);
  }

  void setOrderTotalAmount(double orderTotalAmount) {
    this.orderTotalAmount = orderTotalAmount;
  }

  bool? getTaxFreeYn() {
    return taxFreeYn;
  }

  void setTaxFreeYn(bool taxFreeYn) {
    this.taxFreeYn = taxFreeYn;
  }

  String? getTaxFreeReason() {
    return taxFreeReason;
  }

  void setTaxFreeReason(String taxFreeReason) {
    this.taxFreeReason = taxFreeReason;
  }

  double getPreTipTotalAmount() {
    return preTipTotalAmount == null
        ? 0
        : MonetaryCalculator.value(preTipTotalAmount);
  }

  void setPreTipTotalAmount(double preTipTotalAmount) {
    this.preTipTotalAmount = preTipTotalAmount;
  }

  double getPreTipAmount() {
    return preTipAmount == null ? 0 : MonetaryCalculator.value(preTipAmount);
  }

  void setPreTipAmount(double preTipAmount) {
    this.preTipAmount = preTipAmount;
  }

  double getPreTipTaxAmount() {
    return preTipTaxAmount == null
        ? 0
        : MonetaryCalculator.value(preTipTaxAmount);
  }

  void setPreTipTaxAmount(double preTipTaxAmount) {
    this.preTipTaxAmount = preTipTaxAmount;
  }

  double getPaymentTipTotalAmount() {
    return paymentTipTotalAmount == null
        ? 0
        : MonetaryCalculator.value(paymentTipTotalAmount);
  }

  void setPaymentTipTotalAmount(double paymentTipTotalAmount) {
    this.paymentTipTotalAmount = paymentTipTotalAmount;
  }

  double getPaymentTipAmount() {
    return paymentTipAmount == null
        ? 0
        : MonetaryCalculator.value(paymentTipAmount);
  }

  void setPaymentTipAmount(double paymentTipAmount) {
    this.paymentTipAmount = paymentTipAmount;
  }

  double getPaymentTipTaxAmount() {
    return paymentTipTaxAmount == null
        ? 0
        : MonetaryCalculator.value(paymentTipTaxAmount);
  }

  void setPaymentTipTaxAmount(double paymentTipTaxAmount) {
    this.paymentTipTaxAmount = paymentTipTaxAmount;
  }

  String? getServingEmployeeId() {
    return servingEmployeeId;
  }

  void setServingEmployeeId(String? servingEmployeeId) {
    this.servingEmployeeId = servingEmployeeId;
  }

  String? getOrderEmployeeId() {
    return orderEmployeeId;
  }

  void setOrderEmployeeId(String? orderEmployeeId) {
    this.orderEmployeeId = orderEmployeeId;
  }

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String? firstRegistrantId) {
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

  int? getPagerNumber() {
    return pagerNumber;
  }

  void setPagerNumber(int pagerNumber) {
    this.pagerNumber = pagerNumber;
  }

  String? getMemo() {
    return memo;
  }

  void setMemo(String memo) {
    this.memo = memo;
  }

  Future<Table?> getTable() {
    return Common.db!.tableDao.findById(tableId!);
  }

  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 437348300)
  // void setTable(Table table) {
  //     synchronized (this) {
  //         this.table = table;
  //         tableId = table == null ? null : table.getTableId();
  //         table__resolvedKey = tableId;
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
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 845970201)
  // Employee getOrderEmployeeInfo() {
  //     String __key = this.orderEmployeeId;
  //     if (orderEmployeeInfo__resolvedKey == null
  //             || orderEmployeeInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeDao targetDao = daoSession.getEmployeeDao();
  //         Employee orderEmployeeInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             orderEmployeeInfo = orderEmployeeInfoNew;
  //             orderEmployeeInfo__resolvedKey = __key;
  //         }
  //     }
  //     return orderEmployeeInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 17860081)
  // void setOrderEmployeeInfo(Employee orderEmployeeInfo) {
  //     synchronized (this) {
  //         this.orderEmployeeInfo = orderEmployeeInfo;
  //         orderEmployeeId = orderEmployeeInfo == null ? null
  //                 : orderEmployeeInfo.getEmployeeId();
  //         orderEmployeeInfo__resolvedKey = orderEmployeeId;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 1213829400)
  // Employee getServingEmployeeInfo() {
  //     String __key = this.servingEmployeeId;
  //     if (servingEmployeeInfo__resolvedKey == null
  //             || servingEmployeeInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeDao targetDao = daoSession.getEmployeeDao();
  //         Employee servingEmployeeInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             servingEmployeeInfo = servingEmployeeInfoNew;
  //             servingEmployeeInfo__resolvedKey = __key;
  //         }
  //     }
  //     return servingEmployeeInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 596020962)
  // void setServingEmployeeInfo(Employee servingEmployeeInfo) {
  //     synchronized (this) {
  //         this.servingEmployeeInfo = servingEmployeeInfo;
  //         servingEmployeeId = servingEmployeeInfo == null ? null
  //                 : servingEmployeeInfo.getEmployeeId();
  //         servingEmployeeInfo__resolvedKey = servingEmployeeId;
  //     }
  // }
  //

  Future<List<OrderHistoryItem>> getOrderHistoryItems() async {
    return Common.db!.orderHistoryItemDao
        .findAllByOrder(commonDate!, commonSerialNumber!);
  }

  Future<List<OrderHistoryItem>> getOrderHistoryItemsForPayment() {
    return Common.db!.orderHistoryItemDao
        .findAllForPayment(commonDate!, commonSerialNumber!);
  }

  // List<OrderHistoryItem> getOrderHistoryItemsForPayment() {
  //     if (daoSession == null) {
  //         return List();
  //     }
  //
  //     return daoSession.getOrderHistoryItemDao().queryBuilder()
  //             .where(OrderHistoryItemDao.Properties.CommonDate.eq(commonDate),
  //                     OrderHistoryItemDao.Properties.CommonSerialNumber.eq(commonSerialNumber),
  //                     OrderHistoryItemDao.Properties.Quantity.ge(0))
  //             .list();
  // }
  //
  // List<OrderHistoryItem> getOrderHistoryItemsDiscountList() {
  //     if (daoSession == null) {
  //         return List();
  //     }
  //
  //     QueryBuilder<OrderHistoryItem> qb = daoSession.getOrderHistoryItemDao().queryBuilder()
  //             .where(OrderHistoryItemDao.Properties.CommonDate.eq(commonDate),
  //                     OrderHistoryItemDao.Properties.CommonSerialNumber.eq(commonSerialNumber),
  //                     OrderHistoryItemDao.Properties.Price.lt(0));
  //
  //     return qb.list();
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 209942039)
  // synchronized void resetOrderHistoryItems() {
  //     orderHistoryItems = null;
  // }

  void resetOrderHistoryItems() {}

  Future<List<OrderHistoryDiscount>> getOrderHistoryDiscounts() {
    return Common.db!.orderHistoryDiscountDao
        .findAllByOrder(commonDate!, commonSerialNumber!);
  }

  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 2101156873)
  // synchronized void resetOrderHistoryDiscounts() {
  //     orderHistoryDiscounts = null;
  // }

  void createId() {
    id = commonDate! + "_" + commonSerialNumber.toString();
  }

  /// @return 세금 = 상품세금
  double getTaxes() {
    return MonetaryCalculator.value(
        getTaxAmount0() + getTaxAmount1() + getTaxAmount2());
  }

  /// @return 세금 = 봉사료세금
  double getTipTaxes() {
    return MonetaryCalculator.value(getPaymentTipTaxAmount());
  }

  //todo @SuppressWarnings({"CloneDoesntCallSuperClone", "unchecked"})
  // OrderHistory clone() {
  //     OrderHistory newOrderHistory = OrderHistory();
  //
  //     Class<OrderHistory> klass = (Class<OrderHistory>) newOrderHistory.getClass();
  //     java.lang.reflect.Method [] methods = klass.getMethods();
  //     for(java.lang.reflect.Method method : methods) {
  //         String methodName = method.getName();
  //         if(methodName.startsWith("set")) {
  //             String fieldName = methodName.replace("set", "");
  //             try {
  //                 if (klass.getDeclaredField(firstCharToLowerCase(fieldName)) != null) {
  //                     method.invoke(newOrderHistory,
  //                             this.getClass().getMethod("get".concat(fieldName)).invoke(this));
  //                 }
  //             } catch (NoSuchFieldException | IllegalArgumentException | IllegalAccessException | NoSuchMethodException | java.lang.reflect.InvocationTargetException ignored) {
  //             }
  //         }
  //     }
  //
  //     return newOrderHistory;
  // }

  static String firstCharToLowerCase(String string) {
    if (string == null || string.length == 0) {
      return string;
    }

    // char c[] = string.toCharArray();
    // c[0] = Character.toLowerCase(c[0]);
    // return String(c);
    return string.toLowerCase()[0];
  }

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

  Future<List<OrderHistoryKitchenMemo>> getOrderHistoryKitchenMemos() {
    return Common.db!.orderHistoryKitchenMemoDao
        .findAllByOrder(commonDate!, commonSerialNumber!);
  }

  Future<List<SalesAccountHistory>> getSalesAccountHistories() {
    return Common.db!.salesAccountHistoryDao
        .findAllBySale(commonDate!, commonSerialNumber!);
  }

  void resetSalesAccountHistories() {
    // salesAccountHistories = null;
  }

  String? getOperationTypeCode() {
    return this.operationTypeCode;
  }

  void setOperationTypeCode(String? operationTypeCode) {
    this.operationTypeCode = operationTypeCode;
  }

  // List<OrderHistoryItem> getDssItems() {
  //     return dssItems;
  // }
  //
  // void setDssItems(List<OrderHistoryItem> dssItems) {
  //     this.dssItems = dssItems;
  // }

  List<OrderHistoryKitchenMemo> getDssMemos() {
    return dssMemos;
  }

  void setDssMemos(List<OrderHistoryKitchenMemo> dssMemos) {
    this.dssMemos = dssMemos;
  }

  List<OrderHistoryDiscount> getDssDiscounts() {
    return dssDiscounts;
  }

  void setDssDiscounts(List<OrderHistoryDiscount> dssDiscounts) {
    this.dssDiscounts = dssDiscounts;
  }

  // bool isFromDss() {
  //     return daoSession == null && dssItems != null;
  // }

  bool? getConflictYn() {
    return this.conflictYn;
  }

  void setConflictYn(bool conflictYn) {
    this.conflictYn = conflictYn;
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 118123718)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getOrderHistoryDao() : null;
// }
}

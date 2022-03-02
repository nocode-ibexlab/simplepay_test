import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

@Entity(tableName: "SL1_SLS_HIS", indices: const [
  Index(value: ["COM_DT", "SL_SNO"], unique: true)
])
class SalesHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "SL_SNO")
  int? saleSerialNumber;

  @ColumnInfo(name: "TAB_ID")
  String? tableId;

  @ColumnInfo(name: "CHECK_LINK")
  String? checkLink;

  @ColumnInfo(name: "OPR_TP_CD")
  String? operationTypeCode;

  @ColumnInfo(name: "BIZ_SEC_CD")
  String? businessSectionCode;

  @ColumnInfo(name: "SPLY_AMT")
  double? supplyAmount;

  @ColumnInfo(name: "SPLY_VAL")
  double? supplyValue;

  @ColumnInfo(name: "TAX_AMT_0")
  double? taxAmount0;

  @ColumnInfo(name: "TAX_AMT_1")
  double? taxAmount1;

  @ColumnInfo(name: "TAX_AMT_2")
  double? taxAmount2;

  @ColumnInfo(name: "DC_TOT_AMT")
  double? discountTotalAmount;

  @ColumnInfo(name: "TOT_AMT")
  double? totalAmount;

  @ColumnInfo(name: "TAX_FREE_YN")
  bool? taxFreeYn;

  @ColumnInfo(name: "TAX_FREE_RESN")
  String? taxFreeReason;

  @ColumnInfo(name: "TIP_TOT_AMT")
  double? tipTotalAmount;

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

  @ColumnInfo(name: "CNCL_LNK")
  String? cancelLink;

  @ColumnInfo(name: "CNCL_RESN")
  String? cancelReason;

  @ColumnInfo(name: "CNCL_TP_CD")
  String? cancelTypeCode;

  @ColumnInfo(name: "CNCL_EMP_ID")
  String? cancelEmployeeId;

  @ColumnInfo(name: "CLS_BIZ_TP_CD")
  String? closeBusinessTypeCode;

  @ColumnInfo(name: "MMO")
  String? memo;

  @ColumnInfo(name: "SLS_ACC_SNO")
  int? salesAccountSerialNumber;

  @ColumnInfo(name: "ITM_SNO")
  int? itemSerialNumber;

  @ColumnInfo(name: "DAT_0")
  String? data0;

  @ColumnInfo(name: "DAT_1")
  String? data1;

  @ColumnInfo(name: "DAT_2")
  String? data2;

  @ColumnInfo(name: "DAT_3")
  String? data3;

  @ColumnInfo(name: "DAT_4")
  String? data4;

  @ColumnInfo(name: "DAT_5")
  String? data5;

  @ColumnInfo(name: "DAT_6")
  String? data6;

  @ColumnInfo(name: "DAT_7")
  String? data7;

  @ColumnInfo(name: "DAT_8")
  String? data8;

  @ColumnInfo(name: "DAT_9")
  String? data9;

  @ColumnInfo(name: "DAT_10")
  String? data10;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  @ColumnInfo(name: "STAFF_BNK_YN")
  bool? staffBankYn;

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

  //todo @ToOne(joinProperty = "orderEmployeeId")
  @ignore
  Employee? orderEmployeeInfo;

  //todo @ToOne(joinProperty = "servingEmployeeId")
  @ignore
  Employee? servingEmployeeInfo;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1445805435)
  // transient SalesHistoryDao myDao;

  //todo @Generated(hash = 166110428)
  // transient String orderEmployeeInfo__resolvedKey;

  //todo @Generated(hash = 690646894)
  // transient String servingEmployeeInfo__resolvedKey;

  //todo @Keep
  // SalesHistory() {
  //     cancelTypeCode = "";
  // }

  //todo @Generated(hash = 623255494)
  SalesHistory(
      {String? id,
      String? commonDate,
      int? saleSerialNumber,
      String? tableId,
      String? checkLink,
      String? operationTypeCode,
      String? businessSectionCode,
      double? supplyAmount,
      double? supplyValue,
      double? taxAmount0,
      double? taxAmount1,
      double? taxAmount2,
      double? discountTotalAmount,
      double? totalAmount,
      bool? taxFreeYn,
      String? taxFreeReason,
      double? tipTotalAmount,
      double? preTipTotalAmount,
      double? preTipAmount,
      double? preTipTaxAmount,
      double? paymentTipTotalAmount,
      double? paymentTipAmount,
      double? paymentTipTaxAmount,
      String? servingEmployeeId,
      String? orderEmployeeId,
      String? cancelLink,
      String? cancelReason,
      String? cancelTypeCode,
      String? cancelEmployeeId,
      String? closeBusinessTypeCode,
      String? memo,
      int? salesAccountSerialNumber,
      int? itemSerialNumber,
      String? data0,
      String? data1,
      String? data2,
      String? data3,
      String? data4,
      String? data5,
      String? data6,
      String? data7,
      String? data8,
      String? data9,
      String? data10,
      bool? synchronizedYn,
      bool? staffBankYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.saleSerialNumber = saleSerialNumber;
    this.tableId = tableId;
    this.checkLink = checkLink;
    this.operationTypeCode = operationTypeCode;
    this.businessSectionCode = businessSectionCode;
    this.supplyAmount = supplyAmount;
    this.supplyValue = supplyValue;
    this.taxAmount0 = taxAmount0;
    this.taxAmount1 = taxAmount1;
    this.taxAmount2 = taxAmount2;
    this.discountTotalAmount = discountTotalAmount;
    this.totalAmount = totalAmount;
    this.taxFreeYn = taxFreeYn;
    this.taxFreeReason = taxFreeReason;
    this.tipTotalAmount = tipTotalAmount;
    this.preTipTotalAmount = preTipTotalAmount;
    this.preTipAmount = preTipAmount;
    this.preTipTaxAmount = preTipTaxAmount;
    this.paymentTipTotalAmount = paymentTipTotalAmount;
    this.paymentTipAmount = paymentTipAmount;
    this.paymentTipTaxAmount = paymentTipTaxAmount;
    this.servingEmployeeId = servingEmployeeId;
    this.orderEmployeeId = orderEmployeeId;
    this.cancelLink = cancelLink;
    this.cancelReason = cancelReason;
    this.cancelTypeCode = cancelTypeCode ?? "";
    this.cancelEmployeeId = cancelEmployeeId;
    this.closeBusinessTypeCode = closeBusinessTypeCode;
    this.memo = memo;
    this.salesAccountSerialNumber = salesAccountSerialNumber;
    this.itemSerialNumber = itemSerialNumber;
    this.data0 = data0;
    this.data1 = data1;
    this.data2 = data2;
    this.data3 = data3;
    this.data4 = data4;
    this.data5 = data5;
    this.data6 = data6;
    this.data7 = data7;
    this.data8 = data8;
    this.data9 = data9;
    this.data10 = data10;
    this.synchronizedYn = synchronizedYn;
    this.staffBankYn = staffBankYn;
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

  String? getTableId() {
    return tableId;
  }

  void setTableId(String? tableId) {
    this.tableId = tableId;
  }

  String? getCheckLink() {
    return checkLink;
  }

  void setCheckLink(String? checkLink) {
    this.checkLink = checkLink;
  }

  String? getBusinessSectionCode() {
    return businessSectionCode;
  }

  void setBusinessSectionCode(String? businessSectionCode) {
    this.businessSectionCode = businessSectionCode;
  }

  double getSupplyAmount() {
    return MonetaryCalculator.value(supplyAmount);
  }

  void setSupplyAmount(double supplyAmount) {
    this.supplyAmount = supplyAmount;
  }

  double getSupplyValue() {
    return MonetaryCalculator.value(supplyValue);
  }

  void setSupplyValue(double supplyValue) {
    this.supplyValue = supplyValue;
  }

  double getTaxAmount0() {
    return MonetaryCalculator.value(taxAmount0);
  }

  void setTaxAmount0(double taxAmount0) {
    this.taxAmount0 = taxAmount0;
  }

  double getTaxAmount1() {
    return MonetaryCalculator.value(taxAmount1);
  }

  void setTaxAmount1(double taxAmount1) {
    this.taxAmount1 = taxAmount1;
  }

  double getTaxAmount2() {
    return MonetaryCalculator.value(taxAmount2);
  }

  void setTaxAmount2(double taxAmount2) {
    this.taxAmount2 = taxAmount2;
  }

  double getDiscountTotalAmount() {
    return MonetaryCalculator.value(discountTotalAmount);
  }

  void setDiscountTotalAmount(double discountTotalAmount) {
    this.discountTotalAmount = discountTotalAmount;
  }

  double getTotalAmount() {
    return MonetaryCalculator.value(totalAmount);
  }

  void setTotalAmount(double totalAmount) {
    this.totalAmount = totalAmount;
  }

  bool? getTaxFreeYn() {
    return taxFreeYn;
  }

  void setTaxFreeYn(bool? taxFreeYn) {
    this.taxFreeYn = taxFreeYn;
  }

  String? getTaxFreeReason() {
    return taxFreeReason;
  }

  void setTaxFreeReason(String? taxFreeReason) {
    this.taxFreeReason = taxFreeReason;
  }

  double getTipTotalAmount() {
    return MonetaryCalculator.value(tipTotalAmount);
  }

  void setTipTotalAmount(double tipTotalAmount) {
    this.tipTotalAmount = tipTotalAmount;
  }

  double getPreTipTotalAmount() {
    return MonetaryCalculator.value(preTipTotalAmount);
  }

  void setPreTipTotalAmount(double preTipTotalAmount) {
    this.preTipTotalAmount = preTipTotalAmount;
  }

  double getPreTipAmount() {
    return MonetaryCalculator.value(preTipAmount);
  }

  void setPreTipAmount(double preTipAmount) {
    this.preTipAmount = preTipAmount;
  }

  double getPreTipTaxAmount() {
    return MonetaryCalculator.value(preTipTaxAmount);
  }

  void setPreTipTaxAmount(double preTipTaxAmount) {
    this.preTipTaxAmount = preTipTaxAmount;
  }

  double getPaymentTipTotalAmount() {
    return MonetaryCalculator.value(paymentTipTotalAmount);
  }

  void setPaymentTipTotalAmount(double paymentTipTotalAmount) {
    this.paymentTipTotalAmount = paymentTipTotalAmount;
  }

  double getPaymentTipAmount() {
    return MonetaryCalculator.value(paymentTipAmount);
  }

  void setPaymentTipAmount(double paymentTipAmount) {
    this.paymentTipAmount = paymentTipAmount;
  }

  double getPaymentTipTaxAmount() {
    return MonetaryCalculator.value(paymentTipTaxAmount);
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

  String? getCancelLink() {
    return cancelLink;
  }

  void setCancelLink(String? cancelLink) {
    this.cancelLink = cancelLink;
  }

  String? getCancelReason() {
    return cancelReason;
  }

  void setCancelReason(String cancelReason) {
    this.cancelReason = cancelReason;
  }

  String? getCancelTypeCode() {
    return cancelTypeCode;
  }

  void setCancelTypeCode(String cancelTypeCode) {
    this.cancelTypeCode = cancelTypeCode;
  }

  String? getCancelEmployeeId() {
    return cancelEmployeeId;
  }

  void setCancelEmployeeId(String? cancelEmployeeId) {
    this.cancelEmployeeId = cancelEmployeeId;
  }

  String? getCloseBusinessTypeCode() {
    return closeBusinessTypeCode;
  }

  void setCloseBusinessTypeCode(String? closeBusinessTypeCode) {
    this.closeBusinessTypeCode = closeBusinessTypeCode;
  }

  String? getMemo() {
    return memo;
  }

  void setMemo(String memo) {
    this.memo = memo;
  }

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }

  bool? getStaffBankYn() {
    return staffBankYn;
  }

  void setStaffBankYn(bool staffBankYn) {
    this.staffBankYn = staffBankYn;
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
    // NumberFormat df = NumberFormat("0000");
    NumberFormat df = NumberFormat("0000");
    id = commonDate! + "_" + df.format(saleSerialNumber);
  }

  /**
   * @return 세금 = 상품세금
   */
  double getTaxes() {
    return MonetaryCalculator.value(taxAmount0! + taxAmount1! + taxAmount2!);
  }

  /**
   * @return 세금 = 봉사료세금
   */
  double getTipTaxes() {
    return MonetaryCalculator.value(paymentTipTaxAmount);
  }

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

  Future<List<SalesHistoryItem>> getSaleItems() {
    return Common.db!.salesHistoryItemDao
        .findAllBySale(commonDate!, saleSerialNumber!);
  }

  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 161510769)
  // List<SalesHistoryItem> getSaleItems() {
  //     if (saleItems == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesHistoryItemDao targetDao = daoSession.getSalesHistoryItemDao();
  //         List<SalesHistoryItem> saleItemsNew = targetDao._querySalesHistory_SaleItems(commonDate,
  //                 saleSerialNumber);
  //         synchronized (this) {
  //             if (saleItems == null) {
  //                 saleItems = saleItemsNew;
  //             }
  //         }
  //     }
  //     return saleItems;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1745347085)
  // synchronized void resetSaleItems() {
  //     saleItems = null;
  // }
  //

  Future<List<SalesHistoryDiscount>> getSaleDiscounts() {
    return Common.db!.salesHistoryDiscountDao
        .findAllBySale(commonDate!, saleSerialNumber!);
  }

  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1127162279)
  // synchronized void resetSaleDiscounts() {
  //     saleDiscounts = null;
  // }
  //

  Future<List<SalesAccountHistory>> getSaleACs() {
    return Common.db!.salesAccountHistoryDao
        .findAllBySale(commonDate!, saleSerialNumber!);
  }

  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 705164358)
  // List<SalesAccountHistory> getSaleACs() {
  //     if (saleACs == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesAccountHistoryDao targetDao = daoSession.getSalesAccountHistoryDao();
  //         List<SalesAccountHistory> saleACsNew = targetDao._querySalesHistory_SaleACs(commonDate,
  //                 saleSerialNumber);
  //         synchronized (this) {
  //             if (saleACs == null) {
  //                 saleACs = saleACsNew;
  //             }
  //         }
  //     }
  //     return saleACs;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1733602524)
  // synchronized void resetSaleACs() {
  //     saleACs = null;
  // }
  Future<void> update() async {
    await Common.db!.salesHistoryDao.updateOne(this);
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

  String? getOperationTypeCode() {
    return this.operationTypeCode;
  }

  void setOperationTypeCode(String? operationTypeCode) {
    this.operationTypeCode = operationTypeCode;
  }

  String? getData1() {
    return this.data1;
  }

  void setData1(String? data1) {
    this.data1 = data1;
  }

  String? getData2() {
    return this.data2;
  }

  void setData2(String data2) {
    this.data2 = data2;
  }

  String? getData3() {
    return this.data3;
  }

  void setData3(String? data3) {
    this.data3 = data3;
  }

  String? getData4() {
    return this.data4;
  }

  void setData4(String data4) {
    this.data4 = data4;
  }

  String? getData5() {
    return this.data5;
  }

  void setData5(String? data5) {
    this.data5 = data5;
  }

  String? getData6() {
    return this.data6;
  }

  void setData6(String data6) {
    this.data6 = data6;
  }

  String? getData7() {
    return this.data7;
  }

  void setData7(String? data7) {
    this.data7 = data7;
  }

  String? getData8() {
    return this.data8;
  }

  void setData8(String data8) {
    this.data8 = data8;
  }

  String? getData9() {
    return this.data9;
  }

  void setData9(String data9) {
    this.data9 = data9;
  }

  String? getData10() {
    return this.data10;
  }

  void setData10(String data10) {
    this.data10 = data10;
  }

  String? getData0() {
    return this.data0;
  }

  void setData0(String data0) {
    this.data0 = data0;
  }

  void setSalesAccountSerialNumber(int? salesAccountSerialNumber) {
    this.salesAccountSerialNumber = salesAccountSerialNumber;
  }

  void setItemSerialNumber(int? itemSerialNumber) {
    this.itemSerialNumber = itemSerialNumber;
  }

  int? getSalesAccountSerialNumber() {
    return this.salesAccountSerialNumber;
  }

  int? getItemSerialNumber() {
    return this.itemSerialNumber;
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 338341291)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getSalesHistoryDao() : null;
// }
}

@DatabaseView('SELECT DISTINCT COM_DT FROM SL1_SLS_HIS',
    viewName: 'SL1_SLS_HIS_COM_DT')
class SalesHistoryDate {
  @ColumnInfo(name: "COM_DT")
  String? date;

  SalesHistoryDate(this.date);
}

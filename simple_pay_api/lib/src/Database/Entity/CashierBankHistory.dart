import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BI1_CSHR_BNK_HIS", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "CDRW_SEC_CD"], unique: true)
])
class CashierBankHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "CDRW_SEC_CD") //돈통
  String? cashdrawSectionCode;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "BIZ_OPN_CLS_SEC_CD")
  String? businessOpenCloseSectionCode;

  @ColumnInfo(name: "CSHR_TP_CD")
  String? cashierTypeCode;

  @ColumnInfo(name: "BIZ_START_DTTM")
  String? businessStartDatetime;

  @ColumnInfo(name: "BIZ_END_DTTM")
  String? businessEndDatetime;

  @ColumnInfo(name: "BIZ_CHANGE_DTTM")
  String? businessChangeDatetime;

  @ColumnInfo(name: "SLS_CNT")
  int? salesCount;

  @ColumnInfo(name: "TAB_TURN_RATE")
  double? tableTurnoverRate;

  @ColumnInfo(name: "EMP_ID")
  String? employeeId;

  @ColumnInfo(name: "OPN_BIZ_CASH_TOT_AMT")
  double? openBusinessCashTotalAmount;

  @ColumnInfo(name: "CLS_BIZ_CASH_TOT_AMT")
  double? closeBusinessCashTotalAmount;

  @ColumnInfo(name: "BIZ_CHANGE_CASH_TOT_AMT")
  double? businessChangeCashTotalAmount;

  @ColumnInfo(name: "POS_CASH_TOT_AMT")
  double? posCashTotalAmount;

  @ColumnInfo(name: "CASH_DIFF_AMT")
  double? cashDifferenceAmount;

  @ColumnInfo(name: "CASH_DIFF_RESN")
  String? cashDifferenceReason;

  @ColumnInfo(name: "CASH_DEPSIT_TOT_AMT")
  double? cashDepositTotalAmount;

  @ColumnInfo(name: "CASH_WDRWL_TOT_AMT")
  double? cashWithdrawalAmount;

  @ColumnInfo(name: "SLS_TOT_CASH_AMT")
  double? salesTotalCashAmount;

  @ColumnInfo(name: "SLS_TOT_AMT")
  double? salesTotalAmount;

  @ColumnInfo(name: "DC_TOT_AMT")
  double? discountTotalAmount;

  @ColumnInfo(name: "TIP_TOT_AMT")
  double? tipTotalAmount;

  @ColumnInfo(name: "CNCL_SNO")
  int? cancelSerialNumber;

  @ColumnInfo(name: "SHIFT_SNO")
  String? shiftSerialNumber;

  @ColumnInfo(name: "BATCH_ID")
  int? batchId;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

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

  //todo @ToOne(joinProperty = "storeTerminalId")
  @ignore
  StoreTerminal? storeTerminal;

  //todo @ToOne(joinProperty = "employeeId")
  @ignore
  Employee? employee;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "commonDate", referencedName = "commonDate"),
  //         @JoinProperty(name = "commonSerialNumber", referencedName = "commonSerialNumber")
  // })
  @ignore
  List<CashierBankHistoryBill>? cashierBankHistoryBills;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 401955751)
  // transient CashierBankHistoryDao myDao;

  //todo @Keep
  // CashierBankHistory() {
  //     this.cancelSerialNumber = 0;
  //     this.shiftSerialNumber = "";
  // }

  //todo @Generated(hash = 756631812)
  CashierBankHistory(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      String? cashdrawSectionCode,
      String? storeTerminalId,
      String? businessOpenCloseSectionCode,
      String? cashierTypeCode,
      String? businessStartDatetime,
      String? businessEndDatetime,
      String? businessChangeDatetime,
      int? salesCount,
      double? tableTurnoverRate,
      String? employeeId,
      double? openBusinessCashTotalAmount,
      double? closeBusinessCashTotalAmount,
      double? businessChangeCashTotalAmount,
      double? posCashTotalAmount,
      double? cashDifferenceAmount,
      String? cashDifferenceReason,
      double? cashDepositTotalAmount,
      double? cashWithdrawalAmount,
      double? salesTotalCashAmount,
      double? salesTotalAmount,
      double? discountTotalAmount,
      double? tipTotalAmount,
      int? cancelSerialNumber,
      String? shiftSerialNumber,
      int? batchId,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.cashdrawSectionCode = cashdrawSectionCode;
    this.storeTerminalId = storeTerminalId;
    this.businessOpenCloseSectionCode = businessOpenCloseSectionCode;
    this.cashierTypeCode = cashierTypeCode;
    this.businessStartDatetime = businessStartDatetime;
    this.businessEndDatetime = businessEndDatetime;
    this.businessChangeDatetime = businessChangeDatetime;
    this.salesCount = salesCount;
    this.tableTurnoverRate = tableTurnoverRate;
    this.employeeId = employeeId;
    this.openBusinessCashTotalAmount = openBusinessCashTotalAmount;
    this.closeBusinessCashTotalAmount = closeBusinessCashTotalAmount;
    this.businessChangeCashTotalAmount = businessChangeCashTotalAmount;
    this.posCashTotalAmount = posCashTotalAmount;
    this.cashDifferenceAmount = cashDifferenceAmount;
    this.cashDifferenceReason = cashDifferenceReason;
    this.cashDepositTotalAmount = cashDepositTotalAmount;
    this.cashWithdrawalAmount = cashWithdrawalAmount;
    this.salesTotalCashAmount = salesTotalCashAmount;
    this.salesTotalAmount = salesTotalAmount;
    this.discountTotalAmount = discountTotalAmount;
    this.tipTotalAmount = tipTotalAmount;
    this.cancelSerialNumber = cancelSerialNumber ?? 0;
    this.shiftSerialNumber = shiftSerialNumber ?? "";
    this.batchId = batchId;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 151650384)
  // transient String storeTerminal__resolvedKey;

  //todo @Generated(hash = 1937818519)
  // transient String employee__resolvedKey;

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

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  String? getCashdrawSectionCode() {
    return cashdrawSectionCode;
  }

  void setCashdrawSectionCode(String? cashdrawSectionCode) {
    this.cashdrawSectionCode = cashdrawSectionCode;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getBusinessOpenCloseSectionCode() {
    return businessOpenCloseSectionCode;
  }

  void setBusinessOpenCloseSectionCode(String businessOpenCloseSectionCode) {
    this.businessOpenCloseSectionCode = businessOpenCloseSectionCode;
  }

  String? getCashierTypeCode() {
    return cashierTypeCode;
  }

  void setCashierTypeCode(String cashierTypeCode) {
    this.cashierTypeCode = cashierTypeCode;
  }

  DateTime getBusinessStartDate() {
    // return CommonUtil.convertDateForm1(businessStartDatetime);
    return CommonUtil.convertStringToDate(businessStartDatetime);
  }

  DateTime getBusinessChangeDate() {
    // return CommonUtil.convertDateForm1(businessChangeDatetime);
    return CommonUtil.convertStringToDate(businessChangeDatetime);
  }

  String? getBusinessStartDatetime() {
    return businessStartDatetime;
  }

  void setBusinessStartDatetime(String? businessStartDatetime) {
    this.businessStartDatetime = businessStartDatetime;
  }

  String? getBusinessEndDatetime() {
    return businessEndDatetime;
  }

  void setBusinessEndDatetime(String businessEndDatetime) {
    this.businessEndDatetime = businessEndDatetime;
  }

  DateTime getBusinessEndDate() {
    // return CommonUtil.convertDateForm1(businessEndDatetime);
    return CommonUtil.convertStringToDate(businessEndDatetime);
  }

  int? getSalesCount() {
    return salesCount;
  }

  void setSalesCount(int salesCount) {
    this.salesCount = salesCount;
  }

  double getTableTurnoverRate() {
    return tableTurnoverRate == null
        ? 0
        : MonetaryCalculator(tableTurnoverRate).getValue();
  }

  void setTableTurnoverRate(double tableTurnoverRate) {
    this.tableTurnoverRate = tableTurnoverRate;
  }

  String? getEmployeeId() {
    return employeeId;
  }

  void setEmployeeId(String? employeeId) {
    this.employeeId = employeeId;
  }

  double getOpenBusinessCashTotalAmount() {
    return openBusinessCashTotalAmount == null
        ? 0
        : MonetaryCalculator(openBusinessCashTotalAmount).getValue();
  }

  void setOpenBusinessCashTotalAmount(double openBusinessCashTotalAmount) {
    this.openBusinessCashTotalAmount = openBusinessCashTotalAmount;
  }

  double getCloseBusinessCashTotalAmount() {
    return closeBusinessCashTotalAmount == null
        ? 0
        : MonetaryCalculator(closeBusinessCashTotalAmount).getValue();
  }

  void setCloseBusinessCashTotalAmount(double closeBusinessCashTotalAmount) {
    this.closeBusinessCashTotalAmount = closeBusinessCashTotalAmount;
  }

  double getPosCashTotalAmount() {
    return posCashTotalAmount == null
        ? 0
        : MonetaryCalculator(posCashTotalAmount).getValue();
  }

  void setPosCashTotalAmount(double posCashTotalAmount) {
    this.posCashTotalAmount = posCashTotalAmount;
  }

  double getCashDifferenceAmount() {
    return cashDifferenceAmount == null
        ? 0
        : MonetaryCalculator(cashDifferenceAmount).getValue();
  }

  void setCashDifferenceAmount(double cashDifferenceAmount) {
    this.cashDifferenceAmount = cashDifferenceAmount;
  }

  String? getCashDifferenceReason() {
    return cashDifferenceReason;
  }

  void setCashDifferenceReason(String cashDifferenceReason) {
    this.cashDifferenceReason = cashDifferenceReason;
  }

  double getCashDepositTotalAmount() {
    return cashDepositTotalAmount == null
        ? 0
        : MonetaryCalculator(cashDepositTotalAmount).getValue();
  }

  void setCashDepositTotalAmount(double cashDepositTotalAmount) {
    this.cashDepositTotalAmount = cashDepositTotalAmount;
  }

  double getCashWithdrawalAmount() {
    return cashWithdrawalAmount == null
        ? 0
        : MonetaryCalculator(cashWithdrawalAmount).getValue();
  }

  void setCashWithdrawalAmount(double cashWithdrawalAmount) {
    this.cashWithdrawalAmount = cashWithdrawalAmount;
  }

  double getSalesTotalAmount() {
    return salesTotalAmount == null
        ? 0
        : MonetaryCalculator(salesTotalAmount).getValue();
  }

  void setSalesTotalAmount(double salesTotalAmount) {
    this.salesTotalAmount = salesTotalAmount;
  }

  double getDiscountTotalAmount() {
    return discountTotalAmount == null
        ? 0
        : MonetaryCalculator(discountTotalAmount).getValue();
  }

  void setDiscountTotalAmount(double discountTotalAmount) {
    this.discountTotalAmount = discountTotalAmount;
  }

  double getTipTotalAmount() {
    return tipTotalAmount == null
        ? 0
        : MonetaryCalculator(tipTotalAmount).getValue();
  }

  void setTipTotalAmount(double tipTotalAmount) {
    this.tipTotalAmount = tipTotalAmount;
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

  void setLastReviserId(String? lastReviserId) {
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

  int? getBatchId() {
    return batchId;
  }

  void setBatchId(int batchId) {
    this.batchId = batchId;
  }

  void createId() {
    id = commonDate! +
        "_" +
        commonSerialNumber.toString() +
        "_" +
        cashdrawSectionCode!;
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

  int? getCancelSerialNumber() {
    return this.cancelSerialNumber;
  }

  void setCancelSerialNumber(int? cancelSerialNumber) {
    this.cancelSerialNumber = cancelSerialNumber;
  }

  String? getShiftSerialNumber() {
    return this.shiftSerialNumber;
  }

  void setShiftSerialNumber(String shiftSerialNumber) {
    this.shiftSerialNumber = shiftSerialNumber;
  }

  String? getBusinessChangeDatetime() {
    return this.businessChangeDatetime;
  }

  void setBusinessChangeDatetime(String? businessChangeDatetime) {
    this.businessChangeDatetime = businessChangeDatetime;
  }

  // BasicDataItem getCashdrawSectionInfo() {
  //     return daoSession.getBasicDataItemDao().queryBuilder()
  //             .where(BasicDataItemDao.Properties.BasicDataItemCodeName.eq(cashdrawSectionCode))
  //             .unique();
  // }
  Future<BasicDataItem?> getCashdrawSectionInfo() async {
    return await Common.db!.basicDataItemDao
        .findByBasicDataItemCodeName(cashdrawSectionCode!);
  }

  //
  //     /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 319098230)
  // StoreTerminal getStoreTerminal() {
  //     String __key = this.storeTerminalId;
  //     if (storeTerminal__resolvedKey == null || storeTerminal__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         StoreTerminalDao targetDao = daoSession.getStoreTerminalDao();
  //         StoreTerminal storeTerminalNew = targetDao.load(__key);
  //         synchronized (this) {
  //             storeTerminal = storeTerminalNew;
  //             storeTerminal__resolvedKey = __key;
  //         }
  //     }
  //     return storeTerminal;
  // }
  Future<StoreTerminal?> getStoreTerminal() async {
    return await Common.db!.storeTerminalDao.findById(storeTerminalId!);
  }

  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 761325219)
  // void setStoreTerminal(StoreTerminal storeTerminal) {
  //     synchronized (this) {
  //         this.storeTerminal = storeTerminal;
  //         storeTerminalId = storeTerminal == null ? null
  //                 : storeTerminal.getStoreTerminalId();
  //         storeTerminal__resolvedKey = storeTerminalId;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 1807065322)
  // Employee getEmployee() {
  //     String __key = this.employeeId;
  //     if (employee__resolvedKey == null || employee__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeDao targetDao = daoSession.getEmployeeDao();
  //         Employee employeeNew = targetDao.load(__key);
  //         synchronized (this) {
  //             employee = employeeNew;
  //             employee__resolvedKey = __key;
  //         }
  //     }
  //     return employee;
  // }
  Future<Employee?> getEmployee() async {
    return await Common.db!.employeeDao.findById(employeeId!);
  }

  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 2030934486)
  // void setEmployee(Employee employee) {
  //     synchronized (this) {
  //         this.employee = employee;
  //         employeeId = employee == null ? null : employee.getEmployeeId();
  //         employee__resolvedKey = employeeId;
  //     }
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 1648426517)
  // List<CashierBankHistoryBill> getCashierBankHistoryBills() {
  //     if (cashierBankHistoryBills == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         CashierBankHistoryBillDao targetDao = daoSession.getCashierBankHistoryBillDao();
  //         List<CashierBankHistoryBill> cashierBankHistoryBillsNew = targetDao
  //                 ._queryCashierBankHistory_CashierBankHistoryBills(commonDate,
  //                         commonSerialNumber);
  //         synchronized (this) {
  //             if (cashierBankHistoryBills == null) {
  //                 cashierBankHistoryBills = cashierBankHistoryBillsNew;
  //             }
  //         }
  //     }
  //     return cashierBankHistoryBills;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 2025762601)
  // synchronized void resetCashierBankHistoryBills() {
  //     cashierBankHistoryBills = null;
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

  double? getBusinessChangeCashTotalAmount() {
    return this.businessChangeCashTotalAmount;
  }

  void setBusinessChangeCashTotalAmount(double? businessChangeCashTotalAmount) {
    this.businessChangeCashTotalAmount = businessChangeCashTotalAmount;
  }

  double getSalesTotalCashAmount() {
    return salesTotalCashAmount == null
        ? 0
        : MonetaryCalculator(salesTotalCashAmount).getValue();
  }

  void setSalesTotalCashAmount(double salesTotalCashAmount) {
    this.salesTotalCashAmount = salesTotalCashAmount;
  }

// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 513205281)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getCashierBankHistoryDao() : null;
// }

}

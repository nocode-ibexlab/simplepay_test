import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "SL1_SLS_ACC_HIS_TIP", indices: const [
  Index(value: ["COM_DT", "SL_SNO", "SLS_ACC_SNO"], unique: true)
])
class SalesAccountHistoryTip {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "SL_SNO")
  int? saleSerialNumber;

  @ColumnInfo(name: "SLS_ACC_SNO")
  int? salesAccountSerialNumber;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "PAY_SEC_CD")
  String? paymentSectionCode;

  @ColumnInfo(name: "APRVL_TP_CD")
  String? approvalTypeCode;

  @ColumnInfo(name: "CDRW_SEC_CD")
  String? cashdrawSectionCode;

  @ColumnInfo(name: "PAY_AMT")
  double? paymentAmount;

  @ColumnInfo(name: "TAX_AMT")
  double? taxAmount;

  @ColumnInfo(name: "TIP_RECPT_EMP_ID")
  String? tipReceiptEmployeeId;

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

  //todo @ToOne(joinProperty = "paymentSectionCode")
  @ignore
  BasicDataItem? paymentSectionInfo;

  //todo @ToOne(joinProperty = "cashdrawSectionCode")
  @ignore
  BasicDataItem? ashdrawSectionInfo;

  //todo @ToOne(joinProperty = "tipReceiptEmployeeId")
  @ignore
  Employee? tipEmployeeInfo;

  //todo @ToOne(joinProperty = "lastReviserId")
  @ignore
  Employee? modEmployeeInfo;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 362649474)
  // transient SalesAccountHistoryTipDao myDao;

  //todo @Generated(hash = 681337254)
  // transient String paymentSectionInfo__resolvedKey;

  //todo @Generated(hash = 1797608970)
  // transient String ashdrawSectionInfo__resolvedKey;

  //todo @Generated(hash = 1620492697)
  // transient String tipEmployeeInfo__resolvedKey;

  //todo @Generated(hash = 148481124)
  // transient String modEmployeeInfo__resolvedKey;

  //todo @Generated(hash = 1418500664)
  // SalesAccountHistoryTip() {
  // }

  //todo @Generated(hash = 1965025951)
  SalesAccountHistoryTip(
      {String? id,
      String? commonDate,
      int? saleSerialNumber,
      int? salesAccountSerialNumber,
      String? storeTerminalId,
      String? paymentSectionCode,
      String? approvalTypeCode,
      String? cashdrawSectionCode,
      double? paymentAmount,
      double? taxAmount,
      String? tipReceiptEmployeeId,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.saleSerialNumber = saleSerialNumber;
    this.salesAccountSerialNumber = salesAccountSerialNumber;
    this.storeTerminalId = storeTerminalId;
    this.paymentSectionCode = paymentSectionCode;
    this.approvalTypeCode = approvalTypeCode;
    this.cashdrawSectionCode = cashdrawSectionCode;
    this.paymentAmount = paymentAmount;
    this.taxAmount = taxAmount;
    this.tipReceiptEmployeeId = tipReceiptEmployeeId;
    this.synchronizedYn = synchronizedYn;
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

  int? getSalesAccountSerialNumber() {
    return salesAccountSerialNumber;
  }

  void setSalesAccountSerialNumber(int salesAccountSerialNumber) {
    this.salesAccountSerialNumber = salesAccountSerialNumber;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getPaymentSectionCode() {
    return paymentSectionCode;
  }

  void setPaymentSectionCode(String paymentSectionCode) {
    this.paymentSectionCode = paymentSectionCode;
  }

  String? getApprovalTypeCode() {
    return approvalTypeCode;
  }

  void setApprovalTypeCode(String approvalTypeCode) {
    this.approvalTypeCode = approvalTypeCode;
  }

  String? getCashdrawSectionCode() {
    return cashdrawSectionCode;
  }

  void setCashdrawSectionCode(String cashdrawSectionCode) {
    this.cashdrawSectionCode = cashdrawSectionCode;
  }

  double? getPaymentAmount() {
    return paymentAmount;
  }

  void setPaymentAmount(double paymentAmount) {
    this.paymentAmount = paymentAmount;
  }

  double? getTaxAmount() {
    return taxAmount;
  }

  void setTaxAmount(double taxAmount) {
    this.taxAmount = taxAmount;
  }

  String? getTipReceiptEmployeeId() {
    return tipReceiptEmployeeId;
  }

  void setTipReceiptEmployeeId(String tipReceiptEmployeeId) {
    this.tipReceiptEmployeeId = tipReceiptEmployeeId;
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

  void createId() {
    NumberFormat df1 = NumberFormat("0000");
    NumberFormat df2 = NumberFormat("00000");
    id = commonDate! +
        "+" +
        df1.format(saleSerialNumber) +
        "_" +
        df2.format(salesAccountSerialNumber);
  }

  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 2140680864)
  // BasicDataItem getPaymentSectionInfo() {
  //     String __key = this.paymentSectionCode;
  //     if (paymentSectionInfo__resolvedKey == null
  //             || paymentSectionInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         BasicDataItemDao targetDao = daoSession.getBasicDataItemDao();
  //         BasicDataItem paymentSectionInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             paymentSectionInfo = paymentSectionInfoNew;
  //             paymentSectionInfo__resolvedKey = __key;
  //         }
  //     }
  //     return paymentSectionInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 1111202875)
  // void setPaymentSectionInfo(BasicDataItem paymentSectionInfo) {
  //     synchronized (this) {
  //         this.paymentSectionInfo = paymentSectionInfo;
  //         paymentSectionCode = paymentSectionInfo == null ? null
  //                 : paymentSectionInfo.getBasicDataItemId();
  //         paymentSectionInfo__resolvedKey = paymentSectionCode;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 275390190)
  // BasicDataItem getAshdrawSectionInfo() {
  //     String __key = this.cashdrawSectionCode;
  //     if (ashdrawSectionInfo__resolvedKey == null
  //             || ashdrawSectionInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         BasicDataItemDao targetDao = daoSession.getBasicDataItemDao();
  //         BasicDataItem ashdrawSectionInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             ashdrawSectionInfo = ashdrawSectionInfoNew;
  //             ashdrawSectionInfo__resolvedKey = __key;
  //         }
  //     }
  //     return ashdrawSectionInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 1843486698)
  // void setAshdrawSectionInfo(BasicDataItem ashdrawSectionInfo) {
  //     synchronized (this) {
  //         this.ashdrawSectionInfo = ashdrawSectionInfo;
  //         cashdrawSectionCode = ashdrawSectionInfo == null ? null
  //                 : ashdrawSectionInfo.getBasicDataItemId();
  //         ashdrawSectionInfo__resolvedKey = cashdrawSectionCode;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 1245350918)
  // Employee getTipEmployeeInfo() {
  //     String __key = this.tipReceiptEmployeeId;
  //     if (tipEmployeeInfo__resolvedKey == null || tipEmployeeInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeDao targetDao = daoSession.getEmployeeDao();
  //         Employee tipEmployeeInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             tipEmployeeInfo = tipEmployeeInfoNew;
  //             tipEmployeeInfo__resolvedKey = __key;
  //         }
  //     }
  //     return tipEmployeeInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 927496762)
  // void setTipEmployeeInfo(Employee tipEmployeeInfo) {
  //     synchronized (this) {
  //         this.tipEmployeeInfo = tipEmployeeInfo;
  //         tipReceiptEmployeeId = tipEmployeeInfo == null ? null
  //                 : tipEmployeeInfo.getEmployeeId();
  //         tipEmployeeInfo__resolvedKey = tipReceiptEmployeeId;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 203997416)
  // Employee getModEmployeeInfo() {
  //     String __key = this.lastReviserId;
  //     if (modEmployeeInfo__resolvedKey == null || modEmployeeInfo__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeDao targetDao = daoSession.getEmployeeDao();
  //         Employee modEmployeeInfoNew = targetDao.load(__key);
  //         synchronized (this) {
  //             modEmployeeInfo = modEmployeeInfoNew;
  //             modEmployeeInfo__resolvedKey = __key;
  //         }
  //     }
  //     return modEmployeeInfo;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 595493322)
  // void setModEmployeeInfo(Employee modEmployeeInfo) {
  //     synchronized (this) {
  //         this.modEmployeeInfo = modEmployeeInfo;
  //         lastReviserId = modEmployeeInfo == null ? null : modEmployeeInfo.getEmployeeId();
  //         modEmployeeInfo__resolvedKey = lastReviserId;
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
//todo @Generated(hash = 374441869)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getSalesAccountHistoryTipDao() : null;
// }
}

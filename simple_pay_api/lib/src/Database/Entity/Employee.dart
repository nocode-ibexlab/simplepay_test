import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_EMP")
class Employee {
  @primaryKey
  @ColumnInfo(name: "EMP_ID")
  String? employeeId;

  @ColumnInfo(name: "EMP_GRP_ID")
  String? employeeGroupId;

  @ColumnInfo(name: "EMP_CD")
  int? employeeCode;

  @ColumnInfo(name: "EMP_NM")
  String? employeeName;

  @ColumnInfo(name: "TEL_NO")
  String? telNumber;

  @ColumnInfo(name: "HP_NO")
  String? hpNumber;

  @ColumnInfo(name: "PRI_ADRS")
  String? primaryAddress;

  @ColumnInfo(name: "DTL_ADRS")
  String? detailAddress;

  @ColumnInfo(name: "LGIN_PWD")
  String? loginPassword;

  @ColumnInfo(name: "EMP_DESC")
  String? employeeDescription;

  @ColumnInfo(name: "DAT_1")
  String? data1;

  @ColumnInfo(name: "DAT_2")
  String? data2;

  @ColumnInfo(name: "DAT_3")
  String? data3;

  @ColumnInfo(name: "HIDE_YN")
  bool? hidingYn;

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

  //todo @ToOne(joinProperty = "employeeGroupId")
  @ignore
  EmployeeGroup? employeeGroup;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "employeeId", referencedName = "orderEmployeeId")
  // })
  @ignore
  List<OrderHistory>? orderEmpOrderHistories;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "employeeId", referencedName = "servingEmployeeId")
  // })
  @ignore
  List<OrderHistory>? servingEmpOrderHistories;

  //todo @ToMany(referencedJoinProperty = "employeeId")
  @ignore
  List<CashierBankHistory>? cashierBankHistories;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "employeeId", referencedName = "cancelEmployeeId")
  // })
  @ignore
  List<OrderHistoryItem>? cancelEmpOrderHistoryItems;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "employeeId", referencedName = "orderEmployeeId")
  // })
  @ignore
  List<SalesHistory>? orderEmpSalesHistories;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "employeeId", referencedName = "servingEmployeeId")
  // })
  @ignore
  List<SalesHistory>? servingEmpSalesHistories;

  //todo @ToMany(referencedJoinProperty = "employeeId")
  @ignore
  List<EmployeeWorkHistory>? employeeWorkHistories;

  //todo @ToMany(joinProperties = {
  //         @JoinProperty(name = "employeeId", referencedName = "cancelEmployeeId")
  // })
  @ignore
  List<SalesAccountHistory>? salesAccountHistories;

  //todo @ToMany(referencedJoinProperty = "employeeId")
  @ignore
  List<EmployeeAuthority>? employeeAuthorities;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 694547204)
  // transient EmployeeDao myDao;

  //todo @Generated(hash = 1094102012)
  // transient String employeeGroup__resolvedKey;

  //todo @Generated(hash = 202356944)
  // Employee() {
  // }

  //todo @Generated(hash = 1765856294)
  Employee(
      {String? employeeId,
      String? employeeGroupId,
      int? employeeCode,
      String? employeeName,
      String? telNumber,
      String? hpNumber,
      String? primaryAddress,
      String? detailAddress,
      String? loginPassword,
      String? employeeDescription,
      String? data1,
      String? data2,
      String? data3,
      bool? hidingYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.employeeId = employeeId;
    this.employeeGroupId = employeeGroupId;
    this.employeeCode = employeeCode;
    this.employeeName = employeeName;
    this.telNumber = telNumber;
    this.hpNumber = hpNumber;
    this.primaryAddress = primaryAddress;
    this.detailAddress = detailAddress;
    this.loginPassword = loginPassword;
    this.employeeDescription = employeeDescription;
    this.data1 = data1;
    this.data2 = data2;
    this.data3 = data3;
    this.hidingYn = hidingYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getEmployeeId() {
    return employeeId;
  }

  void setEmployeeId(String employeeId) {
    this.employeeId = employeeId;
  }

  String? getEmployeeGroupId() {
    return employeeGroupId;
  }

  void setEmployeeGroupId(String employeeGroupId) {
    this.employeeGroupId = employeeGroupId;
  }

  String? getEmployeeName() {
    return employeeName;
  }

  void setEmployeeName(String employeeName) {
    this.employeeName = employeeName;
  }

  String? getTelNumber() {
    return telNumber;
  }

  void setTelNumber(String telNumber) {
    this.telNumber = telNumber;
  }

  String? getHpNumber() {
    return hpNumber;
  }

  void setHpNumber(String hpNumber) {
    this.hpNumber = hpNumber;
  }

  String? getPrimaryAddress() {
    return primaryAddress;
  }

  void setPrimaryAddress(String primaryAddress) {
    this.primaryAddress = primaryAddress;
  }

  String? getDetailAddress() {
    return detailAddress;
  }

  void setDetailAddress(String detailAddress) {
    this.detailAddress = detailAddress;
  }

  String? getLoginPassword() {
    return loginPassword;
  }

  void setLoginPassword(String loginPassword) {
    this.loginPassword = loginPassword;
  }

  String? getEmployeeDescription() {
    return employeeDescription;
  }

  void setEmployeeDescription(String employeeDescription) {
    this.employeeDescription = employeeDescription;
  }

  String? getData1() {
    return this.data1;
  }

  void setData1(String data1) {
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

  void setData3(String data3) {
    this.data3 = data3;
  }

  bool? getHidingYn() {
    return hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
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

  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 920452966)
  // EmployeeGroup getEmployeeGroup() {
  //     String __key = this.employeeGroupId;
  //     if (employeeGroup__resolvedKey == null
  //             || employeeGroup__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeGroupDao targetDao = daoSession.getEmployeeGroupDao();
  //         EmployeeGroup employeeGroupNew = targetDao.load(__key);
  //         synchronized (this) {
  //             employeeGroup = employeeGroupNew;
  //             employeeGroup__resolvedKey = __key;
  //         }
  //     }
  //     return employeeGroup;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 57177953)
  // void setEmployeeGroup(EmployeeGroup employeeGroup) {
  //     synchronized (this) {
  //         this.employeeGroup = employeeGroup;
  //         employeeGroupId = employeeGroup == null ? null
  //                 : employeeGroup.getEmployeeGroupId();
  //         employeeGroup__resolvedKey = employeeGroupId;
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
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 532381939)
  // List<OrderHistory> getOrderEmpOrderHistories() {
  //     if (orderEmpOrderHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryDao targetDao = daoSession.getOrderHistoryDao();
  //         List<OrderHistory> orderEmpOrderHistoriesNew = targetDao
  //                 ._queryEmployee_OrderEmpOrderHistories(employeeId);
  //         synchronized (this) {
  //             if (orderEmpOrderHistories == null) {
  //                 orderEmpOrderHistories = orderEmpOrderHistoriesNew;
  //             }
  //         }
  //     }
  //     return orderEmpOrderHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 8786017)
  // synchronized void resetOrderEmpOrderHistories() {
  //     orderEmpOrderHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 2108677446)
  // List<OrderHistory> getServingEmpOrderHistories() {
  //     if (servingEmpOrderHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryDao targetDao = daoSession.getOrderHistoryDao();
  //         List<OrderHistory> servingEmpOrderHistoriesNew = targetDao
  //                 ._queryEmployee_ServingEmpOrderHistories(employeeId);
  //         synchronized (this) {
  //             if (servingEmpOrderHistories == null) {
  //                 servingEmpOrderHistories = servingEmpOrderHistoriesNew;
  //             }
  //         }
  //     }
  //     return servingEmpOrderHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1057901082)
  // synchronized void resetServingEmpOrderHistories() {
  //     servingEmpOrderHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 902265839)
  // List<CashierBankHistory> getCashierBankHistories() {
  //     if (cashierBankHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         CashierBankHistoryDao targetDao = daoSession.getCashierBankHistoryDao();
  //         List<CashierBankHistory> cashierBankHistoriesNew = targetDao
  //                 ._queryEmployee_CashierBankHistories(employeeId);
  //         synchronized (this) {
  //             if (cashierBankHistories == null) {
  //                 cashierBankHistories = cashierBankHistoriesNew;
  //             }
  //         }
  //     }
  //     return cashierBankHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1961894383)
  // synchronized void resetCashierBankHistories() {
  //     cashierBankHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 1216432687)
  // List<OrderHistoryItem> getCancelEmpOrderHistoryItems() {
  //     if (cancelEmpOrderHistoryItems == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryItemDao targetDao = daoSession.getOrderHistoryItemDao();
  //         List<OrderHistoryItem> cancelEmpOrderHistoryItemsNew = targetDao
  //                 ._queryEmployee_CancelEmpOrderHistoryItems(employeeId);
  //         synchronized (this) {
  //             if (cancelEmpOrderHistoryItems == null) {
  //                 cancelEmpOrderHistoryItems = cancelEmpOrderHistoryItemsNew;
  //             }
  //         }
  //     }
  //     return cancelEmpOrderHistoryItems;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 158594487)
  // synchronized void resetCancelEmpOrderHistoryItems() {
  //     cancelEmpOrderHistoryItems = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 360215388)
  // List<SalesHistory> getOrderEmpSalesHistories() {
  //     if (orderEmpSalesHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesHistoryDao targetDao = daoSession.getSalesHistoryDao();
  //         List<SalesHistory> orderEmpSalesHistoriesNew = targetDao
  //                 ._queryEmployee_OrderEmpSalesHistories(employeeId);
  //         synchronized (this) {
  //             if (orderEmpSalesHistories == null) {
  //                 orderEmpSalesHistories = orderEmpSalesHistoriesNew;
  //             }
  //         }
  //     }
  //     return orderEmpSalesHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1379945921)
  // synchronized void resetOrderEmpSalesHistories() {
  //     orderEmpSalesHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 2043189395)
  // List<SalesHistory> getServingEmpSalesHistories() {
  //     if (servingEmpSalesHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesHistoryDao targetDao = daoSession.getSalesHistoryDao();
  //         List<SalesHistory> servingEmpSalesHistoriesNew = targetDao
  //                 ._queryEmployee_ServingEmpSalesHistories(employeeId);
  //         synchronized (this) {
  //             if (servingEmpSalesHistories == null) {
  //                 servingEmpSalesHistories = servingEmpSalesHistoriesNew;
  //             }
  //         }
  //     }
  //     return servingEmpSalesHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 803775520)
  // synchronized void resetServingEmpSalesHistories() {
  //     servingEmpSalesHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 806368364)
  // List<EmployeeWorkHistory> getEmployeeWorkHistories() {
  //     if (employeeWorkHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeWorkHistoryDao targetDao = daoSession.getEmployeeWorkHistoryDao();
  //         List<EmployeeWorkHistory> employeeWorkHistoriesNew = targetDao
  //                 ._queryEmployee_EmployeeWorkHistories(employeeId);
  //         synchronized (this) {
  //             if (employeeWorkHistories == null) {
  //                 employeeWorkHistories = employeeWorkHistoriesNew;
  //             }
  //         }
  //     }
  //     return employeeWorkHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1634620987)
  // synchronized void resetEmployeeWorkHistories() {
  //     employeeWorkHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 826963712)
  // List<SalesAccountHistory> getSalesAccountHistories() {
  //     if (salesAccountHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesAccountHistoryDao targetDao = daoSession.getSalesAccountHistoryDao();
  //         List<SalesAccountHistory> salesAccountHistoriesNew = targetDao
  //                 ._queryEmployee_SalesAccountHistories(employeeId);
  //         synchronized (this) {
  //             if (salesAccountHistories == null) {
  //                 salesAccountHistories = salesAccountHistoriesNew;
  //             }
  //         }
  //     }
  //     return salesAccountHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 1762969386)
  // synchronized void resetSalesAccountHistories() {
  //     salesAccountHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 295783397)
  Future<List<EmployeeAuthority>> getEmployeeAuthorities() async {
    return await Common.db!.employeeAuthorityDao
        .findAllByEmployeeId(employeeId!);
    //     if (employeeAuthorities == null) {
    //         DaoSession daoSession = this.daoSession;
    //         if (daoSession == null) {
    //             throw DaoException("Entity is detached from DAO context");
    //         }
    //         EmployeeAuthorityDao targetDao = daoSession.getEmployeeAuthorityDao();
    //         List<EmployeeAuthority> employeeAuthoritiesNew = targetDao
    //                 ._queryEmployee_EmployeeAuthorities(employeeId);
    //         synchronized (this) {
    //             if (employeeAuthorities == null) {
    //                 employeeAuthorities = employeeAuthoritiesNew;
    //             }
    //         }
    //     }
    //     return employeeAuthorities;
  }

  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 955742996)
  // synchronized void resetEmployeeAuthorities() {
  //     employeeAuthorities = null;
  // }

  int? getEmployeeCode() {
    return this.employeeCode;
  }

  void setEmployeeCode(int employeeCode) {
    this.employeeCode = employeeCode;
  }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 671679171)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getEmployeeDao() : null;
// }
}

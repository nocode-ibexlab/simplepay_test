import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_STR_TRM")
class StoreTerminal {
  @primaryKey
  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "STR_ID")
  String? storeId;

  @ColumnInfo(name: "STR_TRM_GRP_ID")
  String? storeTerminalGroupId;

  @ColumnInfo(name: "TRM_ID")
  String? terminalId;

  @ColumnInfo(name: "STR_TRM_NM")
  String? storeTerminalName;

  @ColumnInfo(name: "DEV_UNIQ_VAL")
  String? deviceUniqueValue;

  @ColumnInfo(name: "MST_TRM_YN")
  bool? masterTerminalYn;

  @ColumnInfo(name: "MST_TRM_ADRS")
  String? masterTerminalAddress;

  @ColumnInfo(name: "MST_TRM_PORT")
  String? masterTerminalPort;

  @ColumnInfo(name: "TRM_ROLE_SEC_CD")
  String? terminalRoleSectionCode;

  @ColumnInfo(name: "SVR_CONN_YN")
  bool? serverConnectionYn;

  @ColumnInfo(name: "LANG_CD")
  String? languageCode;

  @ColumnInfo(name: "CUR_CD")
  String? currencyCode;

  @ColumnInfo(name: "APP_ACT_TP_CD")
  String? appActionTypeCode;

  @ColumnInfo(name: "CSHR_AUTO_LGIN_YN")
  bool? cashierAutoLoginYn;

  @ColumnInfo(name: "INS_LOC")
  String? installationLocation;

  @ColumnInfo(name: "STR_TRM_DESC")
  String? storeTerminalDescription;

  @ColumnInfo(name: "DAT_1")
  String? data1;

  @ColumnInfo(name: "DAT_2")
  String? data2;

  @ColumnInfo(name: "DAT_3")
  String? data3;

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

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  //todo @ToMany(referencedJoinProperty = "storeTerminalId")
  @ignore
  List<CashierBankHistory>? cashierBankHistories;

  //todo @ToMany(referencedJoinProperty = "storeTerminalId")
  @ignore
  List<CashdrawCashInOutHistory>? cashdrawCashInOutHistories;

  //todo @ToMany(referencedJoinProperty = "storeTerminalId")
  @ignore
  List<OrderHistoryItem>? orderHistoryItems;

  //todo @ToMany(referencedJoinProperty = "storeTerminalId")
  @ignore
  List<OrderHistoryCancelItem>? orderHistoryCancelItems;

  //todo @ToMany(referencedJoinProperty = "storeTerminalId")
  @ignore
  List<SalesAccountHistory>? saleACs;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1845818907)
  // transient StoreTerminalDao myDao;

  //todo @Generated(hash = 453181736)
  StoreTerminal(
      {String? storeTerminalId,
      String? storeId,
      String? storeTerminalGroupId,
      String? terminalId,
      String? storeTerminalName,
      String? deviceUniqueValue,
      bool? masterTerminalYn,
      String? masterTerminalAddress,
      String? masterTerminalPort,
      String? terminalRoleSectionCode,
      bool? serverConnectionYn,
      String? languageCode,
      String? currencyCode,
      String? appActionTypeCode,
      bool? cashierAutoLoginYn,
      String? installationLocation,
      String? storeTerminalDescription,
      String? data1,
      String? data2,
      String? data3,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode,
      bool? synchronizedYn}) {
    this.storeTerminalId = storeTerminalId;
    this.storeId = storeId;
    this.storeTerminalGroupId = storeTerminalGroupId;
    this.terminalId = terminalId;
    this.storeTerminalName = storeTerminalName;
    this.deviceUniqueValue = deviceUniqueValue;
    this.masterTerminalYn = masterTerminalYn;
    this.masterTerminalAddress = masterTerminalAddress;
    this.masterTerminalPort = masterTerminalPort;
    this.terminalRoleSectionCode = terminalRoleSectionCode;
    this.serverConnectionYn = serverConnectionYn;
    this.languageCode = languageCode;
    this.currencyCode = currencyCode;
    this.appActionTypeCode = appActionTypeCode;
    this.cashierAutoLoginYn = cashierAutoLoginYn;
    this.installationLocation = installationLocation;
    this.storeTerminalDescription = storeTerminalDescription;
    this.data1 = data1;
    this.data2 = data2;
    this.data3 = data3;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
    this.synchronizedYn = synchronizedYn;
  }

  //todo @Generated(hash = 1044759175)
  // StoreTerminal() {
  // }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getStoreTerminalGroupId() {
    return storeTerminalGroupId;
  }

  void setStoreTerminalGroupId(String storeTerminalGroupId) {
    this.storeTerminalGroupId = storeTerminalGroupId;
  }

  String? getDeviceUniqueValue() {
    return deviceUniqueValue;
  }

  void setDeviceUniqueValue(String deviceUniqueValue) {
    this.deviceUniqueValue = deviceUniqueValue;
  }

  bool? getMasterTerminalYn() {
    return masterTerminalYn;
  }

  void setMasterTerminalYn(bool masterTerminalYn) {
    this.masterTerminalYn = masterTerminalYn;
  }

  String? getMasterTerminalAddress() {
    return masterTerminalAddress;
  }

  void setMasterTerminalAddress(String masterTerminalAddress) {
    this.masterTerminalAddress = masterTerminalAddress;
  }

  String? getMasterTerminalPort() {
    return masterTerminalPort;
  }

  void setMasterTerminalPort(String masterTerminalPort) {
    this.masterTerminalPort = masterTerminalPort;
  }

  String? getTerminalRoleSectionCode() {
    return terminalRoleSectionCode;
  }

  void setTerminalRoleSectionCode(String terminalRoleSectionCode) {
    this.terminalRoleSectionCode = terminalRoleSectionCode;
  }

  String? getStoreTerminalName() {
    return storeTerminalName;
  }

  void setStoreTerminalName(String storeTerminalName) {
    this.storeTerminalName = storeTerminalName;
  }

  bool? getServerConnectionYn() {
    return serverConnectionYn;
  }

  void setServerConnectionYn(bool serverConnectionYn) {
    this.serverConnectionYn = serverConnectionYn;
  }

  String? getLanguageCode() {
    return languageCode;
  }

  void setLanguageCode(String? languageCode) {
    this.languageCode = languageCode;
  }

  String? getCurrencyCode() {
    return currencyCode;
  }

  void setCurrencyCode(String currencyCode) {
    this.currencyCode = currencyCode;
  }

  String? getAppActionTypeCode() {
    return appActionTypeCode;
  }

  void setAppActionTypeCode(String? appActionTypeCode) {
    this.appActionTypeCode = appActionTypeCode;
  }

  bool? getCashierAutoLoginYn() {
    return cashierAutoLoginYn;
  }

  void setCashierAutoLoginYn(bool cashierAutoLoginYn) {
    this.cashierAutoLoginYn = cashierAutoLoginYn;
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

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
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

  String? getStoreId() {
    return this.storeId;
  }

  void setStoreId(String storeId) {
    this.storeId = storeId;
  }

  String? getTerminalId() {
    return this.terminalId;
  }

  void setTerminalId(String terminalId) {
    this.terminalId = terminalId;
  }

  String? getInstallationLocation() {
    return this.installationLocation;
  }

  void setInstallationLocation(String installationLocation) {
    this.installationLocation = installationLocation;
  }

  String? getStoreTerminalDescription() {
    return this.storeTerminalDescription;
  }

  void setStoreTerminalDescription(String storeTerminalDescription) {
    this.storeTerminalDescription = storeTerminalDescription;
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

  /**
   * To-many relationship, resolved on first access (and after reset).
   * Changes to to-many relations are not persisted, make changes to the target entity.
   */
  //todo @Generated(hash = 268790534)
  // List<CashierBankHistory> getCashierBankHistories() {
  //     if (cashierBankHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         CashierBankHistoryDao targetDao = daoSession.getCashierBankHistoryDao();
  //         List<CashierBankHistory> cashierBankHistoriesNew = targetDao
  //                 ._queryStoreTerminal_CashierBankHistories(storeTerminalId);
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
  // //todo @Generated(hash = 1262049361)
  // List<CashdrawCashInOutHistory> getCashdrawCashInOutHistories() {
  //     if (cashdrawCashInOutHistories == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         CashdrawCashInOutHistoryDao targetDao = daoSession
  //                 .getCashdrawCashInOutHistoryDao();
  //         List<CashdrawCashInOutHistory> cashdrawCashInOutHistoriesNew = targetDao
  //                 ._queryStoreTerminal_CashdrawCashInOutHistories(
  //                         storeTerminalId);
  //         synchronized (this) {
  //             if (cashdrawCashInOutHistories == null) {
  //                 cashdrawCashInOutHistories = cashdrawCashInOutHistoriesNew;
  //             }
  //         }
  //     }
  //     return cashdrawCashInOutHistories;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 728576849)
  // synchronized void resetCashdrawCashInOutHistories() {
  //     cashdrawCashInOutHistories = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 1394816559)
  // List<OrderHistoryItem> getOrderHistoryItems() {
  //     if (orderHistoryItems == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryItemDao targetDao = daoSession.getOrderHistoryItemDao();
  //         List<OrderHistoryItem> orderHistoryItemsNew = targetDao
  //                 ._queryStoreTerminal_OrderHistoryItems(storeTerminalId);
  //         synchronized (this) {
  //             if (orderHistoryItems == null) {
  //                 orderHistoryItems = orderHistoryItemsNew;
  //             }
  //         }
  //     }
  //     return orderHistoryItems;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 209942039)
  // synchronized void resetOrderHistoryItems() {
  //     orderHistoryItems = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 1979927029)
  // List<OrderHistoryCancelItem> getOrderHistoryCancelItems() {
  //     if (orderHistoryCancelItems == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         OrderHistoryCancelItemDao targetDao = daoSession
  //                 .getOrderHistoryCancelItemDao();
  //         List<OrderHistoryCancelItem> orderHistoryCancelItemsNew = targetDao
  //                 ._queryStoreTerminal_OrderHistoryCancelItems(storeTerminalId);
  //         synchronized (this) {
  //             if (orderHistoryCancelItems == null) {
  //                 orderHistoryCancelItems = orderHistoryCancelItemsNew;
  //             }
  //         }
  //     }
  //     return orderHistoryCancelItems;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 262042044)
  // synchronized void resetOrderHistoryCancelItems() {
  //     orderHistoryCancelItems = null;
  // }
  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 400170228)
  // List<SalesAccountHistory> getSaleACs() {
  //     if (saleACs == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesAccountHistoryDao targetDao = daoSession
  //                 .getSalesAccountHistoryDao();
  //         List<SalesAccountHistory> saleACsNew = targetDao
  //                 ._queryStoreTerminal_SaleACs(storeTerminalId);
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
  Future<void> update() async {
    //     if (myDao == null) {
    //         throw DaoException("Entity is detached from DAO context");
    //     }
    await Common.db!.storeTerminalDao.updateOne(this);
  }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1585716327)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getStoreTerminalDao() : null;
// }
}

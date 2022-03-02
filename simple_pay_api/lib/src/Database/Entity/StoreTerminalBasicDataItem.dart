import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_STR_TRM_BAS_DAT_ITM")
class StoreTerminalBasicDataItem {
  @primaryKey
  @ColumnInfo(name: "STR_TRM_BAS_DAT_ITM_ID")
  String? storeTerminalBasicDataItemId;

  @ColumnInfo(name: "STR_TRM_BAS_DAT_ID")
  String? storeTerminalBasicDataId;

  @ColumnInfo(name: "I18N_TER_ID")
  String? i18nTermId;

  @ColumnInfo(name: "STR_TRM_BAS_DAT_ITM_SNO")
  int? storeTerminalBasicDataItemSerialNumber;

  @ColumnInfo(name: "STR_TRM_BAS_DAT_ITM_CD_NM")
  String? storeTerminalBasicDataItemCodeName;

  @ColumnInfo(name: "STR_TRM_BAS_DAT_ITM_NM")
  String? storeTerminalBasicDataItemName;

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

  @ColumnInfo(name: "DAT_11")
  String? data11;

  @ColumnInfo(name: "DAT_12")
  String? data12;

  @ColumnInfo(name: "DAT_13")
  String? data13;

  @ColumnInfo(name: "DAT_14")
  String? data14;

  @ColumnInfo(name: "DAT_15")
  String? data15;

  @ColumnInfo(name: "DAT_16")
  String? data16;

  @ColumnInfo(name: "DAT_17")
  String? data17;

  @ColumnInfo(name: "DAT_18")
  String? data18;

  @ColumnInfo(name: "DAT_19")
  String? data19;

  @ColumnInfo(name: "DAT_20")
  String? data20;

  @ColumnInfo(name: "HIDE_YN")
  bool? hidingYn;

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

  //todo @ToOne(joinProperty = "storeTerminalBasicDataId")
  @ignore
  StoreTerminalBasicData? storeTerminalBasicData;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 524235184)
  // transient StoreTerminalBasicDataItemDao myDao;

  String? getStoreTerminalBasicDataItemId() {
    return this.storeTerminalBasicDataItemId;
  }

  void setStoreTerminalBasicDataItemId(String storeTerminalBasicDataItemId) {
    this.storeTerminalBasicDataItemId = storeTerminalBasicDataItemId;
  }

  String? getStoreTerminalBasicDataId() {
    return this.storeTerminalBasicDataId;
  }

  void setStoreTerminalBasicDataId(String storeTerminalBasicDataId) {
    this.storeTerminalBasicDataId = storeTerminalBasicDataId;
  }

  String? getI18nTermId() {
    return this.i18nTermId;
  }

  void setI18nTermId(String i18nTermId) {
    this.i18nTermId = i18nTermId;
  }

  int? getStoreTerminalBasicDataItemSerialNumber() {
    return this.storeTerminalBasicDataItemSerialNumber;
  }

  void setStoreTerminalBasicDataItemSerialNumber(
      int storeTerminalBasicDataItemSerialNumber) {
    this.storeTerminalBasicDataItemSerialNumber =
        storeTerminalBasicDataItemSerialNumber;
  }

  String? getStoreTerminalBasicDataItemCodeName() {
    return this.storeTerminalBasicDataItemCodeName;
  }

  void setStoreTerminalBasicDataItemCodeName(
      String storeTerminalBasicDataItemCodeName) {
    this.storeTerminalBasicDataItemCodeName =
        storeTerminalBasicDataItemCodeName;
  }

  String? getStoreTerminalBasicDataItemName() {
    return this.storeTerminalBasicDataItemName;
  }

  void setStoreTerminalBasicDataItemName(
      String storeTerminalBasicDataItemName) {
    this.storeTerminalBasicDataItemName = storeTerminalBasicDataItemName;
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

  String? getData4() {
    return this.data4;
  }

  void setData4(String data4) {
    this.data4 = data4;
  }

  String? getData5() {
    return this.data5;
  }

  void setData5(String data5) {
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

  void setData7(String data7) {
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

  String? getData11() {
    return this.data11;
  }

  void setData11(String data11) {
    this.data11 = data11;
  }

  String? getData12() {
    return this.data12;
  }

  void setData12(String data12) {
    this.data12 = data12;
  }

  String? getData13() {
    return this.data13;
  }

  void setData13(String data13) {
    this.data13 = data13;
  }

  String? getData14() {
    return this.data14;
  }

  void setData14(String data14) {
    this.data14 = data14;
  }

  String? getData15() {
    return this.data15;
  }

  void setData15(String data15) {
    this.data15 = data15;
  }

  String? getData16() {
    return this.data16;
  }

  void setData16(String data16) {
    this.data16 = data16;
  }

  String? getData17() {
    return this.data17;
  }

  void setData17(String data17) {
    this.data17 = data17;
  }

  String? getData18() {
    return this.data18;
  }

  void setData18(String data18) {
    this.data18 = data18;
  }

  String? getData19() {
    return this.data19;
  }

  void setData19(String data19) {
    this.data19 = data19;
  }

  String? getData20() {
    return this.data20;
  }

  void setData20(String data20) {
    this.data20 = data20;
  }

  bool? getHidingYn() {
    return this.hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
  }

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }

  String? getFirstRegistrantId() {
    return this.firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return this.firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return this.lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return this.lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return this.stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 1048288422)
  // transient String storeTerminalBasicData__resolvedKey;

  //todo @Generated(hash = 1698222101)
  StoreTerminalBasicDataItem(
      {String? storeTerminalBasicDataItemId,
      String? storeTerminalBasicDataId,
      String? i18nTermId,
      int? storeTerminalBasicDataItemSerialNumber,
      String? storeTerminalBasicDataItemCodeName,
      String? storeTerminalBasicDataItemName,
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
      String? data11,
      String? data12,
      String? data13,
      String? data14,
      String? data15,
      String? data16,
      String? data17,
      String? data18,
      String? data19,
      String? data20,
      bool? hidingYn,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.storeTerminalBasicDataItemId = storeTerminalBasicDataItemId;
    this.storeTerminalBasicDataId = storeTerminalBasicDataId;
    this.i18nTermId = i18nTermId;
    this.storeTerminalBasicDataItemSerialNumber =
        storeTerminalBasicDataItemSerialNumber;
    this.storeTerminalBasicDataItemCodeName =
        storeTerminalBasicDataItemCodeName;
    this.storeTerminalBasicDataItemName = storeTerminalBasicDataItemName;
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
    this.data11 = data11;
    this.data12 = data12;
    this.data13 = data13;
    this.data14 = data14;
    this.data15 = data15;
    this.data16 = data16;
    this.data17 = data17;
    this.data18 = data18;
    this.data19 = data19;
    this.data20 = data20;
    this.hidingYn = hidingYn;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 2086414033)
  // StoreTerminalBasicDataItem() {
  // }

  /** To-one relationship, resolved on first access. */
  //todo @Generated(hash = 890339357)
  // StoreTerminalBasicData getStoreTerminalBasicData() {
  //     String __key = this.storeTerminalBasicDataId;
  //     if (storeTerminalBasicData__resolvedKey == null
  //             || storeTerminalBasicData__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         StoreTerminalBasicDataDao targetDao = daoSession
  //                 .getStoreTerminalBasicDataDao();
  //         StoreTerminalBasicData storeTerminalBasicDataNew = targetDao
  //                 .load(__key);
  //         synchronized (this) {
  //             storeTerminalBasicData = storeTerminalBasicDataNew;
  //             storeTerminalBasicData__resolvedKey = __key;
  //         }
  //     }
  //     return storeTerminalBasicData;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 340436506)
  // void setStoreTerminalBasicData(
  //         StoreTerminalBasicData storeTerminalBasicData) {
  //     synchronized (this) {
  //         this.storeTerminalBasicData = storeTerminalBasicData;
  //         storeTerminalBasicDataId = storeTerminalBasicData == null ? null
  //                 : storeTerminalBasicData.getStoreTerminalBasicDataId();
  //         storeTerminalBasicData__resolvedKey = storeTerminalBasicDataId;
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
//todo @Generated(hash = 1791082017)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getStoreTerminalBasicDataItemDao() : null;
// }
}

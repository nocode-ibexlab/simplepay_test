import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_BAS_DAT_ITM")
class BasicDataItem {
  @primaryKey
  @ColumnInfo(name: "BAS_DAT_ITM_ID")
  String? basicDataItemId;

  @ColumnInfo(name: "BAS_DAT_ID")
  String? basicDataId;

  @ColumnInfo(name: "I18N_TER_ID")
  String? i18nTermId;

  @ColumnInfo(name: "BAS_DAT_ITM_SNO")
  int? basicDataItemSerialNumber;

  @ColumnInfo(name: "BAS_DAT_ITM_CD_NM")
  String? basicDataItemCodeName;

  @ColumnInfo(name: "BAS_DAT_ITM_NM")
  String? basicDataItemName;

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

  //todo @ToOne(joinProperty = "basicDataId")
  @ignore
  BasicData? basicData;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 1074077908)
  // transient BasicDataItemDao myDao;

  //todo @Generated(hash = 10591567)
  // transient String basicData__resolvedKey;

  //todo @Generated(hash = 333144121)
  // BasicDataItem() {
  // }

  //todo @Generated(hash = 1463639099)
  BasicDataItem(
      {String? basicDataItemId,
      String? basicDataId,
      String? i18nTermId,
      int? basicDataItemSerialNumber,
      String? basicDataItemCodeName,
      String? basicDataItemName,
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
    this.basicDataItemId = basicDataItemId;
    this.basicDataId = basicDataId;
    this.i18nTermId = i18nTermId;
    this.basicDataItemSerialNumber = basicDataItemSerialNumber;
    this.basicDataItemCodeName = basicDataItemCodeName;
    this.basicDataItemName = basicDataItemName;
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

  String? getBasicDataItemId() {
    return basicDataItemId;
  }

  void setBasicDataItemId(String basicDataItemId) {
    this.basicDataItemId = basicDataItemId;
  }

  String? getBasicDataId() {
    return basicDataId;
  }

  void setBasicDataId(String basicDataId) {
    this.basicDataId = basicDataId;
  }

  String? getI18nTermId() {
    return i18nTermId;
  }

  void setI18nTermId(String i18nTermId) {
    this.i18nTermId = i18nTermId;
  }

  int? getBasicDataItemSerialNumber() {
    return basicDataItemSerialNumber;
  }

  void setBasicDataItemSerialNumber(int basicDataItemSerialNumber) {
    this.basicDataItemSerialNumber = basicDataItemSerialNumber;
  }

  String? getBasicDataItemName() {
    return basicDataItemName;
  }

  void setBasicDataItemName(String basicDataItemName) {
    this.basicDataItemName = basicDataItemName;
  }

  String? getData1() {
    return data1;
  }

  void setData1(String data1) {
    this.data1 = data1;
  }

  String? getData2() {
    return data2;
  }

  void setData2(String? data2) {
    this.data2 = data2;
  }

  String? getData3() {
    return data3;
  }

  void setData3(String data3) {
    this.data3 = data3;
  }

  String? getData4() {
    return data4;
  }

  void setData4(String data4) {
    this.data4 = data4;
  }

  String? getData5() {
    return data5;
  }

  void setData5(String data5) {
    this.data5 = data5;
  }

  String? getData6() {
    return data6;
  }

  void setData6(String data6) {
    this.data6 = data6;
  }

  String? getData7() {
    return data7;
  }

  void setData7(String data7) {
    this.data7 = data7;
  }

  String? getData8() {
    return data8;
  }

  void setData8(String data8) {
    this.data8 = data8;
  }

  String? getData9() {
    return data9;
  }

  void setData9(String data9) {
    this.data9 = data9;
  }

  String? getData10() {
    return data10;
  }

  void setData10(String data10) {
    this.data10 = data10;
  }

  String? getData11() {
    return data11;
  }

  void setData11(String data11) {
    this.data11 = data11;
  }

  String? getData12() {
    return data12;
  }

  void setData12(String data12) {
    this.data12 = data12;
  }

  String? getData13() {
    return data13;
  }

  void setData13(String data13) {
    this.data13 = data13;
  }

  String? getData14() {
    return data14;
  }

  void setData14(String data14) {
    this.data14 = data14;
  }

  String? getData15() {
    return data15;
  }

  void setData15(String data15) {
    this.data15 = data15;
  }

  String? getData16() {
    return data16;
  }

  void setData16(String data16) {
    this.data16 = data16;
  }

  String? getData17() {
    return data17;
  }

  void setData17(String data17) {
    this.data17 = data17;
  }

  String? getData18() {
    return data18;
  }

  void setData18(String data18) {
    this.data18 = data18;
  }

  String? getData19() {
    return data19;
  }

  void setData19(String data19) {
    this.data19 = data19;
  }

  String? getData20() {
    return data20;
  }

  void setData20(String data20) {
    this.data20 = data20;
  }

  bool? getHidingYn() {
    return hidingYn;
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
  // //todo @Generated(hash = 905048207)
  // BasicData getBasicData() {
  //     String __key = this.basicDataId;
  //     if (basicData__resolvedKey == null || basicData__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         BasicDataDao targetDao = daoSession.getBasicDataDao();
  //         BasicData basicDataNew = targetDao.load(__key);
  //         synchronized (this) {
  //             basicData = basicDataNew;
  //             basicData__resolvedKey = __key;
  //         }
  //     }
  //     return basicData;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 723109176)
  // void setBasicData(BasicData basicData) {
  //     synchronized (this) {
  //         this.basicData = basicData;
  //         basicDataId = basicData == null ? null : basicData.getBasicDataId();
  //         basicData__resolvedKey = basicDataId;
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

  String? getBasicDataItemCodeName() {
    return this.basicDataItemCodeName;
  }

  void setBasicDataItemCodeName(String basicDataItemCodeName) {
    this.basicDataItemCodeName = basicDataItemCodeName;
  }

// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 951370)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getBasicDataItemDao() : null;
// }
}

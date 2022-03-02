import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "SL1_SLS_ACC_HIS_DTL", indices: const [
  Index(value: ["COM_DT", "SL_SNO", "SLS_ACC_SNO"], unique: true)
])
class SalesAccountHistoryDetails {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "SL_SNO")
  int? saleSerialNumber;

  @ColumnInfo(name: "SLS_ACC_SNO")
  int? salesAccountSerialNumber;

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

  //todo @ToOne(joinProperty = "id")
  @ignore
  SalesAccountHistory? salesAccountHistory;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 253485220)
  // transient SalesAccountHistoryDetailsDao myDao;

  //todo @Generated(hash = 12198998)
  // transient String salesAccountHistory__resolvedKey;

  //todo @Generated(hash = 1268860356)
  // SalesAccountHistoryDetails() {
  // }

  //todo @Generated(hash = 414524113)
  SalesAccountHistoryDetails(
      {String? id,
      String? commonDate,
      int? saleSerialNumber,
      int? salesAccountSerialNumber,
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

  void setId(String? id) {
    this.id = id;
  }

  String? getCommonDate() {
    return commonDate;
  }

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getSaleSerialNumber() {
    return saleSerialNumber;
  }

  void setSaleSerialNumber(int? saleSerialNumber) {
    this.saleSerialNumber = saleSerialNumber;
  }

  int? getSalesAccountSerialNumber() {
    return salesAccountSerialNumber;
  }

  void setSalesAccountSerialNumber(int? salesAccountSerialNumber) {
    this.salesAccountSerialNumber = salesAccountSerialNumber;
  }

/*
setData0	resVan.issueType
setData1	resVan.vanResMsg	거래결과
setData2	resVan.vanPrintMsg	메시지
setData3	resVan.amount	공급가액(부가세 미포함)
setData4	resVan.tax	세금(부가세)
setData5	resVan.gratuity	봉사료
setData6	resVan.trType	결제구분
setData7	resVan.trCode	거래구분
setData8
setData9	resVan.gratuityTax	봉사료세금
setData10	resVan.vanCode	VAN사코드
setData11	resVan.transactionId
setData12	resVan.tokenId
setData13	resVan.tokenAmount
setData14	resVan.userAddress
setData15	resVan.exchangeDateIndex
setData16	resVan.exchangeRate
setData17	resVan.exchangeAmount
setData18	OrderPagerNumber
setData19	OrderMemo
 */
  String? getData0() {
    return data0;
  }

  void setData0(String? data0) {
    this.data0 = data0;
  }

  String? getData1() {
    return data1;
  }

  void setData1(String? data1) {
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

  void setData6(String? data6) {
    this.data6 = data6;
  }

  String? getData7() {
    return data7;
  }

  void setData7(String? data7) {
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
        "_" +
        df1.format(saleSerialNumber) +
        "_" +
        df2.format(salesAccountSerialNumber);
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

  SalesAccountHistoryDetails clone() {
    return SalesAccountHistoryDetails(
      id: this.id,
      commonDate: this.commonDate,
      saleSerialNumber: this.saleSerialNumber,
      salesAccountSerialNumber: this.salesAccountSerialNumber,
      data0: this.data0,
      data1: this.data1,
      data2: this.data2,
      data3: this.data3,
      data4: this.data4,
      data5: this.data5,
      data6: this.data6,
      data7: this.data7,
      data8: this.data8,
      data9: this.data9,
      data10: this.data10,
      data11: this.data11,
      data12: this.data12,
      data13: this.data13,
      data14: this.data14,
      data15: this.data15,
      data16: this.data16,
      data17: this.data17,
      data18: this.data18,
      data19: this.data19,
      data20: this.data20,
      synchronizedYn: this.synchronizedYn,
      firstRegistrantId: this.firstRegistrantId,
      firstRegistrationDatetime: this.firstRegistrationDatetime,
      lastReviserId: this.lastReviserId,
      lastRevisionDatetime: this.lastRevisionDatetime,
      stateCode: this.stateCode,
    );
  }

  String? getData10() {
    return this.data10;
  }

  void setData10(String? data10) {
    this.data10 = data10;
  }

  String? getData11() {
    return this.data11;
  }

  void setData11(String? data11) {
    this.data11 = data11;
  }

  String? getData12() {
    return this.data12;
  }

  void setData12(String? data12) {
    this.data12 = data12;
  }

  String? getData13() {
    return this.data13;
  }

  void setData13(String? data13) {
    this.data13 = data13;
  }

  String? getData14() {
    return this.data14;
  }

  void setData14(String? data14) {
    this.data14 = data14;
  }

  String? getData15() {
    return this.data15;
  }

  void setData15(String? data15) {
    this.data15 = data15;
  }

  String? getData16() {
    return this.data16;
  }

  void setData16(String? data16) {
    this.data16 = data16;
  }

  String? getData17() {
    return this.data17;
  }

  void setData17(String? data17) {
    this.data17 = data17;
  }

  String? getData18() {
    return this.data18;
  }

  void setData18(String? data18) {
    this.data18 = data18;
  }

  String? getData19() {
    return this.data19;
  }

  void setData19(String? data19) {
    this.data19 = data19;
  }

  String? getData20() {
    return this.data20;
  }

  void setData20(String? data20) {
    this.data20 = data20;
  }

/** To-one relationship, resolved on first access. */
//todo @Generated(hash = 450811118)
// SalesAccountHistory getSalesAccountHistory() {
//     String __key = this.id;
//     if (salesAccountHistory__resolvedKey == null || salesAccountHistory__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         SalesAccountHistoryDao targetDao = daoSession.getSalesAccountHistoryDao();
//         SalesAccountHistory salesAccountHistoryNew = targetDao.load(__key);
//         synchronized (this) {
//             salesAccountHistory = salesAccountHistoryNew;
//             salesAccountHistory__resolvedKey = __key;
//         }
//     }
//     return salesAccountHistory;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 572109553)
// void setSalesAccountHistory(SalesAccountHistory salesAccountHistory) {
//     synchronized (this) {
//         this.salesAccountHistory = salesAccountHistory;
//         id = salesAccountHistory == null ? null : salesAccountHistory.getId();
//         salesAccountHistory__resolvedKey = id;
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
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 912437091)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getSalesAccountHistoryDetailsDao() : null;
// }
}

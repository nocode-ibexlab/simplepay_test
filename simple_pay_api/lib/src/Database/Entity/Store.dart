import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "ST1_STR")
class Store {
  @primaryKey
  @ColumnInfo(name: "STR_ID")
  String? storeId;

  @ColumnInfo(name: "AGY_ID")
  String? agencyId;

  @ColumnInfo(name: "MGR_ID")
  String? managerId;

  @ColumnInfo(name: "STR_NM")
  String? storeName;

  @ColumnInfo(name: "ZIPCODE")
  String? zipcode;

  @ColumnInfo(name: "PRI_ADRS")
  String? primaryAddress;

  @ColumnInfo(name: "DTL_ADRS")
  String? detailAddress;

  @ColumnInfo(name: "TEL_NO")
  String? telNumber;

  @ColumnInfo(name: "HP_NO")
  String? hpNumber;

  @ColumnInfo(name: "FAX_NO")
  String? faxNumber;

  @ColumnInfo(name: "BIZ_REG_NO")
  String? businessRegistrationNumber;

  @ColumnInfo(name: "TAX_SEC_CD")
  String? taxSectionCode;

  @ColumnInfo(name: "LANG_CD")
  String? languageCode;

  @ColumnInfo(name: "CUR_CD")
  String? currencyCode;

  @ColumnInfo(name: "STR_STAT_CD")
  String? storeStateCode;

  @ColumnInfo(name: "CLS_BIZ_TM")
  String? closeBusinessTime;

  @ColumnInfo(name: "BIZ_HOUR")
  String? openingHours;

  @ColumnInfo(name: "CLSD_DAY")
  String? closedDays;

  @ColumnInfo(name: "PARK_TP_CD")
  String? parkingTypeCode;

  @ColumnInfo(name: "BIZ_SEC")
  String? businessSectors;

  @ColumnInfo(name: "MAIN_PRDCT")
  String? mainProducts;

  @ColumnInfo(name: "CEO_NM")
  String? ceoName;

  @ColumnInfo(name: "OWR_NM")
  String? ownerName;

  @ColumnInfo(name: "LNK_TP_CD")
  String? linkTypeCode;

  @ColumnInfo(name: "SVC_TP_CD")
  String? serviceTypeCode;

  @ColumnInfo(name: "DAT_1")
  String? data1;

  @ColumnInfo(name: "DAT_2")
  String? data2;

  @ColumnInfo(name: "DAT_3")
  String? data3;

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

  //todo @ToOne(joinProperty = "managerId")
  @ignore
  AdminUser? adminUser;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 171259331)
  // transient StoreDao myDao;

  //todo @Generated(hash = 770513066)
  // Store() {
  // }

  //todo @Generated(hash = 1361376541)
  Store(
      {String? storeId,
      String? agencyId,
      String? managerId,
      String? storeName,
      String? zipcode,
      String? primaryAddress,
      String? detailAddress,
      String? telNumber,
      String? hpNumber,
      String? faxNumber,
      String? businessRegistrationNumber,
      String? taxSectionCode,
      String? languageCode,
      String? currencyCode,
      String? storeStateCode,
      String? closeBusinessTime,
      String? openingHours,
      String? closedDays,
      String? parkingTypeCode,
      String? businessSectors,
      String? mainProducts,
      String? ceoName,
      String? ownerName,
      String? linkTypeCode,
      String? serviceTypeCode,
      String? data1,
      String? data2,
      String? data3,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.storeId = storeId;
    this.agencyId = agencyId;
    this.managerId = managerId;
    this.storeName = storeName;
    this.zipcode = zipcode;
    this.primaryAddress = primaryAddress;
    this.detailAddress = detailAddress;
    this.telNumber = telNumber;
    this.hpNumber = hpNumber;
    this.faxNumber = faxNumber;
    this.businessRegistrationNumber = businessRegistrationNumber;
    this.taxSectionCode = taxSectionCode;
    this.languageCode = languageCode;
    this.currencyCode = currencyCode;
    this.storeStateCode = storeStateCode;
    this.closeBusinessTime = closeBusinessTime;
    this.openingHours = openingHours;
    this.closedDays = closedDays;
    this.parkingTypeCode = parkingTypeCode;
    this.businessSectors = businessSectors;
    this.mainProducts = mainProducts;
    this.ceoName = ceoName;
    this.ownerName = ownerName;
    this.linkTypeCode = linkTypeCode;
    this.serviceTypeCode = serviceTypeCode;
    this.data1 = data1;
    this.data2 = data2;
    this.data3 = data3;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 1101242141)
  // transient String adminUser__resolvedKey;

  String? getStoreId() {
    return storeId;
  }

  void setStoreId(String storeId) {
    this.storeId = storeId;
  }

  String? getStoreName() {
    return storeName;
  }

  void setStoreName(String storeName) {
    this.storeName = storeName;
  }

  String? getZipcode() {
    return zipcode;
  }

  void setZipcode(String? zipcode) {
    this.zipcode = zipcode;
  }

  String? getPrimaryAddress() {
    return primaryAddress;
  }

  void setPrimaryAddress(String? primaryAddress) {
    this.primaryAddress = primaryAddress;
  }

  String? getDetailAddress() {
    return detailAddress;
  }

  void setDetailAddress(String? detailAddress) {
    this.detailAddress = detailAddress;
  }

  String? getTelNumber() {
    return telNumber;
  }

  void setTelNumber(String? telNumber) {
    this.telNumber = telNumber;
  }

  String? getHpNumber() {
    return hpNumber;
  }

  void setHpNumber(String hpNumber) {
    this.hpNumber = hpNumber;
  }

  String? getFaxNumber() {
    return faxNumber;
  }

  void setFaxNumber(String faxNumber) {
    this.faxNumber = faxNumber;
  }

  String? getBusinessRegistrationNumber() {
    return businessRegistrationNumber;
  }

  void setBusinessRegistrationNumber(String? businessRegistrationNumber) {
    this.businessRegistrationNumber = businessRegistrationNumber;
  }

  String? getTaxSectionCode() {
    return taxSectionCode;
  }

  void setTaxSectionCode(String taxSectionCode) {
    this.taxSectionCode = taxSectionCode;
  }

  String? getStoreStateCode() {
    return storeStateCode;
  }

  void setStoreStateCode(String storeStateCode) {
    this.storeStateCode = storeStateCode;
  }

  String? getCloseBusinessTime() {
    return closeBusinessTime;
  }

  void setCloseBusinessTime(String closeBusinessTime) {
    this.closeBusinessTime = closeBusinessTime;
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

  String? getManagerId() {
    return this.managerId;
  }

  void setManagerId(String managerId) {
    this.managerId = managerId;
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

  String? getAgencyId() {
    return this.agencyId;
  }

  void setAgencyId(String agencyId) {
    this.agencyId = agencyId;
  }

  String? getLanguageCode() {
    return this.languageCode;
  }

  void setLanguageCode(String languageCode) {
    this.languageCode = languageCode;
  }

  String? getCurrencyCode() {
    return this.currencyCode;
  }

  void setCurrencyCode(String currencyCode) {
    this.currencyCode = currencyCode;
  }

  String? getOpeningHours() {
    return this.openingHours;
  }

  void setOpeningHours(String openingHours) {
    this.openingHours = openingHours;
  }

  String? getClosedDays() {
    return this.closedDays;
  }

  void setClosedDays(String closedDays) {
    this.closedDays = closedDays;
  }

  String? getParkingTypeCode() {
    return this.parkingTypeCode;
  }

  void setParkingTypeCode(String parkingTypeCode) {
    this.parkingTypeCode = parkingTypeCode;
  }

  String? getBusinessSectors() {
    return this.businessSectors;
  }

  void setBusinessSectors(String businessSectors) {
    this.businessSectors = businessSectors;
  }

  String? getMainProducts() {
    return this.mainProducts;
  }

  void setMainProducts(String mainProducts) {
    this.mainProducts = mainProducts;
  }

  String? getCeoName() {
    return this.ceoName;
  }

  void setCeoName(String? ceoName) {
    this.ceoName = ceoName;
  }

  String? getOwnerName() {
    return this.ownerName;
  }

  void setOwnerName(String ownerName) {
    this.ownerName = ownerName;
  }

  String? getLinkTypeCode() {
    return linkTypeCode;
  }

  void setLinkTypeCode(String linkTypeCode) {
    this.linkTypeCode = linkTypeCode;
  }

  String? getServiceTypeCode() {
    return serviceTypeCode;
  }

  void setServiceTypeCode(String serviceTypeCode) {
    this.serviceTypeCode = serviceTypeCode;
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

/** To-one relationship, resolved on first access. */
//todo @Generated(hash = 217884394)
// AdminUser getAdminUser() {
//     String __key = this.managerId;
//     if (adminUser__resolvedKey == null || adminUser__resolvedKey != __key) {
//         DaoSession daoSession = this.daoSession;
//         if (daoSession == null) {
//             throw DaoException("Entity is detached from DAO context");
//         }
//         AdminUserDao targetDao = daoSession.getAdminUserDao();
//         AdminUser adminUserNew = targetDao.load(__key);
//         synchronized (this) {
//             adminUser = adminUserNew;
//             adminUser__resolvedKey = __key;
//         }
//     }
//     return adminUser;
// }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1381472584)
// void setAdminUser(AdminUser adminUser) {
//     synchronized (this) {
//         this.adminUser = adminUser;
//         managerId = adminUser == null ? null : adminUser.getAdminUserId();
//         adminUser__resolvedKey = managerId;
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
// //todo @Generated(hash = 589194918)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getStoreDao() : null;
// }
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/db.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "CO1_ADM_USR")
class AdminUser {
  @primaryKey
  @ColumnInfo(name: "ADM_USR_ID")
  String? adminUserId;

  String? getAdminUserId() {
    return adminUserId;
  }

  void setAdminUserId(String id) {
    this.adminUserId = id;
  }

  @ColumnInfo(name: "ADM_AUTH_GRP_ID")
  String? adminAuthorityGroupId;

  String? getAdminAuthorityGroupId() {
    return adminAuthorityGroupId;
  }

  void setAdminAuthorityGroupId(String adminAuthorityGroupId) {
    this.adminAuthorityGroupId = adminAuthorityGroupId;
  }

  @ColumnInfo(name: "AFF_CO_ID")
  String? affiliatedCompanyId;

  String? getAffiliatedCompanyId() {
    return affiliatedCompanyId;
  }

  void setAffiliatedCompanyId(String affiliatedCompanyId) {
    this.affiliatedCompanyId = affiliatedCompanyId;
  }

  @ColumnInfo(name: "LGIN_ID")
  String? loginId;

  String? getLoginId() {
    return loginId;
  }

  void setLoginId(String loginId) {
    this.loginId = loginId;
  }

  @ColumnInfo(name: "LGIN_PWD")
  String? loginPassword;

  String? getLoginPassword() {
    return loginPassword;
  }

  void setLoginPassword(String loginPassword) {
    this.loginPassword = loginPassword;
  }

  @ColumnInfo(name: "ADM_USR_NM")
  String? adminUserName;

  String? getAdminUserName() {
    return adminUserName;
  }

  void setAdminUserName(String adminUserName) {
    this.adminUserName = adminUserName;
  }

  @ColumnInfo(name: "TEL_NO")
  String? telNumber;

  String? getTelNumber() {
    return telNumber;
  }

  void setTelNumber(String telNumber) {
    this.telNumber = telNumber;
  }

  @ColumnInfo(name: "HP_NO")
  String? hpNumber;

  String? getHpNumber() {
    return hpNumber;
  }

  void setHpNumber(String hpNumber) {
    this.hpNumber = hpNumber;
  }

  @ColumnInfo(name: "EMAIL_ADRS")
  String? emailAddress;

  String? getEmailAddress() {
    return emailAddress;
  }

  void setEmailAddress(String emailAddress) {
    this.emailAddress = emailAddress;
  }

  @ColumnInfo(name: "PRI_ADRS")
  String? primaryAddress;

  String? getPrimaryAddress() {
    return primaryAddress;
  }

  void setPrimaryAddress(String primaryAddress) {
    this.primaryAddress = primaryAddress;
  }

  @ColumnInfo(name: "DTL_ADRS")
  String? detailAddress;

  String? getDetailAddress() {
    return detailAddress;
  }

  void setDetailAddress(String detailAddress) {
    this.detailAddress = detailAddress;
  }

  @ColumnInfo(name: "ADM_ACC_STAT_CD")
  String? adminAccountStateCode;

  String? getAdminAccountStateCode() {
    return adminAccountStateCode;
  }

  void setAdminAccountStateCode(String adminAccountStateCode) {
    this.adminAccountStateCode = adminAccountStateCode;
  }

  @ColumnInfo(name: "ADM_USR_DESC")
  String? adminUserDescription;

  String? getAdminUserDescription() {
    return adminUserDescription;
  }

  void setAdminUserDescription(String adminUserDescription) {
    this.adminUserDescription = adminUserDescription;
  }

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  String? getStateCode() {
    return stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

  //
  // /**
  //  * To-many relationship, resolved on first access (and after reset).
  //  * Changes to to-many relations are not persisted, make changes to the target entity.
  //  */
  // //todo @Generated(hash = 1947187326)
  // List<Store> getStores() {
  //     if (stores == null) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         StoreDao targetDao = daoSession.getStoreDao();
  //         List<Store> storesNew = targetDao._queryAdminUser_Stores(adminUserId);
  //         synchronized (this) {
  //             if (stores == null) {
  //                 stores = storesNew;
  //             }
  //         }
  //     }
  //     return stores;
  // }
  //
  // /** Resets a to-many relationship, making the next get call to query for a fresh result. */
  // //todo @Generated(hash = 117378393)
  // synchronized void resetStores() {
  //     stores = null;
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

  //todo @ToMany(referencedJoinProperty = "managerId")
  @ignore
  List<Store>? stores;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;
  /** Used for active entity operations. */
  //todo @Generated(hash = 1529251485)
  // transient AdminUserDao myDao;

  //todo @Generated(hash = 1838735988)
  // AdminUser() {
  // }

  //todo @Generated(hash = 1759954202)
  AdminUser(
      {String? adminUserId,
      String? adminAuthorityGroupId,
      String? affiliatedCompanyId,
      String? loginId,
      String? loginPassword,
      String? adminUserName,
      String? telNumber,
      String? hpNumber,
      String? emailAddress,
      String? primaryAddress,
      String? detailAddress,
      String? adminAccountStateCode,
      String? adminUserDescription,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.adminUserId = adminUserId;
    this.adminAuthorityGroupId = adminAuthorityGroupId;
    this.affiliatedCompanyId = affiliatedCompanyId;
    this.loginId = loginId;
    this.loginPassword = loginPassword;
    this.adminUserName = adminUserName;
    this.telNumber = telNumber;
    this.hpNumber = hpNumber;
    this.emailAddress = emailAddress;
    this.primaryAddress = primaryAddress;
    this.detailAddress = detailAddress;
    this.adminAccountStateCode = adminAccountStateCode;
    this.adminUserDescription = adminUserDescription;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }
//
// /** called by internal mechanisms, do not call yourself. */
// //todo @Generated(hash = 1766760500)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getAdminUserDao() : null;
// }
}

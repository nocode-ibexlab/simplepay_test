// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorFlutterDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$FlutterDatabaseBuilder databaseBuilder(String name) =>
      _$FlutterDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$FlutterDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$FlutterDatabaseBuilder(null);
}

class _$FlutterDatabaseBuilder {
  _$FlutterDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$FlutterDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$FlutterDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<FlutterDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$FlutterDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$FlutterDatabase extends FlutterDatabase {
  _$FlutterDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  AccountSubjectDao? _accountSubjectDaoInstance;

  AdminUserDao? _adminUserDaoInstance;

  BasicDataDao? _basicDataDaoInstance;

  BasicDataItemDao? _basicDataItemDaoInstance;

  CashdrawCashInOutHistoryDao? _cashdrawCashInOutHistoryDaoInstance;

  CashierBankHistoryDao? _cashierBankHistoryDaoInstance;

  CashierBankHistoryBillDao? _cashierBankHistoryBillDaoInstance;

  CommonIdDao? _commonIdDaoInstance;

  DailyReportHistoryDao? _dailyReportHistoryDaoInstance;

  DailyReportHistoryPaymentsDao? _dailyReportHistoryPaymentsDaoInstance;

  EmployeeDao? _employeeDaoInstance;

  EmployeeAuthorityDao? _employeeAuthorityDaoInstance;

  EmployeeBreakHistoryDao? _employeeBreakHistoryDaoInstance;

  EmployeeGroupDao? _employeeGroupDaoInstance;

  EmployeeWorkHistoryDao? _employeeWorkHistoryDaoInstance;

  I18NTermDao? _i18NTermDaoInstance;

  InstallLogDao? _installLogDaoInstance;

  IntegrityVerificationHistoryDao? _integrityVerificationHistoryDaoInstance;

  ItemDao? _itemDaoInstance;

  ItemGroupDao? _itemGroupDaoInstance;

  ItemOptionDao? _itemOptionDaoInstance;

  KitchenMemoDao? _kitchenMemoDaoInstance;

  KitchenMemoGroupDao? _kitchenMemoGroupDaoInstance;

  MenuGroupDao? _menuGroupDaoInstance;

  MenuGroupUseDao? _menuGroupUseDaoInstance;

  MenuItemDao? _menuItemDaoInstance;

  NoticeDao? _noticeDaoInstance;

  OptionEntityDao? _optionEntityDaoInstance;

  OptionGroupDao? _optionGroupDaoInstance;

  OrderHistoryDao? _orderHistoryDaoInstance;

  OrderHistoryDeletionDao? _orderHistoryDeletionDaoInstance;

  OrderHistoryCancelItemDao? _orderHistoryCancelItemDaoInstance;

  OrderHistoryDiscountDao? _orderHistoryDiscountDaoInstance;

  OrderHistoryItemDao? _orderHistoryItemDaoInstance;

  OrderHistoryKitchenMemoDao? _orderHistoryKitchenMemoDaoInstance;

  RequestPaymentHistoryDao? _requestPaymentHistoryDaoInstance;

  SalesAccountHistoryDao? _salesAccountHistoryDaoInstance;

  SalesAccountHistoryDetailsDao? _salesAccountHistoryDetailsDaoInstance;

  SalesAccountHistoryTipDao? _salesAccountHistoryTipDaoInstance;

  SalesHistoryDao? _salesHistoryDaoInstance;

  SalesHistoryDiscountDao? _salesHistoryDiscountDaoInstance;

  SalesHistoryItemDao? _salesHistoryItemDaoInstance;

  SelfMenuGroupDao? _selfMenuGroupDaoInstance;

  SelfMenuItemDao? _selfMenuItemDaoInstance;

  SetEntityDao? _setEntityDaoInstance;

  StoreDao? _storeDaoInstance;

  StorePlaceDao? _storePlaceDaoInstance;

  StoreTerminalDao? _storeTerminalDaoInstance;

  StoreTerminalBasicDataDao? _storeTerminalBasicDataDaoInstance;

  StoreTerminalBasicDataItemDao? _storeTerminalBasicDataItemDaoInstance;

  TableDao? _tableDaoInstance;

  TableDetailDao? _tableDetailDaoInstance;

  TableGroupDao? _tableGroupDaoInstance;

  TableLinkDao? _tableLinkDaoInstance;

  TableProcessDao? _tableProcessDaoInstance;

  TemplateItemDao? _templateItemDaoInstance;

  EntranceRegistrationDao? _entranceRegistrationDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 26,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_ACC_SBJ` (`ACC_SBJ_ID` TEXT, `I18N_TER_ID` TEXT, `ACC_SBJ_NM` TEXT, `ACC_SBJ_USE_TP` TEXT, `ACC_SBJ_TP` TEXT, `FXD_EXP_YN` INTEGER, `RMK_A` TEXT, `RMK_B` TEXT, `RMK_C` TEXT, `RMK_D` TEXT, `RMK_E` TEXT, `USR_INPT` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ACC_SBJ_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CO1_ADM_USR` (`ADM_USR_ID` TEXT, `ADM_AUTH_GRP_ID` TEXT, `AFF_CO_ID` TEXT, `LGIN_ID` TEXT, `LGIN_PWD` TEXT, `ADM_USR_NM` TEXT, `TEL_NO` TEXT, `HP_NO` TEXT, `EMAIL_ADRS` TEXT, `PRI_ADRS` TEXT, `DTL_ADRS` TEXT, `ADM_ACC_STAT_CD` TEXT, `ADM_USR_DESC` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ADM_USR_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_BAS_DAT` (`BAS_DAT_ID` TEXT, `BAS_DAT_CD_NM` TEXT, `BAS_DAT_NM` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`BAS_DAT_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_BAS_DAT_ITM` (`BAS_DAT_ITM_ID` TEXT, `BAS_DAT_ID` TEXT, `I18N_TER_ID` TEXT, `BAS_DAT_ITM_SNO` INTEGER, `BAS_DAT_ITM_CD_NM` TEXT, `BAS_DAT_ITM_NM` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `DAT_4` TEXT, `DAT_5` TEXT, `DAT_6` TEXT, `DAT_7` TEXT, `DAT_8` TEXT, `DAT_9` TEXT, `DAT_10` TEXT, `DAT_11` TEXT, `DAT_12` TEXT, `DAT_13` TEXT, `DAT_14` TEXT, `DAT_15` TEXT, `DAT_16` TEXT, `DAT_17` TEXT, `DAT_18` TEXT, `DAT_19` TEXT, `DAT_20` TEXT, `HIDE_YN` INTEGER, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`BAS_DAT_ITM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BI1_CDRW_CASH_IO_HIS` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `STR_TRM_ID` TEXT, `ACC_SBJ_ID` TEXT, `CDRW_SEC_CD` TEXT, `IO_TP_CD` TEXT, `AMT` REAL, `RMK_A` TEXT, `RMK_B` TEXT, `RMK_C` TEXT, `PER_ACC_ID` TEXT, `SLS_LNK` TEXT, `CSHR_BNK_LNK` TEXT, `IO_EMP_ID` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BI1_CSHR_BNK_HIS` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `CDRW_SEC_CD` TEXT, `STR_TRM_ID` TEXT, `BIZ_OPN_CLS_SEC_CD` TEXT, `CSHR_TP_CD` TEXT, `BIZ_START_DTTM` TEXT, `BIZ_END_DTTM` TEXT, `BIZ_CHANGE_DTTM` TEXT, `SLS_CNT` INTEGER, `TAB_TURN_RATE` REAL, `EMP_ID` TEXT, `OPN_BIZ_CASH_TOT_AMT` REAL, `CLS_BIZ_CASH_TOT_AMT` REAL, `BIZ_CHANGE_CASH_TOT_AMT` REAL, `POS_CASH_TOT_AMT` REAL, `CASH_DIFF_AMT` REAL, `CASH_DIFF_RESN` TEXT, `CASH_DEPSIT_TOT_AMT` REAL, `CASH_WDRWL_TOT_AMT` REAL, `SLS_TOT_CASH_AMT` REAL, `SLS_TOT_AMT` REAL, `DC_TOT_AMT` REAL, `TIP_TOT_AMT` REAL, `CNCL_SNO` INTEGER, `SHIFT_SNO` TEXT, `BATCH_ID` INTEGER, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BI1_CSHR_BNK_HIS_BIL` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `CDRW_SEC_CD` TEXT, `BIL_SNO` INTEGER, `BIZ_OPN_CLS_SEC_CD` TEXT, `TOT_AMT` REAL, `BIL_0_NUM` INTEGER, `BIL_1_NUM` INTEGER, `BIL_2_NUM` INTEGER, `BIL_3_NUM` INTEGER, `BIL_4_NUM` INTEGER, `BIL_5_NUM` INTEGER, `BIL_6_NUM` INTEGER, `BIL_7_NUM` INTEGER, `BIL_8_NUM` INTEGER, `BIL_9_NUM` INTEGER, `BIL_10_NUM` INTEGER, `BIL_11_NUM` INTEGER, `BIL_12_NUM` INTEGER, `BIL_13_NUM` INTEGER, `BIL_14_NUM` INTEGER, `BIL_15_NUM` INTEGER, `BIL_16_NUM` INTEGER, `BIL_17_NUM` INTEGER, `BIL_18_NUM` INTEGER, `BIL_19_NUM` INTEGER, `USR_INPT_AMT` REAL, `SHIFT_SNO` TEXT, `CNCL_SNO` INTEGER, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_COM_ID` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BI1_DAILY_RPT_HIS` (`ID` TEXT, `STR_TRM_ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `BIZ_DTTM` TEXT, `TOT_SLS_AMT` REAL, `TOT_SLS_CNT` INTEGER, `TOT_SPLY_VAL` REAL, `TOT_TAX_AMT` REAL, `TOT_TIP_AMT` REAL, `TOT_TIP_TAX_AMT` REAL, `DC_TOT_AMT` REAL, `TOT_CNCL_AMT` REAL, `TOT_REF_AMT` REAL, `POS_CASH_TOT_AMT` REAL, `CASH_DEPSIT_TOT_AMT` REAL, `CASH_WDRWL_TOT_AMT` REAL, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BI1_DAILY_RPT_HIS_PAYMENTS` (`ID` TEXT, `STR_TRM_ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `PAY_SEC_CD` TEXT, `BIZ_DTTM` TEXT, `TOT_SLS_AMT` REAL, `TOT_SLS_CNT` INTEGER, `TOT_SPLY_VAL` REAL, `TOT_TAX_AMT` REAL, `TOT_TIP_AMT` REAL, `TOT_TIP_TAX_AMT` REAL, `DC_TOT_AMT` REAL, `TOT_CNCL_AMT` REAL, `TOT_REF_AMT` REAL, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_EMP` (`EMP_ID` TEXT, `EMP_GRP_ID` TEXT, `EMP_CD` INTEGER, `EMP_NM` TEXT, `TEL_NO` TEXT, `HP_NO` TEXT, `PRI_ADRS` TEXT, `DTL_ADRS` TEXT, `LGIN_PWD` TEXT, `EMP_DESC` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`EMP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_EMP_AUTH` (`EMP_AUTH_ID` TEXT, `EMP_ID` TEXT, `CLI_AUTH_GRP_CD` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`EMP_AUTH_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_EMP_BRK_HIS` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `EMP_BRK_SNO` INTEGER, `BRK_START_TM` INTEGER, `BRK_END_TM` INTEGER, `TOT_BRK_TM` INTEGER, `BRK_START_MMO` TEXT, `BRK_END_MMO` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_EMP_GRP` (`EMP_GRP_ID` TEXT, `EMP_GRP_NM` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`EMP_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_EMP_WRK_HIS` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `EMP_ID` TEXT, `WRK_START_TM` INTEGER, `WRK_END_TM` INTEGER, `TOT_WRK_TM` INTEGER, `WRK_START_MMO` TEXT, `WRK_END_MMO` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_I18N_TER` (`I18N_TER_ID` TEXT, `USR_INPT` TEXT, `ENG` TEXT, `KOR` TEXT, `JAP` TEXT, `CHI` TEXT, `GER` TEXT, `SPA` TEXT, `POR` TEXT, `VIE` TEXT, `FRE` TEXT, `RUS` TEXT, `ARA` TEXT, `THI` TEXT, `KAZ` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`I18N_TER_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SY1_INS_LOG` (`LOG_ID` TEXT, `LOG_TP` TEXT, `LOG_MSG` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`LOG_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SY1_INTEG_VERIF_HIS` (`HIS_ID` TEXT, `VERIF_DTTM` INTEGER, `VERIF_TP_CD` TEXT, `VERIF_RSLT_CD` TEXT, `RMKS` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`HIS_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `IT1_ITM` (`ITM_ID` TEXT, `ITM_GRP_ID` TEXT, `ITM_CD` TEXT, `ITM_NM` TEXT, `OPR_TP_CD` TEXT, `SLS_TP_CD` TEXT, `PRICE_TP_CD` TEXT, `COST` REAL, `SELL_PRICE` REAL, `BARCD` TEXT, `APLY_TAX_0_YN` TEXT, `APLY_TAX_1_YN` TEXT, `APLY_TAX_2_YN` TEXT, `APLY_DC_YN` INTEGER, `HIDE_YN` INTEGER, `INV_QTY` REAL, `KTCHN_PRNTR_OUTPUT_YN` INTEGER, `OPT_USE_TP_CD` TEXT, `RECMND_ITM_YN` INTEGER, `PACK_PSBL_YN` INTEGER, `ONLINE_SLS_YN` INTEGER, `SOLD_OUT_YN` INTEGER, `IMG_URL` TEXT, `LNK_CODE` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ITM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `IT1_ITM_GRP` (`ITM_GRP_ID` TEXT, `UPR_ITM_GRP_ID` TEXT, `ITM_GRP_NM` TEXT, `ITM_GRP_TP_CD` TEXT, `OPR_TP_CD` TEXT, `HIDE_YN` INTEGER, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ITM_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `IT1_ITM_OPT` (`ITM_OPT_ID` TEXT, `ITM_ID` TEXT, `OPT_GRP_ID` TEXT, `ITM_OPT_SNO` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ITM_OPT_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_KTCHN_MMO` (`KTCHN_MMO_ID` TEXT, `KTCHN_MMO_GRP_ID` TEXT, `KTCHN_MMO_NM` TEXT, `KTCHN_MMO_CD` TEXT, `KTCHN_MMO_CNTNT` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`KTCHN_MMO_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_KTCHN_MMO_GRP` (`KTCHN_MMO_GRP_ID` TEXT, `KTCHN_MMO_GRP_NM` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`KTCHN_MMO_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_MNU_GRP` (`MNU_GRP_ID` TEXT, `MNU_GRP_NM` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `BG_IMG_NM` TEXT, `BG_COLR` TEXT, `FNT_NM` TEXT, `FNT_SZ` REAL, `FNT_STYL` TEXT, `FNT_COLR` TEXT, `DEF_YN` INTEGER, `ONLINE_SLS_YN` INTEGER, `LNK_INFO` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`MNU_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_MNU_GRP_USE` (`ID` TEXT, `MNU_GRP_ID` TEXT, `BIZ_SEC_CD` TEXT, `USE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_MNU_ITM` (`MNU_ITM_ID` TEXT, `MNU_GRP_ID` TEXT, `ITM_ID` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `BG_COLR` TEXT, `FNT_COLR` TEXT, `BTN_SZ_TP_CD` TEXT, `LNK_INFO` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`MNU_ITM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_NOTI` (`NOTI_ID` TEXT, `NOTI_SEC_CD` TEXT, `UGNT_YN` INTEGER, `NOTI_TIT` TEXT, `NOTI_CNTNT` TEXT, `START_DT` INTEGER, `END_DT` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`NOTI_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `IT1_OPT_ENTY` (`OPT_ENTY_ID` TEXT, `OPT_GRP_ID` TEXT, `ITM_ID` TEXT, `OPT_ENTY_SNO` INTEGER, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `BTN_SZ_TP_CD` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`OPT_ENTY_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `IT1_OPT_GRP` (`OPT_GRP_ID` TEXT, `OPT_GRP_NM` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `REQUIRED_YN` INTEGER, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`OPT_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `OD1_ODR_HIS` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `TAB_ID` TEXT, `OPR_TP_CD` TEXT, `BIZ_SEC_CD` TEXT, `SPLY_VAL` REAL, `SPLY_AMT` REAL, `TAX_AMT_0` REAL, `TAX_AMT_1` REAL, `TAX_AMT_2` REAL, `ODR_DC_TOT_AMT` REAL, `ODR_TOT_AMT` REAL, `TAX_FREE_YN` INTEGER, `TAX_FREE_RESN` TEXT, `PRE_TIP_TOT_AMT` REAL, `PRE_TIP_AMT` REAL, `PRE_TIP_TAX_AMT` REAL, `PAY_TIP_TOT_AMT` REAL, `PAY_TIP_AMT` REAL, `PAY_TIP_TAX_AMT` REAL, `SRV_EMP_ID` TEXT, `ODR_EMP_ID` TEXT, `CNF_YN` INTEGER, `PAY_INI_ID` TEXT, `SYNCD_YN` INTEGER NOT NULL, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, `PGR_NO` INTEGER, `MEMO` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `OD1_ODR_HIS_DEL` (`ID` TEXT NOT NULL, `FINALIZED_YN` INTEGER NOT NULL, `SYNCD_YN` INTEGER NOT NULL, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT NOT NULL, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `OD1_ODR_HIS_CNCL_ITM` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `ITM_SNO` INTEGER, `ITM_ID` TEXT, `STR_TRM_ID` TEXT, `QTY` REAL, `PRICE` REAL, `SPLY_VAL` REAL, `DC_SEC_CD` TEXT, `MENU_DC_AMT` REAL, `SPLY_AMT` REAL, `CNCL_EMP_ID` TEXT, `CNCL_RESN` TEXT, `CNCL_DT` INTEGER, `ODR_DT` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `OD1_ODR_HIS_DC` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `DC_SNO` INTEGER, `DC_SEC_CD` TEXT, `DC_RATE` REAL, `DC_AMT` REAL, `DC_NAME` TEXT, `ITM_ID` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `OD1_ODR_HIS_ITM` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `ITM_SNO` INTEGER, `UPR_ITM_SNO` INTEGER, `ITM_ID` TEXT, `STR_TRM_ID` TEXT, `QTY` REAL, `PRICE` REAL, `SPLY_VAL` REAL, `TAX_AMT_0` REAL, `TAX_AMT_1` REAL, `TAX_AMT_2` REAL, `DC_SEC_CD` TEXT, `DC_RATE` REAL, `DC_AMT` REAL, `DC_TP_CD` TEXT, `MENU_DC_AMT` REAL, `ODR_DC_AMT` REAL, `SPLY_AMT` REAL, `ODR_OPT_CD` TEXT, `ODR_HOLD_TM` TEXT, `CNCL_SNO` INTEGER, `CNCL_EMP_ID` TEXT, `CNCL_RESN` TEXT, `MNU_PAY_YN` INTEGER, `MNU_PAY_SNO` INTEGER, `TRACKING_INFO` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `OD1_ODR_HIS_KTCHN_MMO` (`ID` TEXT, `COM_DT` TEXT, `COM_SNO` INTEGER, `ITM_SNO` INTEGER, `KTCHN_MMO_SNO` INTEGER, `KTCHN_MMO_ID` TEXT, `KTCHN_MMO` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SY1_REQ_PAY_HIS` (`REQ_ID` TEXT, `PAY_SEC_CD` TEXT, `APRVL_PT_CD` TEXT, `PAY_AMT` REAL, `COM_DT` TEXT, `COM_SNO` TEXT, `AC_SNO` TEXT, `REQ_TKN` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`REQ_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SL1_SLS_ACC_HIS` (`ID` TEXT, `COM_DT` TEXT, `SL_SNO` INTEGER, `SLS_ACC_SNO` INTEGER, `STR_TRM_ID` TEXT, `CDRW_SEC_CD` TEXT, `OPR_TP_CD` TEXT, `PAY_SEC_CD` TEXT, `APRVL_TRANS_NO` TEXT, `PAY_METHOD_CD` TEXT, `TRANS_TP_CD` TEXT, `CASH_RECPT_ID_TP_CD` TEXT, `CASH_RECPT_ID_NO` TEXT, `APRVL_TP_CD` TEXT, `CASH_RECPT_TP_CD` TEXT, `PAY_APRVL_NO` TEXT, `APRVL_DT` TEXT, `APRVL_DT_PRI_PTN` TEXT, `SPLY_VAL` REAL, `TAX_AMT` REAL, `TAX_AMT_1` REAL, `TAX_AMT_2` REAL, `CRD_EXP_DT` TEXT, `INSTLMNT_MM` INTEGER, `CRD_NM` TEXT, `CRD_CO_SEC_CD` TEXT, `CRD_CO_NM` TEXT, `CRD_CO_AFF_NO` TEXT, `CRD_PUCHS_CO_CD` TEXT, `CRD_PUCHS_CO_NM` TEXT, `CRD_SWIP_YN` INTEGER, `PRE_TIP_TOT_AMT` REAL, `PRE_TIP_AMT` REAL, `PRE_TIP_TAX_AMT` REAL, `PAY_TIP_TOT_AMT` REAL, `PAY_TIP_AMT` REAL, `PAY_TIP_TAX_AMT` REAL, `TOT_AMT` REAL, `CNCL_SNO` TEXT, `CNCL_EMP_ID` TEXT, `COMPLT_SETLMNT_YN` INTEGER, `SALE_TX_YN` INTEGER, `RECPT_NO` TEXT, `SYNCD_YN` INTEGER, `PAY_OPT` TEXT, `MENU_DC_AMT` REAL, `ODR_DC_AMT` REAL, `NOT_IN_SLS_YN` INTEGER, `TAKEN_AMT` REAL, `CHANGE_AMT` REAL, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SL1_SLS_ACC_HIS_DTL` (`ID` TEXT, `COM_DT` TEXT, `SL_SNO` INTEGER, `SLS_ACC_SNO` INTEGER, `DAT_0` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `DAT_4` TEXT, `DAT_5` TEXT, `DAT_6` TEXT, `DAT_7` TEXT, `DAT_8` TEXT, `DAT_9` TEXT, `DAT_10` TEXT, `DAT_11` TEXT, `DAT_12` TEXT, `DAT_13` TEXT, `DAT_14` TEXT, `DAT_15` TEXT, `DAT_16` TEXT, `DAT_17` TEXT, `DAT_18` TEXT, `DAT_19` TEXT, `DAT_20` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SL1_SLS_ACC_HIS_TIP` (`ID` TEXT, `COM_DT` TEXT, `SL_SNO` INTEGER, `SLS_ACC_SNO` INTEGER, `STR_TRM_ID` TEXT, `PAY_SEC_CD` TEXT, `APRVL_TP_CD` TEXT, `CDRW_SEC_CD` TEXT, `PAY_AMT` REAL, `TAX_AMT` REAL, `TIP_RECPT_EMP_ID` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SL1_SLS_HIS` (`ID` TEXT, `COM_DT` TEXT, `SL_SNO` INTEGER, `TAB_ID` TEXT, `CHECK_LINK` TEXT, `OPR_TP_CD` TEXT, `BIZ_SEC_CD` TEXT, `SPLY_AMT` REAL, `SPLY_VAL` REAL, `TAX_AMT_0` REAL, `TAX_AMT_1` REAL, `TAX_AMT_2` REAL, `DC_TOT_AMT` REAL, `TOT_AMT` REAL, `TAX_FREE_YN` INTEGER, `TAX_FREE_RESN` TEXT, `TIP_TOT_AMT` REAL, `PRE_TIP_TOT_AMT` REAL, `PRE_TIP_AMT` REAL, `PRE_TIP_TAX_AMT` REAL, `PAY_TIP_TOT_AMT` REAL, `PAY_TIP_AMT` REAL, `PAY_TIP_TAX_AMT` REAL, `SRV_EMP_ID` TEXT, `ODR_EMP_ID` TEXT, `CNCL_LNK` TEXT, `CNCL_RESN` TEXT, `CNCL_TP_CD` TEXT, `CNCL_EMP_ID` TEXT, `CLS_BIZ_TP_CD` TEXT, `MMO` TEXT, `SLS_ACC_SNO` INTEGER, `ITM_SNO` INTEGER, `DAT_0` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `DAT_4` TEXT, `DAT_5` TEXT, `DAT_6` TEXT, `DAT_7` TEXT, `DAT_8` TEXT, `DAT_9` TEXT, `DAT_10` TEXT, `SYNCD_YN` INTEGER, `STAFF_BNK_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SL1_SLS_HIS_DC` (`ID` TEXT, `COM_DT` TEXT, `SL_SNO` INTEGER, `DC_SNO` INTEGER, `DC_SEC_CD` TEXT, `DC_RATE` REAL, `DC_AMT` REAL, `DC_NAME` TEXT, `ITM_ID` TEXT, `CNCL_SNO` INTEGER, `CNCL_EMP_ID` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SL1_SLS_HIS_ITM` (`ID` TEXT, `COM_DT` TEXT, `SL_SNO` INTEGER, `ITM_SNO` INTEGER, `UPR_ITM_SNO` INTEGER, `ITM_ID` TEXT, `STR_TRM_ID` TEXT, `QTY` REAL, `PRICE` REAL, `SPLY_VAL` REAL, `SPLY_AMT` REAL, `TAX_AMT_0` REAL, `TAX_AMT_1` REAL, `TAX_AMT_2` REAL, `DC_SEC_CD` TEXT, `DC_TP_CD` TEXT, `DC_AMT` REAL, `ODR_DC_AMT` REAL, `ODR_OPT_CD` TEXT, `CNCL_SNO` INTEGER, `CNCL_RESN` TEXT, `CNCL_EMP_ID` TEXT, `SYNCD_YN` INTEGER, `MNU_PAY_SNO` INTEGER, `TRACKING_INFO` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_SLF_MNU_GRP` (`SLF_MNU_GRP_ID` TEXT, `SLF_MNU_GRP_NM` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `BG_IMG_NM` TEXT, `BG_COLR` TEXT, `FNT_NM` TEXT, `FNT_SZ` REAL, `FNT_STYL` TEXT, `FNT_COLR` TEXT, `DEF_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`SLF_MNU_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_SLF_MNU_ITM` (`SLF_MNU_ITM_ID` TEXT, `SLF_MNU_GRP_ID` TEXT, `ITM_ID` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `BG_COLR` TEXT, `FNT_COLR` TEXT, `BTN_SZ_TP_CD` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`SLF_MNU_ITM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `IT1_SET_ENTY` (`SET_ENTY_ID` TEXT, `SET_ITM_ID` TEXT, `ENTY_ITM_ID` TEXT, `SET_ENTY_SNO` TEXT, `QTY` REAL, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`SET_ENTY_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_STR` (`STR_ID` TEXT, `AGY_ID` TEXT, `MGR_ID` TEXT, `STR_NM` TEXT, `ZIPCODE` TEXT, `PRI_ADRS` TEXT, `DTL_ADRS` TEXT, `TEL_NO` TEXT, `HP_NO` TEXT, `FAX_NO` TEXT, `BIZ_REG_NO` TEXT, `TAX_SEC_CD` TEXT, `LANG_CD` TEXT, `CUR_CD` TEXT, `STR_STAT_CD` TEXT, `CLS_BIZ_TM` TEXT, `BIZ_HOUR` TEXT, `CLSD_DAY` TEXT, `PARK_TP_CD` TEXT, `BIZ_SEC` TEXT, `MAIN_PRDCT` TEXT, `CEO_NM` TEXT, `OWR_NM` TEXT, `LNK_TP_CD` TEXT, `SVC_TP_CD` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`STR_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_ST_PLACE` (`STR_PLACE_ID` TEXT, `STR_ID` TEXT, `PLACE_TYPE` TEXT, `IS_DEFAULT` TEXT, `PLACE_NAME` TEXT, `PLACE_SHT_NAME` TEXT, `PLACE_DESC` TEXT, `PLACE_ADDRESS1` TEXT, `PLACE_ADDRESS2` TEXT, `EMP_ID` TEXT, `PLACE_TEL` TEXT, `PLACE_TIMEZONE` TEXT, `USE_DST` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`STR_PLACE_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_STR_TRM` (`STR_TRM_ID` TEXT, `STR_ID` TEXT, `STR_TRM_GRP_ID` TEXT, `TRM_ID` TEXT, `STR_TRM_NM` TEXT, `DEV_UNIQ_VAL` TEXT, `MST_TRM_YN` INTEGER, `MST_TRM_ADRS` TEXT, `MST_TRM_PORT` TEXT, `TRM_ROLE_SEC_CD` TEXT, `SVR_CONN_YN` INTEGER, `LANG_CD` TEXT, `CUR_CD` TEXT, `APP_ACT_TP_CD` TEXT, `CSHR_AUTO_LGIN_YN` INTEGER, `INS_LOC` TEXT, `STR_TRM_DESC` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, `SYNCD_YN` INTEGER, PRIMARY KEY (`STR_TRM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_STR_TRM_BAS_DAT` (`STR_TRM_BAS_DAT_ID` TEXT, `STR_TRM_ID` TEXT, `I18N_TER_ID` TEXT, `STR_TRM_BAS_DAT_CD_NM` TEXT, `STR_TRM_BAS_DAT_NM` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`STR_TRM_BAS_DAT_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_STR_TRM_BAS_DAT_ITM` (`STR_TRM_BAS_DAT_ITM_ID` TEXT, `STR_TRM_BAS_DAT_ID` TEXT, `I18N_TER_ID` TEXT, `STR_TRM_BAS_DAT_ITM_SNO` INTEGER, `STR_TRM_BAS_DAT_ITM_CD_NM` TEXT, `STR_TRM_BAS_DAT_ITM_NM` TEXT, `DAT_1` TEXT, `DAT_2` TEXT, `DAT_3` TEXT, `DAT_4` TEXT, `DAT_5` TEXT, `DAT_6` TEXT, `DAT_7` TEXT, `DAT_8` TEXT, `DAT_9` TEXT, `DAT_10` TEXT, `DAT_11` TEXT, `DAT_12` TEXT, `DAT_13` TEXT, `DAT_14` TEXT, `DAT_15` TEXT, `DAT_16` TEXT, `DAT_17` TEXT, `DAT_18` TEXT, `DAT_19` TEXT, `DAT_20` TEXT, `HIDE_YN` INTEGER, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`STR_TRM_BAS_DAT_ITM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_TAB` (`TAB_ID` TEXT, `SRV_TAB_ID` TEXT, `TAB_GRP_ID` TEXT, `TAB_NM` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `WID` INTEGER, `HGHT` INTEGER, `TAB_IMG_NM` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`TAB_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_TAB_DTL` (`TAB_ID` TEXT, `SEAT_CNT` INTEGER, `SMK_PSBL_YN` INTEGER, `WIN_YN` INTEGER, `BTH_YN` INTEGER, `PRVCY_PRTCT_YN` INTEGER, `CHRGD_SVR_ID` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`TAB_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_TAB_GRP` (`TAB_GRP_ID` TEXT, `TAB_GRP_NM` TEXT, `LOC_X` INTEGER, `LOC_Y` INTEGER, `LOC_Z` INTEGER, `BG_IMG_NM` TEXT, `HIDE_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`TAB_GRP_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_TAB_LNK` (`ID` TEXT, `TAB_ID` TEXT, `LNKD_TAB_ID` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ST1_TAB_PROC` (`TAB_ID` TEXT, `TAB_PROC_STAT_CD` INTEGER, `VIP_YN` INTEGER, PRIMARY KEY (`TAB_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BA1_TEMPLATE_ITEM` (`TEMPLATE_ITEM_ID` TEXT, `NAME` TEXT, `TEMPLATE` TEXT, `CUT` TEXT, `IS_LIST_TYPE` TEXT, `SYNCD_YN` INTEGER, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`TEMPLATE_ITEM_ID`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CU1_ENT_REG` (`ENT_REG_ID` TEXT, `STR_ID` TEXT, `STR_TRM_ID` TEXT, `HP_NO` TEXT, `AGREE_YN` TEXT, `FRST_REGST_ID` TEXT, `FRST_REG_DTTM` TEXT, `LAST_REVSR_ID` TEXT, `LAST_REV_DTTM` TEXT, `STAT_CD` TEXT, PRIMARY KEY (`ENT_REG_ID`))');
        await database.execute(
            'CREATE UNIQUE INDEX `index_BI1_CDRW_CASH_IO_HIS_COM_DT_COM_SNO` ON `BI1_CDRW_CASH_IO_HIS` (`COM_DT`, `COM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_BI1_CSHR_BNK_HIS_COM_DT_COM_SNO_CDRW_SEC_CD` ON `BI1_CSHR_BNK_HIS` (`COM_DT`, `COM_SNO`, `CDRW_SEC_CD`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_BI1_CSHR_BNK_HIS_BIL_COM_DT_COM_SNO_CDRW_SEC_CD_BIL_SNO` ON `BI1_CSHR_BNK_HIS_BIL` (`COM_DT`, `COM_SNO`, `CDRW_SEC_CD`, `BIL_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_BA1_COM_ID_COM_DT_COM_SNO` ON `BA1_COM_ID` (`COM_DT`, `COM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_BI1_DAILY_RPT_HIS_STR_TRM_ID_COM_DT_COM_SNO` ON `BI1_DAILY_RPT_HIS` (`STR_TRM_ID`, `COM_DT`, `COM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_BI1_DAILY_RPT_HIS_PAYMENTS_STR_TRM_ID_COM_DT_COM_SNO_PAY_SEC_CD` ON `BI1_DAILY_RPT_HIS_PAYMENTS` (`STR_TRM_ID`, `COM_DT`, `COM_SNO`, `PAY_SEC_CD`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_ST1_EMP_BRK_HIS_COM_DT_COM_SNO_EMP_BRK_SNO` ON `ST1_EMP_BRK_HIS` (`COM_DT`, `COM_SNO`, `EMP_BRK_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_ST1_EMP_WRK_HIS_COM_DT_COM_SNO` ON `ST1_EMP_WRK_HIS` (`COM_DT`, `COM_SNO`)');
        await database.execute(
            'CREATE INDEX `index_IT1_ITM_ITM_NM_BARCD` ON `IT1_ITM` (`ITM_NM`, `BARCD`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_ST1_MNU_GRP_USE_MNU_GRP_ID_BIZ_SEC_CD` ON `ST1_MNU_GRP_USE` (`MNU_GRP_ID`, `BIZ_SEC_CD`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_OD1_ODR_HIS_COM_DT_COM_SNO` ON `OD1_ODR_HIS` (`COM_DT`, `COM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_OD1_ODR_HIS_CNCL_ITM_COM_DT_COM_SNO_ITM_SNO` ON `OD1_ODR_HIS_CNCL_ITM` (`COM_DT`, `COM_SNO`, `ITM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_OD1_ODR_HIS_DC_COM_DT_COM_SNO_DC_SNO` ON `OD1_ODR_HIS_DC` (`COM_DT`, `COM_SNO`, `DC_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_OD1_ODR_HIS_ITM_COM_DT_COM_SNO_ITM_SNO` ON `OD1_ODR_HIS_ITM` (`COM_DT`, `COM_SNO`, `ITM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_OD1_ODR_HIS_KTCHN_MMO_COM_DT_COM_SNO_ITM_SNO_KTCHN_MMO_SNO` ON `OD1_ODR_HIS_KTCHN_MMO` (`COM_DT`, `COM_SNO`, `ITM_SNO`, `KTCHN_MMO_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_SL1_SLS_ACC_HIS_COM_DT_SL_SNO_SLS_ACC_SNO` ON `SL1_SLS_ACC_HIS` (`COM_DT`, `SL_SNO`, `SLS_ACC_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_SL1_SLS_ACC_HIS_DTL_COM_DT_SL_SNO_SLS_ACC_SNO` ON `SL1_SLS_ACC_HIS_DTL` (`COM_DT`, `SL_SNO`, `SLS_ACC_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_SL1_SLS_ACC_HIS_TIP_COM_DT_SL_SNO_SLS_ACC_SNO` ON `SL1_SLS_ACC_HIS_TIP` (`COM_DT`, `SL_SNO`, `SLS_ACC_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_SL1_SLS_HIS_COM_DT_SL_SNO` ON `SL1_SLS_HIS` (`COM_DT`, `SL_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_SL1_SLS_HIS_DC_COM_DT_SL_SNO_DC_SNO` ON `SL1_SLS_HIS_DC` (`COM_DT`, `SL_SNO`, `DC_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_SL1_SLS_HIS_ITM_COM_DT_SL_SNO_ITM_SNO` ON `SL1_SLS_HIS_ITM` (`COM_DT`, `SL_SNO`, `ITM_SNO`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_ST1_TAB_LNK_TAB_ID_LNKD_TAB_ID` ON `ST1_TAB_LNK` (`TAB_ID`, `LNKD_TAB_ID`)');
        await database.execute(
            'CREATE VIEW IF NOT EXISTS `SL1_SLS_HIS_COM_DT` AS SELECT DISTINCT COM_DT FROM SL1_SLS_HIS');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  AccountSubjectDao get accountSubjectDao {
    return _accountSubjectDaoInstance ??=
        _$AccountSubjectDao(database, changeListener);
  }

  @override
  AdminUserDao get adminUserDao {
    return _adminUserDaoInstance ??= _$AdminUserDao(database, changeListener);
  }

  @override
  BasicDataDao get basicDataDao {
    return _basicDataDaoInstance ??= _$BasicDataDao(database, changeListener);
  }

  @override
  BasicDataItemDao get basicDataItemDao {
    return _basicDataItemDaoInstance ??=
        _$BasicDataItemDao(database, changeListener);
  }

  @override
  CashdrawCashInOutHistoryDao get cashdrawCashInOutHistoryDao {
    return _cashdrawCashInOutHistoryDaoInstance ??=
        _$CashdrawCashInOutHistoryDao(database, changeListener);
  }

  @override
  CashierBankHistoryDao get cashierBankHistoryDao {
    return _cashierBankHistoryDaoInstance ??=
        _$CashierBankHistoryDao(database, changeListener);
  }

  @override
  CashierBankHistoryBillDao get cashierBankHistoryBillDao {
    return _cashierBankHistoryBillDaoInstance ??=
        _$CashierBankHistoryBillDao(database, changeListener);
  }

  @override
  CommonIdDao get commonIdDao {
    return _commonIdDaoInstance ??= _$CommonIdDao(database, changeListener);
  }

  @override
  DailyReportHistoryDao get dailyReportHistoryDao {
    return _dailyReportHistoryDaoInstance ??=
        _$DailyReportHistoryDao(database, changeListener);
  }

  @override
  DailyReportHistoryPaymentsDao get dailyReportHistoryPaymentsDao {
    return _dailyReportHistoryPaymentsDaoInstance ??=
        _$DailyReportHistoryPaymentsDao(database, changeListener);
  }

  @override
  EmployeeDao get employeeDao {
    return _employeeDaoInstance ??= _$EmployeeDao(database, changeListener);
  }

  @override
  EmployeeAuthorityDao get employeeAuthorityDao {
    return _employeeAuthorityDaoInstance ??=
        _$EmployeeAuthorityDao(database, changeListener);
  }

  @override
  EmployeeBreakHistoryDao get employeeBreakHistoryDao {
    return _employeeBreakHistoryDaoInstance ??=
        _$EmployeeBreakHistoryDao(database, changeListener);
  }

  @override
  EmployeeGroupDao get employeeGroupDao {
    return _employeeGroupDaoInstance ??=
        _$EmployeeGroupDao(database, changeListener);
  }

  @override
  EmployeeWorkHistoryDao get employeeWorkHistoryDao {
    return _employeeWorkHistoryDaoInstance ??=
        _$EmployeeWorkHistoryDao(database, changeListener);
  }

  @override
  I18NTermDao get i18NTermDao {
    return _i18NTermDaoInstance ??= _$I18NTermDao(database, changeListener);
  }

  @override
  InstallLogDao get installLogDao {
    return _installLogDaoInstance ??= _$InstallLogDao(database, changeListener);
  }

  @override
  IntegrityVerificationHistoryDao get integrityVerificationHistoryDao {
    return _integrityVerificationHistoryDaoInstance ??=
        _$IntegrityVerificationHistoryDao(database, changeListener);
  }

  @override
  ItemDao get itemDao {
    return _itemDaoInstance ??= _$ItemDao(database, changeListener);
  }

  @override
  ItemGroupDao get itemGroupDao {
    return _itemGroupDaoInstance ??= _$ItemGroupDao(database, changeListener);
  }

  @override
  ItemOptionDao get itemOptionDao {
    return _itemOptionDaoInstance ??= _$ItemOptionDao(database, changeListener);
  }

  @override
  KitchenMemoDao get kitchenMemoDao {
    return _kitchenMemoDaoInstance ??=
        _$KitchenMemoDao(database, changeListener);
  }

  @override
  KitchenMemoGroupDao get kitchenMemoGroupDao {
    return _kitchenMemoGroupDaoInstance ??=
        _$KitchenMemoGroupDao(database, changeListener);
  }

  @override
  MenuGroupDao get menuGroupDao {
    return _menuGroupDaoInstance ??= _$MenuGroupDao(database, changeListener);
  }

  @override
  MenuGroupUseDao get menuGroupUseDao {
    return _menuGroupUseDaoInstance ??=
        _$MenuGroupUseDao(database, changeListener);
  }

  @override
  MenuItemDao get menuItemDao {
    return _menuItemDaoInstance ??= _$MenuItemDao(database, changeListener);
  }

  @override
  NoticeDao get noticeDao {
    return _noticeDaoInstance ??= _$NoticeDao(database, changeListener);
  }

  @override
  OptionEntityDao get optionEntityDao {
    return _optionEntityDaoInstance ??=
        _$OptionEntityDao(database, changeListener);
  }

  @override
  OptionGroupDao get optionGroupDao {
    return _optionGroupDaoInstance ??=
        _$OptionGroupDao(database, changeListener);
  }

  @override
  OrderHistoryDao get orderHistoryDao {
    return _orderHistoryDaoInstance ??=
        _$OrderHistoryDao(database, changeListener);
  }

  @override
  OrderHistoryDeletionDao get orderHistoryDeletionDao {
    return _orderHistoryDeletionDaoInstance ??=
        _$OrderHistoryDeletionDao(database, changeListener);
  }

  @override
  OrderHistoryCancelItemDao get orderHistoryCancelItemDao {
    return _orderHistoryCancelItemDaoInstance ??=
        _$OrderHistoryCancelItemDao(database, changeListener);
  }

  @override
  OrderHistoryDiscountDao get orderHistoryDiscountDao {
    return _orderHistoryDiscountDaoInstance ??=
        _$OrderHistoryDiscountDao(database, changeListener);
  }

  @override
  OrderHistoryItemDao get orderHistoryItemDao {
    return _orderHistoryItemDaoInstance ??=
        _$OrderHistoryItemDao(database, changeListener);
  }

  @override
  OrderHistoryKitchenMemoDao get orderHistoryKitchenMemoDao {
    return _orderHistoryKitchenMemoDaoInstance ??=
        _$OrderHistoryKitchenMemoDao(database, changeListener);
  }

  @override
  RequestPaymentHistoryDao get requestPaymentHistoryDao {
    return _requestPaymentHistoryDaoInstance ??=
        _$RequestPaymentHistoryDao(database, changeListener);
  }

  @override
  SalesAccountHistoryDao get salesAccountHistoryDao {
    return _salesAccountHistoryDaoInstance ??=
        _$SalesAccountHistoryDao(database, changeListener);
  }

  @override
  SalesAccountHistoryDetailsDao get salesAccountHistoryDetailsDao {
    return _salesAccountHistoryDetailsDaoInstance ??=
        _$SalesAccountHistoryDetailsDao(database, changeListener);
  }

  @override
  SalesAccountHistoryTipDao get salesAccountHistoryTipDao {
    return _salesAccountHistoryTipDaoInstance ??=
        _$SalesAccountHistoryTipDao(database, changeListener);
  }

  @override
  SalesHistoryDao get salesHistoryDao {
    return _salesHistoryDaoInstance ??=
        _$SalesHistoryDao(database, changeListener);
  }

  @override
  SalesHistoryDiscountDao get salesHistoryDiscountDao {
    return _salesHistoryDiscountDaoInstance ??=
        _$SalesHistoryDiscountDao(database, changeListener);
  }

  @override
  SalesHistoryItemDao get salesHistoryItemDao {
    return _salesHistoryItemDaoInstance ??=
        _$SalesHistoryItemDao(database, changeListener);
  }

  @override
  SelfMenuGroupDao get selfMenuGroupDao {
    return _selfMenuGroupDaoInstance ??=
        _$SelfMenuGroupDao(database, changeListener);
  }

  @override
  SelfMenuItemDao get selfMenuItemDao {
    return _selfMenuItemDaoInstance ??=
        _$SelfMenuItemDao(database, changeListener);
  }

  @override
  SetEntityDao get setEntityDao {
    return _setEntityDaoInstance ??= _$SetEntityDao(database, changeListener);
  }

  @override
  StoreDao get storeDao {
    return _storeDaoInstance ??= _$StoreDao(database, changeListener);
  }

  @override
  StorePlaceDao get storePlaceDao {
    return _storePlaceDaoInstance ??= _$StorePlaceDao(database, changeListener);
  }

  @override
  StoreTerminalDao get storeTerminalDao {
    return _storeTerminalDaoInstance ??=
        _$StoreTerminalDao(database, changeListener);
  }

  @override
  StoreTerminalBasicDataDao get storeTerminalBasicDataDao {
    return _storeTerminalBasicDataDaoInstance ??=
        _$StoreTerminalBasicDataDao(database, changeListener);
  }

  @override
  StoreTerminalBasicDataItemDao get storeTerminalBasicDataItemDao {
    return _storeTerminalBasicDataItemDaoInstance ??=
        _$StoreTerminalBasicDataItemDao(database, changeListener);
  }

  @override
  TableDao get tableDao {
    return _tableDaoInstance ??= _$TableDao(database, changeListener);
  }

  @override
  TableDetailDao get tableDetailDao {
    return _tableDetailDaoInstance ??=
        _$TableDetailDao(database, changeListener);
  }

  @override
  TableGroupDao get tableGroupDao {
    return _tableGroupDaoInstance ??= _$TableGroupDao(database, changeListener);
  }

  @override
  TableLinkDao get tableLinkDao {
    return _tableLinkDaoInstance ??= _$TableLinkDao(database, changeListener);
  }

  @override
  TableProcessDao get tableProcessDao {
    return _tableProcessDaoInstance ??=
        _$TableProcessDao(database, changeListener);
  }

  @override
  TemplateItemDao get templateItemDao {
    return _templateItemDaoInstance ??=
        _$TemplateItemDao(database, changeListener);
  }

  @override
  EntranceRegistrationDao get entranceRegistrationDao {
    return _entranceRegistrationDaoInstance ??=
        _$EntranceRegistrationDao(database, changeListener);
  }
}

class _$AccountSubjectDao extends AccountSubjectDao {
  _$AccountSubjectDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _accountSubjectInsertionAdapter = InsertionAdapter(
            database,
            'BA1_ACC_SBJ',
            (AccountSubject item) => <String, Object?>{
                  'ACC_SBJ_ID': item.accountSubjectId,
                  'I18N_TER_ID': item.i18nTermId,
                  'ACC_SBJ_NM': item.accountSubjectName,
                  'ACC_SBJ_USE_TP': item.accountSubjectUseType,
                  'ACC_SBJ_TP': item.accountSubjectType,
                  'FXD_EXP_YN': item.fixedExpensesYn == null
                      ? null
                      : (item.fixedExpensesYn! ? 1 : 0),
                  'RMK_A': item.remarkA,
                  'RMK_B': item.remarkB,
                  'RMK_C': item.remarkC,
                  'RMK_D': item.remarkD,
                  'RMK_E': item.remarkE,
                  'USR_INPT': item.userInput,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _accountSubjectUpdateAdapter = UpdateAdapter(
            database,
            'BA1_ACC_SBJ',
            ['ACC_SBJ_ID'],
            (AccountSubject item) => <String, Object?>{
                  'ACC_SBJ_ID': item.accountSubjectId,
                  'I18N_TER_ID': item.i18nTermId,
                  'ACC_SBJ_NM': item.accountSubjectName,
                  'ACC_SBJ_USE_TP': item.accountSubjectUseType,
                  'ACC_SBJ_TP': item.accountSubjectType,
                  'FXD_EXP_YN': item.fixedExpensesYn == null
                      ? null
                      : (item.fixedExpensesYn! ? 1 : 0),
                  'RMK_A': item.remarkA,
                  'RMK_B': item.remarkB,
                  'RMK_C': item.remarkC,
                  'RMK_D': item.remarkD,
                  'RMK_E': item.remarkE,
                  'USR_INPT': item.userInput,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _accountSubjectDeletionAdapter = DeletionAdapter(
            database,
            'BA1_ACC_SBJ',
            ['ACC_SBJ_ID'],
            (AccountSubject item) => <String, Object?>{
                  'ACC_SBJ_ID': item.accountSubjectId,
                  'I18N_TER_ID': item.i18nTermId,
                  'ACC_SBJ_NM': item.accountSubjectName,
                  'ACC_SBJ_USE_TP': item.accountSubjectUseType,
                  'ACC_SBJ_TP': item.accountSubjectType,
                  'FXD_EXP_YN': item.fixedExpensesYn == null
                      ? null
                      : (item.fixedExpensesYn! ? 1 : 0),
                  'RMK_A': item.remarkA,
                  'RMK_B': item.remarkB,
                  'RMK_C': item.remarkC,
                  'RMK_D': item.remarkD,
                  'RMK_E': item.remarkE,
                  'USR_INPT': item.userInput,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AccountSubject> _accountSubjectInsertionAdapter;

  final UpdateAdapter<AccountSubject> _accountSubjectUpdateAdapter;

  final DeletionAdapter<AccountSubject> _accountSubjectDeletionAdapter;

  @override
  Future<AccountSubject?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_ACC_SBJ WHERE ACC_SBJ_ID = ?1',
        mapper: (Map<String, Object?> row) => AccountSubject(
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            accountSubjectName: row['ACC_SBJ_NM'] as String?,
            accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?,
            accountSubjectType: row['ACC_SBJ_TP'] as String?,
            fixedExpensesYn: row['FXD_EXP_YN'] == null
                ? null
                : (row['FXD_EXP_YN'] as int) != 0,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            remarkD: row['RMK_D'] as String?,
            remarkE: row['RMK_E'] as String?,
            userInput: row['USR_INPT'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<AccountSubject?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_ACC_SBJ ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => AccountSubject(
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            accountSubjectName: row['ACC_SBJ_NM'] as String?,
            accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?,
            accountSubjectType: row['ACC_SBJ_TP'] as String?,
            fixedExpensesYn: row['FXD_EXP_YN'] == null
                ? null
                : (row['FXD_EXP_YN'] as int) != 0,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            remarkD: row['RMK_D'] as String?,
            remarkE: row['RMK_E'] as String?,
            userInput: row['USR_INPT'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<AccountSubject>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_ACC_SBJ',
        mapper: (Map<String, Object?> row) => AccountSubject(
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            accountSubjectName: row['ACC_SBJ_NM'] as String?,
            accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?,
            accountSubjectType: row['ACC_SBJ_TP'] as String?,
            fixedExpensesYn: row['FXD_EXP_YN'] == null
                ? null
                : (row['FXD_EXP_YN'] as int) != 0,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            remarkD: row['RMK_D'] as String?,
            remarkE: row['RMK_E'] as String?,
            userInput: row['USR_INPT'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<AccountSubject>> findAllPayInGroup(String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_ACC_SBJ WHERE (ACC_SBJ_ID LIKE \"1%00\" OR ACC_SBJ_ID =\"7000\") AND ACC_SBJ_ID !=\"1000\" AND  STAT_CD !=  ?1',
        mapper: (Map<String, Object?> row) => AccountSubject(accountSubjectId: row['ACC_SBJ_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, accountSubjectName: row['ACC_SBJ_NM'] as String?, accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?, accountSubjectType: row['ACC_SBJ_TP'] as String?, fixedExpensesYn: row['FXD_EXP_YN'] == null ? null : (row['FXD_EXP_YN'] as int) != 0, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, remarkD: row['RMK_D'] as String?, remarkE: row['RMK_E'] as String?, userInput: row['USR_INPT'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode]);
  }

  @override
  Future<List<AccountSubject>> findAllPayOutGroup(String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_ACC_SBJ WHERE (ACC_SBJ_ID LIKE \"3%00\" OR ACC_SBJ_ID LIKE \"4%00\"  OR ACC_SBJ_ID = \"7000\" ) AND ACC_SBJ_ID !=\"3000\" AND ACC_SBJ_ID !=\"4000\" AND  STAT_CD !=  ?1',
        mapper: (Map<String, Object?> row) => AccountSubject(accountSubjectId: row['ACC_SBJ_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, accountSubjectName: row['ACC_SBJ_NM'] as String?, accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?, accountSubjectType: row['ACC_SBJ_TP'] as String?, fixedExpensesYn: row['FXD_EXP_YN'] == null ? null : (row['FXD_EXP_YN'] as int) != 0, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, remarkD: row['RMK_D'] as String?, remarkE: row['RMK_E'] as String?, userInput: row['USR_INPT'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode]);
  }

  @override
  Future<List<AccountSubject>> findAllPayAccountLists(
      String pre, String fix, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_ACC_SBJ WHERE ACC_SBJ_ID LIKE ?1 AND ACC_SBJ_ID = ?2 AND ACC_SBJ_ID !=\"7000\" AND  STAT_CD !=  ?3',
        mapper: (Map<String, Object?> row) => AccountSubject(accountSubjectId: row['ACC_SBJ_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, accountSubjectName: row['ACC_SBJ_NM'] as String?, accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?, accountSubjectType: row['ACC_SBJ_TP'] as String?, fixedExpensesYn: row['FXD_EXP_YN'] == null ? null : (row['FXD_EXP_YN'] as int) != 0, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, remarkD: row['RMK_D'] as String?, remarkE: row['RMK_E'] as String?, userInput: row['USR_INPT'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [pre, fix, stateCode]);
  }

  @override
  Future<List<AccountSubject>> findAllPayAccountLists2(
      String pre, String groupCode, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_ACC_SBJ WHERE ACC_SBJ_ID LIKE ?1 AND ACC_SBJ_ID != ?2 AND  STAT_CD !=  ?3',
        mapper: (Map<String, Object?> row) => AccountSubject(accountSubjectId: row['ACC_SBJ_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, accountSubjectName: row['ACC_SBJ_NM'] as String?, accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?, accountSubjectType: row['ACC_SBJ_TP'] as String?, fixedExpensesYn: row['FXD_EXP_YN'] == null ? null : (row['FXD_EXP_YN'] as int) != 0, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, remarkD: row['RMK_D'] as String?, remarkE: row['RMK_E'] as String?, userInput: row['USR_INPT'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [pre, groupCode, stateCode]);
  }

  @override
  Stream<List<AccountSubject>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BA1_ACC_SBJ',
        mapper: (Map<String, Object?> row) => AccountSubject(
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            accountSubjectName: row['ACC_SBJ_NM'] as String?,
            accountSubjectUseType: row['ACC_SBJ_USE_TP'] as String?,
            accountSubjectType: row['ACC_SBJ_TP'] as String?,
            fixedExpensesYn: row['FXD_EXP_YN'] == null
                ? null
                : (row['FXD_EXP_YN'] as int) != 0,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            remarkD: row['RMK_D'] as String?,
            remarkE: row['RMK_E'] as String?,
            userInput: row['USR_INPT'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BA1_ACC_SBJ',
        isView: false);
  }

  @override
  Future<void> insertOne(AccountSubject item) async {
    await _accountSubjectInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<AccountSubject> items) async {
    await _accountSubjectInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(AccountSubject item) async {
    await _accountSubjectUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<AccountSubject> items) async {
    await _accountSubjectUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(AccountSubject item) async {
    await _accountSubjectDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<AccountSubject> items) async {
    await _accountSubjectDeletionAdapter.deleteList(items);
  }
}

class _$AdminUserDao extends AdminUserDao {
  _$AdminUserDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _adminUserInsertionAdapter = InsertionAdapter(
            database,
            'CO1_ADM_USR',
            (AdminUser item) => <String, Object?>{
                  'ADM_USR_ID': item.adminUserId,
                  'ADM_AUTH_GRP_ID': item.adminAuthorityGroupId,
                  'AFF_CO_ID': item.affiliatedCompanyId,
                  'LGIN_ID': item.loginId,
                  'LGIN_PWD': item.loginPassword,
                  'ADM_USR_NM': item.adminUserName,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'EMAIL_ADRS': item.emailAddress,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'ADM_ACC_STAT_CD': item.adminAccountStateCode,
                  'ADM_USR_DESC': item.adminUserDescription,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _adminUserUpdateAdapter = UpdateAdapter(
            database,
            'CO1_ADM_USR',
            ['ADM_USR_ID'],
            (AdminUser item) => <String, Object?>{
                  'ADM_USR_ID': item.adminUserId,
                  'ADM_AUTH_GRP_ID': item.adminAuthorityGroupId,
                  'AFF_CO_ID': item.affiliatedCompanyId,
                  'LGIN_ID': item.loginId,
                  'LGIN_PWD': item.loginPassword,
                  'ADM_USR_NM': item.adminUserName,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'EMAIL_ADRS': item.emailAddress,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'ADM_ACC_STAT_CD': item.adminAccountStateCode,
                  'ADM_USR_DESC': item.adminUserDescription,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _adminUserDeletionAdapter = DeletionAdapter(
            database,
            'CO1_ADM_USR',
            ['ADM_USR_ID'],
            (AdminUser item) => <String, Object?>{
                  'ADM_USR_ID': item.adminUserId,
                  'ADM_AUTH_GRP_ID': item.adminAuthorityGroupId,
                  'AFF_CO_ID': item.affiliatedCompanyId,
                  'LGIN_ID': item.loginId,
                  'LGIN_PWD': item.loginPassword,
                  'ADM_USR_NM': item.adminUserName,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'EMAIL_ADRS': item.emailAddress,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'ADM_ACC_STAT_CD': item.adminAccountStateCode,
                  'ADM_USR_DESC': item.adminUserDescription,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AdminUser> _adminUserInsertionAdapter;

  final UpdateAdapter<AdminUser> _adminUserUpdateAdapter;

  final DeletionAdapter<AdminUser> _adminUserDeletionAdapter;

  @override
  Future<AdminUser?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM CO1_ADM_USR WHERE ADM_USR_ID = ?1',
        mapper: (Map<String, Object?> row) => AdminUser(
            adminUserId: row['ADM_USR_ID'] as String?,
            adminAuthorityGroupId: row['ADM_AUTH_GRP_ID'] as String?,
            affiliatedCompanyId: row['AFF_CO_ID'] as String?,
            loginId: row['LGIN_ID'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            adminUserName: row['ADM_USR_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            emailAddress: row['EMAIL_ADRS'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            adminAccountStateCode: row['ADM_ACC_STAT_CD'] as String?,
            adminUserDescription: row['ADM_USR_DESC'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<AdminUser?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM CO1_ADM_USR ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => AdminUser(
            adminUserId: row['ADM_USR_ID'] as String?,
            adminAuthorityGroupId: row['ADM_AUTH_GRP_ID'] as String?,
            affiliatedCompanyId: row['AFF_CO_ID'] as String?,
            loginId: row['LGIN_ID'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            adminUserName: row['ADM_USR_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            emailAddress: row['EMAIL_ADRS'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            adminAccountStateCode: row['ADM_ACC_STAT_CD'] as String?,
            adminUserDescription: row['ADM_USR_DESC'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<AdminUser>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM CO1_ADM_USR',
        mapper: (Map<String, Object?> row) => AdminUser(
            adminUserId: row['ADM_USR_ID'] as String?,
            adminAuthorityGroupId: row['ADM_AUTH_GRP_ID'] as String?,
            affiliatedCompanyId: row['AFF_CO_ID'] as String?,
            loginId: row['LGIN_ID'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            adminUserName: row['ADM_USR_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            emailAddress: row['EMAIL_ADRS'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            adminAccountStateCode: row['ADM_ACC_STAT_CD'] as String?,
            adminUserDescription: row['ADM_USR_DESC'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<AdminUser>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM CO1_ADM_USR',
        mapper: (Map<String, Object?> row) => AdminUser(
            adminUserId: row['ADM_USR_ID'] as String?,
            adminAuthorityGroupId: row['ADM_AUTH_GRP_ID'] as String?,
            affiliatedCompanyId: row['AFF_CO_ID'] as String?,
            loginId: row['LGIN_ID'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            adminUserName: row['ADM_USR_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            emailAddress: row['EMAIL_ADRS'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            adminAccountStateCode: row['ADM_ACC_STAT_CD'] as String?,
            adminUserDescription: row['ADM_USR_DESC'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'CO1_ADM_USR',
        isView: false);
  }

  @override
  Future<void> insertOne(AdminUser item) async {
    await _adminUserInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<AdminUser> items) async {
    await _adminUserInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(AdminUser item) async {
    await _adminUserUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<AdminUser> items) async {
    await _adminUserUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(AdminUser item) async {
    await _adminUserDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<AdminUser> items) async {
    await _adminUserDeletionAdapter.deleteList(items);
  }
}

class _$BasicDataDao extends BasicDataDao {
  _$BasicDataDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _basicDataInsertionAdapter = InsertionAdapter(
            database,
            'BA1_BAS_DAT',
            (BasicData item) => <String, Object?>{
                  'BAS_DAT_ID': item.basicDataId,
                  'BAS_DAT_CD_NM': item.basicDataCodeName,
                  'BAS_DAT_NM': item.basicDataName,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _basicDataUpdateAdapter = UpdateAdapter(
            database,
            'BA1_BAS_DAT',
            ['BAS_DAT_ID'],
            (BasicData item) => <String, Object?>{
                  'BAS_DAT_ID': item.basicDataId,
                  'BAS_DAT_CD_NM': item.basicDataCodeName,
                  'BAS_DAT_NM': item.basicDataName,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _basicDataDeletionAdapter = DeletionAdapter(
            database,
            'BA1_BAS_DAT',
            ['BAS_DAT_ID'],
            (BasicData item) => <String, Object?>{
                  'BAS_DAT_ID': item.basicDataId,
                  'BAS_DAT_CD_NM': item.basicDataCodeName,
                  'BAS_DAT_NM': item.basicDataName,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BasicData> _basicDataInsertionAdapter;

  final UpdateAdapter<BasicData> _basicDataUpdateAdapter;

  final DeletionAdapter<BasicData> _basicDataDeletionAdapter;

  @override
  Future<BasicData?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_BAS_DAT WHERE BAS_DAT_ID = ?1',
        mapper: (Map<String, Object?> row) => BasicData(
            basicDataId: row['BAS_DAT_ID'] as String?,
            basicDataCodeName: row['BAS_DAT_CD_NM'] as String?,
            basicDataName: row['BAS_DAT_NM'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<BasicData?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_BAS_DAT ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => BasicData(
            basicDataId: row['BAS_DAT_ID'] as String?,
            basicDataCodeName: row['BAS_DAT_CD_NM'] as String?,
            basicDataName: row['BAS_DAT_NM'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<BasicData>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_BAS_DAT',
        mapper: (Map<String, Object?> row) => BasicData(
            basicDataId: row['BAS_DAT_ID'] as String?,
            basicDataCodeName: row['BAS_DAT_CD_NM'] as String?,
            basicDataName: row['BAS_DAT_NM'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<BasicData>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BA1_BAS_DAT',
        mapper: (Map<String, Object?> row) => BasicData(
            basicDataId: row['BAS_DAT_ID'] as String?,
            basicDataCodeName: row['BAS_DAT_CD_NM'] as String?,
            basicDataName: row['BAS_DAT_NM'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BA1_BAS_DAT',
        isView: false);
  }

  @override
  Future<void> insertOne(BasicData item) async {
    await _basicDataInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<BasicData> items) async {
    await _basicDataInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(BasicData item) async {
    await _basicDataUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<BasicData> items) async {
    await _basicDataUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(BasicData item) async {
    await _basicDataDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<BasicData> items) async {
    await _basicDataDeletionAdapter.deleteList(items);
  }
}

class _$BasicDataItemDao extends BasicDataItemDao {
  _$BasicDataItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _basicDataItemInsertionAdapter = InsertionAdapter(
            database,
            'BA1_BAS_DAT_ITM',
            (BasicDataItem item) => <String, Object?>{
                  'BAS_DAT_ITM_ID': item.basicDataItemId,
                  'BAS_DAT_ID': item.basicDataId,
                  'I18N_TER_ID': item.i18nTermId,
                  'BAS_DAT_ITM_SNO': item.basicDataItemSerialNumber,
                  'BAS_DAT_ITM_CD_NM': item.basicDataItemCodeName,
                  'BAS_DAT_ITM_NM': item.basicDataItemName,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _basicDataItemUpdateAdapter = UpdateAdapter(
            database,
            'BA1_BAS_DAT_ITM',
            ['BAS_DAT_ITM_ID'],
            (BasicDataItem item) => <String, Object?>{
                  'BAS_DAT_ITM_ID': item.basicDataItemId,
                  'BAS_DAT_ID': item.basicDataId,
                  'I18N_TER_ID': item.i18nTermId,
                  'BAS_DAT_ITM_SNO': item.basicDataItemSerialNumber,
                  'BAS_DAT_ITM_CD_NM': item.basicDataItemCodeName,
                  'BAS_DAT_ITM_NM': item.basicDataItemName,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _basicDataItemDeletionAdapter = DeletionAdapter(
            database,
            'BA1_BAS_DAT_ITM',
            ['BAS_DAT_ITM_ID'],
            (BasicDataItem item) => <String, Object?>{
                  'BAS_DAT_ITM_ID': item.basicDataItemId,
                  'BAS_DAT_ID': item.basicDataId,
                  'I18N_TER_ID': item.i18nTermId,
                  'BAS_DAT_ITM_SNO': item.basicDataItemSerialNumber,
                  'BAS_DAT_ITM_CD_NM': item.basicDataItemCodeName,
                  'BAS_DAT_ITM_NM': item.basicDataItemName,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BasicDataItem> _basicDataItemInsertionAdapter;

  final UpdateAdapter<BasicDataItem> _basicDataItemUpdateAdapter;

  final DeletionAdapter<BasicDataItem> _basicDataItemDeletionAdapter;

  @override
  Future<BasicDataItem?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_BAS_DAT_ITM WHERE BAS_DAT_ITM_ID = ?1',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<BasicDataItem?> findByBasicDataItemCodeName(
      String basicDataItemCodeName) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_BAS_DAT_ITM WHERE BAS_DAT_ITM_CD_NM = ?1',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [basicDataItemCodeName]);
  }

  @override
  Future<BasicDataItem?> findByBasicDataItemCodeNameAndBasicDataCodeName(
      String basicDataCodeName, String basicDataItemCodeName) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_BAS_DAT_ITM AS ITEM JOIN BA1_BAS_DAT AS DATA ON ITEM.BAS_DAT_ID = DATA.BAS_DAT_ID WHERE DATA.BAS_DAT_CD_NM  =?1 AND ITEM.BAS_DAT_ITM_CD_NM = ?2',
        mapper: (Map<String, Object?> row) => BasicDataItem(basicDataItemId: row['BAS_DAT_ITM_ID'] as String?, basicDataId: row['BAS_DAT_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?, basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?, basicDataItemName: row['BAS_DAT_ITM_NM'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, data11: row['DAT_11'] as String?, data12: row['DAT_12'] as String?, data13: row['DAT_13'] as String?, data14: row['DAT_14'] as String?, data15: row['DAT_15'] as String?, data16: row['DAT_16'] as String?, data17: row['DAT_17'] as String?, data18: row['DAT_18'] as String?, data19: row['DAT_19'] as String?, data20: row['DAT_20'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [basicDataCodeName, basicDataItemCodeName]);
  }

  @override
  Future<BasicDataItem?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_BAS_DAT_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<BasicDataItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_BAS_DAT_ITM',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<BasicDataItem>> findAllByBasicDataCodeName(
      String basicDataCodeName) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_BAS_DAT_ITM AS ITEM JOIN BA1_BAS_DAT AS DATA ON ITEM.BAS_DAT_ID = DATA.BAS_DAT_ID WHERE DATA.BAS_DAT_CD_NM  =?1 ORDER BY BAS_DAT_ITM_SNO ASC',
        mapper: (Map<String, Object?> row) => BasicDataItem(basicDataItemId: row['BAS_DAT_ITM_ID'] as String?, basicDataId: row['BAS_DAT_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?, basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?, basicDataItemName: row['BAS_DAT_ITM_NM'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, data11: row['DAT_11'] as String?, data12: row['DAT_12'] as String?, data13: row['DAT_13'] as String?, data14: row['DAT_14'] as String?, data15: row['DAT_15'] as String?, data16: row['DAT_16'] as String?, data17: row['DAT_17'] as String?, data18: row['DAT_18'] as String?, data19: row['DAT_19'] as String?, data20: row['DAT_20'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [basicDataCodeName]);
  }

  @override
  Future<List<BasicDataItem>>
      findAllByBasicDataCodeNameLikeAndData1NotNull() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_BAS_DAT_ITM WHERE DATA.BAS_DAT_ITM_CD_NM  like \"CU%\" AND DAT_1 IS NOT NULL AND (HIDE_YN IS NULL OR HIDE_YN <> 1) ORDER BY BAS_DAT_ITM_SNO DESC',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<BasicDataItem>> findAllByBasicDataCodeNameLike() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_BAS_DAT_ITM WHERE BAS_DAT_ITM_CD_NM like \"CB%\"',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<BasicDataItem>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_BAS_DAT_ITM WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => BasicDataItem(
            basicDataItemId: row['BAS_DAT_ITM_ID'] as String?,
            basicDataId: row['BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            basicDataItemSerialNumber: row['BAS_DAT_ITM_SNO'] as int?,
            basicDataItemCodeName: row['BAS_DAT_ITM_CD_NM'] as String?,
            basicDataItemName: row['BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(BasicDataItem item) async {
    await _basicDataItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<BasicDataItem> items) async {
    await _basicDataItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(BasicDataItem item) async {
    await _basicDataItemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<BasicDataItem> items) async {
    await _basicDataItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(BasicDataItem item) async {
    await _basicDataItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<BasicDataItem> items) async {
    await _basicDataItemDeletionAdapter.deleteList(items);
  }
}

class _$CashdrawCashInOutHistoryDao extends CashdrawCashInOutHistoryDao {
  _$CashdrawCashInOutHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _cashdrawCashInOutHistoryInsertionAdapter = InsertionAdapter(
            database,
            'BI1_CDRW_CASH_IO_HIS',
            (CashdrawCashInOutHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'ACC_SBJ_ID': item.accountSubjectId,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'IO_TP_CD': item.inOutTypeCode,
                  'AMT': item.amount,
                  'RMK_A': item.remarkA,
                  'RMK_B': item.remarkB,
                  'RMK_C': item.remarkC,
                  'PER_ACC_ID': item.personalAccountId,
                  'SLS_LNK': item.salesLink,
                  'CSHR_BNK_LNK': item.cashierBankLink,
                  'IO_EMP_ID': item.inOutEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _cashdrawCashInOutHistoryUpdateAdapter = UpdateAdapter(
            database,
            'BI1_CDRW_CASH_IO_HIS',
            ['ID'],
            (CashdrawCashInOutHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'ACC_SBJ_ID': item.accountSubjectId,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'IO_TP_CD': item.inOutTypeCode,
                  'AMT': item.amount,
                  'RMK_A': item.remarkA,
                  'RMK_B': item.remarkB,
                  'RMK_C': item.remarkC,
                  'PER_ACC_ID': item.personalAccountId,
                  'SLS_LNK': item.salesLink,
                  'CSHR_BNK_LNK': item.cashierBankLink,
                  'IO_EMP_ID': item.inOutEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _cashdrawCashInOutHistoryDeletionAdapter = DeletionAdapter(
            database,
            'BI1_CDRW_CASH_IO_HIS',
            ['ID'],
            (CashdrawCashInOutHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'ACC_SBJ_ID': item.accountSubjectId,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'IO_TP_CD': item.inOutTypeCode,
                  'AMT': item.amount,
                  'RMK_A': item.remarkA,
                  'RMK_B': item.remarkB,
                  'RMK_C': item.remarkC,
                  'PER_ACC_ID': item.personalAccountId,
                  'SLS_LNK': item.salesLink,
                  'CSHR_BNK_LNK': item.cashierBankLink,
                  'IO_EMP_ID': item.inOutEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CashdrawCashInOutHistory>
      _cashdrawCashInOutHistoryInsertionAdapter;

  final UpdateAdapter<CashdrawCashInOutHistory>
      _cashdrawCashInOutHistoryUpdateAdapter;

  final DeletionAdapter<CashdrawCashInOutHistory>
      _cashdrawCashInOutHistoryDeletionAdapter;

  @override
  Future<CashdrawCashInOutHistory?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<CashdrawCashInOutHistory?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<CashdrawCashInOutHistory?> findByCommonDateAndCommonSerialNumber(
      String commonDate, int commonSerialNumber) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, commonSerialNumber]);
  }

  @override
  Future<CashdrawCashInOutHistory?> findOrderBySalesLink(
      String salesLink) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE SLS_LNK = ?1',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [salesLink]);
  }

  @override
  Future<List<CashdrawCashInOutHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BI1_CDRW_CASH_IO_HIS',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<CashdrawCashInOutHistory>> findAllByCommonDate(
      String commonDate) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = ?1',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate]);
  }

  @override
  Future<List<CashdrawCashInOutHistory>> findAllByCashdrawSectionCode(
      String commonDate) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = ?1',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate]);
  }

  @override
  Future<List<CashdrawCashInOutHistory>>
      findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCodeAndInOutTypeCode(
          String cashDrawerSection,
          String openDate,
          String closeDate,
          String stateCode,
          List<String> inOutTypeCodes) async {
    const offset = 5;
    final _sqliteVariablesForInOutTypeCodes = Iterable<String>.generate(
        inOutTypeCodes.length, (i) => '?${i + offset}').join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE CDRW_SEC_CD = ?1 AND FRST_REG_DTTM >=  ?2 AND FRST_REG_DTTM <=  ?3   AND  STAT_CD != ?4 AND IO_TP_CD IN (' +
            _sqliteVariablesForInOutTypeCodes +
            ')',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, accountSubjectId: row['ACC_SBJ_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, inOutTypeCode: row['IO_TP_CD'] as String?, amount: row['AMT'] as double?, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, personalAccountId: row['PER_ACC_ID'] as String?, salesLink: row['SLS_LNK'] as String?, cashierBankLink: row['CSHR_BNK_LNK'] as String?, inOutEmployeeId: row['IO_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          cashDrawerSection,
          openDate,
          closeDate,
          stateCode,
          ...inOutTypeCodes
        ]);
  }

  @override
  Future<List<CashdrawCashInOutHistory>>
      findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCode(
          String cashDrawerSection,
          String openDate,
          String closeDate,
          String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE CDRW_SEC_CD = ?1 AND FRST_REG_DTTM >=  ?2 AND FRST_REG_DTTM <=  ?3   AND  STAT_CD != ?4',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, accountSubjectId: row['ACC_SBJ_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, inOutTypeCode: row['IO_TP_CD'] as String?, amount: row['AMT'] as double?, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, personalAccountId: row['PER_ACC_ID'] as String?, salesLink: row['SLS_LNK'] as String?, cashierBankLink: row['CSHR_BNK_LNK'] as String?, inOutEmployeeId: row['IO_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [cashDrawerSection, openDate, closeDate, stateCode]);
  }

  @override
  Future<List<CashdrawCashInOutHistory>>
      findAllByCommonDateAndStateCodeAndInOutTypeCode(
          String commonDate, String stateCode, String inOutTypeCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = ?1 AND  STAT_CD != ?2 AND IO_TP_CD =?3',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, accountSubjectId: row['ACC_SBJ_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, inOutTypeCode: row['IO_TP_CD'] as String?, amount: row['AMT'] as double?, remarkA: row['RMK_A'] as String?, remarkB: row['RMK_B'] as String?, remarkC: row['RMK_C'] as String?, personalAccountId: row['PER_ACC_ID'] as String?, salesLink: row['SLS_LNK'] as String?, cashierBankLink: row['CSHR_BNK_LNK'] as String?, inOutEmployeeId: row['IO_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, stateCode, inOutTypeCode]);
  }

  @override
  Future<List<CashdrawCashInOutHistory>> findAllBySynchronizedYn(
      bool value) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE SYNCD_YN = ?1',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [value ? 1 : 0]);
  }

  @override
  Stream<List<CashdrawCashInOutHistory>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BI1_CDRW_CASH_IO_HIS',
        mapper: (Map<String, Object?> row) => CashdrawCashInOutHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            accountSubjectId: row['ACC_SBJ_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            inOutTypeCode: row['IO_TP_CD'] as String?,
            amount: row['AMT'] as double?,
            remarkA: row['RMK_A'] as String?,
            remarkB: row['RMK_B'] as String?,
            remarkC: row['RMK_C'] as String?,
            personalAccountId: row['PER_ACC_ID'] as String?,
            salesLink: row['SLS_LNK'] as String?,
            cashierBankLink: row['CSHR_BNK_LNK'] as String?,
            inOutEmployeeId: row['IO_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BI1_CDRW_CASH_IO_HIS',
        isView: false);
  }

  @override
  Future<void> insertOne(CashdrawCashInOutHistory item) async {
    await _cashdrawCashInOutHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<CashdrawCashInOutHistory> items) async {
    await _cashdrawCashInOutHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(CashdrawCashInOutHistory item) async {
    await _cashdrawCashInOutHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<CashdrawCashInOutHistory> items) async {
    await _cashdrawCashInOutHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(CashdrawCashInOutHistory item) async {
    await _cashdrawCashInOutHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<CashdrawCashInOutHistory> items) async {
    await _cashdrawCashInOutHistoryDeletionAdapter.deleteList(items);
  }
}

class _$CashierBankHistoryDao extends CashierBankHistoryDao {
  _$CashierBankHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _cashierBankHistoryInsertionAdapter = InsertionAdapter(
            database,
            'BI1_CSHR_BNK_HIS',
            (CashierBankHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'STR_TRM_ID': item.storeTerminalId,
                  'BIZ_OPN_CLS_SEC_CD': item.businessOpenCloseSectionCode,
                  'CSHR_TP_CD': item.cashierTypeCode,
                  'BIZ_START_DTTM': item.businessStartDatetime,
                  'BIZ_END_DTTM': item.businessEndDatetime,
                  'BIZ_CHANGE_DTTM': item.businessChangeDatetime,
                  'SLS_CNT': item.salesCount,
                  'TAB_TURN_RATE': item.tableTurnoverRate,
                  'EMP_ID': item.employeeId,
                  'OPN_BIZ_CASH_TOT_AMT': item.openBusinessCashTotalAmount,
                  'CLS_BIZ_CASH_TOT_AMT': item.closeBusinessCashTotalAmount,
                  'BIZ_CHANGE_CASH_TOT_AMT': item.businessChangeCashTotalAmount,
                  'POS_CASH_TOT_AMT': item.posCashTotalAmount,
                  'CASH_DIFF_AMT': item.cashDifferenceAmount,
                  'CASH_DIFF_RESN': item.cashDifferenceReason,
                  'CASH_DEPSIT_TOT_AMT': item.cashDepositTotalAmount,
                  'CASH_WDRWL_TOT_AMT': item.cashWithdrawalAmount,
                  'SLS_TOT_CASH_AMT': item.salesTotalCashAmount,
                  'SLS_TOT_AMT': item.salesTotalAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TIP_TOT_AMT': item.tipTotalAmount,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'SHIFT_SNO': item.shiftSerialNumber,
                  'BATCH_ID': item.batchId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _cashierBankHistoryUpdateAdapter = UpdateAdapter(
            database,
            'BI1_CSHR_BNK_HIS',
            ['ID'],
            (CashierBankHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'STR_TRM_ID': item.storeTerminalId,
                  'BIZ_OPN_CLS_SEC_CD': item.businessOpenCloseSectionCode,
                  'CSHR_TP_CD': item.cashierTypeCode,
                  'BIZ_START_DTTM': item.businessStartDatetime,
                  'BIZ_END_DTTM': item.businessEndDatetime,
                  'BIZ_CHANGE_DTTM': item.businessChangeDatetime,
                  'SLS_CNT': item.salesCount,
                  'TAB_TURN_RATE': item.tableTurnoverRate,
                  'EMP_ID': item.employeeId,
                  'OPN_BIZ_CASH_TOT_AMT': item.openBusinessCashTotalAmount,
                  'CLS_BIZ_CASH_TOT_AMT': item.closeBusinessCashTotalAmount,
                  'BIZ_CHANGE_CASH_TOT_AMT': item.businessChangeCashTotalAmount,
                  'POS_CASH_TOT_AMT': item.posCashTotalAmount,
                  'CASH_DIFF_AMT': item.cashDifferenceAmount,
                  'CASH_DIFF_RESN': item.cashDifferenceReason,
                  'CASH_DEPSIT_TOT_AMT': item.cashDepositTotalAmount,
                  'CASH_WDRWL_TOT_AMT': item.cashWithdrawalAmount,
                  'SLS_TOT_CASH_AMT': item.salesTotalCashAmount,
                  'SLS_TOT_AMT': item.salesTotalAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TIP_TOT_AMT': item.tipTotalAmount,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'SHIFT_SNO': item.shiftSerialNumber,
                  'BATCH_ID': item.batchId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _cashierBankHistoryDeletionAdapter = DeletionAdapter(
            database,
            'BI1_CSHR_BNK_HIS',
            ['ID'],
            (CashierBankHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'STR_TRM_ID': item.storeTerminalId,
                  'BIZ_OPN_CLS_SEC_CD': item.businessOpenCloseSectionCode,
                  'CSHR_TP_CD': item.cashierTypeCode,
                  'BIZ_START_DTTM': item.businessStartDatetime,
                  'BIZ_END_DTTM': item.businessEndDatetime,
                  'BIZ_CHANGE_DTTM': item.businessChangeDatetime,
                  'SLS_CNT': item.salesCount,
                  'TAB_TURN_RATE': item.tableTurnoverRate,
                  'EMP_ID': item.employeeId,
                  'OPN_BIZ_CASH_TOT_AMT': item.openBusinessCashTotalAmount,
                  'CLS_BIZ_CASH_TOT_AMT': item.closeBusinessCashTotalAmount,
                  'BIZ_CHANGE_CASH_TOT_AMT': item.businessChangeCashTotalAmount,
                  'POS_CASH_TOT_AMT': item.posCashTotalAmount,
                  'CASH_DIFF_AMT': item.cashDifferenceAmount,
                  'CASH_DIFF_RESN': item.cashDifferenceReason,
                  'CASH_DEPSIT_TOT_AMT': item.cashDepositTotalAmount,
                  'CASH_WDRWL_TOT_AMT': item.cashWithdrawalAmount,
                  'SLS_TOT_CASH_AMT': item.salesTotalCashAmount,
                  'SLS_TOT_AMT': item.salesTotalAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TIP_TOT_AMT': item.tipTotalAmount,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'SHIFT_SNO': item.shiftSerialNumber,
                  'BATCH_ID': item.batchId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CashierBankHistory>
      _cashierBankHistoryInsertionAdapter;

  final UpdateAdapter<CashierBankHistory> _cashierBankHistoryUpdateAdapter;

  final DeletionAdapter<CashierBankHistory> _cashierBankHistoryDeletionAdapter;

  @override
  Future<CashierBankHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM BI1_CSHR_BNK_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<CashierBankHistory?> findOrderByBusinessStartDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS ORDER BY BIZ_START_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<CashierBankHistory>> findBetween(String start, String end) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_START_DTTM >= ?1 and BIZ_START_DTTM <= ?2',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [start, end]);
  }

  @override
  Future<CashierBankHistory?>
      findAllByCommonDateAndCommonSerialNumberAndCashdrawSectionCode(
          String commonDate,
          int commonSerialNumber,
          String cashdrawSectionCode) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE COM_DT = ?1  AND COM_SNO = ?2 AND CDRW_SEC_CD =?3',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, commonSerialNumber, cashdrawSectionCode]);
  }

  @override
  Future<List<CashierBankHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BI1_CSHR_BNK_HIS',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<CashierBankHistory>> findAllByCommonDate(
      String commonDate) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE COM_DT = ?1',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByCashdrawSectionCodeAndStoreTerminalId(
          String cashdrawSectionCode, String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE CDRW_SEC_CD = ?1 AND STR_TRM_ID = ?2 ORDER BY BIZ_END_DTTM DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [cashdrawSectionCode, storeTerminalId]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeAndStoreTerminalId(
          String businessOpenCloseSectionCode, String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD = ?1 AND STR_TRM_ID = ?2 ORDER BY CDRW_SEC_CD ASC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [businessOpenCloseSectionCode, storeTerminalId]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndStoreTerminalId(
          String businessOpenCloseSectionCode, String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != ?1 AND STR_TRM_ID = ?2 ORDER BY BIZ_END_DTTM DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [businessOpenCloseSectionCode, storeTerminalId]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeAndCashierTypeCodeAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD = ?1 AND CSHR_TP_CD = ?2 AND STR_TRM_ID = ?3 ORDER BY BIZ_START_DTTM DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          businessOpenCloseSectionCode,
          cashierTypeCode,
          storeTerminalId
        ]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != ?1 AND CSHR_TP_CD = ?2 AND STR_TRM_ID = ?3 ORDER BY BIZ_START_DTTM DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          businessOpenCloseSectionCode,
          cashierTypeCode,
          storeTerminalId
        ]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndStoreTerminalIdLimitOffset(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String storeTerminalId,
          int limit,
          int _offset) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != ?1 AND CSHR_TP_CD = ?2 AND STR_TRM_ID = ?3 ORDER BY BIZ_START_DTTM DESC LIMIT ?4 OFFSET ?5',
        mapper: (Map<String, Object?> row) => CashierBankHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, cashierTypeCode: row['CSHR_TP_CD'] as String?, businessStartDatetime: row['BIZ_START_DTTM'] as String?, businessEndDatetime: row['BIZ_END_DTTM'] as String?, businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?, salesCount: row['SLS_CNT'] as int?, tableTurnoverRate: row['TAB_TURN_RATE'] as double?, employeeId: row['EMP_ID'] as String?, openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?, closeBusinessCashTotalAmount: row['CLS_BIZ_CASH_TOT_AMT'] as double?, businessChangeCashTotalAmount: row['BIZ_CHANGE_CASH_TOT_AMT'] as double?, posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?, cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?, cashDifferenceReason: row['CASH_DIFF_RESN'] as String?, cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?, cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?, salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?, salesTotalAmount: row['SLS_TOT_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as int?, shiftSerialNumber: row['SHIFT_SNO'] as String?, batchId: row['BATCH_ID'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          businessOpenCloseSectionCode,
          cashierTypeCode,
          storeTerminalId,
          limit,
          _offset
        ]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndBusinessStartDatetimeAndBusinessEndDatetimeAndCancelSerialNumberAndShiftSerialNumberAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String businessStartDatetime,
          String businessEndDatetime,
          int cancelSerialNumber,
          String shiftSerialNumber,
          String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != ?1 AND CSHR_TP_CD = ?2  AND BIZ_START_DTTM>=  ?3 AND BIZ_END_DTTM <=  ?4  AND CNCL_SNO =  ?5  AND SHIFT_SNO =  ?6   AND STR_TRM_ID = ?7 ORDER BY BIZ_END_DTTM DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [
          businessOpenCloseSectionCode,
          cashierTypeCode,
          businessStartDatetime,
          businessEndDatetime,
          cancelSerialNumber,
          shiftSerialNumber,
          storeTerminalId
        ]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCommonDateAndCashierTypeCodeAndCancelSerialNumberAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String commonDate,
          String cashierTypeCode,
          int cancelSerialNumber,
          String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != ?1 AND COM_DT = ?2 AND CSHR_TP_CD = ?3  AND CNCL_SNO =  ?4 AND STR_TRM_ID = ?5 ORDER BY COM_SNO DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [
          businessOpenCloseSectionCode,
          commonDate,
          cashierTypeCode,
          cancelSerialNumber,
          storeTerminalId
        ]);
  }

  @override
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeAndCommonDateAndCashierTypeCodeAndCancelSerialNumberAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String commonDate,
          String cashierTypeCode,
          int cancelSerialNumber,
          String storeTerminalId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD = ?1 AND COM_DT = ?2 AND CSHR_TP_CD = ?3  AND CNCL_SNO =  ?4 AND STR_TRM_ID = ?5 ORDER BY COM_SNO DESC',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [
          businessOpenCloseSectionCode,
          commonDate,
          cashierTypeCode,
          cancelSerialNumber,
          storeTerminalId
        ]);
  }

  @override
  Future<List<CashierBankHistory>> findAllBySynchronizedYn(bool value) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS WHERE SYNCD_YN = ?1',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [value ? 1 : 0]);
  }

  @override
  Stream<List<CashierBankHistory>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BI1_CSHR_BNK_HIS',
        mapper: (Map<String, Object?> row) => CashierBankHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            cashierTypeCode: row['CSHR_TP_CD'] as String?,
            businessStartDatetime: row['BIZ_START_DTTM'] as String?,
            businessEndDatetime: row['BIZ_END_DTTM'] as String?,
            businessChangeDatetime: row['BIZ_CHANGE_DTTM'] as String?,
            salesCount: row['SLS_CNT'] as int?,
            tableTurnoverRate: row['TAB_TURN_RATE'] as double?,
            employeeId: row['EMP_ID'] as String?,
            openBusinessCashTotalAmount: row['OPN_BIZ_CASH_TOT_AMT'] as double?,
            closeBusinessCashTotalAmount:
                row['CLS_BIZ_CASH_TOT_AMT'] as double?,
            businessChangeCashTotalAmount:
                row['BIZ_CHANGE_CASH_TOT_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDifferenceAmount: row['CASH_DIFF_AMT'] as double?,
            cashDifferenceReason: row['CASH_DIFF_RESN'] as String?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            salesTotalCashAmount: row['SLS_TOT_CASH_AMT'] as double?,
            salesTotalAmount: row['SLS_TOT_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            batchId: row['BATCH_ID'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BI1_CSHR_BNK_HIS',
        isView: false);
  }

  @override
  Future<void> insertOne(CashierBankHistory item) async {
    await _cashierBankHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<CashierBankHistory> items) async {
    await _cashierBankHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(CashierBankHistory item) async {
    await _cashierBankHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<CashierBankHistory> items) async {
    await _cashierBankHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(CashierBankHistory item) async {
    await _cashierBankHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<CashierBankHistory> items) async {
    await _cashierBankHistoryDeletionAdapter.deleteList(items);
  }
}

class _$CashierBankHistoryBillDao extends CashierBankHistoryBillDao {
  _$CashierBankHistoryBillDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _cashierBankHistoryBillInsertionAdapter = InsertionAdapter(
            database,
            'BI1_CSHR_BNK_HIS_BIL',
            (CashierBankHistoryBill item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'BIL_SNO': item.billSerialNumber,
                  'BIZ_OPN_CLS_SEC_CD': item.businessOpenCloseSectionCode,
                  'TOT_AMT': item.totalAmount,
                  'BIL_0_NUM': item.bill0Number,
                  'BIL_1_NUM': item.bill1Number,
                  'BIL_2_NUM': item.bill2Number,
                  'BIL_3_NUM': item.bill3Number,
                  'BIL_4_NUM': item.bill4Number,
                  'BIL_5_NUM': item.bill5Number,
                  'BIL_6_NUM': item.bill6Number,
                  'BIL_7_NUM': item.bill7Number,
                  'BIL_8_NUM': item.bill8Number,
                  'BIL_9_NUM': item.bill9Number,
                  'BIL_10_NUM': item.bill10Number,
                  'BIL_11_NUM': item.bill11Number,
                  'BIL_12_NUM': item.bill12Number,
                  'BIL_13_NUM': item.bill13Number,
                  'BIL_14_NUM': item.bill14Number,
                  'BIL_15_NUM': item.bill15Number,
                  'BIL_16_NUM': item.bill16Number,
                  'BIL_17_NUM': item.bill17Number,
                  'BIL_18_NUM': item.bill18Number,
                  'BIL_19_NUM': item.bill19Number,
                  'USR_INPT_AMT': item.userInputAmount,
                  'SHIFT_SNO': item.shiftSerialNumber,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _cashierBankHistoryBillUpdateAdapter = UpdateAdapter(
            database,
            'BI1_CSHR_BNK_HIS_BIL',
            ['ID'],
            (CashierBankHistoryBill item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'BIL_SNO': item.billSerialNumber,
                  'BIZ_OPN_CLS_SEC_CD': item.businessOpenCloseSectionCode,
                  'TOT_AMT': item.totalAmount,
                  'BIL_0_NUM': item.bill0Number,
                  'BIL_1_NUM': item.bill1Number,
                  'BIL_2_NUM': item.bill2Number,
                  'BIL_3_NUM': item.bill3Number,
                  'BIL_4_NUM': item.bill4Number,
                  'BIL_5_NUM': item.bill5Number,
                  'BIL_6_NUM': item.bill6Number,
                  'BIL_7_NUM': item.bill7Number,
                  'BIL_8_NUM': item.bill8Number,
                  'BIL_9_NUM': item.bill9Number,
                  'BIL_10_NUM': item.bill10Number,
                  'BIL_11_NUM': item.bill11Number,
                  'BIL_12_NUM': item.bill12Number,
                  'BIL_13_NUM': item.bill13Number,
                  'BIL_14_NUM': item.bill14Number,
                  'BIL_15_NUM': item.bill15Number,
                  'BIL_16_NUM': item.bill16Number,
                  'BIL_17_NUM': item.bill17Number,
                  'BIL_18_NUM': item.bill18Number,
                  'BIL_19_NUM': item.bill19Number,
                  'USR_INPT_AMT': item.userInputAmount,
                  'SHIFT_SNO': item.shiftSerialNumber,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _cashierBankHistoryBillDeletionAdapter = DeletionAdapter(
            database,
            'BI1_CSHR_BNK_HIS_BIL',
            ['ID'],
            (CashierBankHistoryBill item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'BIL_SNO': item.billSerialNumber,
                  'BIZ_OPN_CLS_SEC_CD': item.businessOpenCloseSectionCode,
                  'TOT_AMT': item.totalAmount,
                  'BIL_0_NUM': item.bill0Number,
                  'BIL_1_NUM': item.bill1Number,
                  'BIL_2_NUM': item.bill2Number,
                  'BIL_3_NUM': item.bill3Number,
                  'BIL_4_NUM': item.bill4Number,
                  'BIL_5_NUM': item.bill5Number,
                  'BIL_6_NUM': item.bill6Number,
                  'BIL_7_NUM': item.bill7Number,
                  'BIL_8_NUM': item.bill8Number,
                  'BIL_9_NUM': item.bill9Number,
                  'BIL_10_NUM': item.bill10Number,
                  'BIL_11_NUM': item.bill11Number,
                  'BIL_12_NUM': item.bill12Number,
                  'BIL_13_NUM': item.bill13Number,
                  'BIL_14_NUM': item.bill14Number,
                  'BIL_15_NUM': item.bill15Number,
                  'BIL_16_NUM': item.bill16Number,
                  'BIL_17_NUM': item.bill17Number,
                  'BIL_18_NUM': item.bill18Number,
                  'BIL_19_NUM': item.bill19Number,
                  'USR_INPT_AMT': item.userInputAmount,
                  'SHIFT_SNO': item.shiftSerialNumber,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CashierBankHistoryBill>
      _cashierBankHistoryBillInsertionAdapter;

  final UpdateAdapter<CashierBankHistoryBill>
      _cashierBankHistoryBillUpdateAdapter;

  final DeletionAdapter<CashierBankHistoryBill>
      _cashierBankHistoryBillDeletionAdapter;

  @override
  Future<CashierBankHistoryBill?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            billSerialNumber: row['BIL_SNO'] as int?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            totalAmount: row['TOT_AMT'] as double?,
            bill0Number: row['BIL_0_NUM'] as int?,
            bill1Number: row['BIL_1_NUM'] as int?,
            bill2Number: row['BIL_2_NUM'] as int?,
            bill3Number: row['BIL_3_NUM'] as int?,
            bill4Number: row['BIL_4_NUM'] as int?,
            bill5Number: row['BIL_5_NUM'] as int?,
            bill6Number: row['BIL_6_NUM'] as int?,
            bill7Number: row['BIL_7_NUM'] as int?,
            bill8Number: row['BIL_8_NUM'] as int?,
            bill9Number: row['BIL_9_NUM'] as int?,
            bill10Number: row['BIL_10_NUM'] as int?,
            bill11Number: row['BIL_11_NUM'] as int?,
            bill12Number: row['BIL_12_NUM'] as int?,
            bill13Number: row['BIL_13_NUM'] as int?,
            bill14Number: row['BIL_14_NUM'] as int?,
            bill15Number: row['BIL_15_NUM'] as int?,
            bill16Number: row['BIL_16_NUM'] as int?,
            bill17Number: row['BIL_17_NUM'] as int?,
            bill18Number: row['BIL_18_NUM'] as int?,
            bill19Number: row['BIL_19_NUM'] as int?,
            userInputAmount: row['USR_INPT_AMT'] as double?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<CashierBankHistoryBill?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            billSerialNumber: row['BIL_SNO'] as int?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            totalAmount: row['TOT_AMT'] as double?,
            bill0Number: row['BIL_0_NUM'] as int?,
            bill1Number: row['BIL_1_NUM'] as int?,
            bill2Number: row['BIL_2_NUM'] as int?,
            bill3Number: row['BIL_3_NUM'] as int?,
            bill4Number: row['BIL_4_NUM'] as int?,
            bill5Number: row['BIL_5_NUM'] as int?,
            bill6Number: row['BIL_6_NUM'] as int?,
            bill7Number: row['BIL_7_NUM'] as int?,
            bill8Number: row['BIL_8_NUM'] as int?,
            bill9Number: row['BIL_9_NUM'] as int?,
            bill10Number: row['BIL_10_NUM'] as int?,
            bill11Number: row['BIL_11_NUM'] as int?,
            bill12Number: row['BIL_12_NUM'] as int?,
            bill13Number: row['BIL_13_NUM'] as int?,
            bill14Number: row['BIL_14_NUM'] as int?,
            bill15Number: row['BIL_15_NUM'] as int?,
            bill16Number: row['BIL_16_NUM'] as int?,
            bill17Number: row['BIL_17_NUM'] as int?,
            bill18Number: row['BIL_18_NUM'] as int?,
            bill19Number: row['BIL_19_NUM'] as int?,
            userInputAmount: row['USR_INPT_AMT'] as double?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<CashierBankHistoryBill?>
      findByCommonDateAndCommonSerialNumberAndCashdrawSectionCodeAndBillSerialNumber(
          String commonDate,
          int commonSerialNumber,
          String cashdrawSectionCode,
          int billSerialNumber) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = ?1  AND COM_SNO = ?2 AND CDRW_SEC_CD =?3 AND BIL_SNO =?4',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, billSerialNumber: row['BIL_SNO'] as int?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, totalAmount: row['TOT_AMT'] as double?, bill0Number: row['BIL_0_NUM'] as int?, bill1Number: row['BIL_1_NUM'] as int?, bill2Number: row['BIL_2_NUM'] as int?, bill3Number: row['BIL_3_NUM'] as int?, bill4Number: row['BIL_4_NUM'] as int?, bill5Number: row['BIL_5_NUM'] as int?, bill6Number: row['BIL_6_NUM'] as int?, bill7Number: row['BIL_7_NUM'] as int?, bill8Number: row['BIL_8_NUM'] as int?, bill9Number: row['BIL_9_NUM'] as int?, bill10Number: row['BIL_10_NUM'] as int?, bill11Number: row['BIL_11_NUM'] as int?, bill12Number: row['BIL_12_NUM'] as int?, bill13Number: row['BIL_13_NUM'] as int?, bill14Number: row['BIL_14_NUM'] as int?, bill15Number: row['BIL_15_NUM'] as int?, bill16Number: row['BIL_16_NUM'] as int?, bill17Number: row['BIL_17_NUM'] as int?, bill18Number: row['BIL_18_NUM'] as int?, bill19Number: row['BIL_19_NUM'] as int?, userInputAmount: row['USR_INPT_AMT'] as double?, shiftSerialNumber: row['SHIFT_SNO'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          commonDate,
          commonSerialNumber,
          cashdrawSectionCode,
          billSerialNumber
        ]);
  }

  @override
  Future<CashierBankHistoryBill?>
      findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCode(
          String commonDate,
          int commonSerialNumber,
          String businessOpenCloseSectionCode) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = ?1 AND COM_SNO =?2 AND BIZ_OPN_CLS_SEC_CD = ?3',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, billSerialNumber: row['BIL_SNO'] as int?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, totalAmount: row['TOT_AMT'] as double?, bill0Number: row['BIL_0_NUM'] as int?, bill1Number: row['BIL_1_NUM'] as int?, bill2Number: row['BIL_2_NUM'] as int?, bill3Number: row['BIL_3_NUM'] as int?, bill4Number: row['BIL_4_NUM'] as int?, bill5Number: row['BIL_5_NUM'] as int?, bill6Number: row['BIL_6_NUM'] as int?, bill7Number: row['BIL_7_NUM'] as int?, bill8Number: row['BIL_8_NUM'] as int?, bill9Number: row['BIL_9_NUM'] as int?, bill10Number: row['BIL_10_NUM'] as int?, bill11Number: row['BIL_11_NUM'] as int?, bill12Number: row['BIL_12_NUM'] as int?, bill13Number: row['BIL_13_NUM'] as int?, bill14Number: row['BIL_14_NUM'] as int?, bill15Number: row['BIL_15_NUM'] as int?, bill16Number: row['BIL_16_NUM'] as int?, bill17Number: row['BIL_17_NUM'] as int?, bill18Number: row['BIL_18_NUM'] as int?, bill19Number: row['BIL_19_NUM'] as int?, userInputAmount: row['USR_INPT_AMT'] as double?, shiftSerialNumber: row['SHIFT_SNO'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          commonDate,
          commonSerialNumber,
          businessOpenCloseSectionCode
        ]);
  }

  @override
  Future<CashierBankHistoryBill?>
      findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCodeNot(
          String commonDate,
          int commonSerialNumber,
          String businessOpenCloseSectionCode) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = ?1 AND COM_SNO =?2 AND BIZ_OPN_CLS_SEC_CD != ?3',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, billSerialNumber: row['BIL_SNO'] as int?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, totalAmount: row['TOT_AMT'] as double?, bill0Number: row['BIL_0_NUM'] as int?, bill1Number: row['BIL_1_NUM'] as int?, bill2Number: row['BIL_2_NUM'] as int?, bill3Number: row['BIL_3_NUM'] as int?, bill4Number: row['BIL_4_NUM'] as int?, bill5Number: row['BIL_5_NUM'] as int?, bill6Number: row['BIL_6_NUM'] as int?, bill7Number: row['BIL_7_NUM'] as int?, bill8Number: row['BIL_8_NUM'] as int?, bill9Number: row['BIL_9_NUM'] as int?, bill10Number: row['BIL_10_NUM'] as int?, bill11Number: row['BIL_11_NUM'] as int?, bill12Number: row['BIL_12_NUM'] as int?, bill13Number: row['BIL_13_NUM'] as int?, bill14Number: row['BIL_14_NUM'] as int?, bill15Number: row['BIL_15_NUM'] as int?, bill16Number: row['BIL_16_NUM'] as int?, bill17Number: row['BIL_17_NUM'] as int?, bill18Number: row['BIL_18_NUM'] as int?, bill19Number: row['BIL_19_NUM'] as int?, userInputAmount: row['USR_INPT_AMT'] as double?, shiftSerialNumber: row['SHIFT_SNO'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          commonDate,
          commonSerialNumber,
          businessOpenCloseSectionCode
        ]);
  }

  @override
  Future<List<CashierBankHistoryBill>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BI1_CSHR_BNK_HIS_BIL',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            billSerialNumber: row['BIL_SNO'] as int?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            totalAmount: row['TOT_AMT'] as double?,
            bill0Number: row['BIL_0_NUM'] as int?,
            bill1Number: row['BIL_1_NUM'] as int?,
            bill2Number: row['BIL_2_NUM'] as int?,
            bill3Number: row['BIL_3_NUM'] as int?,
            bill4Number: row['BIL_4_NUM'] as int?,
            bill5Number: row['BIL_5_NUM'] as int?,
            bill6Number: row['BIL_6_NUM'] as int?,
            bill7Number: row['BIL_7_NUM'] as int?,
            bill8Number: row['BIL_8_NUM'] as int?,
            bill9Number: row['BIL_9_NUM'] as int?,
            bill10Number: row['BIL_10_NUM'] as int?,
            bill11Number: row['BIL_11_NUM'] as int?,
            bill12Number: row['BIL_12_NUM'] as int?,
            bill13Number: row['BIL_13_NUM'] as int?,
            bill14Number: row['BIL_14_NUM'] as int?,
            bill15Number: row['BIL_15_NUM'] as int?,
            bill16Number: row['BIL_16_NUM'] as int?,
            bill17Number: row['BIL_17_NUM'] as int?,
            bill18Number: row['BIL_18_NUM'] as int?,
            bill19Number: row['BIL_19_NUM'] as int?,
            userInputAmount: row['USR_INPT_AMT'] as double?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<CashierBankHistoryBill>>
      findAllByCommonDateAndCommonSerialNumberAndCashdrawSectionCode(
          String commonDate,
          int commonSerialNumber,
          String cashdrawSectionCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = ?1 AND COM_SNO =?2 AND CDRW_SEC_CD = ?3 ORDER BY BIL_SNO DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, billSerialNumber: row['BIL_SNO'] as int?, businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?, totalAmount: row['TOT_AMT'] as double?, bill0Number: row['BIL_0_NUM'] as int?, bill1Number: row['BIL_1_NUM'] as int?, bill2Number: row['BIL_2_NUM'] as int?, bill3Number: row['BIL_3_NUM'] as int?, bill4Number: row['BIL_4_NUM'] as int?, bill5Number: row['BIL_5_NUM'] as int?, bill6Number: row['BIL_6_NUM'] as int?, bill7Number: row['BIL_7_NUM'] as int?, bill8Number: row['BIL_8_NUM'] as int?, bill9Number: row['BIL_9_NUM'] as int?, bill10Number: row['BIL_10_NUM'] as int?, bill11Number: row['BIL_11_NUM'] as int?, bill12Number: row['BIL_12_NUM'] as int?, bill13Number: row['BIL_13_NUM'] as int?, bill14Number: row['BIL_14_NUM'] as int?, bill15Number: row['BIL_15_NUM'] as int?, bill16Number: row['BIL_16_NUM'] as int?, bill17Number: row['BIL_17_NUM'] as int?, bill18Number: row['BIL_18_NUM'] as int?, bill19Number: row['BIL_19_NUM'] as int?, userInputAmount: row['USR_INPT_AMT'] as double?, shiftSerialNumber: row['SHIFT_SNO'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, commonSerialNumber, cashdrawSectionCode]);
  }

  @override
  Future<List<CashierBankHistoryBill>> findAllBySynchronizedYn(
      bool value) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE SYNCD_YN = ?1',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            billSerialNumber: row['BIL_SNO'] as int?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            totalAmount: row['TOT_AMT'] as double?,
            bill0Number: row['BIL_0_NUM'] as int?,
            bill1Number: row['BIL_1_NUM'] as int?,
            bill2Number: row['BIL_2_NUM'] as int?,
            bill3Number: row['BIL_3_NUM'] as int?,
            bill4Number: row['BIL_4_NUM'] as int?,
            bill5Number: row['BIL_5_NUM'] as int?,
            bill6Number: row['BIL_6_NUM'] as int?,
            bill7Number: row['BIL_7_NUM'] as int?,
            bill8Number: row['BIL_8_NUM'] as int?,
            bill9Number: row['BIL_9_NUM'] as int?,
            bill10Number: row['BIL_10_NUM'] as int?,
            bill11Number: row['BIL_11_NUM'] as int?,
            bill12Number: row['BIL_12_NUM'] as int?,
            bill13Number: row['BIL_13_NUM'] as int?,
            bill14Number: row['BIL_14_NUM'] as int?,
            bill15Number: row['BIL_15_NUM'] as int?,
            bill16Number: row['BIL_16_NUM'] as int?,
            bill17Number: row['BIL_17_NUM'] as int?,
            bill18Number: row['BIL_18_NUM'] as int?,
            bill19Number: row['BIL_19_NUM'] as int?,
            userInputAmount: row['USR_INPT_AMT'] as double?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [value ? 1 : 0]);
  }

  @override
  Stream<List<CashierBankHistoryBill>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BI1_CSHR_BNK_HIS_BIL',
        mapper: (Map<String, Object?> row) => CashierBankHistoryBill(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            billSerialNumber: row['BIL_SNO'] as int?,
            businessOpenCloseSectionCode: row['BIZ_OPN_CLS_SEC_CD'] as String?,
            totalAmount: row['TOT_AMT'] as double?,
            bill0Number: row['BIL_0_NUM'] as int?,
            bill1Number: row['BIL_1_NUM'] as int?,
            bill2Number: row['BIL_2_NUM'] as int?,
            bill3Number: row['BIL_3_NUM'] as int?,
            bill4Number: row['BIL_4_NUM'] as int?,
            bill5Number: row['BIL_5_NUM'] as int?,
            bill6Number: row['BIL_6_NUM'] as int?,
            bill7Number: row['BIL_7_NUM'] as int?,
            bill8Number: row['BIL_8_NUM'] as int?,
            bill9Number: row['BIL_9_NUM'] as int?,
            bill10Number: row['BIL_10_NUM'] as int?,
            bill11Number: row['BIL_11_NUM'] as int?,
            bill12Number: row['BIL_12_NUM'] as int?,
            bill13Number: row['BIL_13_NUM'] as int?,
            bill14Number: row['BIL_14_NUM'] as int?,
            bill15Number: row['BIL_15_NUM'] as int?,
            bill16Number: row['BIL_16_NUM'] as int?,
            bill17Number: row['BIL_17_NUM'] as int?,
            bill18Number: row['BIL_18_NUM'] as int?,
            bill19Number: row['BIL_19_NUM'] as int?,
            userInputAmount: row['USR_INPT_AMT'] as double?,
            shiftSerialNumber: row['SHIFT_SNO'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BI1_CSHR_BNK_HIS_BIL',
        isView: false);
  }

  @override
  Future<void> insertOne(CashierBankHistoryBill item) async {
    await _cashierBankHistoryBillInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<CashierBankHistoryBill> items) async {
    await _cashierBankHistoryBillInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(CashierBankHistoryBill item) async {
    await _cashierBankHistoryBillUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<CashierBankHistoryBill> items) async {
    await _cashierBankHistoryBillUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(CashierBankHistoryBill item) async {
    await _cashierBankHistoryBillDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<CashierBankHistoryBill> items) async {
    await _cashierBankHistoryBillDeletionAdapter.deleteList(items);
  }
}

class _$CommonIdDao extends CommonIdDao {
  _$CommonIdDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _commonIdInsertionAdapter = InsertionAdapter(
            database,
            'BA1_COM_ID',
            (CommonId item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber
                }),
        _commonIdUpdateAdapter = UpdateAdapter(
            database,
            'BA1_COM_ID',
            ['ID'],
            (CommonId item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber
                }),
        _commonIdDeletionAdapter = DeletionAdapter(
            database,
            'BA1_COM_ID',
            ['ID'],
            (CommonId item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CommonId> _commonIdInsertionAdapter;

  final UpdateAdapter<CommonId> _commonIdUpdateAdapter;

  final DeletionAdapter<CommonId> _commonIdDeletionAdapter;

  @override
  Future<CommonId?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM BA1_COM_ID WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => CommonId(row['ID'] as String?,
            row['COM_DT'] as String?, row['COM_SNO'] as int?),
        arguments: [id]);
  }

  @override
  Future<CommonId?> findByKey(String date, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_COM_ID WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => CommonId(row['ID'] as String?,
            row['COM_DT'] as String?, row['COM_SNO'] as int?),
        arguments: [date, sno]);
  }

  @override
  Future<List<CommonId>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_COM_ID',
        mapper: (Map<String, Object?> row) => CommonId(row['ID'] as String?,
            row['COM_DT'] as String?, row['COM_SNO'] as int?));
  }

  @override
  Future<List<CommonId>> findAllByDate(String date) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_COM_ID WHERE COM_DT = ?1 ORDER BY COM_SNO DESC',
        mapper: (Map<String, Object?> row) => CommonId(row['ID'] as String?,
            row['COM_DT'] as String?, row['COM_SNO'] as int?),
        arguments: [date]);
  }

  @override
  Future<void> insertOne(CommonId item) async {
    await _commonIdInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<CommonId> items) async {
    await _commonIdInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(CommonId item) async {
    await _commonIdUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<CommonId> items) async {
    await _commonIdUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(CommonId item) async {
    await _commonIdDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<CommonId> items) async {
    await _commonIdDeletionAdapter.deleteList(items);
  }
}

class _$DailyReportHistoryDao extends DailyReportHistoryDao {
  _$DailyReportHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _dailyReportHistoryInsertionAdapter = InsertionAdapter(
            database,
            'BI1_DAILY_RPT_HIS',
            (DailyReportHistory item) => <String, Object?>{
                  'ID': item.id,
                  'STR_TRM_ID': item.storeTerminalId,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'BIZ_DTTM': item.businessDatetime,
                  'TOT_SLS_AMT': item.totalSalesAmount,
                  'TOT_SLS_CNT': item.totalSalesCount,
                  'TOT_SPLY_VAL': item.totalSupplyValue,
                  'TOT_TAX_AMT': item.totalTaxAmount,
                  'TOT_TIP_AMT': item.totalTipAmount,
                  'TOT_TIP_TAX_AMT': item.totalTipTaxAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_CNCL_AMT': item.totalCancelAmount,
                  'TOT_REF_AMT': item.totalRefundAmount,
                  'POS_CASH_TOT_AMT': item.posCashTotalAmount,
                  'CASH_DEPSIT_TOT_AMT': item.cashDepositTotalAmount,
                  'CASH_WDRWL_TOT_AMT': item.cashWithdrawalAmount,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _dailyReportHistoryUpdateAdapter = UpdateAdapter(
            database,
            'BI1_DAILY_RPT_HIS',
            ['ID'],
            (DailyReportHistory item) => <String, Object?>{
                  'ID': item.id,
                  'STR_TRM_ID': item.storeTerminalId,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'BIZ_DTTM': item.businessDatetime,
                  'TOT_SLS_AMT': item.totalSalesAmount,
                  'TOT_SLS_CNT': item.totalSalesCount,
                  'TOT_SPLY_VAL': item.totalSupplyValue,
                  'TOT_TAX_AMT': item.totalTaxAmount,
                  'TOT_TIP_AMT': item.totalTipAmount,
                  'TOT_TIP_TAX_AMT': item.totalTipTaxAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_CNCL_AMT': item.totalCancelAmount,
                  'TOT_REF_AMT': item.totalRefundAmount,
                  'POS_CASH_TOT_AMT': item.posCashTotalAmount,
                  'CASH_DEPSIT_TOT_AMT': item.cashDepositTotalAmount,
                  'CASH_WDRWL_TOT_AMT': item.cashWithdrawalAmount,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _dailyReportHistoryDeletionAdapter = DeletionAdapter(
            database,
            'BI1_DAILY_RPT_HIS',
            ['ID'],
            (DailyReportHistory item) => <String, Object?>{
                  'ID': item.id,
                  'STR_TRM_ID': item.storeTerminalId,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'BIZ_DTTM': item.businessDatetime,
                  'TOT_SLS_AMT': item.totalSalesAmount,
                  'TOT_SLS_CNT': item.totalSalesCount,
                  'TOT_SPLY_VAL': item.totalSupplyValue,
                  'TOT_TAX_AMT': item.totalTaxAmount,
                  'TOT_TIP_AMT': item.totalTipAmount,
                  'TOT_TIP_TAX_AMT': item.totalTipTaxAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_CNCL_AMT': item.totalCancelAmount,
                  'TOT_REF_AMT': item.totalRefundAmount,
                  'POS_CASH_TOT_AMT': item.posCashTotalAmount,
                  'CASH_DEPSIT_TOT_AMT': item.cashDepositTotalAmount,
                  'CASH_WDRWL_TOT_AMT': item.cashWithdrawalAmount,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<DailyReportHistory>
      _dailyReportHistoryInsertionAdapter;

  final UpdateAdapter<DailyReportHistory> _dailyReportHistoryUpdateAdapter;

  final DeletionAdapter<DailyReportHistory> _dailyReportHistoryDeletionAdapter;

  @override
  Future<DailyReportHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM BI1_DAILY_RPT_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<DailyReportHistory?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_DAILY_RPT_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<DailyReportHistory?> findByCommonDateAndCommonSerialNumber(
      String commonDate, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_DAILY_RPT_HIS WHERE COM_DT = ?1 AND COM_SNO =  ?2',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, sno]);
  }

  @override
  Future<List<DailyReportHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BI1_DAILY_RPT_HIS',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<DailyReportHistory>> findAllBySynchronizedYn() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<DailyReportHistory>> findAllBySynchronizedYnNot() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS WHERE SYNCD_YN <> 1 ORDER BY FRST_REG_DTTM ASC',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<DailyReportHistory>> findAllStateCode(String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS WHERE STAT_CD !=  ?1',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode]);
  }

  @override
  Future<List<DailyReportHistory>> findAllByCommonDateAndStateCode(
      String commonDate, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS WHERE COM_DT = ?1 AND STAT_CD !=  ?2',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, stateCode]);
  }

  @override
  Stream<List<DailyReportHistory>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BI1_DAILY_RPT_HIS',
        mapper: (Map<String, Object?> row) => DailyReportHistory(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            posCashTotalAmount: row['POS_CASH_TOT_AMT'] as double?,
            cashDepositTotalAmount: row['CASH_DEPSIT_TOT_AMT'] as double?,
            cashWithdrawalAmount: row['CASH_WDRWL_TOT_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BI1_DAILY_RPT_HIS',
        isView: false);
  }

  @override
  Future<void> insertOne(DailyReportHistory item) async {
    await _dailyReportHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<DailyReportHistory> items) async {
    await _dailyReportHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(DailyReportHistory item) async {
    await _dailyReportHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<DailyReportHistory> items) async {
    await _dailyReportHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(DailyReportHistory item) async {
    await _dailyReportHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<DailyReportHistory> items) async {
    await _dailyReportHistoryDeletionAdapter.deleteList(items);
  }
}

class _$DailyReportHistoryPaymentsDao extends DailyReportHistoryPaymentsDao {
  _$DailyReportHistoryPaymentsDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _dailyReportHistoryPaymentsInsertionAdapter = InsertionAdapter(
            database,
            'BI1_DAILY_RPT_HIS_PAYMENTS',
            (DailyReportHistoryPayments item) => <String, Object?>{
                  'ID': item.id,
                  'STR_TRM_ID': item.storeTerminalId,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'BIZ_DTTM': item.businessDatetime,
                  'TOT_SLS_AMT': item.totalSalesAmount,
                  'TOT_SLS_CNT': item.totalSalesCount,
                  'TOT_SPLY_VAL': item.totalSupplyValue,
                  'TOT_TAX_AMT': item.totalTaxAmount,
                  'TOT_TIP_AMT': item.totalTipAmount,
                  'TOT_TIP_TAX_AMT': item.totalTipTaxAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_CNCL_AMT': item.totalCancelAmount,
                  'TOT_REF_AMT': item.totalRefundAmount,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _dailyReportHistoryPaymentsUpdateAdapter = UpdateAdapter(
            database,
            'BI1_DAILY_RPT_HIS_PAYMENTS',
            ['ID'],
            (DailyReportHistoryPayments item) => <String, Object?>{
                  'ID': item.id,
                  'STR_TRM_ID': item.storeTerminalId,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'BIZ_DTTM': item.businessDatetime,
                  'TOT_SLS_AMT': item.totalSalesAmount,
                  'TOT_SLS_CNT': item.totalSalesCount,
                  'TOT_SPLY_VAL': item.totalSupplyValue,
                  'TOT_TAX_AMT': item.totalTaxAmount,
                  'TOT_TIP_AMT': item.totalTipAmount,
                  'TOT_TIP_TAX_AMT': item.totalTipTaxAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_CNCL_AMT': item.totalCancelAmount,
                  'TOT_REF_AMT': item.totalRefundAmount,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _dailyReportHistoryPaymentsDeletionAdapter = DeletionAdapter(
            database,
            'BI1_DAILY_RPT_HIS_PAYMENTS',
            ['ID'],
            (DailyReportHistoryPayments item) => <String, Object?>{
                  'ID': item.id,
                  'STR_TRM_ID': item.storeTerminalId,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'BIZ_DTTM': item.businessDatetime,
                  'TOT_SLS_AMT': item.totalSalesAmount,
                  'TOT_SLS_CNT': item.totalSalesCount,
                  'TOT_SPLY_VAL': item.totalSupplyValue,
                  'TOT_TAX_AMT': item.totalTaxAmount,
                  'TOT_TIP_AMT': item.totalTipAmount,
                  'TOT_TIP_TAX_AMT': item.totalTipTaxAmount,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_CNCL_AMT': item.totalCancelAmount,
                  'TOT_REF_AMT': item.totalRefundAmount,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<DailyReportHistoryPayments>
      _dailyReportHistoryPaymentsInsertionAdapter;

  final UpdateAdapter<DailyReportHistoryPayments>
      _dailyReportHistoryPaymentsUpdateAdapter;

  final DeletionAdapter<DailyReportHistoryPayments>
      _dailyReportHistoryPaymentsDeletionAdapter;

  @override
  Future<DailyReportHistoryPayments?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<DailyReportHistoryPayments?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<DailyReportHistoryPayments?>
      findAllByCommonDateAndCommonSerialNumberAndPaymentSectionCode(
          String commonDate, int sno, String paySectionCode) async {
    return _queryAdapter.query(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE COM_DT = ?1  AND COM_SNO =  ?2 AND PAY_SEC_CD  = ?3',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(id: row['ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, paymentSectionCode: row['PAY_SEC_CD'] as String?, businessDatetime: row['BIZ_DTTM'] as String?, totalSalesAmount: row['TOT_SLS_AMT'] as double?, totalSalesCount: row['TOT_SLS_CNT'] as int?, totalSupplyValue: row['TOT_SPLY_VAL'] as double?, totalTaxAmount: row['TOT_TAX_AMT'] as double?, totalTipAmount: row['TOT_TIP_AMT'] as double?, totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, totalCancelAmount: row['TOT_CNCL_AMT'] as double?, totalRefundAmount: row['TOT_REF_AMT'] as double?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, sno, paySectionCode]);
  }

  @override
  Future<List<DailyReportHistoryPayments>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<DailyReportHistoryPayments>> findAllBySynchronizedYn() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<DailyReportHistoryPayments>> findAllBySynchronizedYnNot() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE SYNCD_YN <> 1 ORDER BY FRST_REG_DTTM ASC',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<DailyReportHistoryPayments>> findAllByCommonDateAndStateCode(
      String commonDate, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE COM_DT = ?1 AND STAT_CD !=  ?2',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(id: row['ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, paymentSectionCode: row['PAY_SEC_CD'] as String?, businessDatetime: row['BIZ_DTTM'] as String?, totalSalesAmount: row['TOT_SLS_AMT'] as double?, totalSalesCount: row['TOT_SLS_CNT'] as int?, totalSupplyValue: row['TOT_SPLY_VAL'] as double?, totalTaxAmount: row['TOT_TAX_AMT'] as double?, totalTipAmount: row['TOT_TIP_AMT'] as double?, totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, totalCancelAmount: row['TOT_CNCL_AMT'] as double?, totalRefundAmount: row['TOT_REF_AMT'] as double?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, stateCode]);
  }

  @override
  Future<List<DailyReportHistoryPayments>>
      findAllByCommonDateAndPaymentSectionCodeAndStateCode(
          String commonDate, String paySectionCode, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE COM_DT = ?1 AND PAY_SEC_CD  = ?2 AND  STAT_CD !=  ?3',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(id: row['ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, paymentSectionCode: row['PAY_SEC_CD'] as String?, businessDatetime: row['BIZ_DTTM'] as String?, totalSalesAmount: row['TOT_SLS_AMT'] as double?, totalSalesCount: row['TOT_SLS_CNT'] as int?, totalSupplyValue: row['TOT_SPLY_VAL'] as double?, totalTaxAmount: row['TOT_TAX_AMT'] as double?, totalTipAmount: row['TOT_TIP_AMT'] as double?, totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, totalCancelAmount: row['TOT_CNCL_AMT'] as double?, totalRefundAmount: row['TOT_REF_AMT'] as double?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate, paySectionCode, stateCode]);
  }

  @override
  Stream<List<DailyReportHistoryPayments>> findAllAsStream() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS',
        mapper: (Map<String, Object?> row) => DailyReportHistoryPayments(
            id: row['ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            businessDatetime: row['BIZ_DTTM'] as String?,
            totalSalesAmount: row['TOT_SLS_AMT'] as double?,
            totalSalesCount: row['TOT_SLS_CNT'] as int?,
            totalSupplyValue: row['TOT_SPLY_VAL'] as double?,
            totalTaxAmount: row['TOT_TAX_AMT'] as double?,
            totalTipAmount: row['TOT_TIP_AMT'] as double?,
            totalTipTaxAmount: row['TOT_TIP_TAX_AMT'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalCancelAmount: row['TOT_CNCL_AMT'] as double?,
            totalRefundAmount: row['TOT_REF_AMT'] as double?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BI1_DAILY_RPT_HIS_PAYMENTS',
        isView: false);
  }

  @override
  Future<void> insertOne(DailyReportHistoryPayments item) async {
    await _dailyReportHistoryPaymentsInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<DailyReportHistoryPayments> items) async {
    await _dailyReportHistoryPaymentsInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(DailyReportHistoryPayments item) async {
    await _dailyReportHistoryPaymentsUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<DailyReportHistoryPayments> items) async {
    await _dailyReportHistoryPaymentsUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(DailyReportHistoryPayments item) async {
    await _dailyReportHistoryPaymentsDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<DailyReportHistoryPayments> items) async {
    await _dailyReportHistoryPaymentsDeletionAdapter.deleteList(items);
  }
}

class _$EmployeeDao extends EmployeeDao {
  _$EmployeeDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _employeeInsertionAdapter = InsertionAdapter(
            database,
            'ST1_EMP',
            (Employee item) => <String, Object?>{
                  'EMP_ID': item.employeeId,
                  'EMP_GRP_ID': item.employeeGroupId,
                  'EMP_CD': item.employeeCode,
                  'EMP_NM': item.employeeName,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'LGIN_PWD': item.loginPassword,
                  'EMP_DESC': item.employeeDescription,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeUpdateAdapter = UpdateAdapter(
            database,
            'ST1_EMP',
            ['EMP_ID'],
            (Employee item) => <String, Object?>{
                  'EMP_ID': item.employeeId,
                  'EMP_GRP_ID': item.employeeGroupId,
                  'EMP_CD': item.employeeCode,
                  'EMP_NM': item.employeeName,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'LGIN_PWD': item.loginPassword,
                  'EMP_DESC': item.employeeDescription,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeDeletionAdapter = DeletionAdapter(
            database,
            'ST1_EMP',
            ['EMP_ID'],
            (Employee item) => <String, Object?>{
                  'EMP_ID': item.employeeId,
                  'EMP_GRP_ID': item.employeeGroupId,
                  'EMP_CD': item.employeeCode,
                  'EMP_NM': item.employeeName,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'LGIN_PWD': item.loginPassword,
                  'EMP_DESC': item.employeeDescription,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Employee> _employeeInsertionAdapter;

  final UpdateAdapter<Employee> _employeeUpdateAdapter;

  final DeletionAdapter<Employee> _employeeDeletionAdapter;

  @override
  Future<Employee?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_EMP WHERE EMP_ID = ?1',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<Employee?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<Employee?> findByEmployeeCodeAndStateCode(
      String employeeCode, String stateCode) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP WHERE EMP_CD = ?1 AND STAT_CD !=  ?2',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [employeeCode, stateCode]);
  }

  @override
  Future<List<Employee>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_EMP',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Employee>> findAllByStateCode(String stateCode) async {
    return _queryAdapter.queryList('SELECT * FROM ST1_EMP WHERE STAT_CD !=  ?1',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode]);
  }

  @override
  Future<List<Employee>> findAllByLoginPasswordAndStateCode(
      String password, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_EMP WHERE LGIN_PWD = ?1 AND STAT_CD !=  ?2',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [password, stateCode]);
  }

  @override
  Stream<List<Employee>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_EMP',
        mapper: (Map<String, Object?> row) => Employee(
            employeeId: row['EMP_ID'] as String?,
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeCode: row['EMP_CD'] as int?,
            employeeName: row['EMP_NM'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            loginPassword: row['LGIN_PWD'] as String?,
            employeeDescription: row['EMP_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_EMP',
        isView: false);
  }

  @override
  Future<void> insertOne(Employee item) async {
    await _employeeInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<Employee> items) async {
    await _employeeInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(Employee item) async {
    await _employeeUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<Employee> items) async {
    await _employeeUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(Employee item) async {
    await _employeeDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<Employee> items) async {
    await _employeeDeletionAdapter.deleteList(items);
  }
}

class _$EmployeeAuthorityDao extends EmployeeAuthorityDao {
  _$EmployeeAuthorityDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _employeeAuthorityInsertionAdapter = InsertionAdapter(
            database,
            'ST1_EMP_AUTH',
            (EmployeeAuthority item) => <String, Object?>{
                  'EMP_AUTH_ID': item.employeeAuthorityId,
                  'EMP_ID': item.employeeId,
                  'CLI_AUTH_GRP_CD': item.clientAuthorityGroupCode,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeAuthorityUpdateAdapter = UpdateAdapter(
            database,
            'ST1_EMP_AUTH',
            ['EMP_AUTH_ID'],
            (EmployeeAuthority item) => <String, Object?>{
                  'EMP_AUTH_ID': item.employeeAuthorityId,
                  'EMP_ID': item.employeeId,
                  'CLI_AUTH_GRP_CD': item.clientAuthorityGroupCode,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeAuthorityDeletionAdapter = DeletionAdapter(
            database,
            'ST1_EMP_AUTH',
            ['EMP_AUTH_ID'],
            (EmployeeAuthority item) => <String, Object?>{
                  'EMP_AUTH_ID': item.employeeAuthorityId,
                  'EMP_ID': item.employeeId,
                  'CLI_AUTH_GRP_CD': item.clientAuthorityGroupCode,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EmployeeAuthority> _employeeAuthorityInsertionAdapter;

  final UpdateAdapter<EmployeeAuthority> _employeeAuthorityUpdateAdapter;

  final DeletionAdapter<EmployeeAuthority> _employeeAuthorityDeletionAdapter;

  @override
  Future<EmployeeAuthority?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP_AUTH WHERE EMP_AUTH_ID = ?1',
        mapper: (Map<String, Object?> row) => EmployeeAuthority(
            employeeAuthorityId: row['EMP_AUTH_ID'] as String?,
            employeeId: row['EMP_ID'] as String?,
            clientAuthorityGroupCode: row['CLI_AUTH_GRP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<EmployeeAuthority?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP_AUTH ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => EmployeeAuthority(
            employeeAuthorityId: row['EMP_AUTH_ID'] as String?,
            employeeId: row['EMP_ID'] as String?,
            clientAuthorityGroupCode: row['CLI_AUTH_GRP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<EmployeeAuthority>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_EMP_AUTH',
        mapper: (Map<String, Object?> row) => EmployeeAuthority(
            employeeAuthorityId: row['EMP_AUTH_ID'] as String?,
            employeeId: row['EMP_ID'] as String?,
            clientAuthorityGroupCode: row['CLI_AUTH_GRP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<EmployeeAuthority>> findAllByEmployeeId(String employeeId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_EMP_AUTH WHERE EMP_ID = ?1',
        mapper: (Map<String, Object?> row) => EmployeeAuthority(
            employeeAuthorityId: row['EMP_AUTH_ID'] as String?,
            employeeId: row['EMP_ID'] as String?,
            clientAuthorityGroupCode: row['CLI_AUTH_GRP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [employeeId]);
  }

  @override
  Stream<List<EmployeeAuthority>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_EMP_AUTH',
        mapper: (Map<String, Object?> row) => EmployeeAuthority(
            employeeAuthorityId: row['EMP_AUTH_ID'] as String?,
            employeeId: row['EMP_ID'] as String?,
            clientAuthorityGroupCode: row['CLI_AUTH_GRP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_EMP_AUTH',
        isView: false);
  }

  @override
  Future<void> insertOne(EmployeeAuthority item) async {
    await _employeeAuthorityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<EmployeeAuthority> items) async {
    await _employeeAuthorityInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(EmployeeAuthority item) async {
    await _employeeAuthorityUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<EmployeeAuthority> items) async {
    await _employeeAuthorityUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(EmployeeAuthority item) async {
    await _employeeAuthorityDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<EmployeeAuthority> items) async {
    await _employeeAuthorityDeletionAdapter.deleteList(items);
  }
}

class _$EmployeeBreakHistoryDao extends EmployeeBreakHistoryDao {
  _$EmployeeBreakHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _employeeBreakHistoryInsertionAdapter = InsertionAdapter(
            database,
            'ST1_EMP_BRK_HIS',
            (EmployeeBreakHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'EMP_BRK_SNO': item.employeeBreakSerialNumber,
                  'BRK_START_TM':
                      _dateTimeConverter.encode(item.breakStartTime),
                  'BRK_END_TM': _dateTimeConverter.encode(item.breakEndTime),
                  'TOT_BRK_TM': item.totalBreakTime,
                  'BRK_START_MMO': item.breakStartMemo,
                  'BRK_END_MMO': item.breakEndMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeBreakHistoryUpdateAdapter = UpdateAdapter(
            database,
            'ST1_EMP_BRK_HIS',
            ['ID'],
            (EmployeeBreakHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'EMP_BRK_SNO': item.employeeBreakSerialNumber,
                  'BRK_START_TM':
                      _dateTimeConverter.encode(item.breakStartTime),
                  'BRK_END_TM': _dateTimeConverter.encode(item.breakEndTime),
                  'TOT_BRK_TM': item.totalBreakTime,
                  'BRK_START_MMO': item.breakStartMemo,
                  'BRK_END_MMO': item.breakEndMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeBreakHistoryDeletionAdapter = DeletionAdapter(
            database,
            'ST1_EMP_BRK_HIS',
            ['ID'],
            (EmployeeBreakHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'EMP_BRK_SNO': item.employeeBreakSerialNumber,
                  'BRK_START_TM':
                      _dateTimeConverter.encode(item.breakStartTime),
                  'BRK_END_TM': _dateTimeConverter.encode(item.breakEndTime),
                  'TOT_BRK_TM': item.totalBreakTime,
                  'BRK_START_MMO': item.breakStartMemo,
                  'BRK_END_MMO': item.breakEndMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EmployeeBreakHistory>
      _employeeBreakHistoryInsertionAdapter;

  final UpdateAdapter<EmployeeBreakHistory> _employeeBreakHistoryUpdateAdapter;

  final DeletionAdapter<EmployeeBreakHistory>
      _employeeBreakHistoryDeletionAdapter;

  @override
  Future<EmployeeBreakHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_EMP_BRK_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => EmployeeBreakHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeBreakSerialNumber: row['EMP_BRK_SNO'] as int?,
            breakStartTime:
                _dateTimeConverter.decode(row['BRK_START_TM'] as int?),
            breakEndTime: _dateTimeConverter.decode(row['BRK_END_TM'] as int?),
            totalBreakTime: row['TOT_BRK_TM'] as int?,
            breakStartMemo: row['BRK_START_MMO'] as String?,
            breakEndMemo: row['BRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<EmployeeBreakHistory?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP_BRK_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => EmployeeBreakHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeBreakSerialNumber: row['EMP_BRK_SNO'] as int?,
            breakStartTime:
                _dateTimeConverter.decode(row['BRK_START_TM'] as int?),
            breakEndTime: _dateTimeConverter.decode(row['BRK_END_TM'] as int?),
            totalBreakTime: row['TOT_BRK_TM'] as int?,
            breakStartMemo: row['BRK_START_MMO'] as String?,
            breakEndMemo: row['BRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<EmployeeBreakHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_EMP_BRK_HIS',
        mapper: (Map<String, Object?> row) => EmployeeBreakHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeBreakSerialNumber: row['EMP_BRK_SNO'] as int?,
            breakStartTime:
                _dateTimeConverter.decode(row['BRK_START_TM'] as int?),
            breakEndTime: _dateTimeConverter.decode(row['BRK_END_TM'] as int?),
            totalBreakTime: row['TOT_BRK_TM'] as int?,
            breakStartMemo: row['BRK_START_MMO'] as String?,
            breakEndMemo: row['BRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<EmployeeBreakHistory>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_EMP_BRK_HIS',
        mapper: (Map<String, Object?> row) => EmployeeBreakHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeBreakSerialNumber: row['EMP_BRK_SNO'] as int?,
            breakStartTime:
                _dateTimeConverter.decode(row['BRK_START_TM'] as int?),
            breakEndTime: _dateTimeConverter.decode(row['BRK_END_TM'] as int?),
            totalBreakTime: row['TOT_BRK_TM'] as int?,
            breakStartMemo: row['BRK_START_MMO'] as String?,
            breakEndMemo: row['BRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_EMP_BRK_HIS',
        isView: false);
  }

  @override
  Future<void> insertOne(EmployeeBreakHistory item) async {
    await _employeeBreakHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<EmployeeBreakHistory> items) async {
    await _employeeBreakHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(EmployeeBreakHistory item) async {
    await _employeeBreakHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<EmployeeBreakHistory> items) async {
    await _employeeBreakHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(EmployeeBreakHistory item) async {
    await _employeeBreakHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<EmployeeBreakHistory> items) async {
    await _employeeBreakHistoryDeletionAdapter.deleteList(items);
  }
}

class _$EmployeeGroupDao extends EmployeeGroupDao {
  _$EmployeeGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _employeeGroupInsertionAdapter = InsertionAdapter(
            database,
            'ST1_EMP_GRP',
            (EmployeeGroup item) => <String, Object?>{
                  'EMP_GRP_ID': item.employeeGroupId,
                  'EMP_GRP_NM': item.employeeGroupName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeGroupUpdateAdapter = UpdateAdapter(
            database,
            'ST1_EMP_GRP',
            ['EMP_GRP_ID'],
            (EmployeeGroup item) => <String, Object?>{
                  'EMP_GRP_ID': item.employeeGroupId,
                  'EMP_GRP_NM': item.employeeGroupName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeGroupDeletionAdapter = DeletionAdapter(
            database,
            'ST1_EMP_GRP',
            ['EMP_GRP_ID'],
            (EmployeeGroup item) => <String, Object?>{
                  'EMP_GRP_ID': item.employeeGroupId,
                  'EMP_GRP_NM': item.employeeGroupName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EmployeeGroup> _employeeGroupInsertionAdapter;

  final UpdateAdapter<EmployeeGroup> _employeeGroupUpdateAdapter;

  final DeletionAdapter<EmployeeGroup> _employeeGroupDeletionAdapter;

  @override
  Future<EmployeeGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP_GRP WHERE EMP_GRP_ID = ?1',
        mapper: (Map<String, Object?> row) => EmployeeGroup(
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeGroupName: row['EMP_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<EmployeeGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => EmployeeGroup(
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeGroupName: row['EMP_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<EmployeeGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_EMP_GRP',
        mapper: (Map<String, Object?> row) => EmployeeGroup(
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeGroupName: row['EMP_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<EmployeeGroup>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_EMP_GRP',
        mapper: (Map<String, Object?> row) => EmployeeGroup(
            employeeGroupId: row['EMP_GRP_ID'] as String?,
            employeeGroupName: row['EMP_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_EMP_GRP',
        isView: false);
  }

  @override
  Future<void> insertOne(EmployeeGroup item) async {
    await _employeeGroupInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<EmployeeGroup> items) async {
    await _employeeGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(EmployeeGroup item) async {
    await _employeeGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<EmployeeGroup> items) async {
    await _employeeGroupUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(EmployeeGroup item) async {
    await _employeeGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<EmployeeGroup> items) async {
    await _employeeGroupDeletionAdapter.deleteList(items);
  }
}

class _$EmployeeWorkHistoryDao extends EmployeeWorkHistoryDao {
  _$EmployeeWorkHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _employeeWorkHistoryInsertionAdapter = InsertionAdapter(
            database,
            'ST1_EMP_WRK_HIS',
            (EmployeeWorkHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'EMP_ID': item.employeeId,
                  'WRK_START_TM': _dateTimeConverter.encode(item.workStartTime),
                  'WRK_END_TM': _dateTimeConverter.encode(item.workEndTime),
                  'TOT_WRK_TM': item.totalWorkTime,
                  'WRK_START_MMO': item.workStartMemo,
                  'WRK_END_MMO': item.workEndMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeWorkHistoryUpdateAdapter = UpdateAdapter(
            database,
            'ST1_EMP_WRK_HIS',
            ['ID'],
            (EmployeeWorkHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'EMP_ID': item.employeeId,
                  'WRK_START_TM': _dateTimeConverter.encode(item.workStartTime),
                  'WRK_END_TM': _dateTimeConverter.encode(item.workEndTime),
                  'TOT_WRK_TM': item.totalWorkTime,
                  'WRK_START_MMO': item.workStartMemo,
                  'WRK_END_MMO': item.workEndMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _employeeWorkHistoryDeletionAdapter = DeletionAdapter(
            database,
            'ST1_EMP_WRK_HIS',
            ['ID'],
            (EmployeeWorkHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'EMP_ID': item.employeeId,
                  'WRK_START_TM': _dateTimeConverter.encode(item.workStartTime),
                  'WRK_END_TM': _dateTimeConverter.encode(item.workEndTime),
                  'TOT_WRK_TM': item.totalWorkTime,
                  'WRK_START_MMO': item.workStartMemo,
                  'WRK_END_MMO': item.workEndMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EmployeeWorkHistory>
      _employeeWorkHistoryInsertionAdapter;

  final UpdateAdapter<EmployeeWorkHistory> _employeeWorkHistoryUpdateAdapter;

  final DeletionAdapter<EmployeeWorkHistory>
      _employeeWorkHistoryDeletionAdapter;

  @override
  Future<EmployeeWorkHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_EMP_WRK_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => EmployeeWorkHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeId: row['EMP_ID'] as String?,
            workStartTime:
                _dateTimeConverter.decode(row['WRK_START_TM'] as int?),
            workEndTime: _dateTimeConverter.decode(row['WRK_END_TM'] as int?),
            totalWorkTime: row['TOT_WRK_TM'] as int?,
            workStartMemo: row['WRK_START_MMO'] as String?,
            workEndMemo: row['WRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<EmployeeWorkHistory?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_EMP_WRK_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => EmployeeWorkHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeId: row['EMP_ID'] as String?,
            workStartTime:
                _dateTimeConverter.decode(row['WRK_START_TM'] as int?),
            workEndTime: _dateTimeConverter.decode(row['WRK_END_TM'] as int?),
            totalWorkTime: row['TOT_WRK_TM'] as int?,
            workStartMemo: row['WRK_START_MMO'] as String?,
            workEndMemo: row['WRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<EmployeeWorkHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_EMP_WRK_HIS',
        mapper: (Map<String, Object?> row) => EmployeeWorkHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeId: row['EMP_ID'] as String?,
            workStartTime:
                _dateTimeConverter.decode(row['WRK_START_TM'] as int?),
            workEndTime: _dateTimeConverter.decode(row['WRK_END_TM'] as int?),
            totalWorkTime: row['TOT_WRK_TM'] as int?,
            workStartMemo: row['WRK_START_MMO'] as String?,
            workEndMemo: row['WRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<EmployeeWorkHistory>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_EMP_WRK_HIS',
        mapper: (Map<String, Object?> row) => EmployeeWorkHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            employeeId: row['EMP_ID'] as String?,
            workStartTime:
                _dateTimeConverter.decode(row['WRK_START_TM'] as int?),
            workEndTime: _dateTimeConverter.decode(row['WRK_END_TM'] as int?),
            totalWorkTime: row['TOT_WRK_TM'] as int?,
            workStartMemo: row['WRK_START_MMO'] as String?,
            workEndMemo: row['WRK_END_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_EMP_WRK_HIS',
        isView: false);
  }

  @override
  Future<void> insertOne(EmployeeWorkHistory item) async {
    await _employeeWorkHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<EmployeeWorkHistory> items) async {
    await _employeeWorkHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(EmployeeWorkHistory item) async {
    await _employeeWorkHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<EmployeeWorkHistory> items) async {
    await _employeeWorkHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(EmployeeWorkHistory item) async {
    await _employeeWorkHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<EmployeeWorkHistory> items) async {
    await _employeeWorkHistoryDeletionAdapter.deleteList(items);
  }
}

class _$I18NTermDao extends I18NTermDao {
  _$I18NTermDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _i18NTermInsertionAdapter = InsertionAdapter(
            database,
            'BA1_I18N_TER',
            (I18NTerm item) => <String, Object?>{
                  'I18N_TER_ID': item.i18nTermId,
                  'USR_INPT': item.userInput,
                  'ENG': item.english,
                  'KOR': item.korean,
                  'JAP': item.japanese,
                  'CHI': item.chinese,
                  'GER': item.german,
                  'SPA': item.spanish,
                  'POR': item.portuguese,
                  'VIE': item.vietnamese,
                  'FRE': item.french,
                  'RUS': item.russian,
                  'ARA': item.arabic,
                  'THI': item.thai,
                  'KAZ': item.kazakhstan,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _i18NTermUpdateAdapter = UpdateAdapter(
            database,
            'BA1_I18N_TER',
            ['I18N_TER_ID'],
            (I18NTerm item) => <String, Object?>{
                  'I18N_TER_ID': item.i18nTermId,
                  'USR_INPT': item.userInput,
                  'ENG': item.english,
                  'KOR': item.korean,
                  'JAP': item.japanese,
                  'CHI': item.chinese,
                  'GER': item.german,
                  'SPA': item.spanish,
                  'POR': item.portuguese,
                  'VIE': item.vietnamese,
                  'FRE': item.french,
                  'RUS': item.russian,
                  'ARA': item.arabic,
                  'THI': item.thai,
                  'KAZ': item.kazakhstan,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _i18NTermDeletionAdapter = DeletionAdapter(
            database,
            'BA1_I18N_TER',
            ['I18N_TER_ID'],
            (I18NTerm item) => <String, Object?>{
                  'I18N_TER_ID': item.i18nTermId,
                  'USR_INPT': item.userInput,
                  'ENG': item.english,
                  'KOR': item.korean,
                  'JAP': item.japanese,
                  'CHI': item.chinese,
                  'GER': item.german,
                  'SPA': item.spanish,
                  'POR': item.portuguese,
                  'VIE': item.vietnamese,
                  'FRE': item.french,
                  'RUS': item.russian,
                  'ARA': item.arabic,
                  'THI': item.thai,
                  'KAZ': item.kazakhstan,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<I18NTerm> _i18NTermInsertionAdapter;

  final UpdateAdapter<I18NTerm> _i18NTermUpdateAdapter;

  final DeletionAdapter<I18NTerm> _i18NTermDeletionAdapter;

  @override
  Future<I18NTerm?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_I18N_TER WHERE I18N_TER_ID = ?1',
        mapper: (Map<String, Object?> row) => I18NTerm(
            i18nTermId: row['I18N_TER_ID'] as String?,
            userInput: row['USR_INPT'] as String?,
            english: row['ENG'] as String?,
            korean: row['KOR'] as String?,
            japanese: row['JAP'] as String?,
            chinese: row['CHI'] as String?,
            german: row['GER'] as String?,
            spanish: row['SPA'] as String?,
            portuguese: row['POR'] as String?,
            vietnamese: row['VIE'] as String?,
            french: row['FRE'] as String?,
            russian: row['RUS'] as String?,
            arabic: row['ARA'] as String?,
            thai: row['THI'] as String?,
            kazakhstan: row['KAZ'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<I18NTerm?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_I18N_TER ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => I18NTerm(
            i18nTermId: row['I18N_TER_ID'] as String?,
            userInput: row['USR_INPT'] as String?,
            english: row['ENG'] as String?,
            korean: row['KOR'] as String?,
            japanese: row['JAP'] as String?,
            chinese: row['CHI'] as String?,
            german: row['GER'] as String?,
            spanish: row['SPA'] as String?,
            portuguese: row['POR'] as String?,
            vietnamese: row['VIE'] as String?,
            french: row['FRE'] as String?,
            russian: row['RUS'] as String?,
            arabic: row['ARA'] as String?,
            thai: row['THI'] as String?,
            kazakhstan: row['KAZ'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<I18NTerm?> findByUserInputAndStateCode(
      String userInput, String stateCode) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_I18N_TER WHERE USR_INPT = ?1 AND STAT_CD !=  ?2',
        mapper: (Map<String, Object?> row) => I18NTerm(
            i18nTermId: row['I18N_TER_ID'] as String?,
            userInput: row['USR_INPT'] as String?,
            english: row['ENG'] as String?,
            korean: row['KOR'] as String?,
            japanese: row['JAP'] as String?,
            chinese: row['CHI'] as String?,
            german: row['GER'] as String?,
            spanish: row['SPA'] as String?,
            portuguese: row['POR'] as String?,
            vietnamese: row['VIE'] as String?,
            french: row['FRE'] as String?,
            russian: row['RUS'] as String?,
            arabic: row['ARA'] as String?,
            thai: row['THI'] as String?,
            kazakhstan: row['KAZ'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [userInput, stateCode]);
  }

  @override
  Future<List<I18NTerm>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_I18N_TER',
        mapper: (Map<String, Object?> row) => I18NTerm(
            i18nTermId: row['I18N_TER_ID'] as String?,
            userInput: row['USR_INPT'] as String?,
            english: row['ENG'] as String?,
            korean: row['KOR'] as String?,
            japanese: row['JAP'] as String?,
            chinese: row['CHI'] as String?,
            german: row['GER'] as String?,
            spanish: row['SPA'] as String?,
            portuguese: row['POR'] as String?,
            vietnamese: row['VIE'] as String?,
            french: row['FRE'] as String?,
            russian: row['RUS'] as String?,
            arabic: row['ARA'] as String?,
            thai: row['THI'] as String?,
            kazakhstan: row['KAZ'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<I18NTerm>> findAllByLangCode() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_I18N_TER WHERE I18N_TER_ID LIKE \"____\"',
        mapper: (Map<String, Object?> row) => I18NTerm(
            i18nTermId: row['I18N_TER_ID'] as String?,
            userInput: row['USR_INPT'] as String?,
            english: row['ENG'] as String?,
            korean: row['KOR'] as String?,
            japanese: row['JAP'] as String?,
            chinese: row['CHI'] as String?,
            german: row['GER'] as String?,
            spanish: row['SPA'] as String?,
            portuguese: row['POR'] as String?,
            vietnamese: row['VIE'] as String?,
            french: row['FRE'] as String?,
            russian: row['RUS'] as String?,
            arabic: row['ARA'] as String?,
            thai: row['THI'] as String?,
            kazakhstan: row['KAZ'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<I18NTerm>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BA1_I18N_TER',
        mapper: (Map<String, Object?> row) => I18NTerm(
            i18nTermId: row['I18N_TER_ID'] as String?,
            userInput: row['USR_INPT'] as String?,
            english: row['ENG'] as String?,
            korean: row['KOR'] as String?,
            japanese: row['JAP'] as String?,
            chinese: row['CHI'] as String?,
            german: row['GER'] as String?,
            spanish: row['SPA'] as String?,
            portuguese: row['POR'] as String?,
            vietnamese: row['VIE'] as String?,
            french: row['FRE'] as String?,
            russian: row['RUS'] as String?,
            arabic: row['ARA'] as String?,
            thai: row['THI'] as String?,
            kazakhstan: row['KAZ'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BA1_I18N_TER',
        isView: false);
  }

  @override
  Future<void> insertOne(I18NTerm item) async {
    await _i18NTermInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<I18NTerm> items) async {
    await _i18NTermInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(I18NTerm item) async {
    await _i18NTermUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<I18NTerm> items) async {
    await _i18NTermUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(I18NTerm item) async {
    await _i18NTermDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<I18NTerm> items) async {
    await _i18NTermDeletionAdapter.deleteList(items);
  }
}

class _$InstallLogDao extends InstallLogDao {
  _$InstallLogDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _installLogInsertionAdapter = InsertionAdapter(
            database,
            'SY1_INS_LOG',
            (InstallLog item) => <String, Object?>{
                  'LOG_ID': item.logId,
                  'LOG_TP': item.logType,
                  'LOG_MSG': item.logMessage,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _installLogUpdateAdapter = UpdateAdapter(
            database,
            'SY1_INS_LOG',
            ['LOG_ID'],
            (InstallLog item) => <String, Object?>{
                  'LOG_ID': item.logId,
                  'LOG_TP': item.logType,
                  'LOG_MSG': item.logMessage,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _installLogDeletionAdapter = DeletionAdapter(
            database,
            'SY1_INS_LOG',
            ['LOG_ID'],
            (InstallLog item) => <String, Object?>{
                  'LOG_ID': item.logId,
                  'LOG_TP': item.logType,
                  'LOG_MSG': item.logMessage,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<InstallLog> _installLogInsertionAdapter;

  final UpdateAdapter<InstallLog> _installLogUpdateAdapter;

  final DeletionAdapter<InstallLog> _installLogDeletionAdapter;

  @override
  Future<InstallLog?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM SY1_INS_LOG WHERE LOG_ID = ?1',
        mapper: (Map<String, Object?> row) => InstallLog(
            logId: row['LOG_ID'] as String?,
            logType: row['LOG_TP'] as String?,
            logMessage: row['LOG_MSG'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<InstallLog?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM SY1_INS_LOG ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => InstallLog(
            logId: row['LOG_ID'] as String?,
            logType: row['LOG_TP'] as String?,
            logMessage: row['LOG_MSG'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<InstallLog>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SY1_INS_LOG',
        mapper: (Map<String, Object?> row) => InstallLog(
            logId: row['LOG_ID'] as String?,
            logType: row['LOG_TP'] as String?,
            logMessage: row['LOG_MSG'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<InstallLog>> findAllByLogType(
      String logTypeA, String logTypeB) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SY1_INS_LOG WHERE LOG_TP = ?1 OR  LOG_TP = ?2 Order by LAST_REV_DTTM desc limit 1',
        mapper: (Map<String, Object?> row) => InstallLog(logId: row['LOG_ID'] as String?, logType: row['LOG_TP'] as String?, logMessage: row['LOG_MSG'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [logTypeA, logTypeB]);
  }

  @override
  Stream<List<InstallLog>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM SY1_INS_LOG',
        mapper: (Map<String, Object?> row) => InstallLog(
            logId: row['LOG_ID'] as String?,
            logType: row['LOG_TP'] as String?,
            logMessage: row['LOG_MSG'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'SY1_INS_LOG',
        isView: false);
  }

  @override
  Future<void> insertOne(InstallLog item) async {
    await _installLogInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<InstallLog> items) async {
    await _installLogInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(InstallLog item) async {
    await _installLogUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<InstallLog> items) async {
    await _installLogUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(InstallLog item) async {
    await _installLogDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<InstallLog> items) async {
    await _installLogDeletionAdapter.deleteList(items);
  }
}

class _$IntegrityVerificationHistoryDao
    extends IntegrityVerificationHistoryDao {
  _$IntegrityVerificationHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _integrityVerificationHistoryInsertionAdapter = InsertionAdapter(
            database,
            'SY1_INTEG_VERIF_HIS',
            (IntegrityVerificationHistory item) => <String, Object?>{
                  'HIS_ID': item.historyId,
                  'VERIF_DTTM':
                      _dateTimeConverter.encode(item.verificationDatetime),
                  'VERIF_TP_CD': item.verificationTypeCode,
                  'VERIF_RSLT_CD': item.verificationResultCode,
                  'RMKS': item.remarks,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _integrityVerificationHistoryUpdateAdapter = UpdateAdapter(
            database,
            'SY1_INTEG_VERIF_HIS',
            ['HIS_ID'],
            (IntegrityVerificationHistory item) => <String, Object?>{
                  'HIS_ID': item.historyId,
                  'VERIF_DTTM':
                      _dateTimeConverter.encode(item.verificationDatetime),
                  'VERIF_TP_CD': item.verificationTypeCode,
                  'VERIF_RSLT_CD': item.verificationResultCode,
                  'RMKS': item.remarks,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _integrityVerificationHistoryDeletionAdapter = DeletionAdapter(
            database,
            'SY1_INTEG_VERIF_HIS',
            ['HIS_ID'],
            (IntegrityVerificationHistory item) => <String, Object?>{
                  'HIS_ID': item.historyId,
                  'VERIF_DTTM':
                      _dateTimeConverter.encode(item.verificationDatetime),
                  'VERIF_TP_CD': item.verificationTypeCode,
                  'VERIF_RSLT_CD': item.verificationResultCode,
                  'RMKS': item.remarks,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<IntegrityVerificationHistory>
      _integrityVerificationHistoryInsertionAdapter;

  final UpdateAdapter<IntegrityVerificationHistory>
      _integrityVerificationHistoryUpdateAdapter;

  final DeletionAdapter<IntegrityVerificationHistory>
      _integrityVerificationHistoryDeletionAdapter;

  @override
  Future<IntegrityVerificationHistory?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM SY1_INTEG_VERIF_HIS WHERE HIS_ID = ?1',
        mapper: (Map<String, Object?> row) => IntegrityVerificationHistory(
            historyId: row['HIS_ID'] as String?,
            verificationDatetime:
                _dateTimeConverter.decode(row['VERIF_DTTM'] as int?),
            verificationTypeCode: row['VERIF_TP_CD'] as String?,
            verificationResultCode: row['VERIF_RSLT_CD'] as String?,
            remarks: row['RMKS'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<IntegrityVerificationHistory?>
      findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM SY1_INTEG_VERIF_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => IntegrityVerificationHistory(
            historyId: row['HIS_ID'] as String?,
            verificationDatetime:
                _dateTimeConverter.decode(row['VERIF_DTTM'] as int?),
            verificationTypeCode: row['VERIF_TP_CD'] as String?,
            verificationResultCode: row['VERIF_RSLT_CD'] as String?,
            remarks: row['RMKS'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<IntegrityVerificationHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SY1_INTEG_VERIF_HIS',
        mapper: (Map<String, Object?> row) => IntegrityVerificationHistory(
            historyId: row['HIS_ID'] as String?,
            verificationDatetime:
                _dateTimeConverter.decode(row['VERIF_DTTM'] as int?),
            verificationTypeCode: row['VERIF_TP_CD'] as String?,
            verificationResultCode: row['VERIF_RSLT_CD'] as String?,
            remarks: row['RMKS'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<IntegrityVerificationHistory>> findAllByDataAndTime(
      String data1, int start, int end) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SY1_INTEG_VERIF_HIS WHERE DAT_1 = ?1 AND VERIF_DTTM >= ?2 AND VERIF_DTTM <= ?3',
        mapper: (Map<String, Object?> row) => IntegrityVerificationHistory(historyId: row['HIS_ID'] as String?, verificationDatetime: _dateTimeConverter.decode(row['VERIF_DTTM'] as int?), verificationTypeCode: row['VERIF_TP_CD'] as String?, verificationResultCode: row['VERIF_RSLT_CD'] as String?, remarks: row['RMKS'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [data1, start, end]);
  }

  @override
  Future<List<IntegrityVerificationHistory>> findAllByIdLike(String id) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SY1_INTEG_VERIF_HIS WHERE HIS_ID LIKE ?1',
        mapper: (Map<String, Object?> row) => IntegrityVerificationHistory(
            historyId: row['HIS_ID'] as String?,
            verificationDatetime:
                _dateTimeConverter.decode(row['VERIF_DTTM'] as int?),
            verificationTypeCode: row['VERIF_TP_CD'] as String?,
            verificationResultCode: row['VERIF_RSLT_CD'] as String?,
            remarks: row['RMKS'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> insertOne(IntegrityVerificationHistory item) async {
    await _integrityVerificationHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<IntegrityVerificationHistory> items) async {
    await _integrityVerificationHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(IntegrityVerificationHistory item) async {
    await _integrityVerificationHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<IntegrityVerificationHistory> items) async {
    await _integrityVerificationHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(IntegrityVerificationHistory item) async {
    await _integrityVerificationHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<IntegrityVerificationHistory> items) async {
    await _integrityVerificationHistoryDeletionAdapter.deleteList(items);
  }
}

class _$ItemDao extends ItemDao {
  _$ItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _itemInsertionAdapter = InsertionAdapter(
            database,
            'IT1_ITM',
            (Item item) => <String, Object?>{
                  'ITM_ID': item.itemId,
                  'ITM_GRP_ID': item.itemGroupId,
                  'ITM_CD': item.itemCode,
                  'ITM_NM': item.itemName,
                  'OPR_TP_CD': item.operationTypeCode,
                  'SLS_TP_CD': item.saleTypeCode,
                  'PRICE_TP_CD': item.priceTypeCode,
                  'COST': item.cost,
                  'SELL_PRICE': item.sellingPrice,
                  'BARCD': item.barcode,
                  'APLY_TAX_0_YN': item.applyTax0Yn,
                  'APLY_TAX_1_YN': item.applyTax1Yn,
                  'APLY_TAX_2_YN': item.applyTax2Yn,
                  'APLY_DC_YN': item.applyDiscountYn == null
                      ? null
                      : (item.applyDiscountYn! ? 1 : 0),
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'INV_QTY': item.inventoryQuantity,
                  'KTCHN_PRNTR_OUTPUT_YN': item.kitchenPrinterOutputYn == null
                      ? null
                      : (item.kitchenPrinterOutputYn! ? 1 : 0),
                  'OPT_USE_TP_CD': item.optionUseTypeCode,
                  'RECMND_ITM_YN': item.recommendedItemYn == null
                      ? null
                      : (item.recommendedItemYn! ? 1 : 0),
                  'PACK_PSBL_YN': item.packingPossibleYn == null
                      ? null
                      : (item.packingPossibleYn! ? 1 : 0),
                  'ONLINE_SLS_YN': item.onlineSaleYn == null
                      ? null
                      : (item.onlineSaleYn! ? 1 : 0),
                  'SOLD_OUT_YN':
                      item.soldOutYn == null ? null : (item.soldOutYn! ? 1 : 0),
                  'IMG_URL': item.imageUrl,
                  'LNK_CODE': item.linkCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _itemUpdateAdapter = UpdateAdapter(
            database,
            'IT1_ITM',
            ['ITM_ID'],
            (Item item) => <String, Object?>{
                  'ITM_ID': item.itemId,
                  'ITM_GRP_ID': item.itemGroupId,
                  'ITM_CD': item.itemCode,
                  'ITM_NM': item.itemName,
                  'OPR_TP_CD': item.operationTypeCode,
                  'SLS_TP_CD': item.saleTypeCode,
                  'PRICE_TP_CD': item.priceTypeCode,
                  'COST': item.cost,
                  'SELL_PRICE': item.sellingPrice,
                  'BARCD': item.barcode,
                  'APLY_TAX_0_YN': item.applyTax0Yn,
                  'APLY_TAX_1_YN': item.applyTax1Yn,
                  'APLY_TAX_2_YN': item.applyTax2Yn,
                  'APLY_DC_YN': item.applyDiscountYn == null
                      ? null
                      : (item.applyDiscountYn! ? 1 : 0),
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'INV_QTY': item.inventoryQuantity,
                  'KTCHN_PRNTR_OUTPUT_YN': item.kitchenPrinterOutputYn == null
                      ? null
                      : (item.kitchenPrinterOutputYn! ? 1 : 0),
                  'OPT_USE_TP_CD': item.optionUseTypeCode,
                  'RECMND_ITM_YN': item.recommendedItemYn == null
                      ? null
                      : (item.recommendedItemYn! ? 1 : 0),
                  'PACK_PSBL_YN': item.packingPossibleYn == null
                      ? null
                      : (item.packingPossibleYn! ? 1 : 0),
                  'ONLINE_SLS_YN': item.onlineSaleYn == null
                      ? null
                      : (item.onlineSaleYn! ? 1 : 0),
                  'SOLD_OUT_YN':
                      item.soldOutYn == null ? null : (item.soldOutYn! ? 1 : 0),
                  'IMG_URL': item.imageUrl,
                  'LNK_CODE': item.linkCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _itemDeletionAdapter = DeletionAdapter(
            database,
            'IT1_ITM',
            ['ITM_ID'],
            (Item item) => <String, Object?>{
                  'ITM_ID': item.itemId,
                  'ITM_GRP_ID': item.itemGroupId,
                  'ITM_CD': item.itemCode,
                  'ITM_NM': item.itemName,
                  'OPR_TP_CD': item.operationTypeCode,
                  'SLS_TP_CD': item.saleTypeCode,
                  'PRICE_TP_CD': item.priceTypeCode,
                  'COST': item.cost,
                  'SELL_PRICE': item.sellingPrice,
                  'BARCD': item.barcode,
                  'APLY_TAX_0_YN': item.applyTax0Yn,
                  'APLY_TAX_1_YN': item.applyTax1Yn,
                  'APLY_TAX_2_YN': item.applyTax2Yn,
                  'APLY_DC_YN': item.applyDiscountYn == null
                      ? null
                      : (item.applyDiscountYn! ? 1 : 0),
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'INV_QTY': item.inventoryQuantity,
                  'KTCHN_PRNTR_OUTPUT_YN': item.kitchenPrinterOutputYn == null
                      ? null
                      : (item.kitchenPrinterOutputYn! ? 1 : 0),
                  'OPT_USE_TP_CD': item.optionUseTypeCode,
                  'RECMND_ITM_YN': item.recommendedItemYn == null
                      ? null
                      : (item.recommendedItemYn! ? 1 : 0),
                  'PACK_PSBL_YN': item.packingPossibleYn == null
                      ? null
                      : (item.packingPossibleYn! ? 1 : 0),
                  'ONLINE_SLS_YN': item.onlineSaleYn == null
                      ? null
                      : (item.onlineSaleYn! ? 1 : 0),
                  'SOLD_OUT_YN':
                      item.soldOutYn == null ? null : (item.soldOutYn! ? 1 : 0),
                  'IMG_URL': item.imageUrl,
                  'LNK_CODE': item.linkCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Item> _itemInsertionAdapter;

  final UpdateAdapter<Item> _itemUpdateAdapter;

  final DeletionAdapter<Item> _itemDeletionAdapter;

  @override
  Future<Item?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM IT1_ITM WHERE ITM_ID = ?1',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<Item?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Item>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM IT1_ITM',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Item>> findAllByBarcodeLikeAndStateCodeAndHidingYnLimitOffset(
      String barcode,
      bool recommended,
      String stateCode,
      bool hidingYn,
      int limit,
      int __offset) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM WHERE BARCD Like ?1 AND RECMND_ITM_YN = ?2 AND STAT_CD != ?3 AND HIDE_YN = ?4 ORDER BY BARCD ASC LIMIT ?5 OFFSET ?6',
        mapper: (Map<String, Object?> row) => Item(itemId: row['ITM_ID'] as String?, itemGroupId: row['ITM_GRP_ID'] as String?, itemCode: row['ITM_CD'] as String?, itemName: row['ITM_NM'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, saleTypeCode: row['SLS_TP_CD'] as String?, priceTypeCode: row['PRICE_TP_CD'] as String?, cost: row['COST'] as double?, sellingPrice: row['SELL_PRICE'] as double?, barcode: row['BARCD'] as String?, applyTax0Yn: row['APLY_TAX_0_YN'] as String?, applyTax1Yn: row['APLY_TAX_1_YN'] as String?, applyTax2Yn: row['APLY_TAX_2_YN'] as String?, applyDiscountYn: row['APLY_DC_YN'] == null ? null : (row['APLY_DC_YN'] as int) != 0, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, inventoryQuantity: row['INV_QTY'] as double?, kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null ? null : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0, optionUseTypeCode: row['OPT_USE_TP_CD'] as String?, recommendedItemYn: row['RECMND_ITM_YN'] == null ? null : (row['RECMND_ITM_YN'] as int) != 0, packingPossibleYn: row['PACK_PSBL_YN'] == null ? null : (row['PACK_PSBL_YN'] as int) != 0, onlineSaleYn: row['ONLINE_SLS_YN'] == null ? null : (row['ONLINE_SLS_YN'] as int) != 0, soldOutYn: row['SOLD_OUT_YN'] == null ? null : (row['SOLD_OUT_YN'] as int) != 0, imageUrl: row['IMG_URL'] as String?, linkCode: row['LNK_CODE'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          barcode,
          recommended ? 1 : 0,
          stateCode,
          hidingYn ? 1 : 0,
          limit,
          __offset
        ]);
  }

  @override
  Future<List<Item>> findAllBySaleTypeCodeInAndStateCodeAndHidingYn(
      List<String> saleTypeCodes, String stateCode, bool hidingYn) async {
    const offset = 3;
    final _sqliteVariablesForSaleTypeCodes =
        Iterable<String>.generate(saleTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (' +
            _sqliteVariablesForSaleTypeCodes +
            ') AND  STAT_CD != ?1 AND HIDE_YN = ?2',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode, hidingYn ? 1 : 0, ...saleTypeCodes]);
  }

  @override
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYn(
          List<String> saleTypeCodes,
          String stateCode,
          String itemGroupId,
          bool hidingYn) async {
    const offset = 4;
    final _sqliteVariablesForSaleTypeCodes =
        Iterable<String>.generate(saleTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (' +
            _sqliteVariablesForSaleTypeCodes +
            ') AND  STAT_CD != ?1 AND ITM_GRP_ID = ?2 AND HIDE_YN = ?3',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [
          stateCode,
          itemGroupId,
          hidingYn ? 1 : 0,
          ...saleTypeCodes
        ]);
  }

  @override
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndHidingYnAndItemNameLikeLimitOffset(
          List<String> saleTypeCodes,
          String stateCode,
          bool hidingYn,
          String itemName,
          int limit,
          int _offset) async {
    const offset = 6;
    final _sqliteVariablesForSaleTypeCodes =
        Iterable<String>.generate(saleTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (' +
            _sqliteVariablesForSaleTypeCodes +
            ') AND  STAT_CD != ?1 AND HIDE_YN = ?2 AND ITM_NM like ?3 ORDER BY ITM_NM ASC LIMIT ?4 OFFSET ?5',
        mapper: (Map<String, Object?> row) => Item(itemId: row['ITM_ID'] as String?, itemGroupId: row['ITM_GRP_ID'] as String?, itemCode: row['ITM_CD'] as String?, itemName: row['ITM_NM'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, saleTypeCode: row['SLS_TP_CD'] as String?, priceTypeCode: row['PRICE_TP_CD'] as String?, cost: row['COST'] as double?, sellingPrice: row['SELL_PRICE'] as double?, barcode: row['BARCD'] as String?, applyTax0Yn: row['APLY_TAX_0_YN'] as String?, applyTax1Yn: row['APLY_TAX_1_YN'] as String?, applyTax2Yn: row['APLY_TAX_2_YN'] as String?, applyDiscountYn: row['APLY_DC_YN'] == null ? null : (row['APLY_DC_YN'] as int) != 0, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, inventoryQuantity: row['INV_QTY'] as double?, kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null ? null : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0, optionUseTypeCode: row['OPT_USE_TP_CD'] as String?, recommendedItemYn: row['RECMND_ITM_YN'] == null ? null : (row['RECMND_ITM_YN'] as int) != 0, packingPossibleYn: row['PACK_PSBL_YN'] == null ? null : (row['PACK_PSBL_YN'] as int) != 0, onlineSaleYn: row['ONLINE_SLS_YN'] == null ? null : (row['ONLINE_SLS_YN'] as int) != 0, soldOutYn: row['SOLD_OUT_YN'] == null ? null : (row['SOLD_OUT_YN'] as int) != 0, imageUrl: row['IMG_URL'] as String?, linkCode: row['LNK_CODE'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          stateCode,
          hidingYn ? 1 : 0,
          itemName,
          limit,
          _offset,
          ...saleTypeCodes
        ]);
  }

  @override
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYnAndItemNameLikeLimitOffset(
          List<String> saleTypeCodes,
          String stateCode,
          String itemGroupId,
          bool hidingYn,
          String itemName,
          int limit,
          int _offset) async {
    const offset = 7;
    final _sqliteVariablesForSaleTypeCodes =
        Iterable<String>.generate(saleTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (' +
            _sqliteVariablesForSaleTypeCodes +
            ') AND STAT_CD != ?1 AND ITM_GRP_ID = ?2 AND HIDE_YN = ?3 AND ITM_NM like ?4 ORDER BY ITM_NM ASC LIMIT ?5 OFFSET ?6',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [
          stateCode,
          itemGroupId,
          hidingYn ? 1 : 0,
          itemName,
          limit,
          _offset,
          ...saleTypeCodes
        ]);
  }

  @override
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYnAndItemNameLikeAndRecommendedLimitOffset(
          List<String> saleTypeCodes,
          String stateCode,
          String itemGroupId,
          bool hidingYn,
          String itemName,
          bool recommended,
          int limit,
          int _offset) async {
    const offset = 8;
    final _sqliteVariablesForSaleTypeCodes =
        Iterable<String>.generate(saleTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (' +
            _sqliteVariablesForSaleTypeCodes +
            ') AND  STAT_CD != ?1 AND ITM_GRP_ID = ?2 AND HIDE_YN = ?3 AND ITM_NM like ?4 AND RECMND_ITM_YN = ?5 ORDER BY ITM_NM ASC LIMIT ?6 OFFSET ?7',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [
          stateCode,
          itemGroupId,
          hidingYn ? 1 : 0,
          itemName,
          recommended ? 1 : 0,
          limit,
          _offset,
          ...saleTypeCodes
        ]);
  }

  @override
  Future<List<Item>> findAllBySaleTypeCodeAndStateCodeJoinItemGroup(
      String saleTypeCode,
      String stateCode,
      String operationTypeCode,
      String itemGroupTypeCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM AS ITEM JOIN IT1_ITM_GRP AS GRP ON ITEM.ITM_GRP_ID = GRP.ITM_GRP_ID  WHERE ITEM.SLS_TP_CD  =?1 AND ITEM.STAT_CD !=?2  and GRP.OPR_TP_CD  =?3 AND GRP.ITM_GRP_TP_CD =?4',
        mapper: (Map<String, Object?> row) => Item(itemId: row['ITM_ID'] as String?, itemGroupId: row['ITM_GRP_ID'] as String?, itemCode: row['ITM_CD'] as String?, itemName: row['ITM_NM'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, saleTypeCode: row['SLS_TP_CD'] as String?, priceTypeCode: row['PRICE_TP_CD'] as String?, cost: row['COST'] as double?, sellingPrice: row['SELL_PRICE'] as double?, barcode: row['BARCD'] as String?, applyTax0Yn: row['APLY_TAX_0_YN'] as String?, applyTax1Yn: row['APLY_TAX_1_YN'] as String?, applyTax2Yn: row['APLY_TAX_2_YN'] as String?, applyDiscountYn: row['APLY_DC_YN'] == null ? null : (row['APLY_DC_YN'] as int) != 0, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, inventoryQuantity: row['INV_QTY'] as double?, kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null ? null : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0, optionUseTypeCode: row['OPT_USE_TP_CD'] as String?, recommendedItemYn: row['RECMND_ITM_YN'] == null ? null : (row['RECMND_ITM_YN'] as int) != 0, packingPossibleYn: row['PACK_PSBL_YN'] == null ? null : (row['PACK_PSBL_YN'] as int) != 0, onlineSaleYn: row['ONLINE_SLS_YN'] == null ? null : (row['ONLINE_SLS_YN'] as int) != 0, soldOutYn: row['SOLD_OUT_YN'] == null ? null : (row['SOLD_OUT_YN'] as int) != 0, imageUrl: row['IMG_URL'] as String?, linkCode: row['LNK_CODE'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          saleTypeCode,
          stateCode,
          operationTypeCode,
          itemGroupTypeCode
        ]);
  }

  @override
  Future<List<Item>> findAllByRecentlyUsedList() async {
    return _queryAdapter.queryList(
        'SELECT * FROM    (SELECT  *,  MAX (LAST_REV_DTTM) AS MAX FROM       (SELECT  ITM_ID, ITM_GRP_ID, ITM_CD, ITM_NM,  OPR_TP_CD,  SLS_TP_CD,  PRICE_TP_CD,COST,  SELL_PRICE, BARCD, APLY_TAX_0_YN, APLY_TAX_1_YN,  APLY_TAX_2_YN,         APLY_DC_YN, HIDE_YN, INV_QTY, KTCHN_PRNTR_OUTPUT_YN, OPT_USE_TP_CD, RECMND_ITM_YN, PACK_PSBL_YN, ONLINE_SLS_YN, SOLD_OUT_YN, IMG_URL, LNK_CODE,        SYNCD_YN, FRST_REGST_ID, FRST_REG_DTTM, LAST_REVSR_ID, LAST_REV_DTTM, STAT_CD        FROM IT1_ITM WHERE SLS_TP_CD = \"X\" AND STAT_CD !=\"99\"       UNION       SELECT  I.ITM_ID, I.ITM_GRP_ID, I.ITM_CD,  I.ITM_NM,  I.OPR_TP_CD,  I.SLS_TP_CD,  I.PRICE_TP_CD,I.COST,  SI.PRICE as SELL_PRICE,I.BARCD,  I.APLY_TAX_0_YN,   I.APLY_TAX_1_YN,  I.APLY_TAX_2_YN,        I.APLY_DC_YN, I.HIDE_YN, I.INV_QTY, I.KTCHN_PRNTR_OUTPUT_YN, I.OPT_USE_TP_CD, I.RECMND_ITM_YN, I.PACK_PSBL_YN, I.ONLINE_SLS_YN, I.SOLD_OUT_YN, I.IMG_URL, I.LNK_CODE,         I.SYNCD_YN, I.FRST_REGST_ID, I.FRST_REG_DTTM, I.LAST_REVSR_ID, SI.LAST_REV_DTTM, I.STAT_CD        FROM SL1_SLS_HIS_ITM AS SI       JOIN IT1_ITM AS I WHERE SI.ITM_ID = I.ITM_ID AND SI.QTY>0 ORDER BY LAST_REV_DTTM DESC)    GROUP BY ITM_ID )  ORDER BY MAX DESC limit 5',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<Item>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM IT1_ITM',
        mapper: (Map<String, Object?> row) => Item(
            itemId: row['ITM_ID'] as String?,
            itemGroupId: row['ITM_GRP_ID'] as String?,
            itemCode: row['ITM_CD'] as String?,
            itemName: row['ITM_NM'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            saleTypeCode: row['SLS_TP_CD'] as String?,
            priceTypeCode: row['PRICE_TP_CD'] as String?,
            cost: row['COST'] as double?,
            sellingPrice: row['SELL_PRICE'] as double?,
            barcode: row['BARCD'] as String?,
            applyTax0Yn: row['APLY_TAX_0_YN'] as String?,
            applyTax1Yn: row['APLY_TAX_1_YN'] as String?,
            applyTax2Yn: row['APLY_TAX_2_YN'] as String?,
            applyDiscountYn: row['APLY_DC_YN'] == null
                ? null
                : (row['APLY_DC_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            inventoryQuantity: row['INV_QTY'] as double?,
            kitchenPrinterOutputYn: row['KTCHN_PRNTR_OUTPUT_YN'] == null
                ? null
                : (row['KTCHN_PRNTR_OUTPUT_YN'] as int) != 0,
            optionUseTypeCode: row['OPT_USE_TP_CD'] as String?,
            recommendedItemYn: row['RECMND_ITM_YN'] == null
                ? null
                : (row['RECMND_ITM_YN'] as int) != 0,
            packingPossibleYn: row['PACK_PSBL_YN'] == null
                ? null
                : (row['PACK_PSBL_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            soldOutYn: row['SOLD_OUT_YN'] == null
                ? null
                : (row['SOLD_OUT_YN'] as int) != 0,
            imageUrl: row['IMG_URL'] as String?,
            linkCode: row['LNK_CODE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'IT1_ITM',
        isView: false);
  }

  @override
  Future<void> insertOne(Item item) async {
    await _itemInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<Item> items) async {
    await _itemInsertionAdapter.insertList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(Item item) async {
    await _itemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<Item> items) async {
    await _itemUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(Item item) async {
    await _itemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<Item> items) async {
    await _itemDeletionAdapter.deleteList(items);
  }
}

class _$ItemGroupDao extends ItemGroupDao {
  _$ItemGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _itemGroupInsertionAdapter = InsertionAdapter(
            database,
            'IT1_ITM_GRP',
            (ItemGroup item) => <String, Object?>{
                  'ITM_GRP_ID': item.itemGroupId,
                  'UPR_ITM_GRP_ID': item.upperItemGroupId,
                  'ITM_GRP_NM': item.itemGroupName,
                  'ITM_GRP_TP_CD': item.itemGroupTypeCode,
                  'OPR_TP_CD': item.operationTypeCode,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _itemGroupUpdateAdapter = UpdateAdapter(
            database,
            'IT1_ITM_GRP',
            ['ITM_GRP_ID'],
            (ItemGroup item) => <String, Object?>{
                  'ITM_GRP_ID': item.itemGroupId,
                  'UPR_ITM_GRP_ID': item.upperItemGroupId,
                  'ITM_GRP_NM': item.itemGroupName,
                  'ITM_GRP_TP_CD': item.itemGroupTypeCode,
                  'OPR_TP_CD': item.operationTypeCode,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _itemGroupDeletionAdapter = DeletionAdapter(
            database,
            'IT1_ITM_GRP',
            ['ITM_GRP_ID'],
            (ItemGroup item) => <String, Object?>{
                  'ITM_GRP_ID': item.itemGroupId,
                  'UPR_ITM_GRP_ID': item.upperItemGroupId,
                  'ITM_GRP_NM': item.itemGroupName,
                  'ITM_GRP_TP_CD': item.itemGroupTypeCode,
                  'OPR_TP_CD': item.operationTypeCode,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ItemGroup> _itemGroupInsertionAdapter;

  final UpdateAdapter<ItemGroup> _itemGroupUpdateAdapter;

  final DeletionAdapter<ItemGroup> _itemGroupDeletionAdapter;

  @override
  Future<ItemGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_ITM_GRP WHERE ITM_GRP_ID = ?1',
        mapper: (Map<String, Object?> row) => ItemGroup(
            itemGroupId: row['ITM_GRP_ID'] as String?,
            upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?,
            itemGroupName: row['ITM_GRP_NM'] as String?,
            itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<ItemGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_ITM_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => ItemGroup(
            itemGroupId: row['ITM_GRP_ID'] as String?,
            upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?,
            itemGroupName: row['ITM_GRP_NM'] as String?,
            itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<ItemGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM IT1_ITM_GRP',
        mapper: (Map<String, Object?> row) => ItemGroup(
            itemGroupId: row['ITM_GRP_ID'] as String?,
            upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?,
            itemGroupName: row['ITM_GRP_NM'] as String?,
            itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<ItemGroup>>
      findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndItemGroupName(
          String stateCode,
          String oprTpCode,
          String type,
          String itemGroupName) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM_GRP WHERE STAT_CD != ?1 and OPR_TP_CD =  ?2 and ITM_GRP_TP_CD =  ?3 and HIDE_YN = 0 and ITM_GRP_NM like ?4',
        mapper: (Map<String, Object?> row) => ItemGroup(itemGroupId: row['ITM_GRP_ID'] as String?, upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?, itemGroupName: row['ITM_GRP_NM'] as String?, itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode, oprTpCode, type, itemGroupName]);
  }

  @override
  Future<List<ItemGroup>>
      findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndItemGroupNameAndRecommended(
          String stateCode,
          String oprTpCode,
          String type,
          String itemGroupName,
          bool isRecommended) async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT * FROM IT1_ITM_GRP as A JOIN IT1_ITM as B ON A.ITM_GRP_ID = B.ITM_GRP_ID WHERE A.STAT_CD != ?1 and A.OPR_TP_CD = ?2 and A.ITM_GRP_TP_CD = ?3 and A.HIDE_YN = 0 and A.ITM_GRP_NM like ?4 and B.RECMND_ITM_YN = ?5',
        mapper: (Map<String, Object?> row) => ItemGroup(itemGroupId: row['ITM_GRP_ID'] as String?, upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?, itemGroupName: row['ITM_GRP_NM'] as String?, itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          stateCode,
          oprTpCode,
          type,
          itemGroupName,
          isRecommended ? 1 : 0
        ]);
  }

  @override
  Future<List<ItemGroup>>
      findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndHidingYn(
          String stateCode, String oprTpCode, String type) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM_GRP WHERE STAT_CD != ?1 and OPR_TP_CD =  ?2 and ITM_GRP_TP_CD =  ?3 and HIDE_YN = 1',
        mapper: (Map<String, Object?> row) => ItemGroup(itemGroupId: row['ITM_GRP_ID'] as String?, upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?, itemGroupName: row['ITM_GRP_NM'] as String?, itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode, oprTpCode, type]);
  }

  @override
  Stream<List<ItemGroup>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM IT1_ITM_GRP',
        mapper: (Map<String, Object?> row) => ItemGroup(
            itemGroupId: row['ITM_GRP_ID'] as String?,
            upperItemGroupId: row['UPR_ITM_GRP_ID'] as String?,
            itemGroupName: row['ITM_GRP_NM'] as String?,
            itemGroupTypeCode: row['ITM_GRP_TP_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'IT1_ITM_GRP',
        isView: false);
  }

  @override
  Future<void> insertOne(ItemGroup item) async {
    await _itemGroupInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<ItemGroup> items) async {
    await _itemGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(ItemGroup item) async {
    await _itemGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<ItemGroup> items) async {
    await _itemGroupUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(ItemGroup item) async {
    await _itemGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<ItemGroup> items) async {
    await _itemGroupDeletionAdapter.deleteList(items);
  }
}

class _$ItemOptionDao extends ItemOptionDao {
  _$ItemOptionDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _itemOptionInsertionAdapter = InsertionAdapter(
            database,
            'IT1_ITM_OPT',
            (ItemOption item) => <String, Object?>{
                  'ITM_OPT_ID': item.itemOptionId,
                  'ITM_ID': item.itemId,
                  'OPT_GRP_ID': item.optionGroupId,
                  'ITM_OPT_SNO': item.itemOptionSerialNumber,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _itemOptionUpdateAdapter = UpdateAdapter(
            database,
            'IT1_ITM_OPT',
            ['ITM_OPT_ID'],
            (ItemOption item) => <String, Object?>{
                  'ITM_OPT_ID': item.itemOptionId,
                  'ITM_ID': item.itemId,
                  'OPT_GRP_ID': item.optionGroupId,
                  'ITM_OPT_SNO': item.itemOptionSerialNumber,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _itemOptionDeletionAdapter = DeletionAdapter(
            database,
            'IT1_ITM_OPT',
            ['ITM_OPT_ID'],
            (ItemOption item) => <String, Object?>{
                  'ITM_OPT_ID': item.itemOptionId,
                  'ITM_ID': item.itemId,
                  'OPT_GRP_ID': item.optionGroupId,
                  'ITM_OPT_SNO': item.itemOptionSerialNumber,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ItemOption> _itemOptionInsertionAdapter;

  final UpdateAdapter<ItemOption> _itemOptionUpdateAdapter;

  final DeletionAdapter<ItemOption> _itemOptionDeletionAdapter;

  @override
  Future<ItemOption?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_ITM_OPT WHERE ITM_OPT_ID = ?1',
        mapper: (Map<String, Object?> row) => ItemOption(
            itemOptionId: row['ITM_OPT_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemOptionSerialNumber: row['ITM_OPT_SNO'] as int?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<ItemOption?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_ITM_OPT ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => ItemOption(
            itemOptionId: row['ITM_OPT_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemOptionSerialNumber: row['ITM_OPT_SNO'] as int?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<ItemOption>> findAll() async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM_OPT WHERE STAT_CD <>\"99\"',
        mapper: (Map<String, Object?> row) => ItemOption(
            itemOptionId: row['ITM_OPT_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemOptionSerialNumber: row['ITM_OPT_SNO'] as int?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<ItemOption>> findAllByItemId(
      String itemId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_ITM_OPT WHERE ITM_ID = ?1 AND STAT_CD != ?2 ORDER BY ITM_OPT_SNO ASC',
        mapper: (Map<String, Object?> row) => ItemOption(itemOptionId: row['ITM_OPT_ID'] as String?, itemId: row['ITM_ID'] as String?, optionGroupId: row['OPT_GRP_ID'] as String?, itemOptionSerialNumber: row['ITM_OPT_SNO'] as int?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [itemId, stateCode]);
  }

  @override
  Stream<List<ItemOption>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM IT1_ITM_OPT',
        mapper: (Map<String, Object?> row) => ItemOption(
            itemOptionId: row['ITM_OPT_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemOptionSerialNumber: row['ITM_OPT_SNO'] as int?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'IT1_ITM_OPT',
        isView: false);
  }

  @override
  Future<void> insertOne(ItemOption item) async {
    await _itemOptionInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<ItemOption> items) async {
    await _itemOptionInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(ItemOption item) async {
    await _itemOptionUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<ItemOption> items) async {
    await _itemOptionUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(ItemOption item) async {
    await _itemOptionDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<ItemOption> items) async {
    await _itemOptionDeletionAdapter.deleteList(items);
  }
}

class _$KitchenMemoDao extends KitchenMemoDao {
  _$KitchenMemoDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _kitchenMemoInsertionAdapter = InsertionAdapter(
            database,
            'ST1_KTCHN_MMO',
            (KitchenMemo item) => <String, Object?>{
                  'KTCHN_MMO_ID': item.kitchenMemoId,
                  'KTCHN_MMO_GRP_ID': item.kitchenMemoGroupId,
                  'KTCHN_MMO_NM': item.kitchenMemoName,
                  'KTCHN_MMO_CD': item.kitchenMemoCode,
                  'KTCHN_MMO_CNTNT': item.kitchenMemoContents,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _kitchenMemoUpdateAdapter = UpdateAdapter(
            database,
            'ST1_KTCHN_MMO',
            ['KTCHN_MMO_ID'],
            (KitchenMemo item) => <String, Object?>{
                  'KTCHN_MMO_ID': item.kitchenMemoId,
                  'KTCHN_MMO_GRP_ID': item.kitchenMemoGroupId,
                  'KTCHN_MMO_NM': item.kitchenMemoName,
                  'KTCHN_MMO_CD': item.kitchenMemoCode,
                  'KTCHN_MMO_CNTNT': item.kitchenMemoContents,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _kitchenMemoDeletionAdapter = DeletionAdapter(
            database,
            'ST1_KTCHN_MMO',
            ['KTCHN_MMO_ID'],
            (KitchenMemo item) => <String, Object?>{
                  'KTCHN_MMO_ID': item.kitchenMemoId,
                  'KTCHN_MMO_GRP_ID': item.kitchenMemoGroupId,
                  'KTCHN_MMO_NM': item.kitchenMemoName,
                  'KTCHN_MMO_CD': item.kitchenMemoCode,
                  'KTCHN_MMO_CNTNT': item.kitchenMemoContents,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<KitchenMemo> _kitchenMemoInsertionAdapter;

  final UpdateAdapter<KitchenMemo> _kitchenMemoUpdateAdapter;

  final DeletionAdapter<KitchenMemo> _kitchenMemoDeletionAdapter;

  @override
  Future<KitchenMemo?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_KTCHN_MMO WHERE KTCHN_MMO_ID = ?1',
        mapper: (Map<String, Object?> row) => KitchenMemo(
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoName: row['KTCHN_MMO_NM'] as String?,
            kitchenMemoCode: row['KTCHN_MMO_CD'] as String?,
            kitchenMemoContents: row['KTCHN_MMO_CNTNT'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<KitchenMemo?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_KTCHN_MMO ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => KitchenMemo(
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoName: row['KTCHN_MMO_NM'] as String?,
            kitchenMemoCode: row['KTCHN_MMO_CD'] as String?,
            kitchenMemoContents: row['KTCHN_MMO_CNTNT'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<KitchenMemo>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_KTCHN_MMO',
        mapper: (Map<String, Object?> row) => KitchenMemo(
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoName: row['KTCHN_MMO_NM'] as String?,
            kitchenMemoCode: row['KTCHN_MMO_CD'] as String?,
            kitchenMemoContents: row['KTCHN_MMO_CNTNT'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<KitchenMemo>> findAllByHideNotAndKitchenMemoGroupId(
      String kitchenMemoGroupId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_KTCHN_MMO WHERE  (HIDE_YN IS NULL OR HIDE_YN = 0) AND KTCHN_MMO_ID = ?1',
        mapper: (Map<String, Object?> row) => KitchenMemo(kitchenMemoId: row['KTCHN_MMO_ID'] as String?, kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?, kitchenMemoName: row['KTCHN_MMO_NM'] as String?, kitchenMemoCode: row['KTCHN_MMO_CD'] as String?, kitchenMemoContents: row['KTCHN_MMO_CNTNT'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [kitchenMemoGroupId]);
  }

  @override
  Stream<List<KitchenMemo>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_KTCHN_MMO',
        mapper: (Map<String, Object?> row) => KitchenMemo(
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoName: row['KTCHN_MMO_NM'] as String?,
            kitchenMemoCode: row['KTCHN_MMO_CD'] as String?,
            kitchenMemoContents: row['KTCHN_MMO_CNTNT'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_KTCHN_MMO',
        isView: false);
  }

  @override
  Future<void> insertOne(KitchenMemo item) async {
    await _kitchenMemoInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<KitchenMemo> items) async {
    await _kitchenMemoInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(KitchenMemo item) async {
    await _kitchenMemoUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<KitchenMemo> items) async {
    await _kitchenMemoUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(KitchenMemo item) async {
    await _kitchenMemoDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<KitchenMemo> items) async {
    await _kitchenMemoDeletionAdapter.deleteList(items);
  }
}

class _$KitchenMemoGroupDao extends KitchenMemoGroupDao {
  _$KitchenMemoGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _kitchenMemoGroupInsertionAdapter = InsertionAdapter(
            database,
            'ST1_KTCHN_MMO_GRP',
            (KitchenMemoGroup item) => <String, Object?>{
                  'KTCHN_MMO_GRP_ID': item.kitchenMemoGroupId,
                  'KTCHN_MMO_GRP_NM': item.kitchenMemoGroupName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _kitchenMemoGroupUpdateAdapter = UpdateAdapter(
            database,
            'ST1_KTCHN_MMO_GRP',
            ['KTCHN_MMO_GRP_ID'],
            (KitchenMemoGroup item) => <String, Object?>{
                  'KTCHN_MMO_GRP_ID': item.kitchenMemoGroupId,
                  'KTCHN_MMO_GRP_NM': item.kitchenMemoGroupName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _kitchenMemoGroupDeletionAdapter = DeletionAdapter(
            database,
            'ST1_KTCHN_MMO_GRP',
            ['KTCHN_MMO_GRP_ID'],
            (KitchenMemoGroup item) => <String, Object?>{
                  'KTCHN_MMO_GRP_ID': item.kitchenMemoGroupId,
                  'KTCHN_MMO_GRP_NM': item.kitchenMemoGroupName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<KitchenMemoGroup> _kitchenMemoGroupInsertionAdapter;

  final UpdateAdapter<KitchenMemoGroup> _kitchenMemoGroupUpdateAdapter;

  final DeletionAdapter<KitchenMemoGroup> _kitchenMemoGroupDeletionAdapter;

  @override
  Future<KitchenMemoGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_KTCHN_MMO_GRP WHERE KTCHN_MMO_GRP_ID = ?1',
        mapper: (Map<String, Object?> row) => KitchenMemoGroup(
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoGroupName: row['KTCHN_MMO_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<KitchenMemoGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_KTCHN_MMO_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => KitchenMemoGroup(
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoGroupName: row['KTCHN_MMO_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<KitchenMemoGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_KTCHN_MMO_GRP',
        mapper: (Map<String, Object?> row) => KitchenMemoGroup(
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoGroupName: row['KTCHN_MMO_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<KitchenMemoGroup>> findAllByHideNot() async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_KTCHN_MMO_GRP WHERE (HIDE_YN IS NULL OR HIDE_YN = 0)',
        mapper: (Map<String, Object?> row) => KitchenMemoGroup(
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoGroupName: row['KTCHN_MMO_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<KitchenMemoGroup>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_KTCHN_MMO_GRP',
        mapper: (Map<String, Object?> row) => KitchenMemoGroup(
            kitchenMemoGroupId: row['KTCHN_MMO_GRP_ID'] as String?,
            kitchenMemoGroupName: row['KTCHN_MMO_GRP_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_KTCHN_MMO_GRP',
        isView: false);
  }

  @override
  Future<void> insertOne(KitchenMemoGroup item) async {
    await _kitchenMemoGroupInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<KitchenMemoGroup> items) async {
    await _kitchenMemoGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(KitchenMemoGroup item) async {
    await _kitchenMemoGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<KitchenMemoGroup> items) async {
    await _kitchenMemoGroupUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(KitchenMemoGroup item) async {
    await _kitchenMemoGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<KitchenMemoGroup> items) async {
    await _kitchenMemoGroupDeletionAdapter.deleteList(items);
  }
}

class _$MenuGroupDao extends MenuGroupDao {
  _$MenuGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _menuGroupInsertionAdapter = InsertionAdapter(
            database,
            'ST1_MNU_GRP',
            (MenuGroup item) => <String, Object?>{
                  'MNU_GRP_ID': item.menuGroupId,
                  'MNU_GRP_NM': item.menuGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'BG_COLR': item.backgroundColor,
                  'FNT_NM': item.fontName,
                  'FNT_SZ': item.fontSize,
                  'FNT_STYL': item.fontStyle,
                  'FNT_COLR': item.fontColor,
                  'DEF_YN':
                      item.defaultYn == null ? null : (item.defaultYn! ? 1 : 0),
                  'ONLINE_SLS_YN': item.onlineSaleYn == null
                      ? null
                      : (item.onlineSaleYn! ? 1 : 0),
                  'LNK_INFO': item.linkInformation,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _menuGroupUpdateAdapter = UpdateAdapter(
            database,
            'ST1_MNU_GRP',
            ['MNU_GRP_ID'],
            (MenuGroup item) => <String, Object?>{
                  'MNU_GRP_ID': item.menuGroupId,
                  'MNU_GRP_NM': item.menuGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'BG_COLR': item.backgroundColor,
                  'FNT_NM': item.fontName,
                  'FNT_SZ': item.fontSize,
                  'FNT_STYL': item.fontStyle,
                  'FNT_COLR': item.fontColor,
                  'DEF_YN':
                      item.defaultYn == null ? null : (item.defaultYn! ? 1 : 0),
                  'ONLINE_SLS_YN': item.onlineSaleYn == null
                      ? null
                      : (item.onlineSaleYn! ? 1 : 0),
                  'LNK_INFO': item.linkInformation,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _menuGroupDeletionAdapter = DeletionAdapter(
            database,
            'ST1_MNU_GRP',
            ['MNU_GRP_ID'],
            (MenuGroup item) => <String, Object?>{
                  'MNU_GRP_ID': item.menuGroupId,
                  'MNU_GRP_NM': item.menuGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'BG_COLR': item.backgroundColor,
                  'FNT_NM': item.fontName,
                  'FNT_SZ': item.fontSize,
                  'FNT_STYL': item.fontStyle,
                  'FNT_COLR': item.fontColor,
                  'DEF_YN':
                      item.defaultYn == null ? null : (item.defaultYn! ? 1 : 0),
                  'ONLINE_SLS_YN': item.onlineSaleYn == null
                      ? null
                      : (item.onlineSaleYn! ? 1 : 0),
                  'LNK_INFO': item.linkInformation,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MenuGroup> _menuGroupInsertionAdapter;

  final UpdateAdapter<MenuGroup> _menuGroupUpdateAdapter;

  final DeletionAdapter<MenuGroup> _menuGroupDeletionAdapter;

  @override
  Future<MenuGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_MNU_GRP WHERE MNU_GRP_ID = ?1',
        mapper: (Map<String, Object?> row) => MenuGroup(
            menuGroupId: row['MNU_GRP_ID'] as String?,
            menuGroupName: row['MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            linkInformation: row['LNK_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<MenuGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_MNU_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => MenuGroup(
            menuGroupId: row['MNU_GRP_ID'] as String?,
            menuGroupName: row['MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            linkInformation: row['LNK_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<MenuGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_MNU_GRP',
        mapper: (Map<String, Object?> row) => MenuGroup(
            menuGroupId: row['MNU_GRP_ID'] as String?,
            menuGroupName: row['MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            linkInformation: row['LNK_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<MenuGroup>> findAllByMenuGroupIdInAndStateCode(
      List<String> menuGroups, String stateCode) async {
    const offset = 2;
    final _sqliteVariablesForMenuGroups =
        Iterable<String>.generate(menuGroups.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_MNU_GRP WHERE MNU_GRP_ID IN (' +
            _sqliteVariablesForMenuGroups +
            ') AND MNU_GRP_NM NOT LIKE \"%BARSCAN\" AND STAT_CD != ?1 ORDER BY LOC_Z,LOC_Y,LOC_X',
        mapper: (Map<String, Object?> row) => MenuGroup(menuGroupId: row['MNU_GRP_ID'] as String?, menuGroupName: row['MNU_GRP_NM'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, locationZ: row['LOC_Z'] as int?, backgroundImageName: row['BG_IMG_NM'] as String?, backgroundColor: row['BG_COLR'] as String?, fontName: row['FNT_NM'] as String?, fontSize: row['FNT_SZ'] as double?, fontStyle: row['FNT_STYL'] as String?, fontColor: row['FNT_COLR'] as String?, defaultYn: row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0, onlineSaleYn: row['ONLINE_SLS_YN'] == null ? null : (row['ONLINE_SLS_YN'] as int) != 0, linkInformation: row['LNK_INFO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode, ...menuGroups]);
  }

  @override
  Future<List<MenuGroup>> findAllByMenuGroupIdInAndStateCodeAndLocationZ(
      List<String> menuGroups, String stateCode, int locationZ) async {
    const offset = 3;
    final _sqliteVariablesForMenuGroups =
        Iterable<String>.generate(menuGroups.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_MNU_GRP WHERE MNU_GRP_ID IN (' +
            _sqliteVariablesForMenuGroups +
            ') AND MNU_GRP_NM NOT LIKE \"%BARSCAN\" AND STAT_CD != ?1 AND LOC_Z = ?2  ORDER BY LOC_Z,LOC_Y,LOC_X',
        mapper: (Map<String, Object?> row) => MenuGroup(menuGroupId: row['MNU_GRP_ID'] as String?, menuGroupName: row['MNU_GRP_NM'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, locationZ: row['LOC_Z'] as int?, backgroundImageName: row['BG_IMG_NM'] as String?, backgroundColor: row['BG_COLR'] as String?, fontName: row['FNT_NM'] as String?, fontSize: row['FNT_SZ'] as double?, fontStyle: row['FNT_STYL'] as String?, fontColor: row['FNT_COLR'] as String?, defaultYn: row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0, onlineSaleYn: row['ONLINE_SLS_YN'] == null ? null : (row['ONLINE_SLS_YN'] as int) != 0, linkInformation: row['LNK_INFO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode, locationZ, ...menuGroups]);
  }

  @override
  Stream<List<MenuGroup>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_MNU_GRP',
        mapper: (Map<String, Object?> row) => MenuGroup(
            menuGroupId: row['MNU_GRP_ID'] as String?,
            menuGroupName: row['MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            onlineSaleYn: row['ONLINE_SLS_YN'] == null
                ? null
                : (row['ONLINE_SLS_YN'] as int) != 0,
            linkInformation: row['LNK_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_MNU_GRP',
        isView: false);
  }

  @override
  Future<void> insertOne(MenuGroup item) async {
    await _menuGroupInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<MenuGroup> items) async {
    await _menuGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(MenuGroup item) async {
    await _menuGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<MenuGroup> items) async {
    await _menuGroupUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(MenuGroup item) async {
    await _menuGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<MenuGroup> items) async {
    await _menuGroupDeletionAdapter.deleteList(items);
  }
}

class _$MenuGroupUseDao extends MenuGroupUseDao {
  _$MenuGroupUseDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _menuGroupUseInsertionAdapter = InsertionAdapter(
            database,
            'ST1_MNU_GRP_USE',
            (MenuGroupUse item) => <String, Object?>{
                  'ID': item.id,
                  'MNU_GRP_ID': item.menuGroupId,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'USE_YN': item.useYn == null ? null : (item.useYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _menuGroupUseUpdateAdapter = UpdateAdapter(
            database,
            'ST1_MNU_GRP_USE',
            ['ID'],
            (MenuGroupUse item) => <String, Object?>{
                  'ID': item.id,
                  'MNU_GRP_ID': item.menuGroupId,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'USE_YN': item.useYn == null ? null : (item.useYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _menuGroupUseDeletionAdapter = DeletionAdapter(
            database,
            'ST1_MNU_GRP_USE',
            ['ID'],
            (MenuGroupUse item) => <String, Object?>{
                  'ID': item.id,
                  'MNU_GRP_ID': item.menuGroupId,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'USE_YN': item.useYn == null ? null : (item.useYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MenuGroupUse> _menuGroupUseInsertionAdapter;

  final UpdateAdapter<MenuGroupUse> _menuGroupUseUpdateAdapter;

  final DeletionAdapter<MenuGroupUse> _menuGroupUseDeletionAdapter;

  @override
  Future<MenuGroupUse?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_MNU_GRP_USE WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => MenuGroupUse(
            id: row['ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            useYn: row['USE_YN'] == null ? null : (row['USE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<MenuGroupUse?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_MNU_GRP_USE ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => MenuGroupUse(
            id: row['ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            useYn: row['USE_YN'] == null ? null : (row['USE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<MenuGroupUse>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_MNU_GRP_USE',
        mapper: (Map<String, Object?> row) => MenuGroupUse(
            id: row['ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            useYn: row['USE_YN'] == null ? null : (row['USE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<MenuGroupUse>> findAllByBusinessSectionCodeAndUseYnAndStateCode(
      String businessSectionCode, bool useYn, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_MNU_GRP_USE WHERE BIZ_SEC_CD = ?1 AND USE_YN = ?2 AND STAT_CD != ?3',
        mapper: (Map<String, Object?> row) => MenuGroupUse(id: row['ID'] as String?, menuGroupId: row['MNU_GRP_ID'] as String?, businessSectionCode: row['BIZ_SEC_CD'] as String?, useYn: row['USE_YN'] == null ? null : (row['USE_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [businessSectionCode, useYn ? 1 : 0, stateCode]);
  }

  @override
  Stream<List<MenuGroupUse>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_MNU_GRP_USE',
        mapper: (Map<String, Object?> row) => MenuGroupUse(
            id: row['ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            useYn: row['USE_YN'] == null ? null : (row['USE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_MNU_GRP_USE',
        isView: false);
  }

  @override
  Future<void> insertOne(MenuGroupUse item) async {
    await _menuGroupUseInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<MenuGroupUse> items) async {
    await _menuGroupUseInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(MenuGroupUse item) async {
    await _menuGroupUseUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<MenuGroupUse> items) async {
    await _menuGroupUseUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(MenuGroupUse item) async {
    await _menuGroupUseDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<MenuGroupUse> items) async {
    await _menuGroupUseDeletionAdapter.deleteList(items);
  }
}

class _$MenuItemDao extends MenuItemDao {
  _$MenuItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _menuItemInsertionAdapter = InsertionAdapter(
            database,
            'ST1_MNU_ITM',
            (MenuItem item) => <String, Object?>{
                  'MNU_ITM_ID': item.menuItemId,
                  'MNU_GRP_ID': item.menuGroupId,
                  'ITM_ID': item.itemId,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_COLR': item.backgroundColor,
                  'FNT_COLR': item.fontColor,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'LNK_INFO': item.linkInformation,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _menuItemUpdateAdapter = UpdateAdapter(
            database,
            'ST1_MNU_ITM',
            ['MNU_ITM_ID'],
            (MenuItem item) => <String, Object?>{
                  'MNU_ITM_ID': item.menuItemId,
                  'MNU_GRP_ID': item.menuGroupId,
                  'ITM_ID': item.itemId,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_COLR': item.backgroundColor,
                  'FNT_COLR': item.fontColor,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'LNK_INFO': item.linkInformation,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _menuItemDeletionAdapter = DeletionAdapter(
            database,
            'ST1_MNU_ITM',
            ['MNU_ITM_ID'],
            (MenuItem item) => <String, Object?>{
                  'MNU_ITM_ID': item.menuItemId,
                  'MNU_GRP_ID': item.menuGroupId,
                  'ITM_ID': item.itemId,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_COLR': item.backgroundColor,
                  'FNT_COLR': item.fontColor,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'LNK_INFO': item.linkInformation,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MenuItem> _menuItemInsertionAdapter;

  final UpdateAdapter<MenuItem> _menuItemUpdateAdapter;

  final DeletionAdapter<MenuItem> _menuItemDeletionAdapter;

  @override
  Future<MenuItem?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_MNU_ITM WHERE MNU_ITM_ID = ?1',
        mapper: (Map<String, Object?> row) => MenuItem(
            menuItemId: row['MNU_ITM_ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            linkInformation: row['LNK_INFO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<MenuItem?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_MNU_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => MenuItem(
            menuItemId: row['MNU_ITM_ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            linkInformation: row['LNK_INFO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<MenuItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_MNU_ITM',
        mapper: (Map<String, Object?> row) => MenuItem(
            menuItemId: row['MNU_ITM_ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            linkInformation: row['LNK_INFO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<MenuItem>> findAllByMenuGroupIdAndStateCode(
      String menuGroupId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_MNU_ITM WHERE MNU_GRP_ID = ?1 AND STAT_CD != ?2',
        mapper: (Map<String, Object?> row) => MenuItem(
            menuItemId: row['MNU_ITM_ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            linkInformation: row['LNK_INFO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [menuGroupId, stateCode]);
  }

  @override
  Future<List<MenuItem>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_MNU_ITM WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => MenuItem(
            menuItemId: row['MNU_ITM_ID'] as String?,
            menuGroupId: row['MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            linkInformation: row['LNK_INFO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(MenuItem item) async {
    await _menuItemInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<MenuItem> items) async {
    await _menuItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(MenuItem item) async {
    await _menuItemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<MenuItem> items) async {
    await _menuItemUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(MenuItem item) async {
    await _menuItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<MenuItem> items) async {
    await _menuItemDeletionAdapter.deleteList(items);
  }
}

class _$NoticeDao extends NoticeDao {
  _$NoticeDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _noticeInsertionAdapter = InsertionAdapter(
            database,
            'BA1_NOTI',
            (Notice item) => <String, Object?>{
                  'NOTI_ID': item.noticeId,
                  'NOTI_SEC_CD': item.noticeSectionCode,
                  'UGNT_YN':
                      item.urgentYn == null ? null : (item.urgentYn! ? 1 : 0),
                  'NOTI_TIT': item.noticeTitle,
                  'NOTI_CNTNT': item.noticeContents,
                  'START_DT': _dateTimeConverter.encode(item.startDate),
                  'END_DT': _dateTimeConverter.encode(item.endDate),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _noticeUpdateAdapter = UpdateAdapter(
            database,
            'BA1_NOTI',
            ['NOTI_ID'],
            (Notice item) => <String, Object?>{
                  'NOTI_ID': item.noticeId,
                  'NOTI_SEC_CD': item.noticeSectionCode,
                  'UGNT_YN':
                      item.urgentYn == null ? null : (item.urgentYn! ? 1 : 0),
                  'NOTI_TIT': item.noticeTitle,
                  'NOTI_CNTNT': item.noticeContents,
                  'START_DT': _dateTimeConverter.encode(item.startDate),
                  'END_DT': _dateTimeConverter.encode(item.endDate),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _noticeDeletionAdapter = DeletionAdapter(
            database,
            'BA1_NOTI',
            ['NOTI_ID'],
            (Notice item) => <String, Object?>{
                  'NOTI_ID': item.noticeId,
                  'NOTI_SEC_CD': item.noticeSectionCode,
                  'UGNT_YN':
                      item.urgentYn == null ? null : (item.urgentYn! ? 1 : 0),
                  'NOTI_TIT': item.noticeTitle,
                  'NOTI_CNTNT': item.noticeContents,
                  'START_DT': _dateTimeConverter.encode(item.startDate),
                  'END_DT': _dateTimeConverter.encode(item.endDate),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Notice> _noticeInsertionAdapter;

  final UpdateAdapter<Notice> _noticeUpdateAdapter;

  final DeletionAdapter<Notice> _noticeDeletionAdapter;

  @override
  Future<Notice?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM BA1_NOTI WHERE NOTI_ID = ?1',
        mapper: (Map<String, Object?> row) => Notice(
            noticeId: row['NOTI_ID'] as String?,
            noticeSectionCode: row['NOTI_SEC_CD'] as String?,
            urgentYn:
                row['UGNT_YN'] == null ? null : (row['UGNT_YN'] as int) != 0,
            noticeTitle: row['NOTI_TIT'] as String?,
            noticeContents: row['NOTI_CNTNT'] as String?,
            startDate: _dateTimeConverter.decode(row['START_DT'] as int?),
            endDate: _dateTimeConverter.decode(row['END_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<Notice?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_NOTI ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => Notice(
            noticeId: row['NOTI_ID'] as String?,
            noticeSectionCode: row['NOTI_SEC_CD'] as String?,
            urgentYn:
                row['UGNT_YN'] == null ? null : (row['UGNT_YN'] as int) != 0,
            noticeTitle: row['NOTI_TIT'] as String?,
            noticeContents: row['NOTI_CNTNT'] as String?,
            startDate: _dateTimeConverter.decode(row['START_DT'] as int?),
            endDate: _dateTimeConverter.decode(row['END_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Notice>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_NOTI',
        mapper: (Map<String, Object?> row) => Notice(
            noticeId: row['NOTI_ID'] as String?,
            noticeSectionCode: row['NOTI_SEC_CD'] as String?,
            urgentYn:
                row['UGNT_YN'] == null ? null : (row['UGNT_YN'] as int) != 0,
            noticeTitle: row['NOTI_TIT'] as String?,
            noticeContents: row['NOTI_CNTNT'] as String?,
            startDate: _dateTimeConverter.decode(row['START_DT'] as int?),
            endDate: _dateTimeConverter.decode(row['END_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM BA1_NOTI');
  }

  @override
  Future<void> insertOne(Notice item) async {
    await _noticeInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<Notice> items) async {
    await _noticeInsertionAdapter.insertList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(Notice item) async {
    await _noticeUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<Notice> items) async {
    await _noticeUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(Notice item) async {
    await _noticeDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<Notice> items) async {
    await _noticeDeletionAdapter.deleteList(items);
  }
}

class _$OptionEntityDao extends OptionEntityDao {
  _$OptionEntityDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _optionEntityInsertionAdapter = InsertionAdapter(
            database,
            'IT1_OPT_ENTY',
            (OptionEntity item) => <String, Object?>{
                  'OPT_ENTY_ID': item.optionEntityId,
                  'OPT_GRP_ID': item.optionGroupId,
                  'ITM_ID': item.itemId,
                  'OPT_ENTY_SNO': item.optionEntitySerialNumber,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _optionEntityUpdateAdapter = UpdateAdapter(
            database,
            'IT1_OPT_ENTY',
            ['OPT_ENTY_ID'],
            (OptionEntity item) => <String, Object?>{
                  'OPT_ENTY_ID': item.optionEntityId,
                  'OPT_GRP_ID': item.optionGroupId,
                  'ITM_ID': item.itemId,
                  'OPT_ENTY_SNO': item.optionEntitySerialNumber,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _optionEntityDeletionAdapter = DeletionAdapter(
            database,
            'IT1_OPT_ENTY',
            ['OPT_ENTY_ID'],
            (OptionEntity item) => <String, Object?>{
                  'OPT_ENTY_ID': item.optionEntityId,
                  'OPT_GRP_ID': item.optionGroupId,
                  'ITM_ID': item.itemId,
                  'OPT_ENTY_SNO': item.optionEntitySerialNumber,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OptionEntity> _optionEntityInsertionAdapter;

  final UpdateAdapter<OptionEntity> _optionEntityUpdateAdapter;

  final DeletionAdapter<OptionEntity> _optionEntityDeletionAdapter;

  @override
  Future<OptionEntity?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_OPT_ENTY WHERE OPT_ENTY_ID = ?1',
        mapper: (Map<String, Object?> row) => OptionEntity(
            optionEntityId: row['OPT_ENTY_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionEntitySerialNumber: row['OPT_ENTY_SNO'] as int?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<OptionEntity?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_OPT_ENTY ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => OptionEntity(
            optionEntityId: row['OPT_ENTY_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionEntitySerialNumber: row['OPT_ENTY_SNO'] as int?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OptionEntity>> findByItemIdAndStateCode(
      String groupId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_OPT_ENTY WHERE OPT_GRP_ID= ?1 AND STAT_CD != ?2',
        mapper: (Map<String, Object?> row) => OptionEntity(
            optionEntityId: row['OPT_ENTY_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionEntitySerialNumber: row['OPT_ENTY_SNO'] as int?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [groupId, stateCode]);
  }

  @override
  Future<List<OptionEntity>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM IT1_OPT_ENTY',
        mapper: (Map<String, Object?> row) => OptionEntity(
            optionEntityId: row['OPT_ENTY_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionEntitySerialNumber: row['OPT_ENTY_SNO'] as int?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<OptionEntity>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM IT1_OPT_ENTY',
        mapper: (Map<String, Object?> row) => OptionEntity(
            optionEntityId: row['OPT_ENTY_ID'] as String?,
            optionGroupId: row['OPT_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            optionEntitySerialNumber: row['OPT_ENTY_SNO'] as int?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'IT1_OPT_ENTY',
        isView: false);
  }

  @override
  Future<void> insertOne(OptionEntity item) async {
    await _optionEntityInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OptionEntity> items) async {
    await _optionEntityInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OptionEntity item) async {
    await _optionEntityUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OptionEntity> items) async {
    await _optionEntityUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OptionEntity item) async {
    await _optionEntityDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OptionEntity> items) async {
    await _optionEntityDeletionAdapter.deleteList(items);
  }
}

class _$OptionGroupDao extends OptionGroupDao {
  _$OptionGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _optionGroupInsertionAdapter = InsertionAdapter(
            database,
            'IT1_OPT_GRP',
            (OptionGroup item) => <String, Object?>{
                  'OPT_GRP_ID': item.optionGroupId,
                  'OPT_GRP_NM': item.optionGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'REQUIRED_YN': item.requiredYn == null
                      ? null
                      : (item.requiredYn! ? 1 : 0),
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _optionGroupUpdateAdapter = UpdateAdapter(
            database,
            'IT1_OPT_GRP',
            ['OPT_GRP_ID'],
            (OptionGroup item) => <String, Object?>{
                  'OPT_GRP_ID': item.optionGroupId,
                  'OPT_GRP_NM': item.optionGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'REQUIRED_YN': item.requiredYn == null
                      ? null
                      : (item.requiredYn! ? 1 : 0),
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _optionGroupDeletionAdapter = DeletionAdapter(
            database,
            'IT1_OPT_GRP',
            ['OPT_GRP_ID'],
            (OptionGroup item) => <String, Object?>{
                  'OPT_GRP_ID': item.optionGroupId,
                  'OPT_GRP_NM': item.optionGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'REQUIRED_YN': item.requiredYn == null
                      ? null
                      : (item.requiredYn! ? 1 : 0),
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OptionGroup> _optionGroupInsertionAdapter;

  final UpdateAdapter<OptionGroup> _optionGroupUpdateAdapter;

  final DeletionAdapter<OptionGroup> _optionGroupDeletionAdapter;

  @override
  Future<OptionGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_OPT_GRP WHERE OPT_GRP_ID = ?1 AND STAT_CD <>\"99\"',
        mapper: (Map<String, Object?> row) => OptionGroup(
            optionGroupId: row['OPT_GRP_ID'] as String?,
            optionGroupName: row['OPT_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            requiredYn: row['REQUIRED_YN'] == null
                ? null
                : (row['REQUIRED_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<OptionGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_OPT_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => OptionGroup(
            optionGroupId: row['OPT_GRP_ID'] as String?,
            optionGroupName: row['OPT_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            requiredYn: row['REQUIRED_YN'] == null
                ? null
                : (row['REQUIRED_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OptionGroup>> findAllItemOption() async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_OPT_GRP WHERE OPT_GRP_ID in (SELECT OPT_GRP_ID FROM IT1_ITM_OPT WHERE STAT_CD <>\"99\" )',
        mapper: (Map<String, Object?> row) => OptionGroup(
            optionGroupId: row['OPT_GRP_ID'] as String?,
            optionGroupName: row['OPT_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            requiredYn: row['REQUIRED_YN'] == null
                ? null
                : (row['REQUIRED_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OptionGroup>> findAllItemOptionByItemId(
      String itemId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_OPT_GRP WHERE OPT_GRP_ID in (SELECT OPT_GRP_ID FROM IT1_ITM_OPT WHERE ITM_ID = ?1 AND STAT_CD != ?2 ORDER BY ITM_OPT_SNO ASC) AND STAT_CD <>\"99\"',
        mapper: (Map<String, Object?> row) => OptionGroup(optionGroupId: row['OPT_GRP_ID'] as String?, optionGroupName: row['OPT_GRP_NM'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, locationZ: row['LOC_Z'] as int?, requiredYn: row['REQUIRED_YN'] == null ? null : (row['REQUIRED_YN'] as int) != 0, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [itemId, stateCode]);
  }

  @override
  Future<List<OptionGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM IT1_OPT_GRP',
        mapper: (Map<String, Object?> row) => OptionGroup(
            optionGroupId: row['OPT_GRP_ID'] as String?,
            optionGroupName: row['OPT_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            requiredYn: row['REQUIRED_YN'] == null
                ? null
                : (row['REQUIRED_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<OptionGroup>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM IT1_OPT_GRP',
        mapper: (Map<String, Object?> row) => OptionGroup(
            optionGroupId: row['OPT_GRP_ID'] as String?,
            optionGroupName: row['OPT_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            requiredYn: row['REQUIRED_YN'] == null
                ? null
                : (row['REQUIRED_YN'] as int) != 0,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'IT1_OPT_GRP',
        isView: false);
  }

  @override
  Future<void> insertOne(OptionGroup item) async {
    await _optionGroupInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OptionGroup> items) async {
    await _optionGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OptionGroup item) async {
    await _optionGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OptionGroup> items) async {
    await _optionGroupUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OptionGroup item) async {
    await _optionGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OptionGroup> items) async {
    await _optionGroupDeletionAdapter.deleteList(items);
  }
}

class _$OrderHistoryDao extends OrderHistoryDao {
  _$OrderHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _orderHistoryInsertionAdapter = InsertionAdapter(
            database,
            'OD1_ODR_HIS',
            (OrderHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'TAB_ID': item.tableId,
                  'OPR_TP_CD': item.operationTypeCode,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'SPLY_VAL': item.supplyValue,
                  'SPLY_AMT': item.supplyAmount,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'ODR_DC_TOT_AMT': item.orderDiscountTotalAmount,
                  'ODR_TOT_AMT': item.orderTotalAmount,
                  'TAX_FREE_YN':
                      item.taxFreeYn == null ? null : (item.taxFreeYn! ? 1 : 0),
                  'TAX_FREE_RESN': item.taxFreeReason,
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'SRV_EMP_ID': item.servingEmployeeId,
                  'ODR_EMP_ID': item.orderEmployeeId,
                  'CNF_YN': item.conflictYn == null
                      ? null
                      : (item.conflictYn! ? 1 : 0),
                  'PAY_INI_ID': item.paymentInitiatorId,
                  'SYNCD_YN': item.synchronizedYn ? 1 : 0,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode,
                  'PGR_NO': item.pagerNumber,
                  'MEMO': item.memo
                }),
        _orderHistoryUpdateAdapter = UpdateAdapter(
            database,
            'OD1_ODR_HIS',
            ['ID'],
            (OrderHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'TAB_ID': item.tableId,
                  'OPR_TP_CD': item.operationTypeCode,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'SPLY_VAL': item.supplyValue,
                  'SPLY_AMT': item.supplyAmount,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'ODR_DC_TOT_AMT': item.orderDiscountTotalAmount,
                  'ODR_TOT_AMT': item.orderTotalAmount,
                  'TAX_FREE_YN':
                      item.taxFreeYn == null ? null : (item.taxFreeYn! ? 1 : 0),
                  'TAX_FREE_RESN': item.taxFreeReason,
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'SRV_EMP_ID': item.servingEmployeeId,
                  'ODR_EMP_ID': item.orderEmployeeId,
                  'CNF_YN': item.conflictYn == null
                      ? null
                      : (item.conflictYn! ? 1 : 0),
                  'PAY_INI_ID': item.paymentInitiatorId,
                  'SYNCD_YN': item.synchronizedYn ? 1 : 0,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode,
                  'PGR_NO': item.pagerNumber,
                  'MEMO': item.memo
                }),
        _orderHistoryDeletionAdapter = DeletionAdapter(
            database,
            'OD1_ODR_HIS',
            ['ID'],
            (OrderHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'TAB_ID': item.tableId,
                  'OPR_TP_CD': item.operationTypeCode,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'SPLY_VAL': item.supplyValue,
                  'SPLY_AMT': item.supplyAmount,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'ODR_DC_TOT_AMT': item.orderDiscountTotalAmount,
                  'ODR_TOT_AMT': item.orderTotalAmount,
                  'TAX_FREE_YN':
                      item.taxFreeYn == null ? null : (item.taxFreeYn! ? 1 : 0),
                  'TAX_FREE_RESN': item.taxFreeReason,
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'SRV_EMP_ID': item.servingEmployeeId,
                  'ODR_EMP_ID': item.orderEmployeeId,
                  'CNF_YN': item.conflictYn == null
                      ? null
                      : (item.conflictYn! ? 1 : 0),
                  'PAY_INI_ID': item.paymentInitiatorId,
                  'SYNCD_YN': item.synchronizedYn ? 1 : 0,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode,
                  'PGR_NO': item.pagerNumber,
                  'MEMO': item.memo
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OrderHistory> _orderHistoryInsertionAdapter;

  final UpdateAdapter<OrderHistory> _orderHistoryUpdateAdapter;

  final DeletionAdapter<OrderHistory> _orderHistoryDeletionAdapter;

  @override
  Future<OrderHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM OD1_ODR_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?),
        arguments: [id]);
  }

  @override
  Future<OrderHistory?> findByKey(String date, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM OD1_ODR_HIS WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?),
        arguments: [date, sno]);
  }

  @override
  Future<List<OrderHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM OD1_ODR_HIS',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?));
  }

  @override
  Future<List<OrderHistory>> findAllByReceiptNo(
      String receiptNo, String tableId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS WHERE COM_DT||COM_SNO LIKE = ?1 AND TAB_ID <> = ?2',
        mapper: (Map<String, Object?> row) => OrderHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, tableId: row['TAB_ID'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, businessSectionCode: row['BIZ_SEC_CD'] as String?, supplyValue: row['SPLY_VAL'] as double?, supplyAmount: row['SPLY_AMT'] as double?, taxAmount0: row['TAX_AMT_0'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?, orderTotalAmount: row['ODR_TOT_AMT'] as double?, taxFreeYn: row['TAX_FREE_YN'] == null ? null : (row['TAX_FREE_YN'] as int) != 0, taxFreeReason: row['TAX_FREE_RESN'] as String?, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, servingEmployeeId: row['SRV_EMP_ID'] as String?, orderEmployeeId: row['ODR_EMP_ID'] as String?, conflictYn: row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0, paymentInitiatorId: row['PAY_INI_ID'] as String?, synchronizedYn: (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?, pagerNumber: row['PGR_NO'] as int?, memo: row['MEMO'] as String?),
        arguments: [receiptNo, tableId]);
  }

  @override
  Future<List<OrderHistory>> findAllByTableId(String tableId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS WHERE TAB_ID = ?1 ORDER BY ID ASC',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?),
        arguments: [tableId]);
  }

  @override
  Future<List<OrderHistory>> findAllByDateTableId(
      String date, String tableId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS WHERE COM_DT = ?1 AND TAB_ID = ?2',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?),
        arguments: [date, tableId]);
  }

  @override
  Future<List<OrderHistory>> findAllOrderByDate() async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS WHERE STAT_CD <>\"99\" ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM OD1_ODR_HIS');
  }

  @override
  Future<List<OrderHistory>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS WHERE TAB_ID <> \"9999\" AND (SYNCD_YN IS NULL OR SYNCD_YN = 0)',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?));
  }

  @override
  Future<List<OrderHistory>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS WHERE TAB_ID <> \"9999\" AND SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => OrderHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            orderDiscountTotalAmount: row['ODR_DC_TOT_AMT'] as double?,
            orderTotalAmount: row['ODR_TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            conflictYn:
                row['CNF_YN'] == null ? null : (row['CNF_YN'] as int) != 0,
            paymentInitiatorId: row['PAY_INI_ID'] as String?,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            pagerNumber: row['PGR_NO'] as int?,
            memo: row['MEMO'] as String?));
  }

  @override
  Future<void> insertOne(OrderHistory item) async {
    await _orderHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OrderHistory> items) async {
    await _orderHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OrderHistory item) async {
    await _orderHistoryUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OrderHistory> items) async {
    await _orderHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OrderHistory item) async {
    await _orderHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OrderHistory> items) async {
    await _orderHistoryDeletionAdapter.deleteList(items);
  }
}

class _$OrderHistoryDeletionDao extends OrderHistoryDeletionDao {
  _$OrderHistoryDeletionDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _orderHistoryDeletionInsertionAdapter = InsertionAdapter(
            database,
            'OD1_ODR_HIS_DEL',
            (OrderHistoryDeletion item) => <String, Object?>{
                  'ID': item.id,
                  'FINALIZED_YN': item.finalizedYn ? 1 : 0,
                  'SYNCD_YN': item.synchronizedYn ? 1 : 0,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryDeletionUpdateAdapter = UpdateAdapter(
            database,
            'OD1_ODR_HIS_DEL',
            ['ID'],
            (OrderHistoryDeletion item) => <String, Object?>{
                  'ID': item.id,
                  'FINALIZED_YN': item.finalizedYn ? 1 : 0,
                  'SYNCD_YN': item.synchronizedYn ? 1 : 0,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryDeletionDeletionAdapter = DeletionAdapter(
            database,
            'OD1_ODR_HIS_DEL',
            ['ID'],
            (OrderHistoryDeletion item) => <String, Object?>{
                  'ID': item.id,
                  'FINALIZED_YN': item.finalizedYn ? 1 : 0,
                  'SYNCD_YN': item.synchronizedYn ? 1 : 0,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OrderHistoryDeletion>
      _orderHistoryDeletionInsertionAdapter;

  final UpdateAdapter<OrderHistoryDeletion> _orderHistoryDeletionUpdateAdapter;

  final DeletionAdapter<OrderHistoryDeletion>
      _orderHistoryDeletionDeletionAdapter;

  @override
  Future<OrderHistoryDeletion?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM OD1_ODR_HIS_DEL WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistoryDeletion(
            id: row['ID'] as String,
            finalizedYn: (row['FINALIZED_YN'] as int) != 0,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String),
        arguments: [id]);
  }

  @override
  Future<List<OrderHistoryDeletion>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_DEL WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => OrderHistoryDeletion(
            id: row['ID'] as String,
            finalizedYn: (row['FINALIZED_YN'] as int) != 0,
            synchronizedYn: (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String));
  }

  @override
  Future<void> insertOne(OrderHistoryDeletion item) async {
    await _orderHistoryDeletionInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OrderHistoryDeletion> items) async {
    await _orderHistoryDeletionInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OrderHistoryDeletion item) async {
    await _orderHistoryDeletionUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OrderHistoryDeletion> items) async {
    await _orderHistoryDeletionUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OrderHistoryDeletion item) async {
    await _orderHistoryDeletionDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OrderHistoryDeletion> items) async {
    await _orderHistoryDeletionDeletionAdapter.deleteList(items);
  }
}

class _$OrderHistoryCancelItemDao extends OrderHistoryCancelItemDao {
  _$OrderHistoryCancelItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _orderHistoryCancelItemInsertionAdapter = InsertionAdapter(
            database,
            'OD1_ODR_HIS_CNCL_ITM',
            (OrderHistoryCancelItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'DC_SEC_CD': item.discountSectionCode,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'SPLY_AMT': item.supplyAmount,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_DT': _dateTimeConverter.encode(item.cancelDate),
                  'ODR_DT': _dateTimeConverter.encode(item.orderDate),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryCancelItemUpdateAdapter = UpdateAdapter(
            database,
            'OD1_ODR_HIS_CNCL_ITM',
            ['ID'],
            (OrderHistoryCancelItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'DC_SEC_CD': item.discountSectionCode,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'SPLY_AMT': item.supplyAmount,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_DT': _dateTimeConverter.encode(item.cancelDate),
                  'ODR_DT': _dateTimeConverter.encode(item.orderDate),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryCancelItemDeletionAdapter = DeletionAdapter(
            database,
            'OD1_ODR_HIS_CNCL_ITM',
            ['ID'],
            (OrderHistoryCancelItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'DC_SEC_CD': item.discountSectionCode,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'SPLY_AMT': item.supplyAmount,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_DT': _dateTimeConverter.encode(item.cancelDate),
                  'ODR_DT': _dateTimeConverter.encode(item.orderDate),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OrderHistoryCancelItem>
      _orderHistoryCancelItemInsertionAdapter;

  final UpdateAdapter<OrderHistoryCancelItem>
      _orderHistoryCancelItemUpdateAdapter;

  final DeletionAdapter<OrderHistoryCancelItem>
      _orderHistoryCancelItemDeletionAdapter;

  @override
  Future<OrderHistoryCancelItem?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM OD1_ODR_HIS_CNCL_ITM WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistoryCancelItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelDate: _dateTimeConverter.decode(row['CNCL_DT'] as int?),
            orderDate: _dateTimeConverter.decode(row['ODR_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<OrderHistoryCancelItem?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM OD1_ODR_HIS_CNCL_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => OrderHistoryCancelItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelDate: _dateTimeConverter.decode(row['CNCL_DT'] as int?),
            orderDate: _dateTimeConverter.decode(row['ODR_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OrderHistoryCancelItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM OD1_ODR_HIS_CNCL_ITM',
        mapper: (Map<String, Object?> row) => OrderHistoryCancelItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelDate: _dateTimeConverter.decode(row['CNCL_DT'] as int?),
            orderDate: _dateTimeConverter.decode(row['ODR_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OrderHistoryCancelItem>> findAllByOrder(
      String date, int orderNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_CNCL_ITM WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => OrderHistoryCancelItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelDate: _dateTimeConverter.decode(row['CNCL_DT'] as int?),
            orderDate: _dateTimeConverter.decode(row['ODR_DT'] as int?),
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum]);
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM OD1_ODR_HIS_CNCL_ITM');
  }

  @override
  Future<void> insertOne(OrderHistoryCancelItem item) async {
    await _orderHistoryCancelItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OrderHistoryCancelItem> items) async {
    await _orderHistoryCancelItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OrderHistoryCancelItem item) async {
    await _orderHistoryCancelItemUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OrderHistoryCancelItem> items) async {
    await _orderHistoryCancelItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OrderHistoryCancelItem item) async {
    await _orderHistoryCancelItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OrderHistoryCancelItem> items) async {
    await _orderHistoryCancelItemDeletionAdapter.deleteList(items);
  }
}

class _$OrderHistoryDiscountDao extends OrderHistoryDiscountDao {
  _$OrderHistoryDiscountDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _orderHistoryDiscountInsertionAdapter = InsertionAdapter(
            database,
            'OD1_ODR_HIS_DC',
            (OrderHistoryDiscount item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'DC_SNO': item.discountSerialNumber,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_NAME': item.discountName,
                  'ITM_ID': item.itemId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryDiscountUpdateAdapter = UpdateAdapter(
            database,
            'OD1_ODR_HIS_DC',
            ['ID'],
            (OrderHistoryDiscount item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'DC_SNO': item.discountSerialNumber,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_NAME': item.discountName,
                  'ITM_ID': item.itemId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryDiscountDeletionAdapter = DeletionAdapter(
            database,
            'OD1_ODR_HIS_DC',
            ['ID'],
            (OrderHistoryDiscount item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'DC_SNO': item.discountSerialNumber,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_NAME': item.discountName,
                  'ITM_ID': item.itemId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OrderHistoryDiscount>
      _orderHistoryDiscountInsertionAdapter;

  final UpdateAdapter<OrderHistoryDiscount> _orderHistoryDiscountUpdateAdapter;

  final DeletionAdapter<OrderHistoryDiscount>
      _orderHistoryDiscountDeletionAdapter;

  @override
  Future<OrderHistoryDiscount?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM OD1_ODR_HIS_DC WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<OrderHistoryDiscount?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM OD1_ODR_HIS_DC ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => OrderHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OrderHistoryDiscount>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM OD1_ODR_HIS_DC',
        mapper: (Map<String, Object?> row) => OrderHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OrderHistoryDiscount>> findAllByOrder(
      String date, int orderNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_DC WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => OrderHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum]);
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM OD1_ODR_HIS_DC');
  }

  @override
  Future<void> insertOne(OrderHistoryDiscount item) async {
    await _orderHistoryDiscountInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OrderHistoryDiscount> items) async {
    await _orderHistoryDiscountInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OrderHistoryDiscount item) async {
    await _orderHistoryDiscountUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OrderHistoryDiscount> items) async {
    await _orderHistoryDiscountUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OrderHistoryDiscount item) async {
    await _orderHistoryDiscountDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OrderHistoryDiscount> items) async {
    await _orderHistoryDiscountDeletionAdapter.deleteList(items);
  }
}

class _$OrderHistoryItemDao extends OrderHistoryItemDao {
  _$OrderHistoryItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _orderHistoryItemInsertionAdapter = InsertionAdapter(
            database,
            'OD1_ODR_HIS_ITM',
            (OrderHistoryItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'UPR_ITM_SNO': item.upperItemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_TP_CD': item.discountTypeCode,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'SPLY_AMT': item.supplyAmount,
                  'ODR_OPT_CD': item.orderOptionCode,
                  'ODR_HOLD_TM': item.orderHoldingTime,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CNCL_RESN': item.cancelReason,
                  'MNU_PAY_YN': item.menuPaymentYn,
                  'MNU_PAY_SNO': item.menuPaymentSerialNumber,
                  'TRACKING_INFO': item.trackingInfo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryItemUpdateAdapter = UpdateAdapter(
            database,
            'OD1_ODR_HIS_ITM',
            ['ID'],
            (OrderHistoryItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'UPR_ITM_SNO': item.upperItemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_TP_CD': item.discountTypeCode,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'SPLY_AMT': item.supplyAmount,
                  'ODR_OPT_CD': item.orderOptionCode,
                  'ODR_HOLD_TM': item.orderHoldingTime,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CNCL_RESN': item.cancelReason,
                  'MNU_PAY_YN': item.menuPaymentYn,
                  'MNU_PAY_SNO': item.menuPaymentSerialNumber,
                  'TRACKING_INFO': item.trackingInfo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryItemDeletionAdapter = DeletionAdapter(
            database,
            'OD1_ODR_HIS_ITM',
            ['ID'],
            (OrderHistoryItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'UPR_ITM_SNO': item.upperItemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_TP_CD': item.discountTypeCode,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'SPLY_AMT': item.supplyAmount,
                  'ODR_OPT_CD': item.orderOptionCode,
                  'ODR_HOLD_TM': item.orderHoldingTime,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CNCL_RESN': item.cancelReason,
                  'MNU_PAY_YN': item.menuPaymentYn,
                  'MNU_PAY_SNO': item.menuPaymentSerialNumber,
                  'TRACKING_INFO': item.trackingInfo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OrderHistoryItem> _orderHistoryItemInsertionAdapter;

  final UpdateAdapter<OrderHistoryItem> _orderHistoryItemUpdateAdapter;

  final DeletionAdapter<OrderHistoryItem> _orderHistoryItemDeletionAdapter;

  @override
  Future<OrderHistoryItem?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM OD1_ODR_HIS_ITM WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            orderHoldingTime: row['ODR_HOLD_TM'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            menuPaymentYn: row['MNU_PAY_YN'] as int?,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<OrderHistoryItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM OD1_ODR_HIS_ITM',
        mapper: (Map<String, Object?> row) => OrderHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            orderHoldingTime: row['ODR_HOLD_TM'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            menuPaymentYn: row['MNU_PAY_YN'] as int?,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OrderHistoryItem>> findAllByOrder(
      String date, int orderNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_ITM WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => OrderHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            orderHoldingTime: row['ODR_HOLD_TM'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            menuPaymentYn: row['MNU_PAY_YN'] as int?,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum]);
  }

  @override
  Future<List<OrderHistoryItem>> findAllForPayment(
      String date, int orderNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_ITM WHERE COM_DT = ?1 AND COM_SNO = ?2 AND QTY >= 0',
        mapper: (Map<String, Object?> row) => OrderHistoryItem(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, upperItemSerialNumber: row['UPR_ITM_SNO'] as int?, itemId: row['ITM_ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, quantity: row['QTY'] as double?, price: row['PRICE'] as double?, supplyValue: row['SPLY_VAL'] as double?, taxAmount0: row['TAX_AMT_0'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, discountSectionCode: row['DC_SEC_CD'] as String?, discountRate: row['DC_RATE'] as double?, discountAmount: row['DC_AMT'] as double?, discountTypeCode: row['DC_TP_CD'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, supplyAmount: row['SPLY_AMT'] as double?, orderOptionCode: row['ODR_OPT_CD'] as String?, orderHoldingTime: row['ODR_HOLD_TM'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, cancelReason: row['CNCL_RESN'] as String?, menuPaymentYn: row['MNU_PAY_YN'] as int?, menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?, trackingInfo: row['TRACKING_INFO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum]);
  }

  @override
  Future<List<OrderHistoryItem>> findAllPaid(
      String date, int orderNum, int paidSno) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_ITM WHERE COM_DT = ?1 AND COM_SNO = ?2 AND MNU_PAY_SNO = ?3',
        mapper: (Map<String, Object?> row) => OrderHistoryItem(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, upperItemSerialNumber: row['UPR_ITM_SNO'] as int?, itemId: row['ITM_ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, quantity: row['QTY'] as double?, price: row['PRICE'] as double?, supplyValue: row['SPLY_VAL'] as double?, taxAmount0: row['TAX_AMT_0'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, discountSectionCode: row['DC_SEC_CD'] as String?, discountRate: row['DC_RATE'] as double?, discountAmount: row['DC_AMT'] as double?, discountTypeCode: row['DC_TP_CD'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, supplyAmount: row['SPLY_AMT'] as double?, orderOptionCode: row['ODR_OPT_CD'] as String?, orderHoldingTime: row['ODR_HOLD_TM'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, cancelReason: row['CNCL_RESN'] as String?, menuPaymentYn: row['MNU_PAY_YN'] as int?, menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?, trackingInfo: row['TRACKING_INFO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum, paidSno]);
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM OD1_ODR_HIS_ITM');
  }

  @override
  Future<void> insertOne(OrderHistoryItem item) async {
    await _orderHistoryItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OrderHistoryItem> items) async {
    await _orderHistoryItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OrderHistoryItem item) async {
    await _orderHistoryItemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OrderHistoryItem> items) async {
    await _orderHistoryItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OrderHistoryItem item) async {
    await _orderHistoryItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OrderHistoryItem> items) async {
    await _orderHistoryItemDeletionAdapter.deleteList(items);
  }
}

class _$OrderHistoryKitchenMemoDao extends OrderHistoryKitchenMemoDao {
  _$OrderHistoryKitchenMemoDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _orderHistoryKitchenMemoInsertionAdapter = InsertionAdapter(
            database,
            'OD1_ODR_HIS_KTCHN_MMO',
            (OrderHistoryKitchenMemo item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'KTCHN_MMO_SNO': item.kitchenMemoSerialNumber,
                  'KTCHN_MMO_ID': item.kitchenMemoId,
                  'KTCHN_MMO': item.kitchenMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryKitchenMemoUpdateAdapter = UpdateAdapter(
            database,
            'OD1_ODR_HIS_KTCHN_MMO',
            ['ID'],
            (OrderHistoryKitchenMemo item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'KTCHN_MMO_SNO': item.kitchenMemoSerialNumber,
                  'KTCHN_MMO_ID': item.kitchenMemoId,
                  'KTCHN_MMO': item.kitchenMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _orderHistoryKitchenMemoDeletionAdapter = DeletionAdapter(
            database,
            'OD1_ODR_HIS_KTCHN_MMO',
            ['ID'],
            (OrderHistoryKitchenMemo item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'KTCHN_MMO_SNO': item.kitchenMemoSerialNumber,
                  'KTCHN_MMO_ID': item.kitchenMemoId,
                  'KTCHN_MMO': item.kitchenMemo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<OrderHistoryKitchenMemo>
      _orderHistoryKitchenMemoInsertionAdapter;

  final UpdateAdapter<OrderHistoryKitchenMemo>
      _orderHistoryKitchenMemoUpdateAdapter;

  final DeletionAdapter<OrderHistoryKitchenMemo>
      _orderHistoryKitchenMemoDeletionAdapter;

  @override
  Future<OrderHistoryKitchenMemo?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistoryKitchenMemo(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            kitchenMemoSerialNumber: row['KTCHN_MMO_SNO'] as int?,
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemo: row['KTCHN_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<OrderHistoryKitchenMemo>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM OD1_ODR_HIS_KTCHN_MMO',
        mapper: (Map<String, Object?> row) => OrderHistoryKitchenMemo(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            kitchenMemoSerialNumber: row['KTCHN_MMO_SNO'] as int?,
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemo: row['KTCHN_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<OrderHistoryKitchenMemo>> findAllByKitchenMemoId(
      String kitchenMemoId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE KTCHN_MMO_ID = ?1',
        mapper: (Map<String, Object?> row) => OrderHistoryKitchenMemo(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            kitchenMemoSerialNumber: row['KTCHN_MMO_SNO'] as int?,
            kitchenMemoId: row['KTCHN_MMO_ID'] as String?,
            kitchenMemo: row['KTCHN_MMO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [kitchenMemoId]);
  }

  @override
  Future<List<OrderHistoryKitchenMemo>> findAllByOrder(
      String date, int orderNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE COM_DT = ?1 AND COM_SNO = ?2',
        mapper: (Map<String, Object?> row) => OrderHistoryKitchenMemo(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, kitchenMemoSerialNumber: row['KTCHN_MMO_SNO'] as int?, kitchenMemoId: row['KTCHN_MMO_ID'] as String?, kitchenMemo: row['KTCHN_MMO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum]);
  }

  @override
  Future<List<OrderHistoryKitchenMemo>> findAllByOrderItem(
      String date, int orderNum, int itemSno) async {
    return _queryAdapter.queryList(
        'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE COM_DT = ?1 AND COM_SNO = ?2 AND ITM_SNO = ?3',
        mapper: (Map<String, Object?> row) => OrderHistoryKitchenMemo(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, commonSerialNumber: row['COM_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, kitchenMemoSerialNumber: row['KTCHN_MMO_SNO'] as int?, kitchenMemoId: row['KTCHN_MMO_ID'] as String?, kitchenMemo: row['KTCHN_MMO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, orderNum, itemSno]);
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM OD1_ODR_HIS_KTCHN_MMO');
  }

  @override
  Future<void> insertOne(OrderHistoryKitchenMemo item) async {
    await _orderHistoryKitchenMemoInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<OrderHistoryKitchenMemo> items) async {
    await _orderHistoryKitchenMemoInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(OrderHistoryKitchenMemo item) async {
    await _orderHistoryKitchenMemoUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<OrderHistoryKitchenMemo> items) async {
    await _orderHistoryKitchenMemoUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(OrderHistoryKitchenMemo item) async {
    await _orderHistoryKitchenMemoDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<OrderHistoryKitchenMemo> items) async {
    await _orderHistoryKitchenMemoDeletionAdapter.deleteList(items);
  }
}

class _$RequestPaymentHistoryDao extends RequestPaymentHistoryDao {
  _$RequestPaymentHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _requestPaymentHistoryInsertionAdapter = InsertionAdapter(
            database,
            'SY1_REQ_PAY_HIS',
            (RequestPaymentHistory item) => <String, Object?>{
                  'REQ_ID': item.reqId,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_PT_CD': item.approvalPointCode,
                  'PAY_AMT': item.paymentAmount,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'AC_SNO': item.accountSerialNumber,
                  'REQ_TKN': item.requestToken,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _requestPaymentHistoryUpdateAdapter = UpdateAdapter(
            database,
            'SY1_REQ_PAY_HIS',
            ['REQ_ID'],
            (RequestPaymentHistory item) => <String, Object?>{
                  'REQ_ID': item.reqId,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_PT_CD': item.approvalPointCode,
                  'PAY_AMT': item.paymentAmount,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'AC_SNO': item.accountSerialNumber,
                  'REQ_TKN': item.requestToken,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _requestPaymentHistoryDeletionAdapter = DeletionAdapter(
            database,
            'SY1_REQ_PAY_HIS',
            ['REQ_ID'],
            (RequestPaymentHistory item) => <String, Object?>{
                  'REQ_ID': item.reqId,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_PT_CD': item.approvalPointCode,
                  'PAY_AMT': item.paymentAmount,
                  'COM_DT': item.commonDate,
                  'COM_SNO': item.commonSerialNumber,
                  'AC_SNO': item.accountSerialNumber,
                  'REQ_TKN': item.requestToken,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<RequestPaymentHistory>
      _requestPaymentHistoryInsertionAdapter;

  final UpdateAdapter<RequestPaymentHistory>
      _requestPaymentHistoryUpdateAdapter;

  final DeletionAdapter<RequestPaymentHistory>
      _requestPaymentHistoryDeletionAdapter;

  @override
  Future<RequestPaymentHistory?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM SY1_REQ_PAY_HIS WHERE REQ_ID = ?1',
        mapper: (Map<String, Object?> row) => RequestPaymentHistory(
            reqId: row['REQ_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalPointCode: row['APRVL_PT_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as String?,
            accountSerialNumber: row['AC_SNO'] as String?,
            requestToken: row['REQ_TKN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<RequestPaymentHistory?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM SY1_REQ_PAY_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => RequestPaymentHistory(
            reqId: row['REQ_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalPointCode: row['APRVL_PT_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as String?,
            accountSerialNumber: row['AC_SNO'] as String?,
            requestToken: row['REQ_TKN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<RequestPaymentHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SY1_REQ_PAY_HIS',
        mapper: (Map<String, Object?> row) => RequestPaymentHistory(
            reqId: row['REQ_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalPointCode: row['APRVL_PT_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as String?,
            accountSerialNumber: row['AC_SNO'] as String?,
            requestToken: row['REQ_TKN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<RequestPaymentHistory?> findByToken(String token) async {
    return _queryAdapter.query(
        'SELECT * FROM SY1_REQ_PAY_HIS WHERE REQ_TKN = ?1',
        mapper: (Map<String, Object?> row) => RequestPaymentHistory(
            reqId: row['REQ_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalPointCode: row['APRVL_PT_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            commonDate: row['COM_DT'] as String?,
            commonSerialNumber: row['COM_SNO'] as String?,
            accountSerialNumber: row['AC_SNO'] as String?,
            requestToken: row['REQ_TKN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [token]);
  }

  @override
  Future<void> insertOne(RequestPaymentHistory item) async {
    await _requestPaymentHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<RequestPaymentHistory> items) async {
    await _requestPaymentHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(RequestPaymentHistory item) async {
    await _requestPaymentHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<RequestPaymentHistory> items) async {
    await _requestPaymentHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(RequestPaymentHistory item) async {
    await _requestPaymentHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<RequestPaymentHistory> items) async {
    await _requestPaymentHistoryDeletionAdapter.deleteList(items);
  }
}

class _$SalesAccountHistoryDao extends SalesAccountHistoryDao {
  _$SalesAccountHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _salesAccountHistoryInsertionAdapter = InsertionAdapter(
            database,
            'SL1_SLS_ACC_HIS',
            (SalesAccountHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'OPR_TP_CD': item.operationTypeCode,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_TRANS_NO': item.approvalTransactionNo,
                  'PAY_METHOD_CD': item.paymentMethodCode,
                  'TRANS_TP_CD': item.transactionTypeCode,
                  'CASH_RECPT_ID_TP_CD': item.cashReceiptIdentifyTypeCode,
                  'CASH_RECPT_ID_NO': item.cashReceiptIdentifyNumber,
                  'APRVL_TP_CD': item.approvalTypeCode,
                  'CASH_RECPT_TP_CD': item.cashReceiptTypeCode,
                  'PAY_APRVL_NO': item.paymentApprovalNumber,
                  'APRVL_DT': item.approvalDate,
                  'APRVL_DT_PRI_PTN': item.approvalDatePrimaryPattern,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT': item.taxAmount,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'CRD_EXP_DT': item.expiryDate,
                  'INSTLMNT_MM': item.installmentMonth,
                  'CRD_NM': item.cardName,
                  'CRD_CO_SEC_CD': item.cardCompanySectionCode,
                  'CRD_CO_NM': item.cardCompanyName,
                  'CRD_CO_AFF_NO': item.cardCompanyAffiliateNumber,
                  'CRD_PUCHS_CO_CD': item.cardPurchaseCompanyCode,
                  'CRD_PUCHS_CO_NM': item.cardPurchaseCompanyName,
                  'CRD_SWIP_YN': item.cardSwipYn == null
                      ? null
                      : (item.cardSwipYn! ? 1 : 0),
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'TOT_AMT': item.totalAmount,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'COMPLT_SETLMNT_YN': item.completeSettlementYn == null
                      ? null
                      : (item.completeSettlementYn! ? 1 : 0),
                  'SALE_TX_YN': item.saleTransmitYn == null
                      ? null
                      : (item.saleTransmitYn! ? 1 : 0),
                  'RECPT_NO': item.receiptNumber,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'PAY_OPT': item.paymentOption,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'NOT_IN_SLS_YN': item.notInSalesYn == null
                      ? null
                      : (item.notInSalesYn! ? 1 : 0),
                  'TAKEN_AMT': item.takenAmount,
                  'CHANGE_AMT': item.changeAmount,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesAccountHistoryUpdateAdapter = UpdateAdapter(
            database,
            'SL1_SLS_ACC_HIS',
            ['ID'],
            (SalesAccountHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'OPR_TP_CD': item.operationTypeCode,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_TRANS_NO': item.approvalTransactionNo,
                  'PAY_METHOD_CD': item.paymentMethodCode,
                  'TRANS_TP_CD': item.transactionTypeCode,
                  'CASH_RECPT_ID_TP_CD': item.cashReceiptIdentifyTypeCode,
                  'CASH_RECPT_ID_NO': item.cashReceiptIdentifyNumber,
                  'APRVL_TP_CD': item.approvalTypeCode,
                  'CASH_RECPT_TP_CD': item.cashReceiptTypeCode,
                  'PAY_APRVL_NO': item.paymentApprovalNumber,
                  'APRVL_DT': item.approvalDate,
                  'APRVL_DT_PRI_PTN': item.approvalDatePrimaryPattern,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT': item.taxAmount,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'CRD_EXP_DT': item.expiryDate,
                  'INSTLMNT_MM': item.installmentMonth,
                  'CRD_NM': item.cardName,
                  'CRD_CO_SEC_CD': item.cardCompanySectionCode,
                  'CRD_CO_NM': item.cardCompanyName,
                  'CRD_CO_AFF_NO': item.cardCompanyAffiliateNumber,
                  'CRD_PUCHS_CO_CD': item.cardPurchaseCompanyCode,
                  'CRD_PUCHS_CO_NM': item.cardPurchaseCompanyName,
                  'CRD_SWIP_YN': item.cardSwipYn == null
                      ? null
                      : (item.cardSwipYn! ? 1 : 0),
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'TOT_AMT': item.totalAmount,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'COMPLT_SETLMNT_YN': item.completeSettlementYn == null
                      ? null
                      : (item.completeSettlementYn! ? 1 : 0),
                  'SALE_TX_YN': item.saleTransmitYn == null
                      ? null
                      : (item.saleTransmitYn! ? 1 : 0),
                  'RECPT_NO': item.receiptNumber,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'PAY_OPT': item.paymentOption,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'NOT_IN_SLS_YN': item.notInSalesYn == null
                      ? null
                      : (item.notInSalesYn! ? 1 : 0),
                  'TAKEN_AMT': item.takenAmount,
                  'CHANGE_AMT': item.changeAmount,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesAccountHistoryDeletionAdapter = DeletionAdapter(
            database,
            'SL1_SLS_ACC_HIS',
            ['ID'],
            (SalesAccountHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'OPR_TP_CD': item.operationTypeCode,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_TRANS_NO': item.approvalTransactionNo,
                  'PAY_METHOD_CD': item.paymentMethodCode,
                  'TRANS_TP_CD': item.transactionTypeCode,
                  'CASH_RECPT_ID_TP_CD': item.cashReceiptIdentifyTypeCode,
                  'CASH_RECPT_ID_NO': item.cashReceiptIdentifyNumber,
                  'APRVL_TP_CD': item.approvalTypeCode,
                  'CASH_RECPT_TP_CD': item.cashReceiptTypeCode,
                  'PAY_APRVL_NO': item.paymentApprovalNumber,
                  'APRVL_DT': item.approvalDate,
                  'APRVL_DT_PRI_PTN': item.approvalDatePrimaryPattern,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT': item.taxAmount,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'CRD_EXP_DT': item.expiryDate,
                  'INSTLMNT_MM': item.installmentMonth,
                  'CRD_NM': item.cardName,
                  'CRD_CO_SEC_CD': item.cardCompanySectionCode,
                  'CRD_CO_NM': item.cardCompanyName,
                  'CRD_CO_AFF_NO': item.cardCompanyAffiliateNumber,
                  'CRD_PUCHS_CO_CD': item.cardPurchaseCompanyCode,
                  'CRD_PUCHS_CO_NM': item.cardPurchaseCompanyName,
                  'CRD_SWIP_YN': item.cardSwipYn == null
                      ? null
                      : (item.cardSwipYn! ? 1 : 0),
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'TOT_AMT': item.totalAmount,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'COMPLT_SETLMNT_YN': item.completeSettlementYn == null
                      ? null
                      : (item.completeSettlementYn! ? 1 : 0),
                  'SALE_TX_YN': item.saleTransmitYn == null
                      ? null
                      : (item.saleTransmitYn! ? 1 : 0),
                  'RECPT_NO': item.receiptNumber,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'PAY_OPT': item.paymentOption,
                  'MENU_DC_AMT': item.menuDiscountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'NOT_IN_SLS_YN': item.notInSalesYn == null
                      ? null
                      : (item.notInSalesYn! ? 1 : 0),
                  'TAKEN_AMT': item.takenAmount,
                  'CHANGE_AMT': item.changeAmount,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SalesAccountHistory>
      _salesAccountHistoryInsertionAdapter;

  final UpdateAdapter<SalesAccountHistory> _salesAccountHistoryUpdateAdapter;

  final DeletionAdapter<SalesAccountHistory>
      _salesAccountHistoryDeletionAdapter;

  @override
  Future<SalesAccountHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM SL1_SLS_ACC_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTransactionNo: row['APRVL_TRANS_NO'] as String?,
            paymentMethodCode: row['PAY_METHOD_CD'] as String?,
            transactionTypeCode: row['TRANS_TP_CD'] as String?,
            cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?,
            cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?,
            paymentApprovalNumber: row['PAY_APRVL_NO'] as String?,
            approvalDate: row['APRVL_DT'] as String?,
            approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            expiryDate: row['CRD_EXP_DT'] as String?,
            installmentMonth: row['INSTLMNT_MM'] as int?,
            cardName: row['CRD_NM'] as String?,
            cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?,
            cardCompanyName: row['CRD_CO_NM'] as String?,
            cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?,
            cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?,
            cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?,
            cardSwipYn: row['CRD_SWIP_YN'] == null
                ? null
                : (row['CRD_SWIP_YN'] as int) != 0,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null
                ? null
                : (row['COMPLT_SETLMNT_YN'] as int) != 0,
            saleTransmitYn: row['SALE_TX_YN'] == null
                ? null
                : (row['SALE_TX_YN'] as int) != 0,
            receiptNumber: row['RECPT_NO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            paymentOption: row['PAY_OPT'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            notInSalesYn: row['NOT_IN_SLS_YN'] == null
                ? null
                : (row['NOT_IN_SLS_YN'] as int) != 0,
            takenAmount: row['TAKEN_AMT'] as double?,
            changeAmount: row['CHANGE_AMT'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SalesAccountHistory?> findByKey(
      String date, int saleNum, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND SLS_ACC_SNO = ?3',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, sno]);
  }

  @override
  Future<SalesAccountHistory?> findByApprovalNo(String appNo) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE PAY_APRVL_NO = ?1 AND STAT_CD <>\"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [appNo]);
  }

  @override
  Future<List<SalesAccountHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_ACC_HIS',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTransactionNo: row['APRVL_TRANS_NO'] as String?,
            paymentMethodCode: row['PAY_METHOD_CD'] as String?,
            transactionTypeCode: row['TRANS_TP_CD'] as String?,
            cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?,
            cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?,
            paymentApprovalNumber: row['PAY_APRVL_NO'] as String?,
            approvalDate: row['APRVL_DT'] as String?,
            approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            expiryDate: row['CRD_EXP_DT'] as String?,
            installmentMonth: row['INSTLMNT_MM'] as int?,
            cardName: row['CRD_NM'] as String?,
            cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?,
            cardCompanyName: row['CRD_CO_NM'] as String?,
            cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?,
            cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?,
            cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?,
            cardSwipYn: row['CRD_SWIP_YN'] == null
                ? null
                : (row['CRD_SWIP_YN'] as int) != 0,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null
                ? null
                : (row['COMPLT_SETLMNT_YN'] as int) != 0,
            saleTransmitYn: row['SALE_TX_YN'] == null
                ? null
                : (row['SALE_TX_YN'] as int) != 0,
            receiptNumber: row['RECPT_NO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            paymentOption: row['PAY_OPT'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            notInSalesYn: row['NOT_IN_SLS_YN'] == null
                ? null
                : (row['NOT_IN_SLS_YN'] as int) != 0,
            takenAmount: row['TAKEN_AMT'] as double?,
            changeAmount: row['CHANGE_AMT'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesAccountHistory>> findAllBySale(
      String date, int saleNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTransactionNo: row['APRVL_TRANS_NO'] as String?,
            paymentMethodCode: row['PAY_METHOD_CD'] as String?,
            transactionTypeCode: row['TRANS_TP_CD'] as String?,
            cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?,
            cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?,
            paymentApprovalNumber: row['PAY_APRVL_NO'] as String?,
            approvalDate: row['APRVL_DT'] as String?,
            approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            expiryDate: row['CRD_EXP_DT'] as String?,
            installmentMonth: row['INSTLMNT_MM'] as int?,
            cardName: row['CRD_NM'] as String?,
            cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?,
            cardCompanyName: row['CRD_CO_NM'] as String?,
            cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?,
            cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?,
            cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?,
            cardSwipYn: row['CRD_SWIP_YN'] == null
                ? null
                : (row['CRD_SWIP_YN'] as int) != 0,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null
                ? null
                : (row['COMPLT_SETLMNT_YN'] as int) != 0,
            saleTransmitYn: row['SALE_TX_YN'] == null
                ? null
                : (row['SALE_TX_YN'] as int) != 0,
            receiptNumber: row['RECPT_NO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            paymentOption: row['PAY_OPT'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            notInSalesYn: row['NOT_IN_SLS_YN'] == null
                ? null
                : (row['NOT_IN_SLS_YN'] as int) != 0,
            takenAmount: row['TAKEN_AMT'] as double?,
            changeAmount: row['CHANGE_AMT'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllBySaleNotInAppTypes(
      String date, int saleNum, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllBySaleInAppTypes(
      String date, int saleNum, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND CNCL_SNO = \"\" AND APRVL_TP_CD IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>>
      findAllBySaleNotInAppTypesOrderByApprovalDate(
          String date, int saleNum, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\" ORDER BY APRVL_DT_PRI_PTN DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllBySaleOrderByReceiptNo(
      String date, int saleNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND RECPT_NO IS NOT NULL ORDER BY RECPT_NO DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllCanceled(
      String date, int saleNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND CNCL_EMP_ID IS NOT NULL AND STAT_CD <> \"99\" ORDER BY FRST_REG_DTTM ASC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllByReceiptNo(String receiptNo) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE RECPT_NO LIKE ?1 AND STAT_CD <> \"99\" ORDER BY APRVL_DT_PRI_PTN DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [receiptNo]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllBySaleReceiptNo(
      String date, int saleNum, String receiptNo) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND RECPT_NO LIKE ?3 AND STAT_CD <> \"99\" ORDER BY APRVL_DT_PRI_PTN DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, receiptNo]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTransactionNo: row['APRVL_TRANS_NO'] as String?,
            paymentMethodCode: row['PAY_METHOD_CD'] as String?,
            transactionTypeCode: row['TRANS_TP_CD'] as String?,
            cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?,
            cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?,
            paymentApprovalNumber: row['PAY_APRVL_NO'] as String?,
            approvalDate: row['APRVL_DT'] as String?,
            approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            expiryDate: row['CRD_EXP_DT'] as String?,
            installmentMonth: row['INSTLMNT_MM'] as int?,
            cardName: row['CRD_NM'] as String?,
            cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?,
            cardCompanyName: row['CRD_CO_NM'] as String?,
            cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?,
            cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?,
            cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?,
            cardSwipYn: row['CRD_SWIP_YN'] == null
                ? null
                : (row['CRD_SWIP_YN'] as int) != 0,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null
                ? null
                : (row['COMPLT_SETLMNT_YN'] as int) != 0,
            saleTransmitYn: row['SALE_TX_YN'] == null
                ? null
                : (row['SALE_TX_YN'] as int) != 0,
            receiptNumber: row['RECPT_NO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            paymentOption: row['PAY_OPT'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            notInSalesYn: row['NOT_IN_SLS_YN'] == null
                ? null
                : (row['NOT_IN_SLS_YN'] as int) != 0,
            takenAmount: row['TAKEN_AMT'] as double?,
            changeAmount: row['CHANGE_AMT'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesAccountHistory>> findAllNotCanceled(
      String date, int saleNum, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2 AND CNCL_SNO = \"\" AND APRVL_TP_CD IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllByPaymentSection(
      String sectionCode, String date, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE PAY_SEC_CD = ?1 AND COM_DT = ?2 AND SPLY_VAL IS NOT NULL AND SPLY_VAL > 0 AND APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [sectionCode, date, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllSoldByPaymentSection(
      String sectionCode, String date, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE PAY_SEC_CD = ?1 AND COM_DT = ?2 AND SPLY_VAL IS NOT NULL AND APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND NOT_IN_SLS_YN <> 1 AND STAT_CD <> \"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [sectionCode, date, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllByCreationDate(
      String start, String end, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE FRST_REG_DTTM >= ?1 AND FRST_REG_DTTM <= ?2 AND APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\"',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [start, end, ...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTransactionNo: row['APRVL_TRANS_NO'] as String?,
            paymentMethodCode: row['PAY_METHOD_CD'] as String?,
            transactionTypeCode: row['TRANS_TP_CD'] as String?,
            cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?,
            cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?,
            paymentApprovalNumber: row['PAY_APRVL_NO'] as String?,
            approvalDate: row['APRVL_DT'] as String?,
            approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            expiryDate: row['CRD_EXP_DT'] as String?,
            installmentMonth: row['INSTLMNT_MM'] as int?,
            cardName: row['CRD_NM'] as String?,
            cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?,
            cardCompanyName: row['CRD_CO_NM'] as String?,
            cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?,
            cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?,
            cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?,
            cardSwipYn: row['CRD_SWIP_YN'] == null
                ? null
                : (row['CRD_SWIP_YN'] as int) != 0,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null
                ? null
                : (row['COMPLT_SETLMNT_YN'] as int) != 0,
            saleTransmitYn: row['SALE_TX_YN'] == null
                ? null
                : (row['SALE_TX_YN'] as int) != 0,
            receiptNumber: row['RECPT_NO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            paymentOption: row['PAY_OPT'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            notInSalesYn: row['NOT_IN_SLS_YN'] == null
                ? null
                : (row['NOT_IN_SLS_YN'] as int) != 0,
            takenAmount: row['TAKEN_AMT'] as double?,
            changeAmount: row['CHANGE_AMT'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesAccountHistory>> findAllOrderByModificationDate(
      List<String> appTypeCodes) async {
    const offset = 1;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT <> \"99\" ORDER BY LAST_REV_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTransactionNo: row['APRVL_TRANS_NO'] as String?,
            paymentMethodCode: row['PAY_METHOD_CD'] as String?,
            transactionTypeCode: row['TRANS_TP_CD'] as String?,
            cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?,
            cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?,
            paymentApprovalNumber: row['PAY_APRVL_NO'] as String?,
            approvalDate: row['APRVL_DT'] as String?,
            approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            expiryDate: row['CRD_EXP_DT'] as String?,
            installmentMonth: row['INSTLMNT_MM'] as int?,
            cardName: row['CRD_NM'] as String?,
            cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?,
            cardCompanyName: row['CRD_CO_NM'] as String?,
            cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?,
            cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?,
            cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?,
            cardSwipYn: row['CRD_SWIP_YN'] == null
                ? null
                : (row['CRD_SWIP_YN'] as int) != 0,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            cancelSerialNumber: row['CNCL_SNO'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null
                ? null
                : (row['COMPLT_SETLMNT_YN'] as int) != 0,
            saleTransmitYn: row['SALE_TX_YN'] == null
                ? null
                : (row['SALE_TX_YN'] as int) != 0,
            receiptNumber: row['RECPT_NO'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            paymentOption: row['PAY_OPT'] as String?,
            menuDiscountAmount: row['MENU_DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            notInSalesYn: row['NOT_IN_SLS_YN'] == null
                ? null
                : (row['NOT_IN_SLS_YN'] as int) != 0,
            takenAmount: row['TAKEN_AMT'] as double?,
            changeAmount: row['CHANGE_AMT'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [...appTypeCodes]);
  }

  @override
  Future<List<SalesAccountHistory>> findAllByApprovalDate(
      String start, String end, List<String> appTypeCodes) async {
    const offset = 3;
    final _sqliteVariablesForAppTypeCodes =
        Iterable<String>.generate(appTypeCodes.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS WHERE APRVL_DT_PRI_PTN >= ?1 AND APRVL_DT_PRI_PTN <= ?2 AND APRVL_TP_CD NOT IN (' +
            _sqliteVariablesForAppTypeCodes +
            ') AND STAT_CD <> \"99\" ORDER BY APRVL_DT_PRI_PTN DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTransactionNo: row['APRVL_TRANS_NO'] as String?, paymentMethodCode: row['PAY_METHOD_CD'] as String?, transactionTypeCode: row['TRANS_TP_CD'] as String?, cashReceiptIdentifyTypeCode: row['CASH_RECPT_ID_TP_CD'] as String?, cashReceiptIdentifyNumber: row['CASH_RECPT_ID_NO'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashReceiptTypeCode: row['CASH_RECPT_TP_CD'] as String?, paymentApprovalNumber: row['PAY_APRVL_NO'] as String?, approvalDate: row['APRVL_DT'] as String?, approvalDatePrimaryPattern: row['APRVL_DT_PRI_PTN'] as String?, supplyValue: row['SPLY_VAL'] as double?, taxAmount: row['TAX_AMT'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, expiryDate: row['CRD_EXP_DT'] as String?, installmentMonth: row['INSTLMNT_MM'] as int?, cardName: row['CRD_NM'] as String?, cardCompanySectionCode: row['CRD_CO_SEC_CD'] as String?, cardCompanyName: row['CRD_CO_NM'] as String?, cardCompanyAffiliateNumber: row['CRD_CO_AFF_NO'] as String?, cardPurchaseCompanyCode: row['CRD_PUCHS_CO_CD'] as String?, cardPurchaseCompanyName: row['CRD_PUCHS_CO_NM'] as String?, cardSwipYn: row['CRD_SWIP_YN'] == null ? null : (row['CRD_SWIP_YN'] as int) != 0, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, cancelSerialNumber: row['CNCL_SNO'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, completeSettlementYn: row['COMPLT_SETLMNT_YN'] == null ? null : (row['COMPLT_SETLMNT_YN'] as int) != 0, saleTransmitYn: row['SALE_TX_YN'] == null ? null : (row['SALE_TX_YN'] as int) != 0, receiptNumber: row['RECPT_NO'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, paymentOption: row['PAY_OPT'] as String?, menuDiscountAmount: row['MENU_DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, notInSalesYn: row['NOT_IN_SLS_YN'] == null ? null : (row['NOT_IN_SLS_YN'] as int) != 0, takenAmount: row['TAKEN_AMT'] as double?, changeAmount: row['CHANGE_AMT'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [start, end, ...appTypeCodes]);
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SL1_SLS_ACC_HIS');
  }

  @override
  Future<void> insertOne(SalesAccountHistory item) async {
    await _salesAccountHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SalesAccountHistory> items) async {
    await _salesAccountHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SalesAccountHistory item) async {
    await _salesAccountHistoryUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SalesAccountHistory> items) async {
    await _salesAccountHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SalesAccountHistory item) async {
    await _salesAccountHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SalesAccountHistory> items) async {
    await _salesAccountHistoryDeletionAdapter.deleteList(items);
  }
}

class _$SalesAccountHistoryDetailsDao extends SalesAccountHistoryDetailsDao {
  _$SalesAccountHistoryDetailsDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _salesAccountHistoryDetailsInsertionAdapter = InsertionAdapter(
            database,
            'SL1_SLS_ACC_HIS_DTL',
            (SalesAccountHistoryDetails item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'DAT_0': item.data0,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesAccountHistoryDetailsUpdateAdapter = UpdateAdapter(
            database,
            'SL1_SLS_ACC_HIS_DTL',
            ['ID'],
            (SalesAccountHistoryDetails item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'DAT_0': item.data0,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesAccountHistoryDetailsDeletionAdapter = DeletionAdapter(
            database,
            'SL1_SLS_ACC_HIS_DTL',
            ['ID'],
            (SalesAccountHistoryDetails item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'DAT_0': item.data0,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SalesAccountHistoryDetails>
      _salesAccountHistoryDetailsInsertionAdapter;

  final UpdateAdapter<SalesAccountHistoryDetails>
      _salesAccountHistoryDetailsUpdateAdapter;

  final DeletionAdapter<SalesAccountHistoryDetails>
      _salesAccountHistoryDetailsDeletionAdapter;

  @override
  Future<SalesAccountHistoryDetails?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryDetails(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<SalesAccountHistoryDetails>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_ACC_HIS_DTL',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryDetails(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<SalesAccountHistoryDetails?> findBySale(
      String date, int saleNum, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE COM_DT = ?1 AND SL_SNO = ?2 AND SLS_ACC_SNO = ?3',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryDetails(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, data0: row['DAT_0'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, data11: row['DAT_11'] as String?, data12: row['DAT_12'] as String?, data13: row['DAT_13'] as String?, data14: row['DAT_14'] as String?, data15: row['DAT_15'] as String?, data16: row['DAT_16'] as String?, data17: row['DAT_17'] as String?, data18: row['DAT_18'] as String?, data19: row['DAT_19'] as String?, data20: row['DAT_20'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, sno]);
  }

  @override
  Future<List<SalesAccountHistoryDetails>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryDetails(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesAccountHistoryDetails>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryDetails(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SL1_SLS_ACC_HIS_DTL');
  }

  @override
  Future<void> insertOne(SalesAccountHistoryDetails item) async {
    await _salesAccountHistoryDetailsInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SalesAccountHistoryDetails> items) async {
    await _salesAccountHistoryDetailsInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SalesAccountHistoryDetails item) async {
    await _salesAccountHistoryDetailsUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SalesAccountHistoryDetails> items) async {
    await _salesAccountHistoryDetailsUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SalesAccountHistoryDetails item) async {
    await _salesAccountHistoryDetailsDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SalesAccountHistoryDetails> items) async {
    await _salesAccountHistoryDetailsDeletionAdapter.deleteList(items);
  }
}

class _$SalesAccountHistoryTipDao extends SalesAccountHistoryTipDao {
  _$SalesAccountHistoryTipDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _salesAccountHistoryTipInsertionAdapter = InsertionAdapter(
            database,
            'SL1_SLS_ACC_HIS_TIP',
            (SalesAccountHistoryTip item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_TP_CD': item.approvalTypeCode,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'PAY_AMT': item.paymentAmount,
                  'TAX_AMT': item.taxAmount,
                  'TIP_RECPT_EMP_ID': item.tipReceiptEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesAccountHistoryTipUpdateAdapter = UpdateAdapter(
            database,
            'SL1_SLS_ACC_HIS_TIP',
            ['ID'],
            (SalesAccountHistoryTip item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_TP_CD': item.approvalTypeCode,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'PAY_AMT': item.paymentAmount,
                  'TAX_AMT': item.taxAmount,
                  'TIP_RECPT_EMP_ID': item.tipReceiptEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesAccountHistoryTipDeletionAdapter = DeletionAdapter(
            database,
            'SL1_SLS_ACC_HIS_TIP',
            ['ID'],
            (SalesAccountHistoryTip item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'STR_TRM_ID': item.storeTerminalId,
                  'PAY_SEC_CD': item.paymentSectionCode,
                  'APRVL_TP_CD': item.approvalTypeCode,
                  'CDRW_SEC_CD': item.cashdrawSectionCode,
                  'PAY_AMT': item.paymentAmount,
                  'TAX_AMT': item.taxAmount,
                  'TIP_RECPT_EMP_ID': item.tipReceiptEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SalesAccountHistoryTip>
      _salesAccountHistoryTipInsertionAdapter;

  final UpdateAdapter<SalesAccountHistoryTip>
      _salesAccountHistoryTipUpdateAdapter;

  final DeletionAdapter<SalesAccountHistoryTip>
      _salesAccountHistoryTipDeletionAdapter;

  @override
  Future<SalesAccountHistoryTip?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryTip(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            tipReceiptEmployeeId: row['TIP_RECPT_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SalesAccountHistoryTip?> findByKey(
      String date, int saleNum, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE COM_DT = ?1 AND SL_SNO = ?2 AND SLS_ACC_SNO = ?3',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryTip(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, storeTerminalId: row['STR_TRM_ID'] as String?, paymentSectionCode: row['PAY_SEC_CD'] as String?, approvalTypeCode: row['APRVL_TP_CD'] as String?, cashdrawSectionCode: row['CDRW_SEC_CD'] as String?, paymentAmount: row['PAY_AMT'] as double?, taxAmount: row['TAX_AMT'] as double?, tipReceiptEmployeeId: row['TIP_RECPT_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, sno]);
  }

  @override
  Future<List<SalesAccountHistoryTip>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_ACC_HIS_TIP',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryTip(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            tipReceiptEmployeeId: row['TIP_RECPT_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesAccountHistoryTip>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryTip(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            tipReceiptEmployeeId: row['TIP_RECPT_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesAccountHistoryTip>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => SalesAccountHistoryTip(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            paymentSectionCode: row['PAY_SEC_CD'] as String?,
            approvalTypeCode: row['APRVL_TP_CD'] as String?,
            cashdrawSectionCode: row['CDRW_SEC_CD'] as String?,
            paymentAmount: row['PAY_AMT'] as double?,
            taxAmount: row['TAX_AMT'] as double?,
            tipReceiptEmployeeId: row['TIP_RECPT_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SL1_SLS_ACC_HIS_TIP');
  }

  @override
  Future<void> insertOne(SalesAccountHistoryTip item) async {
    await _salesAccountHistoryTipInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SalesAccountHistoryTip> items) async {
    await _salesAccountHistoryTipInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SalesAccountHistoryTip item) async {
    await _salesAccountHistoryTipUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SalesAccountHistoryTip> items) async {
    await _salesAccountHistoryTipUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SalesAccountHistoryTip item) async {
    await _salesAccountHistoryTipDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SalesAccountHistoryTip> items) async {
    await _salesAccountHistoryTipDeletionAdapter.deleteList(items);
  }
}

class _$SalesHistoryDao extends SalesHistoryDao {
  _$SalesHistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _salesHistoryInsertionAdapter = InsertionAdapter(
            database,
            'SL1_SLS_HIS',
            (SalesHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'TAB_ID': item.tableId,
                  'CHECK_LINK': item.checkLink,
                  'OPR_TP_CD': item.operationTypeCode,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'SPLY_AMT': item.supplyAmount,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_AMT': item.totalAmount,
                  'TAX_FREE_YN':
                      item.taxFreeYn == null ? null : (item.taxFreeYn! ? 1 : 0),
                  'TAX_FREE_RESN': item.taxFreeReason,
                  'TIP_TOT_AMT': item.tipTotalAmount,
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'SRV_EMP_ID': item.servingEmployeeId,
                  'ODR_EMP_ID': item.orderEmployeeId,
                  'CNCL_LNK': item.cancelLink,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_TP_CD': item.cancelTypeCode,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CLS_BIZ_TP_CD': item.closeBusinessTypeCode,
                  'MMO': item.memo,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'DAT_0': item.data0,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'STAFF_BNK_YN': item.staffBankYn == null
                      ? null
                      : (item.staffBankYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesHistoryUpdateAdapter = UpdateAdapter(
            database,
            'SL1_SLS_HIS',
            ['ID'],
            (SalesHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'TAB_ID': item.tableId,
                  'CHECK_LINK': item.checkLink,
                  'OPR_TP_CD': item.operationTypeCode,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'SPLY_AMT': item.supplyAmount,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_AMT': item.totalAmount,
                  'TAX_FREE_YN':
                      item.taxFreeYn == null ? null : (item.taxFreeYn! ? 1 : 0),
                  'TAX_FREE_RESN': item.taxFreeReason,
                  'TIP_TOT_AMT': item.tipTotalAmount,
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'SRV_EMP_ID': item.servingEmployeeId,
                  'ODR_EMP_ID': item.orderEmployeeId,
                  'CNCL_LNK': item.cancelLink,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_TP_CD': item.cancelTypeCode,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CLS_BIZ_TP_CD': item.closeBusinessTypeCode,
                  'MMO': item.memo,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'DAT_0': item.data0,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'STAFF_BNK_YN': item.staffBankYn == null
                      ? null
                      : (item.staffBankYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesHistoryDeletionAdapter = DeletionAdapter(
            database,
            'SL1_SLS_HIS',
            ['ID'],
            (SalesHistory item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'TAB_ID': item.tableId,
                  'CHECK_LINK': item.checkLink,
                  'OPR_TP_CD': item.operationTypeCode,
                  'BIZ_SEC_CD': item.businessSectionCode,
                  'SPLY_AMT': item.supplyAmount,
                  'SPLY_VAL': item.supplyValue,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_TOT_AMT': item.discountTotalAmount,
                  'TOT_AMT': item.totalAmount,
                  'TAX_FREE_YN':
                      item.taxFreeYn == null ? null : (item.taxFreeYn! ? 1 : 0),
                  'TAX_FREE_RESN': item.taxFreeReason,
                  'TIP_TOT_AMT': item.tipTotalAmount,
                  'PRE_TIP_TOT_AMT': item.preTipTotalAmount,
                  'PRE_TIP_AMT': item.preTipAmount,
                  'PRE_TIP_TAX_AMT': item.preTipTaxAmount,
                  'PAY_TIP_TOT_AMT': item.paymentTipTotalAmount,
                  'PAY_TIP_AMT': item.paymentTipAmount,
                  'PAY_TIP_TAX_AMT': item.paymentTipTaxAmount,
                  'SRV_EMP_ID': item.servingEmployeeId,
                  'ODR_EMP_ID': item.orderEmployeeId,
                  'CNCL_LNK': item.cancelLink,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_TP_CD': item.cancelTypeCode,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'CLS_BIZ_TP_CD': item.closeBusinessTypeCode,
                  'MMO': item.memo,
                  'SLS_ACC_SNO': item.salesAccountSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'DAT_0': item.data0,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'STAFF_BNK_YN': item.staffBankYn == null
                      ? null
                      : (item.staffBankYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SalesHistory> _salesHistoryInsertionAdapter;

  final UpdateAdapter<SalesHistory> _salesHistoryUpdateAdapter;

  final DeletionAdapter<SalesHistory> _salesHistoryDeletionAdapter;

  @override
  Future<SalesHistory?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM SL1_SLS_HIS WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => SalesHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            checkLink: row['CHECK_LINK'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyAmount: row['SPLY_AMT'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            cancelLink: row['CNCL_LNK'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelTypeCode: row['CNCL_TP_CD'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?,
            memo: row['MMO'] as String?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            staffBankYn: row['STAFF_BNK_YN'] == null
                ? null
                : (row['STAFF_BNK_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SalesHistory?> findByKey(String date, int saleNum) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_HIS WHERE COM_DT = ?1 AND SL_SNO = ?2',
        mapper: (Map<String, Object?> row) => SalesHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            checkLink: row['CHECK_LINK'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyAmount: row['SPLY_AMT'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            cancelLink: row['CNCL_LNK'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelTypeCode: row['CNCL_TP_CD'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?,
            memo: row['MMO'] as String?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            staffBankYn: row['STAFF_BNK_YN'] == null
                ? null
                : (row['STAFF_BNK_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesHistory>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_HIS',
        mapper: (Map<String, Object?> row) => SalesHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            checkLink: row['CHECK_LINK'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyAmount: row['SPLY_AMT'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            cancelLink: row['CNCL_LNK'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelTypeCode: row['CNCL_TP_CD'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?,
            memo: row['MMO'] as String?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            staffBankYn: row['STAFF_BNK_YN'] == null
                ? null
                : (row['STAFF_BNK_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistory>> findAllByDate(String date) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS WHERE COM_DT = ?1',
        mapper: (Map<String, Object?> row) => SalesHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            checkLink: row['CHECK_LINK'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyAmount: row['SPLY_AMT'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            cancelLink: row['CNCL_LNK'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelTypeCode: row['CNCL_TP_CD'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?,
            memo: row['MMO'] as String?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            staffBankYn: row['STAFF_BNK_YN'] == null
                ? null
                : (row['STAFF_BNK_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date]);
  }

  @override
  Future<List<SalesHistory>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            checkLink: row['CHECK_LINK'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyAmount: row['SPLY_AMT'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            cancelLink: row['CNCL_LNK'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelTypeCode: row['CNCL_TP_CD'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?,
            memo: row['MMO'] as String?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            staffBankYn: row['STAFF_BNK_YN'] == null
                ? null
                : (row['STAFF_BNK_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistory>> findAllByCreationDate(
      String start, String end) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS WHERE FRST_REG_DTTM >= ?1 AND FRST_REG_DTTM <= ?2',
        mapper: (Map<String, Object?> row) => SalesHistory(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, tableId: row['TAB_ID'] as String?, checkLink: row['CHECK_LINK'] as String?, operationTypeCode: row['OPR_TP_CD'] as String?, businessSectionCode: row['BIZ_SEC_CD'] as String?, supplyAmount: row['SPLY_AMT'] as double?, supplyValue: row['SPLY_VAL'] as double?, taxAmount0: row['TAX_AMT_0'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, discountTotalAmount: row['DC_TOT_AMT'] as double?, totalAmount: row['TOT_AMT'] as double?, taxFreeYn: row['TAX_FREE_YN'] == null ? null : (row['TAX_FREE_YN'] as int) != 0, taxFreeReason: row['TAX_FREE_RESN'] as String?, tipTotalAmount: row['TIP_TOT_AMT'] as double?, preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?, preTipAmount: row['PRE_TIP_AMT'] as double?, preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?, paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?, paymentTipAmount: row['PAY_TIP_AMT'] as double?, paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?, servingEmployeeId: row['SRV_EMP_ID'] as String?, orderEmployeeId: row['ODR_EMP_ID'] as String?, cancelLink: row['CNCL_LNK'] as String?, cancelReason: row['CNCL_RESN'] as String?, cancelTypeCode: row['CNCL_TP_CD'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?, memo: row['MMO'] as String?, salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, data0: row['DAT_0'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, staffBankYn: row['STAFF_BNK_YN'] == null ? null : (row['STAFF_BNK_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [start, end]);
  }

  @override
  Future<List<SalesHistory>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => SalesHistory(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            tableId: row['TAB_ID'] as String?,
            checkLink: row['CHECK_LINK'] as String?,
            operationTypeCode: row['OPR_TP_CD'] as String?,
            businessSectionCode: row['BIZ_SEC_CD'] as String?,
            supplyAmount: row['SPLY_AMT'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountTotalAmount: row['DC_TOT_AMT'] as double?,
            totalAmount: row['TOT_AMT'] as double?,
            taxFreeYn: row['TAX_FREE_YN'] == null
                ? null
                : (row['TAX_FREE_YN'] as int) != 0,
            taxFreeReason: row['TAX_FREE_RESN'] as String?,
            tipTotalAmount: row['TIP_TOT_AMT'] as double?,
            preTipTotalAmount: row['PRE_TIP_TOT_AMT'] as double?,
            preTipAmount: row['PRE_TIP_AMT'] as double?,
            preTipTaxAmount: row['PRE_TIP_TAX_AMT'] as double?,
            paymentTipTotalAmount: row['PAY_TIP_TOT_AMT'] as double?,
            paymentTipAmount: row['PAY_TIP_AMT'] as double?,
            paymentTipTaxAmount: row['PAY_TIP_TAX_AMT'] as double?,
            servingEmployeeId: row['SRV_EMP_ID'] as String?,
            orderEmployeeId: row['ODR_EMP_ID'] as String?,
            cancelLink: row['CNCL_LNK'] as String?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelTypeCode: row['CNCL_TP_CD'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            closeBusinessTypeCode: row['CLS_BIZ_TP_CD'] as String?,
            memo: row['MMO'] as String?,
            salesAccountSerialNumber: row['SLS_ACC_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            data0: row['DAT_0'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            staffBankYn: row['STAFF_BNK_YN'] == null
                ? null
                : (row['STAFF_BNK_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistoryDate>> findAllDate() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_HIS_COM_DT',
        mapper: (Map<String, Object?> row) =>
            SalesHistoryDate(row['COM_DT'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SL1_SLS_HIS_COM_DT');
  }

  @override
  Future<void> insertOne(SalesHistory item) async {
    await _salesHistoryInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SalesHistory> items) async {
    await _salesHistoryInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SalesHistory item) async {
    await _salesHistoryUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SalesHistory> items) async {
    await _salesHistoryUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SalesHistory item) async {
    await _salesHistoryDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SalesHistory> items) async {
    await _salesHistoryDeletionAdapter.deleteList(items);
  }
}

class _$SalesHistoryDiscountDao extends SalesHistoryDiscountDao {
  _$SalesHistoryDiscountDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _salesHistoryDiscountInsertionAdapter = InsertionAdapter(
            database,
            'SL1_SLS_HIS_DC',
            (SalesHistoryDiscount item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'DC_SNO': item.discountSerialNumber,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_NAME': item.discountName,
                  'ITM_ID': item.itemId,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesHistoryDiscountUpdateAdapter = UpdateAdapter(
            database,
            'SL1_SLS_HIS_DC',
            ['ID'],
            (SalesHistoryDiscount item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'DC_SNO': item.discountSerialNumber,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_NAME': item.discountName,
                  'ITM_ID': item.itemId,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesHistoryDiscountDeletionAdapter = DeletionAdapter(
            database,
            'SL1_SLS_HIS_DC',
            ['ID'],
            (SalesHistoryDiscount item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'DC_SNO': item.discountSerialNumber,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_RATE': item.discountRate,
                  'DC_AMT': item.discountAmount,
                  'DC_NAME': item.discountName,
                  'ITM_ID': item.itemId,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SalesHistoryDiscount>
      _salesHistoryDiscountInsertionAdapter;

  final UpdateAdapter<SalesHistoryDiscount> _salesHistoryDiscountUpdateAdapter;

  final DeletionAdapter<SalesHistoryDiscount>
      _salesHistoryDiscountDeletionAdapter;

  @override
  Future<SalesHistoryDiscount?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM SL1_SLS_HIS_DC WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => SalesHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SalesHistoryDiscount?> findByKey(
      String date, int saleNum, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_HIS_DC WHERE COM_DT = ?1 AND SL_SNO = ?2 AND DC_SNO = ?3',
        mapper: (Map<String, Object?> row) => SalesHistoryDiscount(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, discountSerialNumber: row['DC_SNO'] as int?, discountSectionCode: row['DC_SEC_CD'] as String?, discountRate: row['DC_RATE'] as double?, discountAmount: row['DC_AMT'] as double?, discountName: row['DC_NAME'] as String?, itemId: row['ITM_ID'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, sno]);
  }

  @override
  Future<List<SalesHistoryDiscount>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_HIS_DC',
        mapper: (Map<String, Object?> row) => SalesHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistoryDiscount>> findAllBySale(
      String date, int saleNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_DC WHERE COM_DT = ?1 AND SL_SNO = ?2',
        mapper: (Map<String, Object?> row) => SalesHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesHistoryDiscount>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_DC WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistoryDiscount>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_DC WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => SalesHistoryDiscount(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            discountSerialNumber: row['DC_SNO'] as int?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountRate: row['DC_RATE'] as double?,
            discountAmount: row['DC_AMT'] as double?,
            discountName: row['DC_NAME'] as String?,
            itemId: row['ITM_ID'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SL1_SLS_HIS_DC');
  }

  @override
  Future<void> insertOne(SalesHistoryDiscount item) async {
    await _salesHistoryDiscountInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SalesHistoryDiscount> items) async {
    await _salesHistoryDiscountInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SalesHistoryDiscount item) async {
    await _salesHistoryDiscountUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SalesHistoryDiscount> items) async {
    await _salesHistoryDiscountUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SalesHistoryDiscount item) async {
    await _salesHistoryDiscountDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SalesHistoryDiscount> items) async {
    await _salesHistoryDiscountDeletionAdapter.deleteList(items);
  }
}

class _$SalesHistoryItemDao extends SalesHistoryItemDao {
  _$SalesHistoryItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _salesHistoryItemInsertionAdapter = InsertionAdapter(
            database,
            'SL1_SLS_HIS_ITM',
            (SalesHistoryItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'UPR_ITM_SNO': item.upperItemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'SPLY_AMT': item.supplyAmount,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_TP_CD': item.discountTypeCode,
                  'DC_AMT': item.discountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'ODR_OPT_CD': item.orderOptionCode,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'MNU_PAY_SNO': item.menuPaymentSerialNumber,
                  'TRACKING_INFO': item.trackingInfo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesHistoryItemUpdateAdapter = UpdateAdapter(
            database,
            'SL1_SLS_HIS_ITM',
            ['ID'],
            (SalesHistoryItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'UPR_ITM_SNO': item.upperItemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'SPLY_AMT': item.supplyAmount,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_TP_CD': item.discountTypeCode,
                  'DC_AMT': item.discountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'ODR_OPT_CD': item.orderOptionCode,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'MNU_PAY_SNO': item.menuPaymentSerialNumber,
                  'TRACKING_INFO': item.trackingInfo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _salesHistoryItemDeletionAdapter = DeletionAdapter(
            database,
            'SL1_SLS_HIS_ITM',
            ['ID'],
            (SalesHistoryItem item) => <String, Object?>{
                  'ID': item.id,
                  'COM_DT': item.commonDate,
                  'SL_SNO': item.saleSerialNumber,
                  'ITM_SNO': item.itemSerialNumber,
                  'UPR_ITM_SNO': item.upperItemSerialNumber,
                  'ITM_ID': item.itemId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'QTY': item.quantity,
                  'PRICE': item.price,
                  'SPLY_VAL': item.supplyValue,
                  'SPLY_AMT': item.supplyAmount,
                  'TAX_AMT_0': item.taxAmount0,
                  'TAX_AMT_1': item.taxAmount1,
                  'TAX_AMT_2': item.taxAmount2,
                  'DC_SEC_CD': item.discountSectionCode,
                  'DC_TP_CD': item.discountTypeCode,
                  'DC_AMT': item.discountAmount,
                  'ODR_DC_AMT': item.orderDiscountAmount,
                  'ODR_OPT_CD': item.orderOptionCode,
                  'CNCL_SNO': item.cancelSerialNumber,
                  'CNCL_RESN': item.cancelReason,
                  'CNCL_EMP_ID': item.cancelEmployeeId,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'MNU_PAY_SNO': item.menuPaymentSerialNumber,
                  'TRACKING_INFO': item.trackingInfo,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SalesHistoryItem> _salesHistoryItemInsertionAdapter;

  final UpdateAdapter<SalesHistoryItem> _salesHistoryItemUpdateAdapter;

  final DeletionAdapter<SalesHistoryItem> _salesHistoryItemDeletionAdapter;

  @override
  Future<SalesHistoryItem?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM SL1_SLS_HIS_ITM WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            discountAmount: row['DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SalesHistoryItem?> findByKey(String date, int saleNum, int sno) async {
    return _queryAdapter.query(
        'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = ?1 AND SL_SNO = ?2 AND ITM_SNO = ?3',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, upperItemSerialNumber: row['UPR_ITM_SNO'] as int?, itemId: row['ITM_ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, quantity: row['QTY'] as double?, price: row['PRICE'] as double?, supplyValue: row['SPLY_VAL'] as double?, supplyAmount: row['SPLY_AMT'] as double?, taxAmount0: row['TAX_AMT_0'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, discountSectionCode: row['DC_SEC_CD'] as String?, discountTypeCode: row['DC_TP_CD'] as String?, discountAmount: row['DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, orderOptionCode: row['ODR_OPT_CD'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, cancelReason: row['CNCL_RESN'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?, trackingInfo: row['TRACKING_INFO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum, sno]);
  }

  @override
  Future<List<SalesHistoryItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SL1_SLS_HIS_ITM',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            discountAmount: row['DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistoryItem>> findAllByCommonDate(String commonDate) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = ?1',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            discountAmount: row['DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [commonDate]);
  }

  @override
  Future<List<SalesHistoryItem>> findAllBySale(String date, int saleNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = ?1 AND SL_SNO = ?2',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            discountAmount: row['DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesHistoryItem>> findAllCanceled(
      String date, int saleNum) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = ?1 AND SL_SNO = ?2 AND CNCL_SNO IS NOT NULL AND CNCL_SNO <> \"\" AND (STAT_CD <> \"99\" OR (STAT_CD = \"99\" AND ODR_OPT_CD = \"002\")) ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(id: row['ID'] as String?, commonDate: row['COM_DT'] as String?, saleSerialNumber: row['SL_SNO'] as int?, itemSerialNumber: row['ITM_SNO'] as int?, upperItemSerialNumber: row['UPR_ITM_SNO'] as int?, itemId: row['ITM_ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, quantity: row['QTY'] as double?, price: row['PRICE'] as double?, supplyValue: row['SPLY_VAL'] as double?, supplyAmount: row['SPLY_AMT'] as double?, taxAmount0: row['TAX_AMT_0'] as double?, taxAmount1: row['TAX_AMT_1'] as double?, taxAmount2: row['TAX_AMT_2'] as double?, discountSectionCode: row['DC_SEC_CD'] as String?, discountTypeCode: row['DC_TP_CD'] as String?, discountAmount: row['DC_AMT'] as double?, orderDiscountAmount: row['ODR_DC_AMT'] as double?, orderOptionCode: row['ODR_OPT_CD'] as String?, cancelSerialNumber: row['CNCL_SNO'] as int?, cancelReason: row['CNCL_RESN'] as String?, cancelEmployeeId: row['CNCL_EMP_ID'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?, trackingInfo: row['TRACKING_INFO'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [date, saleNum]);
  }

  @override
  Future<List<SalesHistoryItem>> findAllNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_ITM WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            discountAmount: row['DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SalesHistoryItem>> findAllSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SL1_SLS_HIS_ITM WHERE SYNCD_YN = 1',
        mapper: (Map<String, Object?> row) => SalesHistoryItem(
            id: row['ID'] as String?,
            commonDate: row['COM_DT'] as String?,
            saleSerialNumber: row['SL_SNO'] as int?,
            itemSerialNumber: row['ITM_SNO'] as int?,
            upperItemSerialNumber: row['UPR_ITM_SNO'] as int?,
            itemId: row['ITM_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            quantity: row['QTY'] as double?,
            price: row['PRICE'] as double?,
            supplyValue: row['SPLY_VAL'] as double?,
            supplyAmount: row['SPLY_AMT'] as double?,
            taxAmount0: row['TAX_AMT_0'] as double?,
            taxAmount1: row['TAX_AMT_1'] as double?,
            taxAmount2: row['TAX_AMT_2'] as double?,
            discountSectionCode: row['DC_SEC_CD'] as String?,
            discountTypeCode: row['DC_TP_CD'] as String?,
            discountAmount: row['DC_AMT'] as double?,
            orderDiscountAmount: row['ODR_DC_AMT'] as double?,
            orderOptionCode: row['ODR_OPT_CD'] as String?,
            cancelSerialNumber: row['CNCL_SNO'] as int?,
            cancelReason: row['CNCL_RESN'] as String?,
            cancelEmployeeId: row['CNCL_EMP_ID'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            menuPaymentSerialNumber: row['MNU_PAY_SNO'] as int?,
            trackingInfo: row['TRACKING_INFO'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> truncate() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SL1_SLS_HIS_ITM');
  }

  @override
  Future<void> insertOne(SalesHistoryItem item) async {
    await _salesHistoryItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SalesHistoryItem> items) async {
    await _salesHistoryItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SalesHistoryItem item) async {
    await _salesHistoryItemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SalesHistoryItem> items) async {
    await _salesHistoryItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SalesHistoryItem item) async {
    await _salesHistoryItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SalesHistoryItem> items) async {
    await _salesHistoryItemDeletionAdapter.deleteList(items);
  }
}

class _$SelfMenuGroupDao extends SelfMenuGroupDao {
  _$SelfMenuGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _selfMenuGroupInsertionAdapter = InsertionAdapter(
            database,
            'ST1_SLF_MNU_GRP',
            (SelfMenuGroup item) => <String, Object?>{
                  'SLF_MNU_GRP_ID': item.selfMenuGroupId,
                  'SLF_MNU_GRP_NM': item.selfMenuGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'BG_COLR': item.backgroundColor,
                  'FNT_NM': item.fontName,
                  'FNT_SZ': item.fontSize,
                  'FNT_STYL': item.fontStyle,
                  'FNT_COLR': item.fontColor,
                  'DEF_YN':
                      item.defaultYn == null ? null : (item.defaultYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _selfMenuGroupUpdateAdapter = UpdateAdapter(
            database,
            'ST1_SLF_MNU_GRP',
            ['SLF_MNU_GRP_ID'],
            (SelfMenuGroup item) => <String, Object?>{
                  'SLF_MNU_GRP_ID': item.selfMenuGroupId,
                  'SLF_MNU_GRP_NM': item.selfMenuGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'BG_COLR': item.backgroundColor,
                  'FNT_NM': item.fontName,
                  'FNT_SZ': item.fontSize,
                  'FNT_STYL': item.fontStyle,
                  'FNT_COLR': item.fontColor,
                  'DEF_YN':
                      item.defaultYn == null ? null : (item.defaultYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _selfMenuGroupDeletionAdapter = DeletionAdapter(
            database,
            'ST1_SLF_MNU_GRP',
            ['SLF_MNU_GRP_ID'],
            (SelfMenuGroup item) => <String, Object?>{
                  'SLF_MNU_GRP_ID': item.selfMenuGroupId,
                  'SLF_MNU_GRP_NM': item.selfMenuGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'BG_COLR': item.backgroundColor,
                  'FNT_NM': item.fontName,
                  'FNT_SZ': item.fontSize,
                  'FNT_STYL': item.fontStyle,
                  'FNT_COLR': item.fontColor,
                  'DEF_YN':
                      item.defaultYn == null ? null : (item.defaultYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SelfMenuGroup> _selfMenuGroupInsertionAdapter;

  final UpdateAdapter<SelfMenuGroup> _selfMenuGroupUpdateAdapter;

  final DeletionAdapter<SelfMenuGroup> _selfMenuGroupDeletionAdapter;

  @override
  Future<SelfMenuGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_SLF_MNU_GRP WHERE SLF_MNU_GRP_ID = ?1',
        mapper: (Map<String, Object?> row) => SelfMenuGroup(
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            selfMenuGroupName: row['SLF_MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SelfMenuGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_SLF_MNU_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => SelfMenuGroup(
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            selfMenuGroupName: row['SLF_MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SelfMenuGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_SLF_MNU_GRP',
        mapper: (Map<String, Object?> row) => SelfMenuGroup(
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            selfMenuGroupName: row['SLF_MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SelfMenuGroup>> findAllByMenuGroupIdInAndStateCode(
      String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_SLF_MNU_GRP WHERE SLF_MNU_GRP_NM NOT LIKE \"%BARSCAN\" AND STAT_CD != ?1 ORDER BY LOC_Z,LOC_Y,LOC_X',
        mapper: (Map<String, Object?> row) => SelfMenuGroup(selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?, selfMenuGroupName: row['SLF_MNU_GRP_NM'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, locationZ: row['LOC_Z'] as int?, backgroundImageName: row['BG_IMG_NM'] as String?, backgroundColor: row['BG_COLR'] as String?, fontName: row['FNT_NM'] as String?, fontSize: row['FNT_SZ'] as double?, fontStyle: row['FNT_STYL'] as String?, fontColor: row['FNT_COLR'] as String?, defaultYn: row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [stateCode]);
  }

  @override
  Stream<List<SelfMenuGroup>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_SLF_MNU_GRP',
        mapper: (Map<String, Object?> row) => SelfMenuGroup(
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            selfMenuGroupName: row['SLF_MNU_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            backgroundColor: row['BG_COLR'] as String?,
            fontName: row['FNT_NM'] as String?,
            fontSize: row['FNT_SZ'] as double?,
            fontStyle: row['FNT_STYL'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            defaultYn:
                row['DEF_YN'] == null ? null : (row['DEF_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_SLF_MNU_GRP',
        isView: false);
  }

  @override
  Future<void> insertOne(SelfMenuGroup item) async {
    await _selfMenuGroupInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SelfMenuGroup> items) async {
    await _selfMenuGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SelfMenuGroup item) async {
    await _selfMenuGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SelfMenuGroup> items) async {
    await _selfMenuGroupUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SelfMenuGroup item) async {
    await _selfMenuGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SelfMenuGroup> items) async {
    await _selfMenuGroupDeletionAdapter.deleteList(items);
  }
}

class _$SelfMenuItemDao extends SelfMenuItemDao {
  _$SelfMenuItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _selfMenuItemInsertionAdapter = InsertionAdapter(
            database,
            'ST1_SLF_MNU_ITM',
            (SelfMenuItem item) => <String, Object?>{
                  'SLF_MNU_ITM_ID': item.selfMenuItemId,
                  'SLF_MNU_GRP_ID': item.selfMenuGroupId,
                  'ITM_ID': item.itemId,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_COLR': item.backgroundColor,
                  'FNT_COLR': item.fontColor,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _selfMenuItemUpdateAdapter = UpdateAdapter(
            database,
            'ST1_SLF_MNU_ITM',
            ['SLF_MNU_ITM_ID'],
            (SelfMenuItem item) => <String, Object?>{
                  'SLF_MNU_ITM_ID': item.selfMenuItemId,
                  'SLF_MNU_GRP_ID': item.selfMenuGroupId,
                  'ITM_ID': item.itemId,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_COLR': item.backgroundColor,
                  'FNT_COLR': item.fontColor,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _selfMenuItemDeletionAdapter = DeletionAdapter(
            database,
            'ST1_SLF_MNU_ITM',
            ['SLF_MNU_ITM_ID'],
            (SelfMenuItem item) => <String, Object?>{
                  'SLF_MNU_ITM_ID': item.selfMenuItemId,
                  'SLF_MNU_GRP_ID': item.selfMenuGroupId,
                  'ITM_ID': item.itemId,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_COLR': item.backgroundColor,
                  'FNT_COLR': item.fontColor,
                  'BTN_SZ_TP_CD': item.buttonSizeTypeCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SelfMenuItem> _selfMenuItemInsertionAdapter;

  final UpdateAdapter<SelfMenuItem> _selfMenuItemUpdateAdapter;

  final DeletionAdapter<SelfMenuItem> _selfMenuItemDeletionAdapter;

  @override
  Future<SelfMenuItem?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_SLF_MNU_ITM WHERE SLF_MNU_ITM_ID = ?1',
        mapper: (Map<String, Object?> row) => SelfMenuItem(
            selfMenuItemId: row['SLF_MNU_ITM_ID'] as String?,
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SelfMenuItem?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_SLF_MNU_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => SelfMenuItem(
            selfMenuItemId: row['SLF_MNU_ITM_ID'] as String?,
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SelfMenuItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_SLF_MNU_ITM',
        mapper: (Map<String, Object?> row) => SelfMenuItem(
            selfMenuItemId: row['SLF_MNU_ITM_ID'] as String?,
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SelfMenuItem>> findAllBySelfMenuGroupIdAndStateCode(
      String menuGroupId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_SLF_MNU_ITM WHERE SLF_MNU_GRP_ID = ?1 AND STAT_CD != ?2',
        mapper: (Map<String, Object?> row) => SelfMenuItem(selfMenuItemId: row['SLF_MNU_ITM_ID'] as String?, selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?, itemId: row['ITM_ID'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, locationZ: row['LOC_Z'] as int?, backgroundColor: row['BG_COLR'] as String?, fontColor: row['FNT_COLR'] as String?, buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [menuGroupId, stateCode]);
  }

  @override
  Future<List<SelfMenuItem>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_SLF_MNU_ITM WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => SelfMenuItem(
            selfMenuItemId: row['SLF_MNU_ITM_ID'] as String?,
            selfMenuGroupId: row['SLF_MNU_GRP_ID'] as String?,
            itemId: row['ITM_ID'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundColor: row['BG_COLR'] as String?,
            fontColor: row['FNT_COLR'] as String?,
            buttonSizeTypeCode: row['BTN_SZ_TP_CD'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(SelfMenuItem item) async {
    await _selfMenuItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SelfMenuItem> items) async {
    await _selfMenuItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SelfMenuItem item) async {
    await _selfMenuItemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SelfMenuItem> items) async {
    await _selfMenuItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SelfMenuItem item) async {
    await _selfMenuItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SelfMenuItem> items) async {
    await _selfMenuItemDeletionAdapter.deleteList(items);
  }
}

class _$SetEntityDao extends SetEntityDao {
  _$SetEntityDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _setEntityInsertionAdapter = InsertionAdapter(
            database,
            'IT1_SET_ENTY',
            (SetEntity item) => <String, Object?>{
                  'SET_ENTY_ID': item.setIEntityId,
                  'SET_ITM_ID': item.setItemId,
                  'ENTY_ITM_ID': item.entityItemId,
                  'SET_ENTY_SNO': item.setEntitySerialNumber,
                  'QTY': item.quantity,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _setEntityUpdateAdapter = UpdateAdapter(
            database,
            'IT1_SET_ENTY',
            ['SET_ENTY_ID'],
            (SetEntity item) => <String, Object?>{
                  'SET_ENTY_ID': item.setIEntityId,
                  'SET_ITM_ID': item.setItemId,
                  'ENTY_ITM_ID': item.entityItemId,
                  'SET_ENTY_SNO': item.setEntitySerialNumber,
                  'QTY': item.quantity,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _setEntityDeletionAdapter = DeletionAdapter(
            database,
            'IT1_SET_ENTY',
            ['SET_ENTY_ID'],
            (SetEntity item) => <String, Object?>{
                  'SET_ENTY_ID': item.setIEntityId,
                  'SET_ITM_ID': item.setItemId,
                  'ENTY_ITM_ID': item.entityItemId,
                  'SET_ENTY_SNO': item.setEntitySerialNumber,
                  'QTY': item.quantity,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SetEntity> _setEntityInsertionAdapter;

  final UpdateAdapter<SetEntity> _setEntityUpdateAdapter;

  final DeletionAdapter<SetEntity> _setEntityDeletionAdapter;

  @override
  Future<SetEntity?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_SET_ENTY WHERE SET_ENTY_ID = ?1',
        mapper: (Map<String, Object?> row) => SetEntity(
            setItemId: row['SET_ITM_ID'] as String?,
            entityItemId: row['ENTY_ITM_ID'] as String?,
            setEntitySerialNumber: row['SET_ENTY_SNO'] as String?,
            quantity: row['QTY'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<SetEntity?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM IT1_SET_ENTY ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => SetEntity(
            setItemId: row['SET_ITM_ID'] as String?,
            entityItemId: row['ENTY_ITM_ID'] as String?,
            setEntitySerialNumber: row['SET_ENTY_SNO'] as String?,
            quantity: row['QTY'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SetEntity>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM IT1_SET_ENTY',
        mapper: (Map<String, Object?> row) => SetEntity(
            setItemId: row['SET_ITM_ID'] as String?,
            entityItemId: row['ENTY_ITM_ID'] as String?,
            setEntitySerialNumber: row['SET_ENTY_SNO'] as String?,
            quantity: row['QTY'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<SetEntity>>
      findAllBySetItemIdAndStateCodeOrderBySetEntitySerialNumber(
          String setItemId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM IT1_SET_ENTY WHERE SET_ITM_ID = ?1 AND STAT_CD != ?2 ORDER BY SET_ENTY_SNO ASC',
        mapper: (Map<String, Object?> row) => SetEntity(setItemId: row['SET_ITM_ID'] as String?, entityItemId: row['ENTY_ITM_ID'] as String?, setEntitySerialNumber: row['SET_ENTY_SNO'] as String?, quantity: row['QTY'] as double?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [setItemId, stateCode]);
  }

  @override
  Stream<List<SetEntity>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM IT1_SET_ENTY',
        mapper: (Map<String, Object?> row) => SetEntity(
            setItemId: row['SET_ITM_ID'] as String?,
            entityItemId: row['ENTY_ITM_ID'] as String?,
            setEntitySerialNumber: row['SET_ENTY_SNO'] as String?,
            quantity: row['QTY'] as double?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'IT1_SET_ENTY',
        isView: false);
  }

  @override
  Future<void> insertOne(SetEntity item) async {
    await _setEntityInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<SetEntity> items) async {
    await _setEntityInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(SetEntity item) async {
    await _setEntityUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<SetEntity> items) async {
    await _setEntityUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(SetEntity item) async {
    await _setEntityDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<SetEntity> items) async {
    await _setEntityDeletionAdapter.deleteList(items);
  }
}

class _$StoreDao extends StoreDao {
  _$StoreDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _storeInsertionAdapter = InsertionAdapter(
            database,
            'ST1_STR',
            (Store item) => <String, Object?>{
                  'STR_ID': item.storeId,
                  'AGY_ID': item.agencyId,
                  'MGR_ID': item.managerId,
                  'STR_NM': item.storeName,
                  'ZIPCODE': item.zipcode,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'FAX_NO': item.faxNumber,
                  'BIZ_REG_NO': item.businessRegistrationNumber,
                  'TAX_SEC_CD': item.taxSectionCode,
                  'LANG_CD': item.languageCode,
                  'CUR_CD': item.currencyCode,
                  'STR_STAT_CD': item.storeStateCode,
                  'CLS_BIZ_TM': item.closeBusinessTime,
                  'BIZ_HOUR': item.openingHours,
                  'CLSD_DAY': item.closedDays,
                  'PARK_TP_CD': item.parkingTypeCode,
                  'BIZ_SEC': item.businessSectors,
                  'MAIN_PRDCT': item.mainProducts,
                  'CEO_NM': item.ceoName,
                  'OWR_NM': item.ownerName,
                  'LNK_TP_CD': item.linkTypeCode,
                  'SVC_TP_CD': item.serviceTypeCode,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _storeUpdateAdapter = UpdateAdapter(
            database,
            'ST1_STR',
            ['STR_ID'],
            (Store item) => <String, Object?>{
                  'STR_ID': item.storeId,
                  'AGY_ID': item.agencyId,
                  'MGR_ID': item.managerId,
                  'STR_NM': item.storeName,
                  'ZIPCODE': item.zipcode,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'FAX_NO': item.faxNumber,
                  'BIZ_REG_NO': item.businessRegistrationNumber,
                  'TAX_SEC_CD': item.taxSectionCode,
                  'LANG_CD': item.languageCode,
                  'CUR_CD': item.currencyCode,
                  'STR_STAT_CD': item.storeStateCode,
                  'CLS_BIZ_TM': item.closeBusinessTime,
                  'BIZ_HOUR': item.openingHours,
                  'CLSD_DAY': item.closedDays,
                  'PARK_TP_CD': item.parkingTypeCode,
                  'BIZ_SEC': item.businessSectors,
                  'MAIN_PRDCT': item.mainProducts,
                  'CEO_NM': item.ceoName,
                  'OWR_NM': item.ownerName,
                  'LNK_TP_CD': item.linkTypeCode,
                  'SVC_TP_CD': item.serviceTypeCode,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _storeDeletionAdapter = DeletionAdapter(
            database,
            'ST1_STR',
            ['STR_ID'],
            (Store item) => <String, Object?>{
                  'STR_ID': item.storeId,
                  'AGY_ID': item.agencyId,
                  'MGR_ID': item.managerId,
                  'STR_NM': item.storeName,
                  'ZIPCODE': item.zipcode,
                  'PRI_ADRS': item.primaryAddress,
                  'DTL_ADRS': item.detailAddress,
                  'TEL_NO': item.telNumber,
                  'HP_NO': item.hpNumber,
                  'FAX_NO': item.faxNumber,
                  'BIZ_REG_NO': item.businessRegistrationNumber,
                  'TAX_SEC_CD': item.taxSectionCode,
                  'LANG_CD': item.languageCode,
                  'CUR_CD': item.currencyCode,
                  'STR_STAT_CD': item.storeStateCode,
                  'CLS_BIZ_TM': item.closeBusinessTime,
                  'BIZ_HOUR': item.openingHours,
                  'CLSD_DAY': item.closedDays,
                  'PARK_TP_CD': item.parkingTypeCode,
                  'BIZ_SEC': item.businessSectors,
                  'MAIN_PRDCT': item.mainProducts,
                  'CEO_NM': item.ceoName,
                  'OWR_NM': item.ownerName,
                  'LNK_TP_CD': item.linkTypeCode,
                  'SVC_TP_CD': item.serviceTypeCode,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Store> _storeInsertionAdapter;

  final UpdateAdapter<Store> _storeUpdateAdapter;

  final DeletionAdapter<Store> _storeDeletionAdapter;

  @override
  Future<Store?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_STR WHERE STR_ID = ?1',
        mapper: (Map<String, Object?> row) => Store(
            storeId: row['STR_ID'] as String?,
            agencyId: row['AGY_ID'] as String?,
            managerId: row['MGR_ID'] as String?,
            storeName: row['STR_NM'] as String?,
            zipcode: row['ZIPCODE'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            faxNumber: row['FAX_NO'] as String?,
            businessRegistrationNumber: row['BIZ_REG_NO'] as String?,
            taxSectionCode: row['TAX_SEC_CD'] as String?,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            storeStateCode: row['STR_STAT_CD'] as String?,
            closeBusinessTime: row['CLS_BIZ_TM'] as String?,
            openingHours: row['BIZ_HOUR'] as String?,
            closedDays: row['CLSD_DAY'] as String?,
            parkingTypeCode: row['PARK_TP_CD'] as String?,
            businessSectors: row['BIZ_SEC'] as String?,
            mainProducts: row['MAIN_PRDCT'] as String?,
            ceoName: row['CEO_NM'] as String?,
            ownerName: row['OWR_NM'] as String?,
            linkTypeCode: row['LNK_TP_CD'] as String?,
            serviceTypeCode: row['SVC_TP_CD'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<Store?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_STR ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => Store(
            storeId: row['STR_ID'] as String?,
            agencyId: row['AGY_ID'] as String?,
            managerId: row['MGR_ID'] as String?,
            storeName: row['STR_NM'] as String?,
            zipcode: row['ZIPCODE'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            faxNumber: row['FAX_NO'] as String?,
            businessRegistrationNumber: row['BIZ_REG_NO'] as String?,
            taxSectionCode: row['TAX_SEC_CD'] as String?,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            storeStateCode: row['STR_STAT_CD'] as String?,
            closeBusinessTime: row['CLS_BIZ_TM'] as String?,
            openingHours: row['BIZ_HOUR'] as String?,
            closedDays: row['CLSD_DAY'] as String?,
            parkingTypeCode: row['PARK_TP_CD'] as String?,
            businessSectors: row['BIZ_SEC'] as String?,
            mainProducts: row['MAIN_PRDCT'] as String?,
            ceoName: row['CEO_NM'] as String?,
            ownerName: row['OWR_NM'] as String?,
            linkTypeCode: row['LNK_TP_CD'] as String?,
            serviceTypeCode: row['SVC_TP_CD'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Store>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_STR',
        mapper: (Map<String, Object?> row) => Store(
            storeId: row['STR_ID'] as String?,
            agencyId: row['AGY_ID'] as String?,
            managerId: row['MGR_ID'] as String?,
            storeName: row['STR_NM'] as String?,
            zipcode: row['ZIPCODE'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            faxNumber: row['FAX_NO'] as String?,
            businessRegistrationNumber: row['BIZ_REG_NO'] as String?,
            taxSectionCode: row['TAX_SEC_CD'] as String?,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            storeStateCode: row['STR_STAT_CD'] as String?,
            closeBusinessTime: row['CLS_BIZ_TM'] as String?,
            openingHours: row['BIZ_HOUR'] as String?,
            closedDays: row['CLSD_DAY'] as String?,
            parkingTypeCode: row['PARK_TP_CD'] as String?,
            businessSectors: row['BIZ_SEC'] as String?,
            mainProducts: row['MAIN_PRDCT'] as String?,
            ceoName: row['CEO_NM'] as String?,
            ownerName: row['OWR_NM'] as String?,
            linkTypeCode: row['LNK_TP_CD'] as String?,
            serviceTypeCode: row['SVC_TP_CD'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<Store>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_STR',
        mapper: (Map<String, Object?> row) => Store(
            storeId: row['STR_ID'] as String?,
            agencyId: row['AGY_ID'] as String?,
            managerId: row['MGR_ID'] as String?,
            storeName: row['STR_NM'] as String?,
            zipcode: row['ZIPCODE'] as String?,
            primaryAddress: row['PRI_ADRS'] as String?,
            detailAddress: row['DTL_ADRS'] as String?,
            telNumber: row['TEL_NO'] as String?,
            hpNumber: row['HP_NO'] as String?,
            faxNumber: row['FAX_NO'] as String?,
            businessRegistrationNumber: row['BIZ_REG_NO'] as String?,
            taxSectionCode: row['TAX_SEC_CD'] as String?,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            storeStateCode: row['STR_STAT_CD'] as String?,
            closeBusinessTime: row['CLS_BIZ_TM'] as String?,
            openingHours: row['BIZ_HOUR'] as String?,
            closedDays: row['CLSD_DAY'] as String?,
            parkingTypeCode: row['PARK_TP_CD'] as String?,
            businessSectors: row['BIZ_SEC'] as String?,
            mainProducts: row['MAIN_PRDCT'] as String?,
            ceoName: row['CEO_NM'] as String?,
            ownerName: row['OWR_NM'] as String?,
            linkTypeCode: row['LNK_TP_CD'] as String?,
            serviceTypeCode: row['SVC_TP_CD'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'ST1_STR',
        isView: false);
  }

  @override
  Future<void> insertOne(Store item) async {
    await _storeInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<Store> items) async {
    await _storeInsertionAdapter.insertList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(Store item) async {
    await _storeUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<Store> items) async {
    await _storeUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(Store item) async {
    await _storeDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<Store> items) async {
    await _storeDeletionAdapter.deleteList(items);
  }
}

class _$StorePlaceDao extends StorePlaceDao {
  _$StorePlaceDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _storePlaceInsertionAdapter = InsertionAdapter(
            database,
            'ST1_ST_PLACE',
            (StorePlace item) => <String, Object?>{
                  'STR_PLACE_ID': item.storePlaceId,
                  'STR_ID': item.storeId,
                  'PLACE_TYPE': item.placeType,
                  'IS_DEFAULT': item.isDefault,
                  'PLACE_NAME': item.placeName,
                  'PLACE_SHT_NAME': item.placeShortName,
                  'PLACE_DESC': item.placeDesc,
                  'PLACE_ADDRESS1': item.placeAddress1,
                  'PLACE_ADDRESS2': item.placeAddress2,
                  'EMP_ID': item.employeeId,
                  'PLACE_TEL': item.placeTel,
                  'PLACE_TIMEZONE': item.placeTimezone,
                  'USE_DST': item.useDst,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _storePlaceUpdateAdapter = UpdateAdapter(
            database,
            'ST1_ST_PLACE',
            ['STR_PLACE_ID'],
            (StorePlace item) => <String, Object?>{
                  'STR_PLACE_ID': item.storePlaceId,
                  'STR_ID': item.storeId,
                  'PLACE_TYPE': item.placeType,
                  'IS_DEFAULT': item.isDefault,
                  'PLACE_NAME': item.placeName,
                  'PLACE_SHT_NAME': item.placeShortName,
                  'PLACE_DESC': item.placeDesc,
                  'PLACE_ADDRESS1': item.placeAddress1,
                  'PLACE_ADDRESS2': item.placeAddress2,
                  'EMP_ID': item.employeeId,
                  'PLACE_TEL': item.placeTel,
                  'PLACE_TIMEZONE': item.placeTimezone,
                  'USE_DST': item.useDst,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _storePlaceDeletionAdapter = DeletionAdapter(
            database,
            'ST1_ST_PLACE',
            ['STR_PLACE_ID'],
            (StorePlace item) => <String, Object?>{
                  'STR_PLACE_ID': item.storePlaceId,
                  'STR_ID': item.storeId,
                  'PLACE_TYPE': item.placeType,
                  'IS_DEFAULT': item.isDefault,
                  'PLACE_NAME': item.placeName,
                  'PLACE_SHT_NAME': item.placeShortName,
                  'PLACE_DESC': item.placeDesc,
                  'PLACE_ADDRESS1': item.placeAddress1,
                  'PLACE_ADDRESS2': item.placeAddress2,
                  'EMP_ID': item.employeeId,
                  'PLACE_TEL': item.placeTel,
                  'PLACE_TIMEZONE': item.placeTimezone,
                  'USE_DST': item.useDst,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<StorePlace> _storePlaceInsertionAdapter;

  final UpdateAdapter<StorePlace> _storePlaceUpdateAdapter;

  final DeletionAdapter<StorePlace> _storePlaceDeletionAdapter;

  @override
  Future<StorePlace?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_ST_PLACE WHERE STR_PLACE_ID = ?1',
        mapper: (Map<String, Object?> row) => StorePlace(
            storePlaceId: row['STR_PLACE_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            placeType: row['PLACE_TYPE'] as String?,
            isDefault: row['IS_DEFAULT'] as String?,
            placeName: row['PLACE_NAME'] as String?,
            placeShortName: row['PLACE_SHT_NAME'] as String?,
            placeDesc: row['PLACE_DESC'] as String?,
            placeAddress1: row['PLACE_ADDRESS1'] as String?,
            placeAddress2: row['PLACE_ADDRESS2'] as String?,
            employeeId: row['EMP_ID'] as String?,
            placeTel: row['PLACE_TEL'] as String?,
            placeTimezone: row['PLACE_TIMEZONE'] as String?,
            useDst: row['USE_DST'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<StorePlace?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_ST_PLACE ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => StorePlace(
            storePlaceId: row['STR_PLACE_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            placeType: row['PLACE_TYPE'] as String?,
            isDefault: row['IS_DEFAULT'] as String?,
            placeName: row['PLACE_NAME'] as String?,
            placeShortName: row['PLACE_SHT_NAME'] as String?,
            placeDesc: row['PLACE_DESC'] as String?,
            placeAddress1: row['PLACE_ADDRESS1'] as String?,
            placeAddress2: row['PLACE_ADDRESS2'] as String?,
            employeeId: row['EMP_ID'] as String?,
            placeTel: row['PLACE_TEL'] as String?,
            placeTimezone: row['PLACE_TIMEZONE'] as String?,
            useDst: row['USE_DST'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<StorePlace>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_ST_PLACE',
        mapper: (Map<String, Object?> row) => StorePlace(
            storePlaceId: row['STR_PLACE_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            placeType: row['PLACE_TYPE'] as String?,
            isDefault: row['IS_DEFAULT'] as String?,
            placeName: row['PLACE_NAME'] as String?,
            placeShortName: row['PLACE_SHT_NAME'] as String?,
            placeDesc: row['PLACE_DESC'] as String?,
            placeAddress1: row['PLACE_ADDRESS1'] as String?,
            placeAddress2: row['PLACE_ADDRESS2'] as String?,
            employeeId: row['EMP_ID'] as String?,
            placeTel: row['PLACE_TEL'] as String?,
            placeTimezone: row['PLACE_TIMEZONE'] as String?,
            useDst: row['USE_DST'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<StorePlace>>
      findAllOrderByIsDefaultAndLastRevisionDatetime() async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_ST_PLACE ORDER BY IS_DEFAULT,LAST_REV_DTTM DESC',
        mapper: (Map<String, Object?> row) => StorePlace(
            storePlaceId: row['STR_PLACE_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            placeType: row['PLACE_TYPE'] as String?,
            isDefault: row['IS_DEFAULT'] as String?,
            placeName: row['PLACE_NAME'] as String?,
            placeShortName: row['PLACE_SHT_NAME'] as String?,
            placeDesc: row['PLACE_DESC'] as String?,
            placeAddress1: row['PLACE_ADDRESS1'] as String?,
            placeAddress2: row['PLACE_ADDRESS2'] as String?,
            employeeId: row['EMP_ID'] as String?,
            placeTel: row['PLACE_TEL'] as String?,
            placeTimezone: row['PLACE_TIMEZONE'] as String?,
            useDst: row['USE_DST'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<StorePlace>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_ST_PLACE WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => StorePlace(
            storePlaceId: row['STR_PLACE_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            placeType: row['PLACE_TYPE'] as String?,
            isDefault: row['IS_DEFAULT'] as String?,
            placeName: row['PLACE_NAME'] as String?,
            placeShortName: row['PLACE_SHT_NAME'] as String?,
            placeDesc: row['PLACE_DESC'] as String?,
            placeAddress1: row['PLACE_ADDRESS1'] as String?,
            placeAddress2: row['PLACE_ADDRESS2'] as String?,
            employeeId: row['EMP_ID'] as String?,
            placeTel: row['PLACE_TEL'] as String?,
            placeTimezone: row['PLACE_TIMEZONE'] as String?,
            useDst: row['USE_DST'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(StorePlace item) async {
    await _storePlaceInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<StorePlace> items) async {
    await _storePlaceInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(StorePlace item) async {
    await _storePlaceUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<StorePlace> items) async {
    await _storePlaceUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(StorePlace item) async {
    await _storePlaceDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<StorePlace> items) async {
    await _storePlaceDeletionAdapter.deleteList(items);
  }
}

class _$StoreTerminalDao extends StoreTerminalDao {
  _$StoreTerminalDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _storeTerminalInsertionAdapter = InsertionAdapter(
            database,
            'ST1_STR_TRM',
            (StoreTerminal item) => <String, Object?>{
                  'STR_TRM_ID': item.storeTerminalId,
                  'STR_ID': item.storeId,
                  'STR_TRM_GRP_ID': item.storeTerminalGroupId,
                  'TRM_ID': item.terminalId,
                  'STR_TRM_NM': item.storeTerminalName,
                  'DEV_UNIQ_VAL': item.deviceUniqueValue,
                  'MST_TRM_YN': item.masterTerminalYn == null
                      ? null
                      : (item.masterTerminalYn! ? 1 : 0),
                  'MST_TRM_ADRS': item.masterTerminalAddress,
                  'MST_TRM_PORT': item.masterTerminalPort,
                  'TRM_ROLE_SEC_CD': item.terminalRoleSectionCode,
                  'SVR_CONN_YN': item.serverConnectionYn == null
                      ? null
                      : (item.serverConnectionYn! ? 1 : 0),
                  'LANG_CD': item.languageCode,
                  'CUR_CD': item.currencyCode,
                  'APP_ACT_TP_CD': item.appActionTypeCode,
                  'CSHR_AUTO_LGIN_YN': item.cashierAutoLoginYn == null
                      ? null
                      : (item.cashierAutoLoginYn! ? 1 : 0),
                  'INS_LOC': item.installationLocation,
                  'STR_TRM_DESC': item.storeTerminalDescription,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0)
                },
            changeListener),
        _storeTerminalUpdateAdapter = UpdateAdapter(
            database,
            'ST1_STR_TRM',
            ['STR_TRM_ID'],
            (StoreTerminal item) => <String, Object?>{
                  'STR_TRM_ID': item.storeTerminalId,
                  'STR_ID': item.storeId,
                  'STR_TRM_GRP_ID': item.storeTerminalGroupId,
                  'TRM_ID': item.terminalId,
                  'STR_TRM_NM': item.storeTerminalName,
                  'DEV_UNIQ_VAL': item.deviceUniqueValue,
                  'MST_TRM_YN': item.masterTerminalYn == null
                      ? null
                      : (item.masterTerminalYn! ? 1 : 0),
                  'MST_TRM_ADRS': item.masterTerminalAddress,
                  'MST_TRM_PORT': item.masterTerminalPort,
                  'TRM_ROLE_SEC_CD': item.terminalRoleSectionCode,
                  'SVR_CONN_YN': item.serverConnectionYn == null
                      ? null
                      : (item.serverConnectionYn! ? 1 : 0),
                  'LANG_CD': item.languageCode,
                  'CUR_CD': item.currencyCode,
                  'APP_ACT_TP_CD': item.appActionTypeCode,
                  'CSHR_AUTO_LGIN_YN': item.cashierAutoLoginYn == null
                      ? null
                      : (item.cashierAutoLoginYn! ? 1 : 0),
                  'INS_LOC': item.installationLocation,
                  'STR_TRM_DESC': item.storeTerminalDescription,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0)
                },
            changeListener),
        _storeTerminalDeletionAdapter = DeletionAdapter(
            database,
            'ST1_STR_TRM',
            ['STR_TRM_ID'],
            (StoreTerminal item) => <String, Object?>{
                  'STR_TRM_ID': item.storeTerminalId,
                  'STR_ID': item.storeId,
                  'STR_TRM_GRP_ID': item.storeTerminalGroupId,
                  'TRM_ID': item.terminalId,
                  'STR_TRM_NM': item.storeTerminalName,
                  'DEV_UNIQ_VAL': item.deviceUniqueValue,
                  'MST_TRM_YN': item.masterTerminalYn == null
                      ? null
                      : (item.masterTerminalYn! ? 1 : 0),
                  'MST_TRM_ADRS': item.masterTerminalAddress,
                  'MST_TRM_PORT': item.masterTerminalPort,
                  'TRM_ROLE_SEC_CD': item.terminalRoleSectionCode,
                  'SVR_CONN_YN': item.serverConnectionYn == null
                      ? null
                      : (item.serverConnectionYn! ? 1 : 0),
                  'LANG_CD': item.languageCode,
                  'CUR_CD': item.currencyCode,
                  'APP_ACT_TP_CD': item.appActionTypeCode,
                  'CSHR_AUTO_LGIN_YN': item.cashierAutoLoginYn == null
                      ? null
                      : (item.cashierAutoLoginYn! ? 1 : 0),
                  'INS_LOC': item.installationLocation,
                  'STR_TRM_DESC': item.storeTerminalDescription,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<StoreTerminal> _storeTerminalInsertionAdapter;

  final UpdateAdapter<StoreTerminal> _storeTerminalUpdateAdapter;

  final DeletionAdapter<StoreTerminal> _storeTerminalDeletionAdapter;

  @override
  Future<StoreTerminal?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_STR_TRM WHERE STR_TRM_ID = ?1',
        mapper: (Map<String, Object?> row) => StoreTerminal(
            storeTerminalId: row['STR_TRM_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalGroupId: row['STR_TRM_GRP_ID'] as String?,
            terminalId: row['TRM_ID'] as String?,
            storeTerminalName: row['STR_TRM_NM'] as String?,
            deviceUniqueValue: row['DEV_UNIQ_VAL'] as String?,
            masterTerminalYn: row['MST_TRM_YN'] == null
                ? null
                : (row['MST_TRM_YN'] as int) != 0,
            masterTerminalAddress: row['MST_TRM_ADRS'] as String?,
            masterTerminalPort: row['MST_TRM_PORT'] as String?,
            terminalRoleSectionCode: row['TRM_ROLE_SEC_CD'] as String?,
            serverConnectionYn: row['SVR_CONN_YN'] == null
                ? null
                : (row['SVR_CONN_YN'] as int) != 0,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            appActionTypeCode: row['APP_ACT_TP_CD'] as String?,
            cashierAutoLoginYn: row['CSHR_AUTO_LGIN_YN'] == null
                ? null
                : (row['CSHR_AUTO_LGIN_YN'] as int) != 0,
            installationLocation: row['INS_LOC'] as String?,
            storeTerminalDescription: row['STR_TRM_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0),
        arguments: [id]);
  }

  @override
  Future<StoreTerminal?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_STR_TRM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => StoreTerminal(
            storeTerminalId: row['STR_TRM_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalGroupId: row['STR_TRM_GRP_ID'] as String?,
            terminalId: row['TRM_ID'] as String?,
            storeTerminalName: row['STR_TRM_NM'] as String?,
            deviceUniqueValue: row['DEV_UNIQ_VAL'] as String?,
            masterTerminalYn: row['MST_TRM_YN'] == null
                ? null
                : (row['MST_TRM_YN'] as int) != 0,
            masterTerminalAddress: row['MST_TRM_ADRS'] as String?,
            masterTerminalPort: row['MST_TRM_PORT'] as String?,
            terminalRoleSectionCode: row['TRM_ROLE_SEC_CD'] as String?,
            serverConnectionYn: row['SVR_CONN_YN'] == null
                ? null
                : (row['SVR_CONN_YN'] as int) != 0,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            appActionTypeCode: row['APP_ACT_TP_CD'] as String?,
            cashierAutoLoginYn: row['CSHR_AUTO_LGIN_YN'] == null
                ? null
                : (row['CSHR_AUTO_LGIN_YN'] as int) != 0,
            installationLocation: row['INS_LOC'] as String?,
            storeTerminalDescription: row['STR_TRM_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            synchronizedYn: row['SYNCD_YN'] == null
                ? null
                : (row['SYNCD_YN'] as int) != 0));
  }

  @override
  Future<List<StoreTerminal>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_STR_TRM',
        mapper: (Map<String, Object?> row) => StoreTerminal(
            storeTerminalId: row['STR_TRM_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalGroupId: row['STR_TRM_GRP_ID'] as String?,
            terminalId: row['TRM_ID'] as String?,
            storeTerminalName: row['STR_TRM_NM'] as String?,
            deviceUniqueValue: row['DEV_UNIQ_VAL'] as String?,
            masterTerminalYn: row['MST_TRM_YN'] == null
                ? null
                : (row['MST_TRM_YN'] as int) != 0,
            masterTerminalAddress: row['MST_TRM_ADRS'] as String?,
            masterTerminalPort: row['MST_TRM_PORT'] as String?,
            terminalRoleSectionCode: row['TRM_ROLE_SEC_CD'] as String?,
            serverConnectionYn: row['SVR_CONN_YN'] == null
                ? null
                : (row['SVR_CONN_YN'] as int) != 0,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            appActionTypeCode: row['APP_ACT_TP_CD'] as String?,
            cashierAutoLoginYn: row['CSHR_AUTO_LGIN_YN'] == null
                ? null
                : (row['CSHR_AUTO_LGIN_YN'] as int) != 0,
            installationLocation: row['INS_LOC'] as String?,
            storeTerminalDescription: row['STR_TRM_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            synchronizedYn: row['SYNCD_YN'] == null
                ? null
                : (row['SYNCD_YN'] as int) != 0));
  }

  @override
  Stream<List<StoreTerminal>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM ST1_STR_TRM',
        mapper: (Map<String, Object?> row) => StoreTerminal(
            storeTerminalId: row['STR_TRM_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalGroupId: row['STR_TRM_GRP_ID'] as String?,
            terminalId: row['TRM_ID'] as String?,
            storeTerminalName: row['STR_TRM_NM'] as String?,
            deviceUniqueValue: row['DEV_UNIQ_VAL'] as String?,
            masterTerminalYn: row['MST_TRM_YN'] == null
                ? null
                : (row['MST_TRM_YN'] as int) != 0,
            masterTerminalAddress: row['MST_TRM_ADRS'] as String?,
            masterTerminalPort: row['MST_TRM_PORT'] as String?,
            terminalRoleSectionCode: row['TRM_ROLE_SEC_CD'] as String?,
            serverConnectionYn: row['SVR_CONN_YN'] == null
                ? null
                : (row['SVR_CONN_YN'] as int) != 0,
            languageCode: row['LANG_CD'] as String?,
            currencyCode: row['CUR_CD'] as String?,
            appActionTypeCode: row['APP_ACT_TP_CD'] as String?,
            cashierAutoLoginYn: row['CSHR_AUTO_LGIN_YN'] == null
                ? null
                : (row['CSHR_AUTO_LGIN_YN'] as int) != 0,
            installationLocation: row['INS_LOC'] as String?,
            storeTerminalDescription: row['STR_TRM_DESC'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0),
        queryableName: 'ST1_STR_TRM',
        isView: false);
  }

  @override
  Future<void> insertOne(StoreTerminal item) async {
    await _storeTerminalInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<StoreTerminal> items) async {
    await _storeTerminalInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(StoreTerminal item) async {
    await _storeTerminalUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<StoreTerminal> items) async {
    await _storeTerminalUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(StoreTerminal item) async {
    await _storeTerminalDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<StoreTerminal> items) async {
    await _storeTerminalDeletionAdapter.deleteList(items);
  }
}

class _$StoreTerminalBasicDataDao extends StoreTerminalBasicDataDao {
  _$StoreTerminalBasicDataDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _storeTerminalBasicDataInsertionAdapter = InsertionAdapter(
            database,
            'BA1_STR_TRM_BAS_DAT',
            (StoreTerminalBasicData item) => <String, Object?>{
                  'STR_TRM_BAS_DAT_ID': item.storeTerminalBasicDataId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'I18N_TER_ID': item.i18nTermId,
                  'STR_TRM_BAS_DAT_CD_NM': item.storeTerminalBasicDataCodeName,
                  'STR_TRM_BAS_DAT_NM': item.storeTerminalBasicDataName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _storeTerminalBasicDataUpdateAdapter = UpdateAdapter(
            database,
            'BA1_STR_TRM_BAS_DAT',
            ['STR_TRM_BAS_DAT_ID'],
            (StoreTerminalBasicData item) => <String, Object?>{
                  'STR_TRM_BAS_DAT_ID': item.storeTerminalBasicDataId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'I18N_TER_ID': item.i18nTermId,
                  'STR_TRM_BAS_DAT_CD_NM': item.storeTerminalBasicDataCodeName,
                  'STR_TRM_BAS_DAT_NM': item.storeTerminalBasicDataName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener),
        _storeTerminalBasicDataDeletionAdapter = DeletionAdapter(
            database,
            'BA1_STR_TRM_BAS_DAT',
            ['STR_TRM_BAS_DAT_ID'],
            (StoreTerminalBasicData item) => <String, Object?>{
                  'STR_TRM_BAS_DAT_ID': item.storeTerminalBasicDataId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'I18N_TER_ID': item.i18nTermId,
                  'STR_TRM_BAS_DAT_CD_NM': item.storeTerminalBasicDataCodeName,
                  'STR_TRM_BAS_DAT_NM': item.storeTerminalBasicDataName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<StoreTerminalBasicData>
      _storeTerminalBasicDataInsertionAdapter;

  final UpdateAdapter<StoreTerminalBasicData>
      _storeTerminalBasicDataUpdateAdapter;

  final DeletionAdapter<StoreTerminalBasicData>
      _storeTerminalBasicDataDeletionAdapter;

  @override
  Future<StoreTerminalBasicData?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT WHERE STR_TRM_BAS_DAT_ID = ?1',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicData(
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataCodeName:
                row['STR_TRM_BAS_DAT_CD_NM'] as String?,
            storeTerminalBasicDataName: row['STR_TRM_BAS_DAT_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<StoreTerminalBasicData?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicData(
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataCodeName:
                row['STR_TRM_BAS_DAT_CD_NM'] as String?,
            storeTerminalBasicDataName: row['STR_TRM_BAS_DAT_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<StoreTerminalBasicData>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_STR_TRM_BAS_DAT',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicData(
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataCodeName:
                row['STR_TRM_BAS_DAT_CD_NM'] as String?,
            storeTerminalBasicDataName: row['STR_TRM_BAS_DAT_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Stream<List<StoreTerminalBasicData>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM BA1_STR_TRM_BAS_DAT',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicData(
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataCodeName:
                row['STR_TRM_BAS_DAT_CD_NM'] as String?,
            storeTerminalBasicDataName: row['STR_TRM_BAS_DAT_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        queryableName: 'BA1_STR_TRM_BAS_DAT',
        isView: false);
  }

  @override
  Future<void> insertOne(StoreTerminalBasicData item) async {
    await _storeTerminalBasicDataInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<StoreTerminalBasicData> items) async {
    await _storeTerminalBasicDataInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(StoreTerminalBasicData item) async {
    await _storeTerminalBasicDataUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<StoreTerminalBasicData> items) async {
    await _storeTerminalBasicDataUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(StoreTerminalBasicData item) async {
    await _storeTerminalBasicDataDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<StoreTerminalBasicData> items) async {
    await _storeTerminalBasicDataDeletionAdapter.deleteList(items);
  }
}

class _$StoreTerminalBasicDataItemDao extends StoreTerminalBasicDataItemDao {
  _$StoreTerminalBasicDataItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _storeTerminalBasicDataItemInsertionAdapter = InsertionAdapter(
            database,
            'BA1_STR_TRM_BAS_DAT_ITM',
            (StoreTerminalBasicDataItem item) => <String, Object?>{
                  'STR_TRM_BAS_DAT_ITM_ID': item.storeTerminalBasicDataItemId,
                  'STR_TRM_BAS_DAT_ID': item.storeTerminalBasicDataId,
                  'I18N_TER_ID': item.i18nTermId,
                  'STR_TRM_BAS_DAT_ITM_SNO':
                      item.storeTerminalBasicDataItemSerialNumber,
                  'STR_TRM_BAS_DAT_ITM_CD_NM':
                      item.storeTerminalBasicDataItemCodeName,
                  'STR_TRM_BAS_DAT_ITM_NM': item.storeTerminalBasicDataItemName,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _storeTerminalBasicDataItemUpdateAdapter = UpdateAdapter(
            database,
            'BA1_STR_TRM_BAS_DAT_ITM',
            ['STR_TRM_BAS_DAT_ITM_ID'],
            (StoreTerminalBasicDataItem item) => <String, Object?>{
                  'STR_TRM_BAS_DAT_ITM_ID': item.storeTerminalBasicDataItemId,
                  'STR_TRM_BAS_DAT_ID': item.storeTerminalBasicDataId,
                  'I18N_TER_ID': item.i18nTermId,
                  'STR_TRM_BAS_DAT_ITM_SNO':
                      item.storeTerminalBasicDataItemSerialNumber,
                  'STR_TRM_BAS_DAT_ITM_CD_NM':
                      item.storeTerminalBasicDataItemCodeName,
                  'STR_TRM_BAS_DAT_ITM_NM': item.storeTerminalBasicDataItemName,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _storeTerminalBasicDataItemDeletionAdapter = DeletionAdapter(
            database,
            'BA1_STR_TRM_BAS_DAT_ITM',
            ['STR_TRM_BAS_DAT_ITM_ID'],
            (StoreTerminalBasicDataItem item) => <String, Object?>{
                  'STR_TRM_BAS_DAT_ITM_ID': item.storeTerminalBasicDataItemId,
                  'STR_TRM_BAS_DAT_ID': item.storeTerminalBasicDataId,
                  'I18N_TER_ID': item.i18nTermId,
                  'STR_TRM_BAS_DAT_ITM_SNO':
                      item.storeTerminalBasicDataItemSerialNumber,
                  'STR_TRM_BAS_DAT_ITM_CD_NM':
                      item.storeTerminalBasicDataItemCodeName,
                  'STR_TRM_BAS_DAT_ITM_NM': item.storeTerminalBasicDataItemName,
                  'DAT_1': item.data1,
                  'DAT_2': item.data2,
                  'DAT_3': item.data3,
                  'DAT_4': item.data4,
                  'DAT_5': item.data5,
                  'DAT_6': item.data6,
                  'DAT_7': item.data7,
                  'DAT_8': item.data8,
                  'DAT_9': item.data9,
                  'DAT_10': item.data10,
                  'DAT_11': item.data11,
                  'DAT_12': item.data12,
                  'DAT_13': item.data13,
                  'DAT_14': item.data14,
                  'DAT_15': item.data15,
                  'DAT_16': item.data16,
                  'DAT_17': item.data17,
                  'DAT_18': item.data18,
                  'DAT_19': item.data19,
                  'DAT_20': item.data20,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<StoreTerminalBasicDataItem>
      _storeTerminalBasicDataItemInsertionAdapter;

  final UpdateAdapter<StoreTerminalBasicDataItem>
      _storeTerminalBasicDataItemUpdateAdapter;

  final DeletionAdapter<StoreTerminalBasicDataItem>
      _storeTerminalBasicDataItemDeletionAdapter;

  @override
  Future<StoreTerminalBasicDataItem?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM WHERE STR_TRM_BAS_DAT_ITM_ID = ?1',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicDataItem(storeTerminalBasicDataItemId: row['STR_TRM_BAS_DAT_ITM_ID'] as String?, storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, storeTerminalBasicDataItemSerialNumber: row['STR_TRM_BAS_DAT_ITM_SNO'] as int?, storeTerminalBasicDataItemCodeName: row['STR_TRM_BAS_DAT_ITM_CD_NM'] as String?, storeTerminalBasicDataItemName: row['STR_TRM_BAS_DAT_ITM_NM'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, data11: row['DAT_11'] as String?, data12: row['DAT_12'] as String?, data13: row['DAT_13'] as String?, data14: row['DAT_14'] as String?, data15: row['DAT_15'] as String?, data16: row['DAT_16'] as String?, data17: row['DAT_17'] as String?, data18: row['DAT_18'] as String?, data19: row['DAT_19'] as String?, data20: row['DAT_20'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<StoreTerminalBasicDataItem?>
      findByStoreTerminalBasicDataCodeNameAndStoreTerminalBasicDataItemCodeName(
          String storeTerminalBasicDataCodeName,
          String storeTerminalBasicDataItemCodeName) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM AS ITEM JOIN BA1_STR_TRM_BAS_DAT AS DATA ON ITEM.STR_TRM_BAS_DAT_ID = DATA.STR_TRM_BAS_DAT_ID WHERE DATA.STR_TRM_BAS_DAT_CD_NM  =?1 AND ITEM.STR_TRM_BAS_DAT_ITM_CD_NM = ?2',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicDataItem(storeTerminalBasicDataItemId: row['STR_TRM_BAS_DAT_ITM_ID'] as String?, storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, storeTerminalBasicDataItemSerialNumber: row['STR_TRM_BAS_DAT_ITM_SNO'] as int?, storeTerminalBasicDataItemCodeName: row['STR_TRM_BAS_DAT_ITM_CD_NM'] as String?, storeTerminalBasicDataItemName: row['STR_TRM_BAS_DAT_ITM_NM'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, data11: row['DAT_11'] as String?, data12: row['DAT_12'] as String?, data13: row['DAT_13'] as String?, data14: row['DAT_14'] as String?, data15: row['DAT_15'] as String?, data16: row['DAT_16'] as String?, data17: row['DAT_17'] as String?, data18: row['DAT_18'] as String?, data19: row['DAT_19'] as String?, data20: row['DAT_20'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [
          storeTerminalBasicDataCodeName,
          storeTerminalBasicDataItemCodeName
        ]);
  }

  @override
  Future<StoreTerminalBasicDataItem?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicDataItem(
            storeTerminalBasicDataItemId:
                row['STR_TRM_BAS_DAT_ITM_ID'] as String?,
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataItemSerialNumber:
                row['STR_TRM_BAS_DAT_ITM_SNO'] as int?,
            storeTerminalBasicDataItemCodeName:
                row['STR_TRM_BAS_DAT_ITM_CD_NM'] as String?,
            storeTerminalBasicDataItemName:
                row['STR_TRM_BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<StoreTerminalBasicDataItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicDataItem(
            storeTerminalBasicDataItemId:
                row['STR_TRM_BAS_DAT_ITM_ID'] as String?,
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataItemSerialNumber:
                row['STR_TRM_BAS_DAT_ITM_SNO'] as int?,
            storeTerminalBasicDataItemCodeName:
                row['STR_TRM_BAS_DAT_ITM_CD_NM'] as String?,
            storeTerminalBasicDataItemName:
                row['STR_TRM_BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<StoreTerminalBasicDataItem>>
      findAllByStoreTerminalBasicDataCodeName(
          String storeTerminalBasicDataCodeName) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM AS ITEM JOIN BA1_STR_TRM_BAS_DAT AS DATA ON ITEM.STR_TRM_BAS_DAT_ID = DATA.STR_TRM_BAS_DAT_ID WHERE DATA.STR_TRM_BAS_DAT_CD_NM  =?1 ORDER BY STR_TRM_BAS_DAT_ITM_SNO ASC',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicDataItem(storeTerminalBasicDataItemId: row['STR_TRM_BAS_DAT_ITM_ID'] as String?, storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?, i18nTermId: row['I18N_TER_ID'] as String?, storeTerminalBasicDataItemSerialNumber: row['STR_TRM_BAS_DAT_ITM_SNO'] as int?, storeTerminalBasicDataItemCodeName: row['STR_TRM_BAS_DAT_ITM_CD_NM'] as String?, storeTerminalBasicDataItemName: row['STR_TRM_BAS_DAT_ITM_NM'] as String?, data1: row['DAT_1'] as String?, data2: row['DAT_2'] as String?, data3: row['DAT_3'] as String?, data4: row['DAT_4'] as String?, data5: row['DAT_5'] as String?, data6: row['DAT_6'] as String?, data7: row['DAT_7'] as String?, data8: row['DAT_8'] as String?, data9: row['DAT_9'] as String?, data10: row['DAT_10'] as String?, data11: row['DAT_11'] as String?, data12: row['DAT_12'] as String?, data13: row['DAT_13'] as String?, data14: row['DAT_14'] as String?, data15: row['DAT_15'] as String?, data16: row['DAT_16'] as String?, data17: row['DAT_17'] as String?, data18: row['DAT_18'] as String?, data19: row['DAT_19'] as String?, data20: row['DAT_20'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [storeTerminalBasicDataCodeName]);
  }

  @override
  Future<List<StoreTerminalBasicDataItem>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => StoreTerminalBasicDataItem(
            storeTerminalBasicDataItemId:
                row['STR_TRM_BAS_DAT_ITM_ID'] as String?,
            storeTerminalBasicDataId: row['STR_TRM_BAS_DAT_ID'] as String?,
            i18nTermId: row['I18N_TER_ID'] as String?,
            storeTerminalBasicDataItemSerialNumber:
                row['STR_TRM_BAS_DAT_ITM_SNO'] as int?,
            storeTerminalBasicDataItemCodeName:
                row['STR_TRM_BAS_DAT_ITM_CD_NM'] as String?,
            storeTerminalBasicDataItemName:
                row['STR_TRM_BAS_DAT_ITM_NM'] as String?,
            data1: row['DAT_1'] as String?,
            data2: row['DAT_2'] as String?,
            data3: row['DAT_3'] as String?,
            data4: row['DAT_4'] as String?,
            data5: row['DAT_5'] as String?,
            data6: row['DAT_6'] as String?,
            data7: row['DAT_7'] as String?,
            data8: row['DAT_8'] as String?,
            data9: row['DAT_9'] as String?,
            data10: row['DAT_10'] as String?,
            data11: row['DAT_11'] as String?,
            data12: row['DAT_12'] as String?,
            data13: row['DAT_13'] as String?,
            data14: row['DAT_14'] as String?,
            data15: row['DAT_15'] as String?,
            data16: row['DAT_16'] as String?,
            data17: row['DAT_17'] as String?,
            data18: row['DAT_18'] as String?,
            data19: row['DAT_19'] as String?,
            data20: row['DAT_20'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(StoreTerminalBasicDataItem item) async {
    await _storeTerminalBasicDataItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<StoreTerminalBasicDataItem> items) async {
    await _storeTerminalBasicDataItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(StoreTerminalBasicDataItem item) async {
    await _storeTerminalBasicDataItemUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<StoreTerminalBasicDataItem> items) async {
    await _storeTerminalBasicDataItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(StoreTerminalBasicDataItem item) async {
    await _storeTerminalBasicDataItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<StoreTerminalBasicDataItem> items) async {
    await _storeTerminalBasicDataItemDeletionAdapter.deleteList(items);
  }
}

class _$TableDao extends TableDao {
  _$TableDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _tableInsertionAdapter = InsertionAdapter(
            database,
            'ST1_TAB',
            (Table item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'SRV_TAB_ID': item.serverTableId,
                  'TAB_GRP_ID': item.tableGroupId,
                  'TAB_NM': item.tableName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'WID': item.width,
                  'HGHT': item.height,
                  'TAB_IMG_NM': item.tableImageName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableUpdateAdapter = UpdateAdapter(
            database,
            'ST1_TAB',
            ['TAB_ID'],
            (Table item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'SRV_TAB_ID': item.serverTableId,
                  'TAB_GRP_ID': item.tableGroupId,
                  'TAB_NM': item.tableName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'WID': item.width,
                  'HGHT': item.height,
                  'TAB_IMG_NM': item.tableImageName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableDeletionAdapter = DeletionAdapter(
            database,
            'ST1_TAB',
            ['TAB_ID'],
            (Table item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'SRV_TAB_ID': item.serverTableId,
                  'TAB_GRP_ID': item.tableGroupId,
                  'TAB_NM': item.tableName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'WID': item.width,
                  'HGHT': item.height,
                  'TAB_IMG_NM': item.tableImageName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Table> _tableInsertionAdapter;

  final UpdateAdapter<Table> _tableUpdateAdapter;

  final DeletionAdapter<Table> _tableDeletionAdapter;

  @override
  Future<Table?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_TAB WHERE TAB_ID = ?1',
        mapper: (Map<String, Object?> row) => Table(
            tableId: row['TAB_ID'] as String?,
            serverTableId: row['SRV_TAB_ID'] as String?,
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableName: row['TAB_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            width: row['WID'] as int?,
            height: row['HGHT'] as int?,
            tableImageName: row['TAB_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<Table?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_TAB ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => Table(
            tableId: row['TAB_ID'] as String?,
            serverTableId: row['SRV_TAB_ID'] as String?,
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableName: row['TAB_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            width: row['WID'] as int?,
            height: row['HGHT'] as int?,
            tableImageName: row['TAB_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Table>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_TAB',
        mapper: (Map<String, Object?> row) => Table(
            tableId: row['TAB_ID'] as String?,
            serverTableId: row['SRV_TAB_ID'] as String?,
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableName: row['TAB_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            width: row['WID'] as int?,
            height: row['HGHT'] as int?,
            tableImageName: row['TAB_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<Table>> findAllByGroupId(String groupId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_TAB WHERE TAB_GRP_ID = ?1 AND HIDE_YN = 0 AND STAT_CD <> \"99\" ORDER BY TAB_NM',
        mapper: (Map<String, Object?> row) => Table(tableId: row['TAB_ID'] as String?, serverTableId: row['SRV_TAB_ID'] as String?, tableGroupId: row['TAB_GRP_ID'] as String?, tableName: row['TAB_NM'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, width: row['WID'] as int?, height: row['HGHT'] as int?, tableImageName: row['TAB_IMG_NM'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [groupId]);
  }

  @override
  Future<List<Table>> findAllByIdLike(String id) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_TAB WHERE TAB_ID LIKE ?1 AND HIDE_YN = 0 AND STAT_CD <> \"99\" ORDER BY TAB_NM',
        mapper: (Map<String, Object?> row) => Table(tableId: row['TAB_ID'] as String?, serverTableId: row['SRV_TAB_ID'] as String?, tableGroupId: row['TAB_GRP_ID'] as String?, tableName: row['TAB_NM'] as String?, locationX: row['LOC_X'] as int?, locationY: row['LOC_Y'] as int?, width: row['WID'] as int?, height: row['HGHT'] as int?, tableImageName: row['TAB_IMG_NM'] as String?, hidingYn: row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<Table?> findByServerTableId(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_TAB WHERE SRV_TAB_ID = ?1',
        mapper: (Map<String, Object?> row) => Table(
            tableId: row['TAB_ID'] as String?,
            serverTableId: row['SRV_TAB_ID'] as String?,
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableName: row['TAB_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            width: row['WID'] as int?,
            height: row['HGHT'] as int?,
            tableImageName: row['TAB_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> insertOne(Table item) async {
    await _tableInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<Table> items) async {
    await _tableInsertionAdapter.insertList(items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(Table item) async {
    await _tableUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<Table> items) async {
    await _tableUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(Table item) async {
    await _tableDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<Table> items) async {
    await _tableDeletionAdapter.deleteList(items);
  }
}

class _$TableDetailDao extends TableDetailDao {
  _$TableDetailDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _tableDetailInsertionAdapter = InsertionAdapter(
            database,
            'ST1_TAB_DTL',
            (TableDetail item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'SEAT_CNT': item.seatCount,
                  'SMK_PSBL_YN': item.smokingPossibleYn == null
                      ? null
                      : (item.smokingPossibleYn! ? 1 : 0),
                  'WIN_YN':
                      item.windowYn == null ? null : (item.windowYn! ? 1 : 0),
                  'BTH_YN':
                      item.boothYn == null ? null : (item.boothYn! ? 1 : 0),
                  'PRVCY_PRTCT_YN': item.privacyProtectionYn == null
                      ? null
                      : (item.privacyProtectionYn! ? 1 : 0),
                  'CHRGD_SVR_ID': item.chargedServerId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableDetailUpdateAdapter = UpdateAdapter(
            database,
            'ST1_TAB_DTL',
            ['TAB_ID'],
            (TableDetail item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'SEAT_CNT': item.seatCount,
                  'SMK_PSBL_YN': item.smokingPossibleYn == null
                      ? null
                      : (item.smokingPossibleYn! ? 1 : 0),
                  'WIN_YN':
                      item.windowYn == null ? null : (item.windowYn! ? 1 : 0),
                  'BTH_YN':
                      item.boothYn == null ? null : (item.boothYn! ? 1 : 0),
                  'PRVCY_PRTCT_YN': item.privacyProtectionYn == null
                      ? null
                      : (item.privacyProtectionYn! ? 1 : 0),
                  'CHRGD_SVR_ID': item.chargedServerId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableDetailDeletionAdapter = DeletionAdapter(
            database,
            'ST1_TAB_DTL',
            ['TAB_ID'],
            (TableDetail item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'SEAT_CNT': item.seatCount,
                  'SMK_PSBL_YN': item.smokingPossibleYn == null
                      ? null
                      : (item.smokingPossibleYn! ? 1 : 0),
                  'WIN_YN':
                      item.windowYn == null ? null : (item.windowYn! ? 1 : 0),
                  'BTH_YN':
                      item.boothYn == null ? null : (item.boothYn! ? 1 : 0),
                  'PRVCY_PRTCT_YN': item.privacyProtectionYn == null
                      ? null
                      : (item.privacyProtectionYn! ? 1 : 0),
                  'CHRGD_SVR_ID': item.chargedServerId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TableDetail> _tableDetailInsertionAdapter;

  final UpdateAdapter<TableDetail> _tableDetailUpdateAdapter;

  final DeletionAdapter<TableDetail> _tableDetailDeletionAdapter;

  @override
  Future<TableDetail?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_TAB_DTL WHERE TAB_ID = ?1',
        mapper: (Map<String, Object?> row) => TableDetail(
            tableId: row['TAB_ID'] as String?,
            seatCount: row['SEAT_CNT'] as int?,
            smokingPossibleYn: row['SMK_PSBL_YN'] == null
                ? null
                : (row['SMK_PSBL_YN'] as int) != 0,
            windowYn:
                row['WIN_YN'] == null ? null : (row['WIN_YN'] as int) != 0,
            boothYn: row['BTH_YN'] == null ? null : (row['BTH_YN'] as int) != 0,
            privacyProtectionYn: row['PRVCY_PRTCT_YN'] == null
                ? null
                : (row['PRVCY_PRTCT_YN'] as int) != 0,
            chargedServerId: row['CHRGD_SVR_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<TableDetail?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_TAB_DTL ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => TableDetail(
            tableId: row['TAB_ID'] as String?,
            seatCount: row['SEAT_CNT'] as int?,
            smokingPossibleYn: row['SMK_PSBL_YN'] == null
                ? null
                : (row['SMK_PSBL_YN'] as int) != 0,
            windowYn:
                row['WIN_YN'] == null ? null : (row['WIN_YN'] as int) != 0,
            boothYn: row['BTH_YN'] == null ? null : (row['BTH_YN'] as int) != 0,
            privacyProtectionYn: row['PRVCY_PRTCT_YN'] == null
                ? null
                : (row['PRVCY_PRTCT_YN'] as int) != 0,
            chargedServerId: row['CHRGD_SVR_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TableDetail>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_TAB_DTL',
        mapper: (Map<String, Object?> row) => TableDetail(
            tableId: row['TAB_ID'] as String?,
            seatCount: row['SEAT_CNT'] as int?,
            smokingPossibleYn: row['SMK_PSBL_YN'] == null
                ? null
                : (row['SMK_PSBL_YN'] as int) != 0,
            windowYn:
                row['WIN_YN'] == null ? null : (row['WIN_YN'] as int) != 0,
            boothYn: row['BTH_YN'] == null ? null : (row['BTH_YN'] as int) != 0,
            privacyProtectionYn: row['PRVCY_PRTCT_YN'] == null
                ? null
                : (row['PRVCY_PRTCT_YN'] as int) != 0,
            chargedServerId: row['CHRGD_SVR_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(TableDetail item) async {
    await _tableDetailInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<TableDetail> items) async {
    await _tableDetailInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(TableDetail item) async {
    await _tableDetailUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<TableDetail> items) async {
    await _tableDetailUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TableDetail item) async {
    await _tableDetailDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<TableDetail> items) async {
    await _tableDetailDeletionAdapter.deleteList(items);
  }
}

class _$TableGroupDao extends TableGroupDao {
  _$TableGroupDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _tableGroupInsertionAdapter = InsertionAdapter(
            database,
            'ST1_TAB_GRP',
            (TableGroup item) => <String, Object?>{
                  'TAB_GRP_ID': item.tableGroupId,
                  'TAB_GRP_NM': item.tableGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableGroupUpdateAdapter = UpdateAdapter(
            database,
            'ST1_TAB_GRP',
            ['TAB_GRP_ID'],
            (TableGroup item) => <String, Object?>{
                  'TAB_GRP_ID': item.tableGroupId,
                  'TAB_GRP_NM': item.tableGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableGroupDeletionAdapter = DeletionAdapter(
            database,
            'ST1_TAB_GRP',
            ['TAB_GRP_ID'],
            (TableGroup item) => <String, Object?>{
                  'TAB_GRP_ID': item.tableGroupId,
                  'TAB_GRP_NM': item.tableGroupName,
                  'LOC_X': item.locationX,
                  'LOC_Y': item.locationY,
                  'LOC_Z': item.locationZ,
                  'BG_IMG_NM': item.backgroundImageName,
                  'HIDE_YN':
                      item.hidingYn == null ? null : (item.hidingYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TableGroup> _tableGroupInsertionAdapter;

  final UpdateAdapter<TableGroup> _tableGroupUpdateAdapter;

  final DeletionAdapter<TableGroup> _tableGroupDeletionAdapter;

  @override
  Future<TableGroup?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_TAB_GRP WHERE TAB_GRP_ID = ?1',
        mapper: (Map<String, Object?> row) => TableGroup(
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableGroupName: row['TAB_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<TableGroup?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_TAB_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => TableGroup(
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableGroupName: row['TAB_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TableGroup>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_TAB_GRP',
        mapper: (Map<String, Object?> row) => TableGroup(
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableGroupName: row['TAB_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TableGroup>> findAllOrderByLocation() async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_TAB_GRP WHERE HIDE_YN = 0 AND STAT_CD <> \"99\" ORDER BY LOC_Z,LOC_Y,LOC_X',
        mapper: (Map<String, Object?> row) => TableGroup(
            tableGroupId: row['TAB_GRP_ID'] as String?,
            tableGroupName: row['TAB_GRP_NM'] as String?,
            locationX: row['LOC_X'] as int?,
            locationY: row['LOC_Y'] as int?,
            locationZ: row['LOC_Z'] as int?,
            backgroundImageName: row['BG_IMG_NM'] as String?,
            hidingYn:
                row['HIDE_YN'] == null ? null : (row['HIDE_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(TableGroup item) async {
    await _tableGroupInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<TableGroup> items) async {
    await _tableGroupInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(TableGroup item) async {
    await _tableGroupUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<TableGroup> items) async {
    await _tableGroupUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TableGroup item) async {
    await _tableGroupDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<TableGroup> items) async {
    await _tableGroupDeletionAdapter.deleteList(items);
  }
}

class _$TableLinkDao extends TableLinkDao {
  _$TableLinkDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _tableLinkInsertionAdapter = InsertionAdapter(
            database,
            'ST1_TAB_LNK',
            (TableLink item) => <String, Object?>{
                  'ID': item.id,
                  'TAB_ID': item.tableId,
                  'LNKD_TAB_ID': item.linkedTableId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableLinkUpdateAdapter = UpdateAdapter(
            database,
            'ST1_TAB_LNK',
            ['ID'],
            (TableLink item) => <String, Object?>{
                  'ID': item.id,
                  'TAB_ID': item.tableId,
                  'LNKD_TAB_ID': item.linkedTableId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _tableLinkDeletionAdapter = DeletionAdapter(
            database,
            'ST1_TAB_LNK',
            ['ID'],
            (TableLink item) => <String, Object?>{
                  'ID': item.id,
                  'TAB_ID': item.tableId,
                  'LNKD_TAB_ID': item.linkedTableId,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TableLink> _tableLinkInsertionAdapter;

  final UpdateAdapter<TableLink> _tableLinkUpdateAdapter;

  final DeletionAdapter<TableLink> _tableLinkDeletionAdapter;

  @override
  Future<TableLink?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_TAB_LNK WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => TableLink(
            id: row['ID'] as String?,
            tableId: row['TAB_ID'] as String?,
            linkedTableId: row['LNKD_TAB_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<TableLink?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_TAB_LNK ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => TableLink(
            id: row['ID'] as String?,
            tableId: row['TAB_ID'] as String?,
            linkedTableId: row['LNKD_TAB_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TableLink>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_TAB_LNK',
        mapper: (Map<String, Object?> row) => TableLink(
            id: row['ID'] as String?,
            tableId: row['TAB_ID'] as String?,
            linkedTableId: row['LNKD_TAB_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TableLink>> findAllByTableId(String tableId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_TAB_LNK WHERE TAB_ID = ?1 ORDER BY LNKD_TAB_ID',
        mapper: (Map<String, Object?> row) => TableLink(
            id: row['ID'] as String?,
            tableId: row['TAB_ID'] as String?,
            linkedTableId: row['LNKD_TAB_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [tableId]);
  }

  @override
  Future<List<TableLink>> findAllByLinkedTableId(String tableId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ST1_TAB_LNK WHERE LNKD_TAB_ID = ?1',
        mapper: (Map<String, Object?> row) => TableLink(
            id: row['ID'] as String?,
            tableId: row['TAB_ID'] as String?,
            linkedTableId: row['LNKD_TAB_ID'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [tableId]);
  }

  @override
  Future<void> insertOne(TableLink item) async {
    await _tableLinkInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<TableLink> items) async {
    await _tableLinkInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(TableLink item) async {
    await _tableLinkUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<TableLink> items) async {
    await _tableLinkUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TableLink item) async {
    await _tableLinkDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<TableLink> items) async {
    await _tableLinkDeletionAdapter.deleteList(items);
  }
}

class _$TableProcessDao extends TableProcessDao {
  _$TableProcessDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _tableProcessInsertionAdapter = InsertionAdapter(
            database,
            'ST1_TAB_PROC',
            (TableProcess item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'TAB_PROC_STAT_CD': item.tableProcessStateCode,
                  'VIP_YN': item.vipYn == null ? null : (item.vipYn! ? 1 : 0)
                }),
        _tableProcessUpdateAdapter = UpdateAdapter(
            database,
            'ST1_TAB_PROC',
            ['TAB_ID'],
            (TableProcess item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'TAB_PROC_STAT_CD': item.tableProcessStateCode,
                  'VIP_YN': item.vipYn == null ? null : (item.vipYn! ? 1 : 0)
                }),
        _tableProcessDeletionAdapter = DeletionAdapter(
            database,
            'ST1_TAB_PROC',
            ['TAB_ID'],
            (TableProcess item) => <String, Object?>{
                  'TAB_ID': item.tableId,
                  'TAB_PROC_STAT_CD': item.tableProcessStateCode,
                  'VIP_YN': item.vipYn == null ? null : (item.vipYn! ? 1 : 0)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TableProcess> _tableProcessInsertionAdapter;

  final UpdateAdapter<TableProcess> _tableProcessUpdateAdapter;

  final DeletionAdapter<TableProcess> _tableProcessDeletionAdapter;

  @override
  Future<TableProcess?> findById(String id) async {
    return _queryAdapter.query('SELECT * FROM ST1_TAB_PROC WHERE TAB_ID = ?1',
        mapper: (Map<String, Object?> row) => TableProcess(
            tableId: row['TAB_ID'] as String?,
            tableProcessStateCode: row['TAB_PROC_STAT_CD'] as int?,
            vipYn: row['VIP_YN'] == null ? null : (row['VIP_YN'] as int) != 0),
        arguments: [id]);
  }

  @override
  Future<TableProcess?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM ST1_TAB_PROC ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => TableProcess(
            tableId: row['TAB_ID'] as String?,
            tableProcessStateCode: row['TAB_PROC_STAT_CD'] as int?,
            vipYn: row['VIP_YN'] == null ? null : (row['VIP_YN'] as int) != 0));
  }

  @override
  Future<List<TableProcess>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ST1_TAB_PROC',
        mapper: (Map<String, Object?> row) => TableProcess(
            tableId: row['TAB_ID'] as String?,
            tableProcessStateCode: row['TAB_PROC_STAT_CD'] as int?,
            vipYn: row['VIP_YN'] == null ? null : (row['VIP_YN'] as int) != 0));
  }

  @override
  Future<void> insertOne(TableProcess item) async {
    await _tableProcessInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<TableProcess> items) async {
    await _tableProcessInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(TableProcess item) async {
    await _tableProcessUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<TableProcess> items) async {
    await _tableProcessUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TableProcess item) async {
    await _tableProcessDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<TableProcess> items) async {
    await _tableProcessDeletionAdapter.deleteList(items);
  }
}

class _$TemplateItemDao extends TemplateItemDao {
  _$TemplateItemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _templateItemInsertionAdapter = InsertionAdapter(
            database,
            'BA1_TEMPLATE_ITEM',
            (TemplateItem item) => <String, Object?>{
                  'TEMPLATE_ITEM_ID': item.templateItemId,
                  'NAME': item.name,
                  'TEMPLATE': item.template,
                  'CUT': item.cut,
                  'IS_LIST_TYPE': item.isListType,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _templateItemUpdateAdapter = UpdateAdapter(
            database,
            'BA1_TEMPLATE_ITEM',
            ['TEMPLATE_ITEM_ID'],
            (TemplateItem item) => <String, Object?>{
                  'TEMPLATE_ITEM_ID': item.templateItemId,
                  'NAME': item.name,
                  'TEMPLATE': item.template,
                  'CUT': item.cut,
                  'IS_LIST_TYPE': item.isListType,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _templateItemDeletionAdapter = DeletionAdapter(
            database,
            'BA1_TEMPLATE_ITEM',
            ['TEMPLATE_ITEM_ID'],
            (TemplateItem item) => <String, Object?>{
                  'TEMPLATE_ITEM_ID': item.templateItemId,
                  'NAME': item.name,
                  'TEMPLATE': item.template,
                  'CUT': item.cut,
                  'IS_LIST_TYPE': item.isListType,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0),
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TemplateItem> _templateItemInsertionAdapter;

  final UpdateAdapter<TemplateItem> _templateItemUpdateAdapter;

  final DeletionAdapter<TemplateItem> _templateItemDeletionAdapter;

  @override
  Future<TemplateItem?> findById(String id) async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_TEMPLATE_ITEM WHERE TEMPLATE_ITEM_ID = ?1',
        mapper: (Map<String, Object?> row) => TemplateItem(
            templateItemId: row['TEMPLATE_ITEM_ID'] as String?,
            name: row['NAME'] as String?,
            template: row['TEMPLATE'] as String?,
            cut: row['CUT'] as String?,
            isListType: row['IS_LIST_TYPE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<TemplateItem?> findOrderByLastRevisionDatetime() async {
    return _queryAdapter.query(
        'SELECT * FROM BA1_TEMPLATE_ITEM ORDER BY LAST_REV_DTTM DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => TemplateItem(
            templateItemId: row['TEMPLATE_ITEM_ID'] as String?,
            name: row['NAME'] as String?,
            template: row['TEMPLATE'] as String?,
            cut: row['CUT'] as String?,
            isListType: row['IS_LIST_TYPE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TemplateItem>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM BA1_TEMPLATE_ITEM',
        mapper: (Map<String, Object?> row) => TemplateItem(
            templateItemId: row['TEMPLATE_ITEM_ID'] as String?,
            name: row['NAME'] as String?,
            template: row['TEMPLATE'] as String?,
            cut: row['CUT'] as String?,
            isListType: row['IS_LIST_TYPE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<TemplateItem>> findAllByTemplateItemIdAndStateCode(
      String templateItemId, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_TEMPLATE_ITEM WHERE TEMPLATE_ITEM_ID = ?1 AND STAT_CD != ?2',
        mapper: (Map<String, Object?> row) => TemplateItem(templateItemId: row['TEMPLATE_ITEM_ID'] as String?, name: row['NAME'] as String?, template: row['TEMPLATE'] as String?, cut: row['CUT'] as String?, isListType: row['IS_LIST_TYPE'] as String?, synchronizedYn: row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [templateItemId, stateCode]);
  }

  @override
  Future<List<TemplateItem>> findAllByNameAndStateCode(
      String name, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_TEMPLATE_ITEM WHERE NAME = ?1 AND STAT_CD != ?2',
        mapper: (Map<String, Object?> row) => TemplateItem(
            templateItemId: row['TEMPLATE_ITEM_ID'] as String?,
            name: row['NAME'] as String?,
            template: row['TEMPLATE'] as String?,
            cut: row['CUT'] as String?,
            isListType: row['IS_LIST_TYPE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [name, stateCode]);
  }

  @override
  Future<List<TemplateItem>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM BA1_TEMPLATE_ITEM WHERE SYNCD_YN = 0',
        mapper: (Map<String, Object?> row) => TemplateItem(
            templateItemId: row['TEMPLATE_ITEM_ID'] as String?,
            name: row['NAME'] as String?,
            template: row['TEMPLATE'] as String?,
            cut: row['CUT'] as String?,
            isListType: row['IS_LIST_TYPE'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(TemplateItem item) async {
    await _templateItemInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<TemplateItem> items) async {
    await _templateItemInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(TemplateItem item) async {
    await _templateItemUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<TemplateItem> items) async {
    await _templateItemUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TemplateItem item) async {
    await _templateItemDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<TemplateItem> items) async {
    await _templateItemDeletionAdapter.deleteList(items);
  }
}

class _$EntranceRegistrationDao extends EntranceRegistrationDao {
  _$EntranceRegistrationDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _entranceRegistrationInsertionAdapter = InsertionAdapter(
            database,
            'CU1_ENT_REG',
            (EntranceRegistration item) => <String, Object?>{
                  'ENT_REG_ID': item.entranceRegistrationId,
                  'STR_ID': item.storeId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'HP_NO': item.phoneNumber,
                  'AGREE_YN': item.agreementYN,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _entranceRegistrationUpdateAdapter = UpdateAdapter(
            database,
            'CU1_ENT_REG',
            ['ENT_REG_ID'],
            (EntranceRegistration item) => <String, Object?>{
                  'ENT_REG_ID': item.entranceRegistrationId,
                  'STR_ID': item.storeId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'HP_NO': item.phoneNumber,
                  'AGREE_YN': item.agreementYN,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                }),
        _entranceRegistrationDeletionAdapter = DeletionAdapter(
            database,
            'CU1_ENT_REG',
            ['ENT_REG_ID'],
            (EntranceRegistration item) => <String, Object?>{
                  'ENT_REG_ID': item.entranceRegistrationId,
                  'STR_ID': item.storeId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'HP_NO': item.phoneNumber,
                  'AGREE_YN': item.agreementYN,
                  'FRST_REGST_ID': item.firstRegistrantId,
                  'FRST_REG_DTTM': item.firstRegistrationDatetime,
                  'LAST_REVSR_ID': item.lastReviserId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'STAT_CD': item.stateCode
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EntranceRegistration>
      _entranceRegistrationInsertionAdapter;

  final UpdateAdapter<EntranceRegistration> _entranceRegistrationUpdateAdapter;

  final DeletionAdapter<EntranceRegistration>
      _entranceRegistrationDeletionAdapter;

  @override
  Future<EntranceRegistration?> findById(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM CU1_ENT_REG WHERE ENT_REG_ID = ?1',
        mapper: (Map<String, Object?> row) => EntranceRegistration(
            entranceRegistrationId: row['ENT_REG_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            phoneNumber: row['HP_NO'] as String?,
            agreementYN: row['AGREE_YN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [id]);
  }

  @override
  Future<List<EntranceRegistration>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM CU1_ENT_REG',
        mapper: (Map<String, Object?> row) => EntranceRegistration(
            entranceRegistrationId: row['ENT_REG_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            phoneNumber: row['HP_NO'] as String?,
            agreementYN: row['AGREE_YN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<List<EntranceRegistration>> findAllOld(int size) async {
    return _queryAdapter.queryList(
        'SELECT * FROM CU1_ENT_REG ORDER BY LAST_REV_DTTM ASC LIMIT ?1',
        mapper: (Map<String, Object?> row) => EntranceRegistration(
            entranceRegistrationId: row['ENT_REG_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            phoneNumber: row['HP_NO'] as String?,
            agreementYN: row['AGREE_YN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?),
        arguments: [size]);
  }

  @override
  Future<List<EntranceRegistration>>
      findAllByFirstRegistrationDatetimeAndStateCode(
          String openDate, String closeDate, String stateCode) async {
    return _queryAdapter.queryList(
        'SELECT * FROM CU1_ENT_REG WHERE FRST_REG_DTTM >=  ?1 AND FRST_REG_DTTM <=  ?2   AND  STAT_CD != ?3 ORDER BY FRST_REG_DTTM ASC',
        mapper: (Map<String, Object?> row) => EntranceRegistration(entranceRegistrationId: row['ENT_REG_ID'] as String?, storeId: row['STR_ID'] as String?, storeTerminalId: row['STR_TRM_ID'] as String?, phoneNumber: row['HP_NO'] as String?, agreementYN: row['AGREE_YN'] as String?, firstRegistrantId: row['FRST_REGST_ID'] as String?, firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?, lastReviserId: row['LAST_REVSR_ID'] as String?, lastRevisionDatetime: row['LAST_REV_DTTM'] as String?, stateCode: row['STAT_CD'] as String?),
        arguments: [openDate, closeDate, stateCode]);
  }

  @override
  Future<List<EntranceRegistration>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM CU1_ENT_REG WHERE SYNCD_YN = 0 ORDER BY LAST_REV_DTTM ASC',
        mapper: (Map<String, Object?> row) => EntranceRegistration(
            entranceRegistrationId: row['ENT_REG_ID'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            phoneNumber: row['HP_NO'] as String?,
            agreementYN: row['AGREE_YN'] as String?,
            firstRegistrantId: row['FRST_REGST_ID'] as String?,
            firstRegistrationDatetime: row['FRST_REG_DTTM'] as String?,
            lastReviserId: row['LAST_REVSR_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            stateCode: row['STAT_CD'] as String?));
  }

  @override
  Future<void> insertOne(EntranceRegistration item) async {
    await _entranceRegistrationInsertionAdapter.insert(
        item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<EntranceRegistration> items) async {
    await _entranceRegistrationInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(EntranceRegistration item) async {
    await _entranceRegistrationUpdateAdapter.update(
        item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<EntranceRegistration> items) async {
    await _entranceRegistrationUpdateAdapter.updateList(
        items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(EntranceRegistration item) async {
    await _entranceRegistrationDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<EntranceRegistration> items) async {
    await _entranceRegistrationDeletionAdapter.deleteList(items);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();

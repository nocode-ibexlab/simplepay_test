import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/BuildConfig.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/Util/Security.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/device.dart';
import 'package:simple_pay_api/src/simple.dart';

import 'generated/api/v1/message.pb.dart' as pbm;
import 'generated/api/v1/table/table.pb.dart' as pbt;

class Ap3Service {
  Future<String> getAp3Data(String apkPath, String nonce) async {
    var digest = await Security.digestFile(apkPath, nonce);
    String data = BuildConfig.APP_DISTINCT_KEYWORD +
        '&&' +
        BuildConfig.APP_PKG_DISTINCT_KEYWORD +
        '&&' +
        await CommonUtil.getVersionName() +
        '&&' +
        digest +
        '&&' +
        nonce;
    return base64.encode(utf8.encode(data));
  }
}

class DownloadService {
  static const _TAG = 'DownloadService';

  final List<String> tableNames = [
    'AccountSubject',
    'BasicData',
    'BasicDataItem',
    'StoreTerminalBasicData',
    'StoreTerminalBasicDataItem',
    'I18NTerm',
    'EmployeeGroup',
    'Employee',
    'TableGroup',
    'Table',
    'TableDetail',
    'KitchenMemoGroup',
    'KitchenMemo',
    'ItemGroup',
    'Item',
    'MenuGroup',
    'MenuGroupUse',
    'MenuItem',
    'Store',
    'AdminUser',
    'StoreTerminal',
    'EmployeeAuthority',
    'OptionGroup',
    'OptionEntity',
    'SetEntity',
    'ItemOption',
    'SelfMenuGroup',
    'SelfMenuItem',
    'TemplateItem',
    'StorePlace',
  ];

  Future<List<String>> lastModifiedAll() async {
    BasBL basBL = BasBL();

    return await Stream.fromIterable(tableNames)
        .asyncMap((name) => basBL.getLastModified(name))
        .toList();
  }

  Future<String> lastModified(String name) async {
    return await BasBL().getLastModified(name);
  }

  @transaction
  Future<void> processAllTables(pbt.AllTables tables) async {
    final basBL = BasBL();
    final employeeBL = EmployeeBL();
    final tableBL = TableBL();
    final itemBL = ItemBL();

    TLog.d(_TAG, 'AccountSubject count: ${tables.accountSubject.length}');
    await basBL
        .insertAccountList(_getAccountSubjectList(tables.accountSubject));

    TLog.d(_TAG, 'BasicDataItem count: ${tables.basicDataItem.length}');
    await basBL
        .insertBasicDataItemList(_getBasicDataItemList(tables.basicDataItem));

    TLog.d(_TAG,
        'StoreTerminalBasicData count: ${tables.storeTerminalBasicData.length}');
    await basBL.insertStoreTerminalBasicDataList(
        _getStoreTerminalBasicDataList(tables.storeTerminalBasicData));

    TLog.d(_TAG,
        'StoreTerminalBasicDataItem count: ${tables.storeTerminalBasicDataItem.length}');
    await basBL.insertStoreTerminalBasicDataItemList(
        _getStoreTerminalBasicDataItemList(tables.storeTerminalBasicDataItem));

    TLog.d(_TAG, 'I18NTerm count: ${tables.i18nTerm.length}');
    await basBL.insertI18NTermList(_getI18NTermList(tables.i18nTerm));

    TLog.d(_TAG, 'EmployeeGroup count: ${tables.employeeGroup.length}');
    await employeeBL
        .insertEmployeeGroupList(_getEmployeeGroupList(tables.employeeGroup));

    TLog.d(_TAG, 'Employee count: ${tables.employee.length}');
    await employeeBL.insertEmployeeList(_getEmployeeList(tables.employee));

    TLog.d(_TAG, 'EmployeeAuthority count: ${tables.employeeAuthority.length}');
    await basBL.insertEmployeeAuthorityList(
        _getEmployeeAuthorityList(tables.employeeAuthority));

    TLog.d(_TAG, 'TableDetail count: ${tables.tableDetail.length}');
    await tableBL
        .insertTableDetailList(_getTableDetailList(tables.tableDetail));

    TLog.d(_TAG, 'TableGroup count: ${tables.tableGroup.length}');
    await tableBL.insertTableGroupList(_getTableGroupList(tables.tableGroup));

    TLog.d(_TAG, 'Table count: ${tables.table.length}');
    await tableBL.insertTableList(_getTableList(tables.table));

    TLog.d(_TAG, 'BasicData count: ${tables.basicData.length}');
    await basBL.insertBasicDataList(_getBasicDataList(tables.basicData));

    TLog.d(_TAG, 'StoreTerminal count: ${tables.storeTerminal.length}');
    await basBL
        .insertStoreTerminalList(_getStoreTerminalList(tables.storeTerminal));

    TLog.d(_TAG, 'KitchenMemoGroup count: ${tables.kitchenMemoGroup.length}');
    await basBL.insertKitchenMemoGroupList(
        _getKitchenMemoGroupList(tables.kitchenMemoGroup));

    TLog.d(_TAG, 'KitchenMemo count: ${tables.kitchenMemo.length}');
    await basBL.insertKitchenMemoList(_getKitchenMemoList(tables.kitchenMemo));

    TLog.d(_TAG, 'ItemGroup count: ${tables.itemGroup.length}');
    await itemBL.insertItemGroupList(_getItemGroupList(tables.itemGroup));

    TLog.d(_TAG, 'Item count: ${tables.item.length}');
    await itemBL.insertItemList(_getItemList(tables.item));

    TLog.d(_TAG, 'OptionGroup count: ${tables.optionGroup.length}');
    await basBL.insertOptionGroupList(_getOptionGroupList(tables.optionGroup));

    TLog.d(_TAG, 'OptionEntity count: ${tables.optionEntity.length}');
    await basBL
        .insertOptionEntityList(_getOptionEntityList(tables.optionEntity));

    TLog.d(_TAG, 'SetEntity count: ${tables.setEntity.length}');
    await basBL.insertSetEntityList(_getSetEntityList(tables.setEntity));

    TLog.d(_TAG, 'ItemOption count: ${tables.itemOption.length}');
    await basBL.insertItemOptionList(_getItemOptionList(tables.itemOption));

    TLog.d(_TAG, 'MenuGroup count: ${tables.menuGroup.length}');
    await basBL.insertMenuGroupList(_getMenuGroupList(tables.menuGroup));

    TLog.d(_TAG, 'MenuGroupUse count: ${tables.menuGroupUse.length}');
    await basBL
        .insertMenuGroupUseList(_getMenuGroupUseList(tables.menuGroupUse));

    TLog.d(_TAG, 'MenuItem count: ${tables.menuItem.length}');
    await basBL.insertMenuItemList(_getMenuItemList(tables.menuItem));

    TLog.d(_TAG, 'Store count: ${tables.store.length}');
    await basBL.insertStoreList(_getStoreList(tables.store));

    TLog.d(_TAG, 'AdminUser count: ${tables.adminUser.length}');
    await basBL.insertAdminUserList(_getAdminUserList(tables.adminUser));

    TLog.d(_TAG, 'SelfMenuGroup count: ${tables.selfMenuGroup.length}');
    await basBL
        .insertSelfMenuGroupList(_getSelfMenuGroupList(tables.selfMenuGroup));

    TLog.d(_TAG, 'SelfMenuItem count: ${tables.selfMenuItem.length}');
    await basBL
        .insertSelfMenuItemList(_getSelfMenuItemList(tables.selfMenuItem));

    TLog.d(_TAG, 'TemplateItem count: ${tables.templateItem.length}');
    await basBL
        .insertTemplateItemList(_getTemplateItemList(tables.templateItem));

    TLog.d(_TAG, 'StorePlace count: ${tables.storePlace.length}');
    await basBL.insertStorePlaceList(_getStorePlaceList(tables.storePlace));
  }

  @transaction
  Future<void> processItemTables(pbm.ItemData_Content tables) async {
    BasBL basBL = BasBL();
    ItemBL itemBL = ItemBL();

    if (tables.menuGroupUse.isNotEmpty) {
      TLog.d(_TAG, 'MenuGroupUse count: ${tables.menuGroupUse.length}');
      await basBL
          .insertMenuGroupUseList(_getMenuGroupUseList(tables.menuGroupUse));
    }

    if (tables.menuGroup.isNotEmpty) {
      TLog.d(_TAG, 'MenuGroup count: ${tables.menuGroup.length}');
      await basBL.insertMenuGroupList(_getMenuGroupList(tables.menuGroup));
    }

    if (tables.menuItem.isNotEmpty) {
      TLog.d(_TAG, 'MenuItem count: ${tables.menuItem.length}');
      await basBL.insertMenuItemList(_getMenuItemList(tables.menuItem));
    }

    if (tables.item.isNotEmpty) {
      TLog.d(_TAG, 'Item count: ${tables.item.length}');
      await itemBL.insertItemList(_getItemList(tables.item));
    }

    if (tables.itemGroup.isNotEmpty) {
      TLog.d(_TAG, 'ItemGroup count: ${tables.itemGroup.length}');
      await itemBL.insertItemGroupList(_getItemGroupList(tables.itemGroup));
    }
  }

  @transaction
  Future<void> processSalesAndReportTables(
      pbt.SalesAndReportTables tables) async {
    CashierBL cashierBL = CashierBL();
    SaleBL saleBL = SaleBL();
    ReportBL reportBL = ReportBL();

    var cashIO =
        _getCashdrawCashInOutHistoryList(tables.cashdrawCashInOutHistory);
    var banks = _getCashierBankHistoryList(tables.cashierBankHistory);
    var bills = _getCashierBankHistoryBillList(tables.cashierBankHistoryBill);
    TLog.d(_TAG,
        'Add: cashIO=${cashIO.length} banks=${banks.length} bills=${bills.length}');
    await cashierBL.addAll(cashIO, banks, bills);

    var sales = _getSalesHistoryList(tables.salesHistory);
    var items = _getSalesHistoryItemList(tables.salesHistoryItem);
    var discounts = _getSalesHistoryDiscountList(tables.salesHistoryDiscount);
    var accounts = _getSalesAccountHistoryList(tables.salesAccountHistory);
    var details =
        _getSalesAccountHistoryDetailsList(tables.salesAccountHistoryDetails);
    var tips = _getSalesAccountHistoryTipList(tables.salesAccountHistoryTip);

    TLog.d(_TAG,
        'Add: sales=${sales.length} items=${items.length} discount=${discounts.length}');
    TLog.d(_TAG,
        'Add: accounts=${accounts.length} details=${details.length} tips=${tips.length}');
    await saleBL.addAll(sales, items, discounts, accounts, details, tips);

    var reports = _getDailyReportHistoryList(tables.dailyReportHistory);
    var payments =
        _getDailyReportHistoryPaymentsList(tables.dailyReportHistoryPayments);
    TLog.d(_TAG, 'Add: reports=${reports.length} payments=${payments.length}');
    await reportBL.addAll(reports, payments);

    List<String?> dates = await saleBL.getSaleHAllDate();
    TLog.d(_TAG, 'Update daily reports: dates=${dates.length}');
    await reportBL.updateAllDayReportHistory(dates);
  }

  List<AccountSubject> _getAccountSubjectList(List<pbt.AccountSubject> items) {
    return items.map((i) {
      return AccountSubject(
        accountSubjectId: i.accountSubjectId,
        i18nTermId: i.i18nTermId,
        accountSubjectName: i.accountSubjectName,
        accountSubjectUseType: i.accountSubjectUseType,
        accountSubjectType: i.accountSubjectType,
        fixedExpensesYn: i.fixedExpensesYn,
        remarkA: i.remarkA,
        remarkB: i.remarkB,
        remarkC: i.remarkC,
        remarkD: i.remarkD,
        remarkE: i.remarkE,
        userInput: i.userInput,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<BasicDataItem> _getBasicDataItemList(List<pbt.BasicDataItem> items) {
    return items.map((i) {
      return BasicDataItem(
        basicDataItemId: i.basicDataItemId,
        basicDataId: i.basicDataId,
        i18nTermId: i.i18nTermId,
        basicDataItemSerialNumber: i.basicDataItemSerialNumber,
        basicDataItemCodeName: i.basicDataItemCodeName,
        basicDataItemName: i.basicDataItemName,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        data4: i.data4,
        data5: i.data5,
        data6: i.data6,
        data7: i.data7,
        data8: i.data8,
        data9: i.data9,
        data10: i.data10,
        data11: i.data11,
        data12: i.data12,
        data13: i.data13,
        data14: i.data14,
        data15: i.data15,
        data16: i.data16,
        data17: i.data17,
        data18: i.data18,
        data19: i.data19,
        data20: i.data20,
        hidingYn: i.hidingYn,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<StoreTerminalBasicData> _getStoreTerminalBasicDataList(
      List<pbt.StoreTerminalBasicData> items) {
    return items.map((i) {
      return StoreTerminalBasicData(
        storeTerminalBasicDataId: i.storeTerminalBasicDataId,
        storeTerminalId: i.storeTerminalId,
        i18nTermId: i.i18nTermId,
        storeTerminalBasicDataCodeName: i.storeTerminalBasicDataCodeName,
        storeTerminalBasicDataName: i.storeTerminalBasicDataName,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<StoreTerminalBasicDataItem> _getStoreTerminalBasicDataItemList(
      List<pbt.StoreTerminalBasicDataItem> items) {
    return items.map((i) {
      return StoreTerminalBasicDataItem(
        storeTerminalBasicDataItemId: i.storeTerminalBasicDataItemId,
        storeTerminalBasicDataId: i.storeTerminalBasicDataId,
        i18nTermId: i.i18nTermId,
        storeTerminalBasicDataItemSerialNumber:
            i.storeTerminalBasicDataItemSerialNumber,
        storeTerminalBasicDataItemCodeName:
            i.storeTerminalBasicDataItemCodeName,
        storeTerminalBasicDataItemName: i.storeTerminalBasicDataItemName,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        data4: i.data4,
        data5: i.data5,
        data6: i.data6,
        data7: i.data7,
        data8: i.data8,
        data9: i.data9,
        data10: i.data10,
        data11: i.data11,
        data12: i.data12,
        data13: i.data13,
        data14: i.data14,
        data15: i.data15,
        data16: i.data16,
        data17: i.data17,
        data18: i.data18,
        data19: i.data19,
        data20: i.data20,
        hidingYn: i.hidingYn,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<I18NTerm> _getI18NTermList(List<pbt.I18NTerm> items) {
    return items.map((i) {
      return I18NTerm(
        i18nTermId: i.i18nTermId,
        userInput: i.userInput,
        english: i.english,
        korean: i.korean,
        japanese: i.japanese,
        chinese: i.chinese,
        german: i.german,
        spanish: i.spanish,
        portuguese: i.portuguese,
        vietnamese: i.vietnamese,
        french: i.french,
        russian: i.russian,
        arabic: i.arabic,
        thai: i.thai,
        kazakhstan: i.kazakhstan,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<EmployeeGroup> _getEmployeeGroupList(List<pbt.EmployeeGroup> items) {
    return items.map((i) {
      return EmployeeGroup(
        employeeGroupId: i.employeeGroupId,
        employeeGroupName: i.employeeGroupName,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<Employee> _getEmployeeList(List<pbt.Employee> items) {
    return items.map((i) {
      return Employee(
        employeeId: i.employeeId,
        employeeGroupId: i.employeeGroupId,
        employeeCode: i.employeeCode,
        employeeName: i.employeeName,
        telNumber: i.telNumber,
        hpNumber: i.hpNumber,
        primaryAddress: i.primaryAddress,
        detailAddress: i.detailAddress,
        loginPassword: i.loginPassword,
        employeeDescription: i.employeeDescription,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<EmployeeAuthority> _getEmployeeAuthorityList(
      List<pbt.EmployeeAuthority> items) {
    return items.map((i) {
      return EmployeeAuthority(
        employeeAuthorityId: i.employeeAuthorityId,
        employeeId: i.employeeId,
        clientAuthorityGroupCode: i.clientAuthorityGroupCode,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<TableDetail> _getTableDetailList(List<pbt.TableDetail> items) {
    return items.map((i) {
      return TableDetail(
        tableId: i.tableId,
        seatCount: i.seatCount,
        smokingPossibleYn: i.smokingPossibleYn,
        windowYn: i.windowYn,
        boothYn: i.boothYn,
        privacyProtectionYn: i.privacyProtectionYn,
        chargedServerId: i.chargedServerId,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<TableGroup> _getTableGroupList(List<pbt.TableGroup> items) {
    return items.map((i) {
      return TableGroup(
        tableGroupId: i.tableGroupId,
        tableGroupName: i.tableGroupName,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        backgroundImageName: i.backgroundImageName,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<Table> _getTableList(List<pbt.Table> items) {
    return items.map((i) {
      return Table(
        tableId: i.tableId,
        serverTableId: i.serverTableId,
        tableGroupId: i.tableGroupId,
        tableName: i.tableName,
        locationX: i.locationX,
        locationY: i.locationY,
        width: i.width,
        height: i.height,
        tableImageName: i.tableImageName,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<BasicData> _getBasicDataList(List<pbt.BasicData> items) {
    return items.map((i) {
      return BasicData(
        basicDataId: i.basicDataId,
        basicDataCodeName: i.basicDataCodeName,
        basicDataName: i.basicDataName,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<StoreTerminal> _getStoreTerminalList(List<pbt.StoreTerminal> items) {
    return items.map((i) {
      return StoreTerminal(
        storeTerminalId: i.storeTerminalId,
        storeId: i.storeId,
        storeTerminalGroupId: i.storeTerminalGroupId,
        terminalId: i.terminalId,
        storeTerminalName: i.storeTerminalName,
        deviceUniqueValue: i.deviceUniqueValue,
        masterTerminalYn: i.masterTerminalYn,
        masterTerminalAddress: i.masterTerminalAddress,
        masterTerminalPort: i.masterTerminalPort,
        terminalRoleSectionCode: i.terminalRoleSectionCode,
        serverConnectionYn: i.serverConnectionYn,
        languageCode: i.languageCode,
        currencyCode: i.currencyCode,
        appActionTypeCode: i.appActionTypeCode,
        cashierAutoLoginYn: i.cashierAutoLoginYn,
        installationLocation: i.installationLocation,
        storeTerminalDescription: i.storeTerminalDescription,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
        synchronizedYn: true,
      );
    }).toList();
  }

  List<KitchenMemoGroup> _getKitchenMemoGroupList(
      List<pbt.KitchenMemoGroup> items) {
    return items.map((i) {
      return KitchenMemoGroup(
        kitchenMemoGroupId: i.kitchenMemoGroupId,
        kitchenMemoGroupName: i.kitchenMemoGroupName,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<KitchenMemo> _getKitchenMemoList(List<pbt.KitchenMemo> items) {
    return items.map((i) {
      return KitchenMemo(
        kitchenMemoId: i.kitchenMemoId,
        kitchenMemoGroupId: i.kitchenMemoGroupId,
        kitchenMemoName: i.kitchenMemoName,
        kitchenMemoCode: i.kitchenMemoCode,
        kitchenMemoContents: i.kitchenMemo,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<ItemGroup> _getItemGroupList(List<pbt.ItemGroup> items) {
    return items.map((i) {
      return ItemGroup(
        itemGroupId: i.itemGroupId,
        upperItemGroupId: i.upperItemGroupId,
        itemGroupName: i.itemGroupName,
        itemGroupTypeCode: i.itemGroupTypeCode,
        operationTypeCode: i.operationTypeCode,
        hidingYn: i.hidingYn,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<Item> _getItemList(List<pbt.Item> items) {
    return items.map((i) {
      return Item(
        itemId: i.itemId,
        itemGroupId: i.itemGroupId,
        itemCode: i.itemCode,
        itemName: i.itemName,
        operationTypeCode: i.operationTypeCode,
        saleTypeCode: i.saleTypeCode,
        priceTypeCode: i.priceTypeCode,
        cost: i.cost,
        sellingPrice: i.sellingPrice,
        barcode: i.barcode,
        applyTax0Yn: i.applyTax0Yn,
        applyTax1Yn: i.applyTax1Yn,
        applyTax2Yn: i.applyTax2Yn,
        applyDiscountYn: i.applyDiscountYn,
        hidingYn: i.hidingYn,
        inventoryQuantity: i.inventoryQuantity,
        kitchenPrinterOutputYn: i.kitchenPrinterOutputYn,
        optionUseTypeCode: i.optionUseTypeCode,
        recommendedItemYn: i.recommendedItemYn,
        packingPossibleYn: i.packingPossibleYn,
        onlineSaleYn: i.onlineSaleYn,
        soldOutYn: i.soldOutYn,
        imageUrl: i.imageUrl,
        linkCode: i.linkCode,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<OptionGroup> _getOptionGroupList(List<pbt.OptionGroup> items) {
    return items.map((i) {
      return OptionGroup(
        optionGroupId: i.optionGroupId,
        optionGroupName: i.optionGroupName,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        requiredYn: i.requiredYn,
        hidingYn: i.hidingYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<OptionEntity> _getOptionEntityList(List<pbt.OptionEntity> items) {
    return items.map((i) {
      return OptionEntity(
        optionEntityId: i.optionEntityId,
        optionGroupId: i.optionGroupId,
        itemId: i.itemId,
        optionEntitySerialNumber: i.optionEntitySerialNumber,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        buttonSizeTypeCode: i.buttonSizeTypeCode,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<SetEntity> _getSetEntityList(List<pbt.SetEntity> items) {
    return items.map((i) {
      return SetEntity(
        setEntityId: i.setEntityId,
        setItemId: i.setItemId,
        entityItemId: i.entityItemId,
        setEntitySerialNumber: i.setEntitySerialNumber,
        quantity: i.quantity,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<ItemOption> _getItemOptionList(List<pbt.ItemOption> items) {
    return items.map((i) {
      return ItemOption(
        itemOptionId: i.itemOptionId,
        itemId: i.itemId,
        optionGroupId: i.optionGroupId,
        itemOptionSerialNumber: i.itemOptionSerialNumber,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<MenuGroup> _getMenuGroupList(List<pbt.MenuGroup> items) {
    return items.map((i) {
      return MenuGroup(
        menuGroupId: i.menuGroupId,
        menuGroupName: i.menuGroupName,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        backgroundImageName: i.backgroundImageName,
        backgroundColor: i.backgroundColor,
        fontName: i.fontName,
        fontSize: i.fontSize,
        fontStyle: i.fontStyle,
        fontColor: i.fontColor,
        defaultYn: i.defaultYn,
        onlineSaleYn: i.onlineSaleYn,
        linkInformation: i.linkInformation,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<MenuGroupUse> _getMenuGroupUseList(List<pbt.MenuGroupUse> items) {
    return items.map((i) {
      var j = MenuGroupUse(
        menuGroupId: i.menuGroupId,
        businessSectionCode: i.businessSectionCode,
        useYn: i.useYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<MenuItem> _getMenuItemList(List<pbt.MenuItem> items) {
    return items.map((i) {
      return MenuItem(
        menuItemId: i.menuItemId,
        menuGroupId: i.menuGroupId,
        itemId: i.itemId,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        backgroundColor: i.backgroundColor,
        fontColor: i.fontColor,
        buttonSizeTypeCode: i.buttonSizeTypeCode,
        linkInformation: i.linkInformation,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<Store> _getStoreList(List<pbt.Store> items) {
    return items.map((i) {
      return Store(
        storeId: i.storeId,
        agencyId: i.agencyId,
        managerId: i.managerId,
        storeName: i.storeName,
        zipcode: i.zipcode,
        primaryAddress: i.primaryAddress,
        detailAddress: i.detailAddress,
        telNumber: i.telNumber,
        hpNumber: i.hpNumber,
        faxNumber: i.faxNumber,
        businessRegistrationNumber: i.businessRegistrationNumber,
        taxSectionCode: i.taxSectionCode,
        languageCode: i.languageCode,
        currencyCode: i.currencyCode,
        storeStateCode: i.storeStateCode,
        closeBusinessTime: i.closeBusinessTime,
        openingHours: i.openingHours,
        closedDays: i.closedDays,
        parkingTypeCode: i.parkingTypeCode,
        businessSectors: i.businessSectors,
        mainProducts: i.mainProducts,
        ceoName: i.ceoName,
        ownerName: i.ownerName,
        linkTypeCode: i.linkTypeCode,
        serviceTypeCode: i.serviceTypeCode,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<AdminUser> _getAdminUserList(List<pbt.AdminUser> items) {
    return items.map((i) {
      return AdminUser(
        adminUserId: i.adminUserId,
        adminAuthorityGroupId: i.adminAuthorityGroupId,
        affiliatedCompanyId: i.affiliatedCompanyId,
        loginId: i.loginId,
        loginPassword: i.loginPassword,
        adminUserName: i.adminUserName,
        telNumber: i.telNumber,
        hpNumber: i.hpNumber,
        emailAddress: i.emailAddress,
        primaryAddress: i.primaryAddress,
        detailAddress: i.detailAddress,
        adminAccountStateCode: i.adminAccountStateCode,
        adminUserDescription: i.adminUserDescription,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<SelfMenuGroup> _getSelfMenuGroupList(List<pbt.SelfMenuGroup> items) {
    return items.map((i) {
      return SelfMenuGroup(
        selfMenuGroupId: i.selfMenuGroupId,
        selfMenuGroupName: i.selfMenuGroupName,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        backgroundImageName: i.backgroundImageName,
        backgroundColor: i.backgroundColor,
        fontName: i.fontName,
        fontSize: i.fontSize,
        fontStyle: i.fontStyle,
        fontColor: i.fontColor,
        defaultYn: i.defaultYn,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<SelfMenuItem> _getSelfMenuItemList(List<pbt.SelfMenuItem> items) {
    return items.map((i) {
      return SelfMenuItem(
        selfMenuItemId: i.selfMenuItemId,
        selfMenuGroupId: i.selfMenuGroupId,
        itemId: i.itemId,
        locationX: i.locationX,
        locationY: i.locationY,
        locationZ: i.locationZ,
        backgroundColor: i.backgroundColor,
        fontColor: i.fontColor,
        buttonSizeTypeCode: i.buttonSizeTypeCode,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<TemplateItem> _getTemplateItemList(List<pbt.TemplateItem> items) {
    return items.map((i) {
      return TemplateItem(
        templateItemId: i.templateItemId,
        name: i.name,
        template: i.template,
        cut: i.cut,
        isListType: i.isListType,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<StorePlace> _getStorePlaceList(List<pbt.StorePlace> items) {
    return items.map((i) {
      return StorePlace(
        storePlaceId: i.storePlaceId,
        storeId: i.storeId,
        placeType: i.placeType,
        isDefault: i.isDefault,
        placeName: i.placeName,
        placeShortName: i.placeShortName,
        placeDesc: i.placeDesc,
        placeAddress1: i.placeAddress1,
        placeAddress2: i.placeAddress2,
        employeeId: i.employeeId,
        placeTel: i.placeTel,
        placeTimezone: i.placeTimezone,
        useDst: i.useDst,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
    }).toList();
  }

  List<CashdrawCashInOutHistory> _getCashdrawCashInOutHistoryList(
      List<pbt.CashdrawCashInOutHistory> items) {
    return items.map((i) {
      var j = CashdrawCashInOutHistory(
        commonDate: i.commonDate,
        commonSerialNumber: i.commonSerialNumber,
        storeTerminalId: BaseBL.storeTerminalId,
        accountSubjectId: i.accountSubjectId,
        cashdrawSectionCode: i.cashdrawSectionCode,
        inOutTypeCode: i.inOutTypeCode,
        amount: i.amount,
        remarkA: i.remarkA,
        remarkB: i.remarkB,
        remarkC: i.remarkC,
        personalAccountId: i.personalAccountId,
        salesLink: i.salesLink,
        cashierBankLink: i.cashierBankLink,
        inOutEmployeeId: i.inOutEmployeeId,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
        synchronizedYn: true,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<CashierBankHistory> _getCashierBankHistoryList(
      List<pbt.CashierBankHistory> items) {
    return items.map((i) {
      var j = CashierBankHistory(
        commonDate: i.commonDate,
        commonSerialNumber: i.commonSerialNumber,
        cashdrawSectionCode: i.cashdrawSectionCode,
        storeTerminalId: BaseBL.storeTerminalId,
        businessOpenCloseSectionCode: i.businessOpenCloseSectionCode,
        cashierTypeCode: i.cashierTypeCode,
        businessStartDatetime: i.businessStartDatetime,
        businessEndDatetime: i.businessEndDatetime,
        businessChangeDatetime: i.businessChangeDatetime,
        salesCount: i.salesCount,
        tableTurnoverRate: i.tableTurnoverRate,
        employeeId: i.employeeId,
        openBusinessCashTotalAmount: i.openBusinessCashTotalAmount,
        closeBusinessCashTotalAmount: i.closeBusinessCashTotalAmount,
        businessChangeCashTotalAmount: i.businessChangeCashTotalAmount,
        posCashTotalAmount: i.posCashTotalAmount,
        cashDifferenceAmount: i.cashDifferenceAmount,
        cashDifferenceReason: i.cashDifferenceReason,
        cashDepositTotalAmount: i.cashDepositTotalAmount,
        salesTotalCashAmount: i.salesTotalCashAmount,
        cashWithdrawalAmount: i.cashWithdrawalAmount,
        salesTotalAmount: i.salesTotalAmount,
        discountTotalAmount: i.discountTotalAmount,
        tipTotalAmount: i.tipTotalAmount,
        cancelSerialNumber: i.cancelSerialNumber,
        shiftSerialNumber: i.shiftSerialNumber,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
        synchronizedYn: true,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<CashierBankHistoryBill> _getCashierBankHistoryBillList(
      List<pbt.CashierBankHistoryBill> items) {
    return items.map((i) {
      var j = CashierBankHistoryBill(
        commonDate: i.commonDate,
        commonSerialNumber: i.commonSerialNumber,
        cashdrawSectionCode: i.cashdrawSectionCode,
        billSerialNumber: i.billSerialNumber,
        businessOpenCloseSectionCode: i.businessOpenCloseSectionCode,
        totalAmount: i.totalAmount,
        bill0Number: i.bill0Number,
        bill1Number: i.bill1Number,
        bill2Number: i.bill2Number,
        bill3Number: i.bill3Number,
        bill4Number: i.bill4Number,
        bill5Number: i.bill5Number,
        bill6Number: i.bill6Number,
        bill7Number: i.bill7Number,
        bill8Number: i.bill8Number,
        bill9Number: i.bill9Number,
        bill10Number: i.bill10Number,
        bill11Number: i.bill11Number,
        bill12Number: i.bill12Number,
        bill13Number: i.bill13Number,
        bill14Number: i.bill14Number,
        bill15Number: i.bill15Number,
        bill16Number: i.bill16Number,
        bill17Number: i.bill17Number,
        bill18Number: i.bill18Number,
        bill19Number: i.bill19Number,
        userInputAmount: i.userInputAmount,
        cancelSerialNumber: i.cancelSerialNumber,
        shiftSerialNumber: i.shiftSerialNumber,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
        synchronizedYn: true,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<SalesHistory> _getSalesHistoryList(List<pbt.SalesHistory> items) {
    return items.map((i) {
      var j = SalesHistory(
        commonDate: i.commonDate,
        saleSerialNumber: i.saleSerialNumber,
        checkLink: i.orderLink,
        tableId: i.tableId,
        operationTypeCode: i.operationTypeCode,
        businessSectionCode: i.businessSectionCode,
        supplyValue: i.supplyValue,
        supplyAmount: i.supplyAmount,
        taxAmount0: i.taxAmount0,
        taxAmount1: i.taxAmount1,
        taxAmount2: i.taxAmount2,
        discountTotalAmount: i.discountTotalAmount,
        totalAmount: i.totalAmount,
        taxFreeYn: i.taxFreeYn,
        taxFreeReason: i.taxFreeReason,
        tipTotalAmount: i.tipTotalAmount,
        preTipTotalAmount: i.preTipTotalAmount,
        preTipAmount: i.preTipAmount,
        preTipTaxAmount: i.preTipTaxAmount,
        paymentTipTotalAmount: i.paymentTipTotalAmount,
        paymentTipAmount: i.paymentTipAmount,
        paymentTipTaxAmount: i.paymentTipTaxAmount,
        servingEmployeeId: i.servingEmployeeId,
        orderEmployeeId: i.orderEmployeeId,
        cancelLink: i.cancelLink,
        cancelReason: i.cancelReason,
        cancelTypeCode: i.cancelTypeCode,
        cancelEmployeeId: i.cancelEmployeeId,
        closeBusinessTypeCode: i.closeBusinessTypeCode,
        memo: i.memo,
        staffBankYn: i.staffBankYn,
        data0: i.data0,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        data4: i.data4,
        data5: i.data5,
        data6: i.data6,
        data7: i.data7,
        data8: i.data8,
        data9: i.data9,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<SalesHistoryItem> _getSalesHistoryItemList(
      List<pbt.SalesHistoryItem> items) {
    return items.map((i) {
      var j = SalesHistoryItem(
        commonDate: i.commonDate,
        saleSerialNumber: i.saleSerialNumber,
        itemSerialNumber: i.itemSerialNumber,
        upperItemSerialNumber: i.upperItemSerialNumber,
        itemId: i.itemId,
        storeTerminalId: BaseBL.storeTerminalId,
        quantity: i.quantity,
        price: i.price,
        supplyValue: i.supplyValue,
        supplyAmount: i.supplyAmount,
        taxAmount0: i.taxAmount0,
        taxAmount1: i.taxAmount1,
        taxAmount2: i.taxAmount2,
        discountSectionCode: i.discountSectionCode,
        discountTypeCode: i.discountTypeCode,
        discountAmount: i.discountAmount,
        orderDiscountAmount: i.orderDiscountAmount,
        orderOptionCode: i.orderOptionCode,
        cancelSerialNumber: i.cancelSerialNumber,
        cancelReason: i.cancelReason,
        cancelEmployeeId: i.cancelEmployeeId,
        synchronizedYn: true,
        menuPaymentSerialNumber: i.menuPaymentSerialNumber,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<SalesHistoryDiscount> _getSalesHistoryDiscountList(
      List<pbt.SalesHistoryDiscount> items) {
    return items.map((i) {
      var j = SalesHistoryDiscount(
        commonDate: i.commonDate,
        saleSerialNumber: i.saleSerialNumber,
        discountSerialNumber: i.discountSerialNumber,
        discountSectionCode: i.discountSectionCode,
        discountRate: i.discountRate,
        discountAmount: i.discountAmount,
        discountName: i.discountName,
        itemId: i.itemId,
        cancelSerialNumber: i.cancelSerialNumber,
        cancelEmployeeId: i.cancelEmployeeId,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<SalesAccountHistory> _getSalesAccountHistoryList(
      List<pbt.SalesAccountHistory> items) {
    return items.map((i) {
      var j = SalesAccountHistory(
        commonDate: i.commonDate,
        saleSerialNumber: i.saleSerialNumber,
        salesAccountSerialNumber: i.salesAccountSerialNumber,
        storeTerminalId: BaseBL.storeTerminalId,
        cashdrawSectionCode: i.cashdrawSectionCode,
        operationTypeCode: i.operationTypeCode,
        paymentSectionCode: i.paymentSectionCode,
        paymentMethodCode: i.paymentMethodCode,
        transactionTypeCode: i.transactionTypeCode,
        cashReceiptIdentifyTypeCode: i.cashReceiptIdentifyTypeCode,
        cashReceiptIdentifyNumber: i.cashReceiptIdentifyNumber,
        approvalTypeCode: i.approvalTypeCode,
        cashReceiptTypeCode: i.cashReceiptTypeCode,
        paymentApprovalNumber: i.paymentApprovalNumber,
        approvalDate: i.approvalDate,
        approvalDatePrimaryPattern: i.approvalDatePrimaryPattern,
        supplyValue: i.supplyValue,
        taxAmount: i.taxAmount,
        taxAmount1: i.taxAmount1,
        taxAmount2: i.taxAmount2,
        expiryDate: i.expiryDate,
        installmentMonth: i.installmentMonth,
        cardName: i.cardName,
        cardCompanySectionCode: i.cardCompanySectionCode,
        cardCompanyName: i.cardCompanyName,
        cardCompanyAffiliateNumber: i.cardCompanyAffiliateNumber,
        cardPurchaseCompanyCode: i.cardPurchaseCompanyCode,
        cardPurchaseCompanyName: i.cardPurchaseCompanyName,
        cardSwipYn: i.cardSwipYn,
        preTipTotalAmount: i.preTipTotalAmount,
        preTipAmount: i.preTipAmount,
        preTipTaxAmount: i.preTipTaxAmount,
        paymentTipTotalAmount: i.paymentTipTotalAmount,
        paymentTipAmount: i.paymentTipAmount,
        paymentTipTaxAmount: i.paymentTipTaxAmount,
        totalAmount: i.totalAmount,
        cancelSerialNumber: i.cancelSerialNumber,
        cancelEmployeeId: i.cancelEmployeeId,
        completeSettlementYn: i.completeSettlementYn,
        saleTransmitYn: i.saleTransmitYn,
        synchronizedYn: true,
        receiptNumber: i.receiptNumber,
        paymentOption: i.paymentOption,
        menuDiscountAmount: i.menuDiscountAmount,
        orderDiscountAmount: i.orderDiscountAmount,
        notInSalesYn: i.notInSalesYn,
        takenAmount: i.takenAmount,
        changeAmount: i.changeAmount,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<SalesAccountHistoryDetails> _getSalesAccountHistoryDetailsList(
      List<pbt.SalesAccountHistoryDetails> items) {
    return items.map((i) {
      var j = SalesAccountHistoryDetails(
        commonDate: i.commonDate,
        saleSerialNumber: i.saleSerialNumber,
        salesAccountSerialNumber: i.salesAccountSerialNumber,
        data0: i.data0,
        data1: i.data1,
        data2: i.data2,
        data3: i.data3,
        data4: i.data4,
        data5: i.data5,
        data6: i.data6,
        data7: i.data7,
        data8: i.data8,
        data9: i.data9,
        data10: i.data10,
        data11: i.data11,
        data12: i.data12,
        data13: i.data13,
        data14: i.data14,
        data15: i.data15,
        data16: i.data16,
        data17: i.data17,
        data18: i.data18,
        data19: i.data19,
        data20: i.data20,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<SalesAccountHistoryTip> _getSalesAccountHistoryTipList(
      List<pbt.SalesAccountHistoryTip> items) {
    return items.map((i) {
      var j = SalesAccountHistoryTip(
        commonDate: i.commonDate,
        saleSerialNumber: i.saleSerialNumber,
        salesAccountSerialNumber: i.salesAccountSerialNumber,
        storeTerminalId: BaseBL.storeTerminalId,
        paymentSectionCode: i.paymentSectionCode,
        approvalTypeCode: i.approvalTypeCode,
        cashdrawSectionCode: i.cashdrawSectionCode,
        paymentAmount: i.paymentAmount,
        taxAmount: i.taxAmount,
        tipReceiptEmployeeId: i.tipReceiptEmployeeId,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<DailyReportHistory> _getDailyReportHistoryList(
      List<pbt.DailyReportHistory> items) {
    return items.map((i) {
      var j = DailyReportHistory(
        storeTerminalId: i.storeTerminalId,
        commonDate: i.commonDate,
        commonSerialNumber: i.commonSerialNumber,
        businessDatetime: i.businessDatetime,
        totalSalesAmount: i.totalSalesAmount,
        totalSalesCount: i.totalSalesCount,
        totalSupplyValue: i.totalSupplyValue,
        totalTaxAmount: i.totalTaxAmount,
        totalTipAmount: i.totalTipAmount,
        totalTipTaxAmount: i.totalTipTaxAmount,
        discountTotalAmount: i.discountTotalAmount,
        totalCancelAmount: i.totalCancelAmount,
        totalRefundAmount: i.totalRefundAmount,
        posCashTotalAmount: i.posCashTotalAmount,
        cashDepositTotalAmount: i.cashDepositTotalAmount,
        cashWithdrawalAmount: i.cashWithdrawalAmount,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }

  List<DailyReportHistoryPayments> _getDailyReportHistoryPaymentsList(
      List<pbt.DailyReportHistoryPayments> items) {
    return items.map((i) {
      var j = DailyReportHistoryPayments(
        storeTerminalId: i.storeTerminalId,
        commonDate: i.commonDate,
        commonSerialNumber: i.commonSerialNumber,
        paymentSectionCode: i.paymentSectionCode,
        businessDatetime: i.businessDatetime,
        totalSalesAmount: i.totalSalesAmount,
        totalSalesCount: i.totalSalesCount,
        totalSupplyValue: i.totalSupplyValue,
        totalTaxAmount: i.totalTaxAmount,
        totalTipAmount: i.totalTipAmount,
        totalTipTaxAmount: i.totalTipTaxAmount,
        discountTotalAmount: i.discountTotalAmount,
        totalCancelAmount: i.totalCancelAmount,
        totalRefundAmount: i.totalRefundAmount,
        synchronizedYn: true,
        firstRegistrantId: i.firstRegistrantId,
        firstRegistrationDatetime: i.firstRegistrationDatetime,
        lastReviserId: i.lastReviserId,
        lastRevisionDatetime: i.lastRevisionDatetime,
        stateCode: i.stateCode,
      );
      j.createId();
      return j;
    }).toList();
  }
}

class UploadService {
  Future<pbm.SalesData_Content?> createSalesData() async {
    SaleBL saleBL = SaleBL();
    var sales = await saleBL.getSaleHnotUploadList();
    var items = await saleBL.getSaleHistoryItemNotUploadList();
    var discounts = await saleBL.getSaleHistoryDiscountNotUploadList();
    var accounts = await saleBL.getSaleAccountHistoryNotUploadList();
    var details = await saleBL.getSaleAccountHistoryDetailsNotUploadList();
    var tips = await saleBL.getSaleAccountHistoryTipNotUploadList();

    if (sales.isEmpty &&
        items.isEmpty &&
        discounts.isEmpty &&
        accounts.isEmpty &&
        details.isEmpty &&
        tips.isEmpty) {
      return null;
    }

    pbm.SalesData_Content date = pbm.SalesData_Content();

    for (var i in sales) {
      Table? table = await i.getTable();
      date.salesHistory.add(pbt.SalesHistory()
        ..commonDate = i.commonDate ?? ''
        ..saleSerialNumber = i.saleSerialNumber ?? 0
        ..orderLink = i.checkLink ?? ''
        ..tableId = (table == null) ? '0' : table.getServerTableId() ?? '0'
        ..operationTypeCode = i.operationTypeCode ?? ''
        ..businessSectionCode = i.businessSectionCode ?? ''
        ..supplyAmount = i.supplyAmount ?? 0
        ..supplyValue = i.supplyValue ?? 0
        ..taxAmount0 = i.taxAmount0 ?? 0
        ..taxAmount1 = i.taxAmount1 ?? 0
        ..taxAmount2 = i.taxAmount2 ?? 0
        ..discountTotalAmount = i.discountTotalAmount ?? 0
        ..totalAmount = i.totalAmount ?? 0
        ..taxFreeYn = i.taxFreeYn ?? false
        ..taxFreeReason = i.taxFreeReason ?? ''
        ..tipTotalAmount = i.tipTotalAmount ?? 0
        ..preTipTotalAmount = i.preTipTotalAmount ?? 0
        ..preTipAmount = i.preTipAmount ?? 0
        ..preTipTaxAmount = i.preTipTaxAmount ?? 0
        ..paymentTipTotalAmount = i.paymentTipTotalAmount ?? 0
        ..paymentTipAmount = i.paymentTipAmount ?? 0
        ..paymentTipTaxAmount = i.paymentTipTaxAmount ?? 0
        ..servingEmployeeId = i.servingEmployeeId ?? '0'
        ..orderEmployeeId = i.orderEmployeeId ?? '0'
        ..cancelLink = i.cancelLink ?? ''
        ..cancelReason = i.cancelReason ?? ''
        ..cancelTypeCode = i.cancelTypeCode ?? ''
        ..cancelEmployeeId = i.cancelEmployeeId ?? '0'
        ..closeBusinessTypeCode = i.closeBusinessTypeCode ?? '0'
        ..memo = i.memo ?? ''
        ..staffBankYn = i.staffBankYn ?? false
        ..data0 = i.data0 ?? ''
        ..data1 = i.data1 ?? ''
        ..data2 = i.data2 ?? ''
        ..data3 = i.data3 ?? ''
        ..data4 = i.data4 ?? ''
        ..data5 = i.data5 ?? ''
        ..data6 = i.data6 ?? ''
        ..data7 = i.data7 ?? ''
        ..data8 = i.data8 ?? ''
        ..data9 = i.data9 ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? '0'
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in items) {
      date.salesHistoryItem.add(pbt.SalesHistoryItem()
        ..commonDate = i.commonDate ?? '0'
        ..saleSerialNumber = i.saleSerialNumber ?? 0
        ..itemSerialNumber = i.itemSerialNumber ?? 0
        ..upperItemSerialNumber = i.upperItemSerialNumber ?? 0
        ..itemId = i.itemId ?? '0'
        ..quantity = i.quantity ?? 0
        ..price = i.price ?? 0
        ..supplyValue = i.supplyValue ?? 0
        ..taxAmount0 = i.taxAmount0 ?? 0
        ..taxAmount1 = i.taxAmount1 ?? 0
        ..taxAmount2 = i.taxAmount2 ?? 0
        ..discountSectionCode = i.discountSectionCode ?? ''
        ..discountTypeCode = i.discountTypeCode ?? ''
        ..discountAmount = i.discountAmount ?? 0
        ..orderDiscountAmount = i.orderDiscountAmount ?? 0
        ..orderOptionCode = i.orderOptionCode ?? '000'
        ..supplyAmount = i.supplyAmount ?? 0
        ..cancelSerialNumber = i.cancelSerialNumber ?? 0
        ..cancelReason = i.cancelReason ?? ''
        ..cancelEmployeeId = i.cancelEmployeeId ?? '0'
        ..menuPaymentSerialNumber = i.menuPaymentSerialNumber ?? 0
        ..firstRegistrantId = i.firstRegistrantId ?? '0'
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in discounts) {
      date.salesHistoryDiscount.add(pbt.SalesHistoryDiscount()
        ..commonDate = i.commonDate ?? '0'
        ..saleSerialNumber = i.saleSerialNumber ?? 0
        ..discountSerialNumber = i.discountSerialNumber ?? 0
        ..discountSectionCode = i.discountSectionCode ?? ''
        ..discountRate = i.discountRate ?? 0
        ..discountAmount = i.discountAmount ?? 0
        ..discountName = i.discountName ?? ''
        ..itemId = i.itemId ?? ''
        ..cancelSerialNumber = i.cancelSerialNumber ?? 0
        ..cancelEmployeeId = i.cancelEmployeeId ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? '0'
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in accounts) {
      date.salesAccountHistory.add(pbt.SalesAccountHistory()
        ..commonDate = i.commonDate ?? '0'
        ..saleSerialNumber = i.saleSerialNumber ?? 0
        ..salesAccountSerialNumber = i.salesAccountSerialNumber ?? 0
        ..cashdrawSectionCode = i.cashdrawSectionCode ?? ''
        ..operationTypeCode = i.operationTypeCode ?? ''
        ..paymentSectionCode = i.paymentSectionCode ?? ''
        ..paymentMethodCode = i.paymentMethodCode ?? ''
        ..transactionTypeCode = i.transactionTypeCode ?? ''
        ..cashReceiptIdentifyTypeCode = i.cashReceiptIdentifyTypeCode ?? ''
        ..cashReceiptIdentifyNumber = i.cashReceiptIdentifyNumber ?? ''
        ..approvalTypeCode = i.approvalTypeCode ?? ''
        ..cashReceiptTypeCode = i.cashReceiptTypeCode ?? ''
        ..paymentApprovalNumber = i.paymentApprovalNumber ?? ''
        ..approvalDate = i.approvalDate ?? ''
        ..approvalDatePrimaryPattern = i.approvalDatePrimaryPattern ?? ''
        ..supplyValue = i.supplyValue ?? 0
        ..taxAmount = i.taxAmount ?? 0
        ..taxAmount1 = i.taxAmount1 ?? 0
        ..taxAmount2 = i.taxAmount2 ?? 0
        ..expiryDate = i.expiryDate ?? ''
        ..installmentMonth = i.installmentMonth ?? 0
        ..cardName = i.cardName ?? ''
        ..cardCompanySectionCode = i.cardCompanySectionCode ?? ''
        ..cardCompanyName = i.cardCompanyName ?? ''
        ..cardCompanyAffiliateNumber = i.cardCompanyAffiliateNumber ?? ''
        ..cardPurchaseCompanyCode = i.cardPurchaseCompanyCode ?? ''
        ..cardPurchaseCompanyName = i.cardPurchaseCompanyName ?? ''
        ..cardSwipYn = i.cardSwipYn ?? false
        ..preTipTotalAmount = i.preTipTotalAmount ?? 0
        ..preTipTaxAmount = i.preTipTaxAmount ?? 0
        ..preTipAmount = i.preTipAmount ?? 0
        ..paymentTipTotalAmount = i.paymentTipTotalAmount ?? 0
        ..paymentTipAmount = i.paymentTipAmount ?? 0
        ..paymentTipTaxAmount = i.paymentTipTaxAmount ?? 0
        ..totalAmount = i.totalAmount ?? 0
        ..cancelSerialNumber = i.cancelSerialNumber ?? ''
        ..cancelEmployeeId = i.cancelEmployeeId ?? '0'
        ..completeSettlementYn = i.completeSettlementYn ?? false
        ..saleTransmitYn = i.saleTransmitYn ?? false
        ..receiptNumber = i.receiptNumber ?? ''
        ..paymentOption = i.paymentOption ?? ''
        ..menuDiscountAmount = i.menuDiscountAmount ?? 0
        ..orderDiscountAmount = i.orderDiscountAmount ?? 0
        ..notInSalesYn = i.notInSalesYn ?? false
        ..takenAmount = i.takenAmount ?? 0
        ..changeAmount = i.changeAmount ?? 0
        ..firstRegistrantId = i.firstRegistrantId ?? '0'
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in details) {
      date.salesAccountHistoryDetails.add(pbt.SalesAccountHistoryDetails()
        ..commonDate = i.commonDate ?? '0'
        ..saleSerialNumber = i.saleSerialNumber ?? 0
        ..salesAccountSerialNumber = i.salesAccountSerialNumber ?? 0
        ..data0 = i.data0 ?? ''
        ..data1 = i.data1 ?? ''
        ..data2 = i.data2 ?? ''
        ..data3 = i.data3 ?? ''
        ..data4 = i.data4 ?? ''
        ..data5 = i.data5 ?? ''
        ..data6 = i.data6 ?? ''
        ..data7 = i.data7 ?? ''
        ..data8 = i.data8 ?? ''
        ..data9 = i.data9 ?? ''
        ..data10 = i.data10 ?? ''
        ..data11 = i.data11 ?? ''
        ..data12 = i.data12 ?? ''
        ..data13 = i.data13 ?? ''
        ..data14 = i.data14 ?? ''
        ..data15 = i.data15 ?? ''
        ..data16 = i.data16 ?? ''
        ..data17 = i.data17 ?? ''
        ..data18 = i.data18 ?? ''
        ..data19 = i.data19 ?? ''
        ..data20 = i.data20 ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? '0'
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in tips) {
      date.salesAccountHistoryTip.add(pbt.SalesAccountHistoryTip()
        ..commonDate = i.commonDate ?? '0'
        ..saleSerialNumber = i.saleSerialNumber ?? 0
        ..salesAccountSerialNumber = i.salesAccountSerialNumber ?? 0
        ..paymentSectionCode = i.paymentSectionCode ?? ''
        ..approvalTypeCode = i.approvalTypeCode ?? ''
        ..cashdrawSectionCode = i.cashdrawSectionCode ?? ''
        ..paymentAmount = i.paymentAmount ?? 0
        ..taxAmount = i.taxAmount ?? 0
        ..tipReceiptEmployeeId = i.tipReceiptEmployeeId ?? '0'
        ..firstRegistrantId = i.firstRegistrantId ?? '0'
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    return date;
  }

  Future<void> uploadSalesDone(pbm.SalesData_Content data) async {
    SaleBL saleBL = SaleBL();

    for (var i in data.salesHistory) {
      await saleBL.syncSalesHistory(
        i.commonDate,
        i.saleSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.salesHistoryItem) {
      await saleBL.syncSalesHistoryItem(
        i.commonDate,
        i.saleSerialNumber,
        i.itemSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.salesAccountHistory) {
      await saleBL.syncSalesAccountHistory(
        i.commonDate,
        i.saleSerialNumber,
        i.salesAccountSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.salesAccountHistoryDetails) {
      await saleBL.syncSalesAccountHistoryDetail(
        i.commonDate,
        i.saleSerialNumber,
        i.salesAccountSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.salesAccountHistoryTip) {
      await saleBL.syncSalesAccountHistoryTip(
        i.commonDate,
        i.saleSerialNumber,
        i.salesAccountSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.salesHistoryDiscount) {
      await saleBL.syncSalesHistoryDiscount(
        i.commonDate,
        i.saleSerialNumber,
        i.discountSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }
  }

  Future<pbm.SettingsData_Content?> createSettingsData() async {
    BasBL basBL = BasBL();
    OperationBL operationBL = OperationBL();
    var store = await basBL.getStore();
    var storeTerminal = await basBL
        .getStoreTerminalById(await operationBL.getStoreTerminalId());
    var basicDataItems = await basBL.getBasicDataItemToUpload();
    var storeTerminalBasicDataItems =
        await basBL.getStoreTerminalBasicDataItemToUpload();

    if (store?.synchronizedYn ?? true) {
      store = null;
    }

    if (storeTerminal?.synchronizedYn ?? true) {
      storeTerminal = null;
    }

    if (store == null &&
        storeTerminal == null &&
        storeTerminalBasicDataItems.isEmpty &&
        basicDataItems.isEmpty) {
      return null;
    }

    pbm.SettingsData_Content data = pbm.SettingsData_Content();

    if (store != null) {
      data.store.add(pbt.Store()
        ..zipcode = store.zipcode ?? ''
        ..primaryAddress = store.primaryAddress ?? ''
        ..detailAddress = store.detailAddress ?? ''
        ..telNumber = store.telNumber ?? ''
        ..ceoName = store.ceoName ?? ''
        ..businessRegistrationNumber = store.businessRegistrationNumber ?? ''
        ..lastRevisionDatetime = store.lastRevisionDatetime ?? '');
    }

    if (storeTerminal != null) {
      data.storeTerminal.add(pbt.StoreTerminal()
        ..languageCode = storeTerminal.languageCode ?? ''
        ..currencyCode = storeTerminal.currencyCode ?? ''
        ..appActionTypeCode = storeTerminal.appActionTypeCode ?? ''
        ..lastRevisionDatetime = storeTerminal.lastRevisionDatetime ?? '');
    }

    for (var i in basicDataItems) {
      data.basicDataItem.add(pbt.BasicDataItem()
        ..basicDataItemId = i.basicDataItemId ?? ''
        ..data1 = i.data1 ?? ''
        ..data2 = i.data2 ?? ''
        ..data3 = i.data3 ?? ''
        ..data4 = i.data4 ?? ''
        ..data5 = i.data5 ?? ''
        ..data6 = i.data6 ?? ''
        ..data7 = i.data7 ?? ''
        ..data8 = i.data8 ?? ''
        ..data9 = i.data9 ?? ''
        ..data10 = i.data10 ?? ''
        ..data11 = i.data11 ?? ''
        ..data12 = i.data12 ?? ''
        ..data13 = i.data13 ?? ''
        ..data14 = i.data14 ?? ''
        ..data15 = i.data15 ?? ''
        ..data16 = i.data16 ?? ''
        ..data17 = i.data17 ?? ''
        ..data18 = i.data18 ?? ''
        ..data19 = i.data19 ?? ''
        ..data20 = i.data20 ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '');
    }

    for (var i in storeTerminalBasicDataItems) {
      data.storeTerminalBasicDataItem.add(pbt.StoreTerminalBasicDataItem()
        ..storeTerminalBasicDataItemId = i.storeTerminalBasicDataItemId ?? ''
        ..data1 = i.data1 ?? ''
        ..data2 = i.data2 ?? ''
        ..data3 = i.data3 ?? ''
        ..data4 = i.data4 ?? ''
        ..data5 = i.data5 ?? ''
        ..data6 = i.data6 ?? ''
        ..data7 = i.data7 ?? ''
        ..data8 = i.data8 ?? ''
        ..data9 = i.data9 ?? ''
        ..data10 = i.data10 ?? ''
        ..data11 = i.data11 ?? ''
        ..data12 = i.data12 ?? ''
        ..data13 = i.data13 ?? ''
        ..data14 = i.data14 ?? ''
        ..data15 = i.data15 ?? ''
        ..data16 = i.data16 ?? ''
        ..data17 = i.data17 ?? ''
        ..data18 = i.data18 ?? ''
        ..data19 = i.data19 ?? ''
        ..data20 = i.data20 ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '');
    }

    return data;
  }

  Future<void> uploadSettingsDone(pbm.SettingsData_Content data) async {
    BasBL basBL = BasBL();

    for (var i in data.store) {
      await basBL.syncStore(
        i.storeId,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.storeTerminal) {
      await basBL.syncStoreTerminal(
        i.storeTerminalId,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.basicDataItem) {
      await basBL.syncBasicDataItem(
        i.basicDataItemId,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.storeTerminalBasicDataItem) {
      await basBL.syncStoreTerminalBasicDataItem(
        i.storeTerminalBasicDataItemId,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }
  }

  Future<pbm.CashierData_Content?> createCashierData() async {
    CashierBL cashierBL = CashierBL();
    var inOuts = await cashierBL.getCashdrawCashInOutHistoriesToUpload();
    var banks = await cashierBL.getCashierBankHistoriesToUpload();
    var bills = await cashierBL.getCashierBankHistoryBillsToUpload();

    if (inOuts.isEmpty && banks.isEmpty && bills.isEmpty) {
      return null;
    }

    pbm.CashierData_Content data = pbm.CashierData_Content();

    for (var i in inOuts) {
      data.cashdrawCashInOutHistory.add(pbt.CashdrawCashInOutHistory()
        ..commonDate = i.commonDate ?? ''
        ..commonSerialNumber = i.commonSerialNumber ?? 0
        ..accountSubjectId = i.accountSubjectId ?? ''
        ..cashdrawSectionCode = i.cashdrawSectionCode ?? ''
        ..inOutTypeCode = i.inOutTypeCode ?? ''
        ..amount = i.amount ?? 0
        ..remarkA = i.remarkA ?? ''
        ..remarkB = i.remarkB ?? ''
        ..remarkC = i.remarkC ?? ''
        ..personalAccountId = i.personalAccountId ?? ''
        ..salesLink = i.salesLink ?? ''
        ..cashierBankLink = i.cashierBankLink ?? ''
        ..inOutEmployeeId = i.inOutEmployeeId ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? ''
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? '0'
        ..lastReviserId = i.lastReviserId ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in banks) {
      data.cashierBankHistory.add(pbt.CashierBankHistory()
        ..commonDate = i.commonDate ?? ''
        ..commonSerialNumber = i.commonSerialNumber ?? 0
        ..cashdrawSectionCode = i.cashdrawSectionCode ?? ''
        ..businessOpenCloseSectionCode = i.businessOpenCloseSectionCode ?? ''
        ..cashierTypeCode = i.cashierTypeCode ?? ''
        ..businessStartDatetime = i.businessStartDatetime ?? ''
        ..businessEndDatetime = i.businessEndDatetime ?? ''
        ..businessChangeDatetime = i.businessChangeDatetime ?? ''
        ..salesCount = i.salesCount ?? 0
        ..tableTurnoverRate = i.tableTurnoverRate ?? 0
        ..employeeId = i.employeeId ?? ''
        ..openBusinessCashTotalAmount = i.openBusinessCashTotalAmount ?? 0
        ..closeBusinessCashTotalAmount = i.closeBusinessCashTotalAmount ?? 0
        ..businessChangeCashTotalAmount = i.businessChangeCashTotalAmount ?? 0
        ..posCashTotalAmount = i.posCashTotalAmount ?? 0
        ..cashDifferenceAmount = i.cashDifferenceAmount ?? 0
        ..cashDifferenceReason = i.cashDifferenceReason ?? ''
        ..cashDepositTotalAmount = i.cashDepositTotalAmount ?? 0
        ..cashWithdrawalAmount = i.cashWithdrawalAmount ?? 0
        ..salesTotalCashAmount = i.salesTotalCashAmount ?? 0
        ..salesTotalAmount = i.salesTotalAmount ?? 0
        ..discountTotalAmount = i.discountTotalAmount ?? 0
        ..tipTotalAmount = i.tipTotalAmount ?? 0
        ..cancelSerialNumber = i.cancelSerialNumber ?? 0
        ..shiftSerialNumber = i.shiftSerialNumber ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? ''
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? '0'
        ..lastReviserId = i.lastReviserId ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in bills) {
      data.cashierBankHistoryBill.add(pbt.CashierBankHistoryBill()
        ..commonDate = i.commonDate ?? ''
        ..commonSerialNumber = i.commonSerialNumber ?? 0
        ..cashdrawSectionCode = i.cashdrawSectionCode ?? ''
        ..billSerialNumber = i.billSerialNumber ?? 0
        ..businessOpenCloseSectionCode = i.businessOpenCloseSectionCode ?? ''
        ..totalAmount = i.totalAmount ?? 0
        ..bill0Number = i.bill0Number ?? 0
        ..bill1Number = i.bill1Number ?? 0
        ..bill2Number = i.bill2Number ?? 0
        ..bill3Number = i.bill3Number ?? 0
        ..bill4Number = i.bill4Number ?? 0
        ..bill5Number = i.bill5Number ?? 0
        ..bill6Number = i.bill6Number ?? 0
        ..bill7Number = i.bill7Number ?? 0
        ..bill8Number = i.bill8Number ?? 0
        ..bill9Number = i.bill9Number ?? 0
        ..bill10Number = i.bill10Number ?? 0
        ..bill11Number = i.bill11Number ?? 0
        ..bill12Number = i.bill12Number ?? 0
        ..bill13Number = i.bill13Number ?? 0
        ..bill14Number = i.bill14Number ?? 0
        ..bill15Number = i.bill15Number ?? 0
        ..bill16Number = i.bill16Number ?? 0
        ..bill17Number = i.bill17Number ?? 0
        ..bill18Number = i.bill18Number ?? 0
        ..bill19Number = i.bill19Number ?? 0
        ..userInputAmount = i.userInputAmount ?? 0
        ..cancelSerialNumber = i.cancelSerialNumber ?? 0
        ..shiftSerialNumber = i.shiftSerialNumber ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? ''
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? '0'
        ..lastReviserId = i.lastReviserId ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    return data;
  }

  Future<void> uploadCashierDataDone(pbm.CashierData_Content data) async {
    CashierBL cashierBL = CashierBL();

    for (var i in data.cashdrawCashInOutHistory) {
      await cashierBL.syncCashdrawCashInOutHistory(
        i.commonDate,
        i.commonSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.cashierBankHistory) {
      await cashierBL.syncCashierBankHistory(
        i.commonDate,
        i.commonSerialNumber,
        i.cashdrawSectionCode,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.cashierBankHistoryBill) {
      await cashierBL.syncCashierBankHistoryBill(
        i.commonDate,
        i.commonSerialNumber,
        i.cashdrawSectionCode,
        i.billSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }
  }

  Future<pbm.ReportData_Content?> createReportData() async {
    ReportBL reportBL = ReportBL();
    var reports = await reportBL.getDailyReportHistoryNotUploadList();
    var payments = await reportBL.getDailyReportHistoryPaymentsNotUploadList();

    if (reports.isEmpty && payments.isEmpty) {
      return null;
    }

    pbm.ReportData_Content data = pbm.ReportData_Content();

    for (var i in reports) {
      data.dailyReportHistory.add(pbt.DailyReportHistory()
        ..commonDate = i.commonDate ?? ''
        ..commonSerialNumber = i.commonSerialNumber ?? 0
        ..businessDatetime = i.businessDatetime ?? ''
        ..totalSalesAmount = i.totalSalesAmount ?? 0
        ..totalSalesCount = i.totalSalesCount ?? 0
        ..totalSupplyValue = i.totalSupplyValue ?? 0
        ..totalTaxAmount = i.totalTaxAmount ?? 0
        ..totalTipAmount = i.totalTipAmount ?? 0
        ..totalTipTaxAmount = i.totalTipTaxAmount ?? 0
        ..discountTotalAmount = i.discountTotalAmount ?? 0
        ..totalCancelAmount = i.totalCancelAmount ?? 0
        ..totalRefundAmount = i.totalRefundAmount ?? 0
        ..posCashTotalAmount = i.posCashTotalAmount ?? 0
        ..cashDepositTotalAmount = i.cashDepositTotalAmount ?? 0
        ..cashWithdrawalAmount = i.cashWithdrawalAmount ?? 0
        ..synchronizedYn = i.synchronizedYn ?? false
        ..firstRegistrantId = i.firstRegistrantId ?? ''
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? '0'
        ..lastReviserId = i.lastReviserId ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    for (var i in payments) {
      data.dailyReportHistoryPayments.add(pbt.DailyReportHistoryPayments()
        ..commonDate = i.commonDate ?? ''
        ..commonSerialNumber = i.commonSerialNumber ?? 0
        ..paymentSectionCode = i.paymentSectionCode ?? ''
        ..businessDatetime = i.businessDatetime ?? ''
        ..totalSalesAmount = i.totalSalesAmount ?? 0
        ..totalSalesCount = i.totalSalesCount ?? 0
        ..totalSupplyValue = i.totalSupplyValue ?? 0
        ..totalTaxAmount = i.totalTaxAmount ?? 0
        ..totalTipAmount = i.totalTipAmount ?? 0
        ..totalTipTaxAmount = i.totalTipTaxAmount ?? 0
        ..discountTotalAmount = i.discountTotalAmount ?? 0
        ..totalCancelAmount = i.totalCancelAmount ?? 0
        ..totalRefundAmount = i.totalRefundAmount ?? 0
        ..synchronizedYn = i.synchronizedYn ?? false
        ..firstRegistrantId = i.firstRegistrantId ?? ''
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? '0'
        ..lastReviserId = i.lastReviserId ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? '0'
        ..stateCode = i.stateCode ?? '00');
    }

    return data;
  }

  Future<void> uploadReportDone(pbm.ReportData_Content data) async {
    ReportBL reportBL = ReportBL();

    for (var i in data.dailyReportHistory) {
      await reportBL.syncDailyReportHistory(
        i.commonDate,
        i.commonSerialNumber,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }

    for (var i in data.dailyReportHistoryPayments) {
      await reportBL.syncDailyReportHistoryPayments(
        i.commonDate,
        i.commonSerialNumber,
        i.paymentSectionCode,
        i.lastRevisionDatetime,
        i.serverLastRevisionDatetime,
      );
    }
  }
}

class OrderSyncService {
  String? _storeId;
  String? _storeTerminalId;
  String? _storeTerminalGroupId;

  Future<String> _getStoreId() async {
    _storeId ??= await OperationBL().getStoreId();
    return _storeId ?? '';
  }

  Future<String> _getStoreTerminalGroupId() async {
    _storeTerminalGroupId ??= await OperationBL().getStoreId();
    return _storeTerminalGroupId ?? '';
  }

  Future<String> _getStoreTerminalId() async {
    _storeTerminalId ??= await OperationBL().getStoreTerminalId();
    return _storeTerminalId ?? '';
  }

  Future<pbm.TableLock_Content> createTableLock(String tableId) async {
    return pbm.TableLock_Content()
      ..clientType = BuildConfig.CLIENT_TYPE
      ..storeId = await _getStoreId()
      ..storeTerminalId = await _getStoreTerminalId()
      ..storeTerminalGroupId = await _getStoreTerminalGroupId()
      ..tableId = tableId;
  }

  Future<pbm.OrderData_Content?> updatingOrderData() async {
    final orderBL = OrderBL();
    var orders = await orderBL.getOrderHistoriesToUpload();

    if (orders.isEmpty) {
      return null;
    }

    var data = pbm.OrderData_Content()
      ..clientType = BuildConfig.CLIENT_TYPE
      ..storeId = await _getStoreId()
      ..storeTerminalId = await _getStoreTerminalId()
      ..storeTerminalGroupId = await _getStoreTerminalGroupId()
      ..isDelete = false;

    for (var i in orders) {
      var items = await i!.getOrderHistoryItems();
      var kitchenMemos = await i.getOrderHistoryKitchenMemos();
      var discounts = await i.getOrderHistoryDiscounts();
      var order = pbm.OrderData_Order();

      order.orderHistory = pbt.OrderHistory()
        ..commonDate = i.commonDate ?? ''
        ..commonSerialNumber = i.commonSerialNumber ?? 0
        ..tableId = i.tableId ?? ''
        ..operationTypeCode = i.operationTypeCode ?? ''
        ..businessSectionCode = i.businessSectionCode ?? ''
        ..supplyValue = i.supplyValue ?? 0
        ..supplyAmount = i.supplyAmount ?? 0
        ..taxAmount0 = i.taxAmount0 ?? 0
        ..taxAmount1 = i.taxAmount1 ?? 0
        ..taxAmount2 = i.taxAmount2 ?? 0
        ..discountTotalAmount = i.orderDiscountTotalAmount ?? 0
        ..orderTotalAmount = i.orderTotalAmount ?? 0
        ..taxFreeYn = i.taxFreeYn ?? false
        ..taxFreeReason = i.taxFreeReason ?? ''
        ..preTipTotalAmount = i.preTipTotalAmount ?? 0
        ..preTipAmount = i.preTipAmount ?? 0
        ..preTipTaxAmount = i.preTipTaxAmount ?? 0
        ..paymentTipTotalAmount = i.paymentTipTotalAmount ?? 0
        ..paymentTipAmount = i.paymentTipAmount ?? 0
        ..paymentTipTaxAmount = i.paymentTipTaxAmount ?? 0
        ..servingEmployeeId = i.servingEmployeeId ?? ''
        ..orderEmployeeId = i.orderEmployeeId ?? ''
        ..pagerNumber = i.pagerNumber ?? 0
        ..paymentInitiatorId = i.paymentInitiatorId ?? ''
        ..memo = i.memo ?? ''
        ..firstRegistrantId = i.firstRegistrantId ?? ''
        ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
        ..lastReviserId = i.lastReviserId ?? ''
        ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
        ..stateCode = i.stateCode ?? '00';

      order.orderHistoryItem.addAll(items
          .map((i) => pbt.OrderHistoryItem()
            ..commonDate = i.commonDate ?? ''
            ..commonSerialNumber = i.commonSerialNumber ?? 0
            ..itemSerialNumber = i.itemSerialNumber ?? 0
            ..upperItemSerialNumber = i.upperItemSerialNumber ?? 0
            ..itemId = i.itemId ?? ''
            ..storeTerminalId = i.storeTerminalId ?? ''
            ..quantity = i.quantity ?? 0
            ..price = i.price ?? 0
            ..supplyValue = i.supplyValue ?? 0
            ..taxAmount0 = i.taxAmount0 ?? 0
            ..taxAmount1 = i.taxAmount1 ?? 0
            ..taxAmount2 = i.taxAmount2 ?? 0
            ..discountSectionCode = i.discountSectionCode ?? ''
            ..discountRate = i.discountRate ?? 0
            ..discountAmount = i.discountAmount ?? 0
            ..discountTypeCode = i.discountTypeCode ?? ''
            ..menuDiscountAmount = i.menuDiscountAmount ?? 0
            ..orderDiscountAmount = i.orderDiscountAmount ?? 0
            ..supplyAmount = i.supplyAmount ?? 0
            ..orderOptionCode = i.orderOptionCode ?? ''
            ..orderHoldingTime = i.orderHoldingTime ?? ''
            ..cancelSerialNumber = i.cancelSerialNumber ?? 0
            ..cancelEmployeeId = i.cancelEmployeeId ?? ''
            ..cancelReason = i.cancelReason ?? ''
            ..menuPaymentYn = (i.menuPaymentYn ?? 0) == 1
            ..menuPaymentSerialNumber = i.menuPaymentSerialNumber ?? 0
            ..firstRegistrantId = i.firstRegistrantId ?? ''
            ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
            ..lastReviserId = i.lastReviserId ?? ''
            ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
            ..stateCode = i.stateCode ?? '00')
          .toList());

      order.orderHistoryKitchenMemo.addAll(kitchenMemos
          .map((i) => pbt.OrderHistoryKitchenMemo()
            ..commonDate = i.commonDate ?? ''
            ..commonSerialNumber = i.commonSerialNumber ?? 0
            ..itemSerialNumber = i.itemSerialNumber ?? 0
            ..kitchenMemoSerialNumber = i.kitchenMemoSerialNumber ?? 0
            ..kitchenMemoId = i.kitchenMemoId ?? ''
            ..kitchenMemo = i.kitchenMemo ?? ''
            ..firstRegistrantId = i.firstRegistrantId ?? ''
            ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
            ..lastReviserId = i.lastReviserId ?? ''
            ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
            ..stateCode = i.stateCode ?? '00')
          .toList());

      order.orderHistoryDiscount.addAll(discounts
          .map((i) => pbt.OrderHistoryDiscount()
            ..commonDate = i.commonDate ?? ''
            ..commonSerialNumber = i.commonSerialNumber ?? 0
            ..discountSerialNumber = i.discountSerialNumber ?? 0
            ..discountSectionCode = i.discountSectionCode ?? ''
            ..discountRate = i.discountRate ?? 0
            ..discountAmount = i.discountAmount ?? 0
            ..discountName = i.discountName ?? ''
            ..itemId = i.itemId ?? ''
            ..firstRegistrantId = i.firstRegistrantId ?? ''
            ..firstRegistrationDatetime = i.firstRegistrationDatetime ?? ''
            ..lastReviserId = i.lastReviserId ?? ''
            ..lastRevisionDatetime = i.lastRevisionDatetime ?? ''
            ..stateCode = i.stateCode ?? '00')
          .toList());

      data.orders.add(order);
    }

    return data;
  }

  Future<void> uploadOrderDataDone(pbm.OrderData_Content data) async {
    final orderBL = OrderBL();

    for (var order in data.orders) {
      if (await orderBL.syncOrderHistory(
        order.orderHistory.commonDate,
        order.orderHistory.commonSerialNumber,
        order.orderHistory.lastRevisionDatetime,
        order.orderHistory.serverLastRevisionDatetime,
      )) {
        for (var j in order.orderHistoryItem) {
          await orderBL.syncOrderHistoryItem(
            j.commonDate,
            j.commonSerialNumber,
            j.itemSerialNumber,
            j.lastRevisionDatetime,
          );
        }

        for (var j in order.orderHistoryKitchenMemo) {
          await orderBL.syncOrderHistoryKitchenMemo(
            j.commonDate,
            j.commonSerialNumber,
            j.itemSerialNumber,
            j.kitchenMemoSerialNumber,
            j.lastRevisionDatetime,
          );
        }

        for (var j in order.orderHistoryDiscount) {
          await orderBL.syncOrderHistoryDiscount(
            j.commonDate,
            j.commonSerialNumber,
            j.lastRevisionDatetime,
          );
        }
      }
    }
  }

  Future<pbm.OrderData_Content?> deletingOrderData() async {
    final orderBL = OrderBL();
    var orders = await orderBL.getOrderHistoryDeletionsToUpload();

    if (orders.isEmpty) {
      return null;
    }

    var data = pbm.OrderData_Content()
      ..clientType = BuildConfig.CLIENT_TYPE
      ..storeId = await _getStoreId()
      ..storeTerminalId = await _getStoreTerminalId()
      ..storeTerminalGroupId = await _getStoreTerminalGroupId()
      ..isDelete = true;

    for (var i in orders) {
      List<String> tok = i.id.split('_');
      data.orders.add(pbm.OrderData_Order()
        ..orderHistory = (pbt.OrderHistory()
          ..commonDate = tok[0]
          ..commonSerialNumber = int.tryParse(tok[1]) ?? 0
          ..isFinalized = i.finalizedYn));
    }

    return data;
  }

  Future<void> deleteOrderDataDone(pbm.OrderData_Content data,
      {bool bySync = false}) async {
    final operationBL = OperationBL();
    final orderBL = OrderBL();
    var orderIds = '';

    for (var i in data.orders) {
      var order = i.orderHistory;
      var id = '${order.commonDate}_${order.commonSerialNumber}';
      orderIds += '$id ';
      bool isSmartOrder = false;
      if (i.orderHistory.isFinalized) {
        // 주문서 출력시점이 결제 후라면 (결제가 완료되어) 주문 삭제가 일어날 때 전체 주문을 출력
        OrderCheck? check = await orderBL.getOrderByOrderHId(id);
        if (check != null) {
          String? _busiSection = check.getBusiSection();
          if ((TenderConstants_BIZ_SEC_CD.ONLINE_NEW.getCode() ==
                  _busiSection) ||
              (TenderConstants_BIZ_SEC_CD.ONLINE_ACCEPTED.getCode() ==
                  _busiSection) ||
              (TenderConstants_BIZ_SEC_CD.ONLINE_COMPLETE.getCode() ==
                  _busiSection) ||
              (TenderConstants_BIZ_SEC_CD.ONLINE_REJECT.getCode() ==
                  _busiSection)) {
            isSmartOrder = true;
          }
        }
        if (await operationBL.isOrderPrintingPoint() && !isSmartOrder) {
          if (check != null) {
            check.setOldOrderHistoryItems([]);
            await _printOrderCheck(check, true);
          }
        }
      } else {
        OrderCheck? check = await orderBL.getOrderByOrderHId(id);

        if (check != null) {
          await _printOrderCancel(check);
        }
      }

      if (bySync /* && !isSmartOrder*/) {
        await orderBL.deleteOrder(id, bySync: true);
      }
      // if (!isSmartOrder) {
      orderBL.syncOrderHistoryDeletion(id);
      // }
    }

    Simple.sendEvent('order', 'Order deleted: $orderIds');
  }

  Future<pbm.OrderData_Content> downloadingOrderData() async {
    return pbm.OrderData_Content()
      ..clientType = BuildConfig.CLIENT_TYPE
      ..storeId = await _getStoreId()
      ..storeTerminalId = await _getStoreTerminalId()
      ..storeTerminalGroupId = await _getStoreTerminalGroupId();
  }

  // 앱 기동하여 전체 주문 다운로드 시 주문이 지워졌다면 주문 취소인지 결제가 된 것인지 판단할 수 없음
  // 테이크아웃 주문인 경우 사용자에게 혼란을 줄 수 있을 것 같아 테이크아웃 주문인 경우는 출력하지 않게 함
  Future<void> downloadAllOrderDataDone(pbm.OrderData_Content data) async {
    final orderBL = OrderBL();
    final operationBL = OperationBL();
    var orders = <OrderHistory>[];
    var items = <OrderHistoryItem>[];
    var memos = <OrderHistoryKitchenMemo>[];
    var discounts = <OrderHistoryDiscount>[];
    var oldChecks = <OrderCheck?>[];
    var deletedOrders = await orderBL.getAllOrderHistory();

    for (var order in data.orders) {
      orders.add(_getOrderHistory(order.orderHistory));
      items.addAll(_getOrderHistoryItemList(order.orderHistoryItem));
      memos.addAll(
          _getOrderHistoryKitchenMemoList(order.orderHistoryKitchenMemo));
      discounts
          .addAll(_gerOrderHistoryDiscountList(order.orderHistoryDiscount));
      var id =
          '${order.orderHistory.commonDate}_${order.orderHistory.commonSerialNumber}';
      deletedOrders.removeWhere((i) => i.id == id);
      oldChecks.add(await orderBL.getOrderByOrderHId(id));
    }

    var isPrintBeforePayment = !await operationBL.isOrderPrintingPoint();

    if (isPrintBeforePayment) {
      await _printDeletedOrders(deletedOrders);
    }

    await orderBL.saveAllSync(orders, items, memos, discounts);
    await _printNewOrUpdatedOrders(oldChecks, orders, false);
    Simple.sendEvent('order', 'All Orders downloaded');
  }

  Future<void> downloadOrderDataDone(pbm.OrderData_Content data) async {
    final orderBL = OrderBL();
    var orders = <OrderHistory>[];
    var items = <OrderHistoryItem>[];
    var memos = <OrderHistoryKitchenMemo>[];
    var discounts = <OrderHistoryDiscount>[];
    var orderIds = <String>[];
    var oldChecks = <OrderCheck?>[];

    for (var order in data.orders) {
      orders.add(_getOrderHistory(order.orderHistory));
      items.addAll(_getOrderHistoryItemList(order.orderHistoryItem));
      memos.addAll(
          _getOrderHistoryKitchenMemoList(order.orderHistoryKitchenMemo));
      discounts
          .addAll(_gerOrderHistoryDiscountList(order.orderHistoryDiscount));
      var id =
          '${order.orderHistory.commonDate}_${order.orderHistory.commonSerialNumber}';
      orderIds.add(id);
      oldChecks.add(await orderBL.getOrderByOrderHId(id));
    }

    await orderBL.saveSync(orders, items, memos, discounts);
    await _printNewOrUpdatedOrders(oldChecks, orders, true);
    Simple.sendEvent('order', 'Order downloaded: $orderIds');
  }

  Future<void> _printDeletedOrders(List<OrderHistory> orders) async {
    final operationBL = OperationBL();
    final orderBL = OrderBL();

    if (await operationBL.isOrderPrintingPoint()) {
      return;
    }

    for (var i in orders) {
      var id = '${i.commonDate}_${i.commonSerialNumber}';
      OrderCheck? check = await orderBL.getOrderByOrderHId(id);

      if (check != null && check.isNotTakeoutOrder()) {
        await _printOrderCancel(check);
      }
    }
  }

  Future<void> _printNewOrUpdatedOrders(List<OrderCheck?> oldChecks,
      List<OrderHistory> orders, bool includeTakeout) async {
    final operationBL = OperationBL();
    final orderBL = OrderBL();

    var isPrintBeforePayment = !await operationBL.isOrderPrintingPoint();

    for (var i = 0; i < orders.length; i++) {
      bool isSmartOrder = false;
      var id = '${orders[i].commonDate}_${orders[i].commonSerialNumber}';
      OrderCheck? check = await orderBL.getOrderByOrderHId(id);
      if (check != null) {
        String? _busiSection = check.getBusiSection();
        if ((TenderConstants_BIZ_SEC_CD.ONLINE_NEW.getCode() == _busiSection) ||
            (TenderConstants_BIZ_SEC_CD.ONLINE_ACCEPTED.getCode() ==
                _busiSection) ||
            (TenderConstants_BIZ_SEC_CD.ONLINE_COMPLETE.getCode() ==
                _busiSection) ||
            (TenderConstants_BIZ_SEC_CD.ONLINE_REJECT.getCode() ==
                _busiSection)) {
          isSmartOrder = true;
        }
        if (isSmartOrder || isPrintBeforePayment) {
          check.setOldOrderHistoryItems(
              oldChecks[i]?.getCurrOrderItemList() ?? []);

          if ((includeTakeout || check.isNotTakeoutOrder()) &&
              check.checkChangedOrderItemInList()) {
            await _printOrderCheck(check, isSmartOrder);
          }
        }
      }
    }
  }

  // tender._printOrderCheck() 참조
  Future<void> _printOrderCheck(OrderCheck check, bool immediate) async {
    final operationBL = OperationBL();
    final device = Device();
    final printer = device.getPrinter();
    bool? onlyChanged;
    var isPrintBeforePayment = !await operationBL.isOrderPrintingPoint();
    if (isPrintBeforePayment || immediate) {
      if (await operationBL.isPrintBill()) {
        onlyChanged = await operationBL.printBillChangedItem();
        await device.createBindOrderData(check, false, onlyChanged, false);
        await printer.receiptPrint(await printer.makeOrderBill(),
            immediate: true);
      }
    }
    if (await operationBL.isPrintOrder()) {
      onlyChanged = onlyChanged ?? await operationBL.printBillChangedItem();
      await device.createBindOrderData(check, false, onlyChanged, true);
      await printer.kitchenPrint(await printer.makeOrderSummary(),
          immediate: true);
    }

    printer.nextPrint();
  }

  // tender._printOrderCancel() 참조
  Future<void> _printOrderCancel(OrderCheck check) async {
    final operationBL = OperationBL();
    final device = Device();
    final printer = device.getPrinter();

    if (await operationBL.isPrintBill()) {
      await device.createBindOrderData(check, true, false, false);
      await printer.receiptPrint(await printer.makeOrderBill(),
          immediate: true);
    }

    if (await operationBL.isPrintOrder()) {
      await device.createBindOrderData(check, true, false, false);
      await printer.kitchenPrint(await printer.makeOrderSummary(),
          immediate: true);
    }

    printer.nextPrint();
  }

  OrderHistory _getOrderHistory(pbt.OrderHistory src) {
    return OrderHistory()
      ..commonDate = _emptyToNull(src.commonDate)
      ..commonSerialNumber = src.commonSerialNumber
      ..tableId = _emptyToNull(src.tableId)
      ..operationTypeCode = _emptyToNull(src.operationTypeCode)
      ..businessSectionCode = _emptyToNull(src.businessSectionCode)
      ..supplyValue = src.supplyValue
      ..supplyAmount = src.supplyAmount
      ..taxAmount0 = src.taxAmount0
      ..taxAmount1 = src.taxAmount1
      ..taxAmount2 = src.taxAmount2
      ..orderDiscountTotalAmount = src.discountTotalAmount
      ..orderTotalAmount = src.orderTotalAmount
      ..taxFreeYn = src.taxFreeYn
      ..taxFreeReason = _emptyToNull(src.taxFreeReason)
      ..preTipTotalAmount = src.preTipTotalAmount
      ..preTipAmount = src.preTipAmount
      ..preTipTaxAmount = src.preTipTaxAmount
      ..paymentTipTotalAmount = src.paymentTipTotalAmount
      ..paymentTipAmount = src.paymentTipAmount
      ..paymentTipTaxAmount = src.paymentTipTaxAmount
      ..servingEmployeeId = _emptyToNull(src.servingEmployeeId)
      ..orderEmployeeId = _emptyToNull(src.orderEmployeeId)
      ..pagerNumber = src.pagerNumber > 0 ? src.pagerNumber : null
      ..paymentInitiatorId = _emptyToNull(src.paymentInitiatorId)
      ..memo = _emptyToNull(src.memo)
      ..synchronizedYn = true
      ..firstRegistrantId = src.firstRegistrantId
      ..firstRegistrationDatetime = src.firstRegistrationDatetime
      ..lastReviserId = src.lastReviserId
      ..lastRevisionDatetime = src.lastRevisionDatetime
      ..stateCode = src.stateCode
      ..createId();
  }

  List<OrderHistoryItem> _getOrderHistoryItemList(
      List<pbt.OrderHistoryItem> list) {
    return list.map((i) {
      return OrderHistoryItem()
        ..commonDate = _emptyToNull(i.commonDate)
        ..commonSerialNumber = i.commonSerialNumber
        ..itemSerialNumber = i.itemSerialNumber
        ..upperItemSerialNumber = i.upperItemSerialNumber
        ..itemId = _emptyToNull(i.itemId)
        ..storeTerminalId = _emptyToNull(i.storeTerminalId)
        ..quantity = i.quantity
        ..price = i.price
        ..supplyValue = i.supplyValue
        ..taxAmount0 = i.taxAmount0
        ..taxAmount1 = i.taxAmount1
        ..taxAmount2 = i.taxAmount2
        ..discountSectionCode = _emptyToNull(i.discountSectionCode)
        ..discountRate = i.discountRate
        ..discountAmount = i.discountAmount
        ..discountTypeCode = _emptyToNull(i.discountTypeCode)
        ..menuDiscountAmount = i.menuDiscountAmount
        ..orderDiscountAmount = i.orderDiscountAmount
        ..supplyAmount = i.supplyAmount
        ..orderOptionCode = _emptyToNull(i.orderOptionCode)
        ..orderHoldingTime = _emptyToNull(i.orderHoldingTime)
        ..cancelSerialNumber = i.cancelSerialNumber
        ..cancelEmployeeId = _emptyToNull(i.cancelEmployeeId)
        ..cancelReason = _emptyToNull(i.cancelReason)
        ..menuPaymentYn = i.menuPaymentYn ? 1 : 0
        ..menuPaymentSerialNumber = i.menuPaymentSerialNumber
        ..firstRegistrantId = i.firstRegistrantId
        ..firstRegistrationDatetime = i.firstRegistrationDatetime
        ..lastReviserId = i.lastReviserId
        ..lastRevisionDatetime = i.lastRevisionDatetime
        ..stateCode = i.stateCode
        ..createId();
    }).toList();
  }

  List<OrderHistoryKitchenMemo> _getOrderHistoryKitchenMemoList(
      List<pbt.OrderHistoryKitchenMemo> list) {
    return list.map((i) {
      return OrderHistoryKitchenMemo()
        ..commonDate = _emptyToNull(i.commonDate)
        ..commonSerialNumber = i.commonSerialNumber
        ..itemSerialNumber = i.itemSerialNumber
        ..kitchenMemoSerialNumber = i.kitchenMemoSerialNumber
        ..kitchenMemoId = _emptyToNull(i.kitchenMemoId)
        ..kitchenMemo = _emptyToNull(i.kitchenMemo)
        ..firstRegistrantId = i.firstRegistrantId
        ..firstRegistrationDatetime = i.firstRegistrationDatetime
        ..lastReviserId = i.lastReviserId
        ..lastRevisionDatetime = i.lastRevisionDatetime
        ..stateCode = i.stateCode
        ..createId();
    }).toList();
  }

  List<OrderHistoryDiscount> _gerOrderHistoryDiscountList(
      List<pbt.OrderHistoryDiscount> list) {
    return list.map((i) {
      return OrderHistoryDiscount()
        ..commonDate = _emptyToNull(i.commonDate)
        ..commonSerialNumber = i.commonSerialNumber
        ..discountSerialNumber = i.discountSerialNumber
        ..discountSectionCode = _emptyToNull(i.discountSectionCode)
        ..discountRate = i.discountRate
        ..discountAmount = i.discountAmount
        ..discountName = _emptyToNull(i.discountName)
        ..itemId = _emptyToNull(i.itemId)
        ..firstRegistrantId = i.firstRegistrantId
        ..firstRegistrationDatetime = i.firstRegistrationDatetime
        ..lastReviserId = i.lastReviserId
        ..lastRevisionDatetime = i.lastRevisionDatetime
        ..stateCode = i.stateCode
        ..createId();
    }).toList();
  }

  String? _emptyToNull(String value) => value.isNotEmpty ? value : null;
}

class InventoryService {
  String? _storeId;
  String? _storeTerminalId;

  Future<String> _getStoreId() async {
    _storeId ??= await OperationBL().getStoreId();
    return _storeId ?? '';
  }

  Future<String> _getStoreTerminalId() async {
    _storeTerminalId ??= await OperationBL().getStoreTerminalId();
    return _storeTerminalId ?? '';
  }

  Future<pbm.BalanceItemRequest_Content> balanceItemsRequestData(
      String itemGroupId,
      String name,
      String barcode,
      int pageIndex,
      int pageSize) async {
    return pbm.BalanceItemRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        itemGroupId: itemGroupId,
        name: name,
        barcode: barcode,
        pageIndex: pageIndex,
        pageSize: pageSize);
  }

  Future<List> balanceItemsResponseItemsData(
      pbm.BalanceItemResponse_Content data) async {
    List list = [];
    for (pbm.BalanceItem item in data.items) {
      Map map = HashMap();
      map["itemId"] = item.itemId;
      map["itemGroupId"] = item.itemGroupId;
      map["name"] = item.name;
      map["imageUrl"] = item.imageUrl;
      map["salePrice"] = item.salePrice;
      map["purchasePrice"] = item.purchasePrice;
      map["isMarking"] = item.isMarking;
      map["qty"] = item.qty;
      map["barcode"] = item.barcode;
      list.add(map);
    }
    return list;
  }

  Future<pbm.ListAcceptanceItemsRequest_Content> listAcceptanceItemsRequestData(
      String startDate,
      String endDate,
      String type,
      int pageIndex,
      int pageSize) async {
    return pbm.ListAcceptanceItemsRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        startDate: startDate,
        endDate: endDate,
        type: type,
        pageIndex: pageIndex,
        pageSize: pageSize);
  }

  Future<List> listAcceptanceItemsResponseItemsData(
      pbm.ListAcceptanceItemsResponse_Content data) async {
    List list = [];
    for (pbm.AcceptanceItem item in data.items) {
      Map map = HashMap();
      map["acceptanceItemsId"] = item.acceptanceItemsId;
      map["name"] = item.name;
      map["date"] = item.date;
      map["price"] = item.price;
      list.add(map);
    }
    return list;
  }

  Future<pbm.AddAcceptanceItemRequest_Content> addAcceptanceItemRequestData(
      String type, String name, String supplierId, List<Map> items) async {
    List<pbm.AcceptanceItemDetail> acceptanceItemsList = [];
    for (Map map in items) {
      pbm.AcceptanceItemDetail _acceptanceItem = pbm.AcceptanceItemDetail(
        id: map["id"] ?? "",
        itemId: map["itemId"] ?? "",
        name: map["name"] ?? "",
        barcode: map["barcode"] ?? "",
        salePrice: map["salePrice"] ?? 0.0,
        purchasePrice: map["purchasePrice"] ?? 0.0,
        qty: map["qty"] ?? 0,
      );
      acceptanceItemsList.add(_acceptanceItem);
    }

    return pbm.AddAcceptanceItemRequest_Content(
      storeId: await _getStoreId(),
      storeTerminalId: await _getStoreTerminalId(),
      type: type,
      name: name,
      supplierId: supplierId,
      items: acceptanceItemsList,
    );
  }

  // Future<List> addAcceptanceItemResponseItemsData(pbm.AddAcceptanceItemResponsee_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.UpdateAcceptanceItemRequest_Content>
      updateAcceptanceItemRequestData(String acceptanceItemsId, String type,
          String name, String supplierId, List<Map> items) async {
    List<pbm.AcceptanceItemDetail> acceptanceItemsList = [];
    for (Map map in items) {
      pbm.AcceptanceItemDetail _acceptanceItem = pbm.AcceptanceItemDetail(
        id: map["id"] ?? "",
        itemId: map["itemId"] ?? "",
        name: map["name"] ?? "",
        barcode: map["barcode"] ?? "",
        salePrice: map["salePrice"] ?? 0.0,
        purchasePrice: map["purchasePrice"] ?? 0.0,
        qty: map["qty"] ?? 0,
      );
      acceptanceItemsList.add(_acceptanceItem);
    }

    return pbm.UpdateAcceptanceItemRequest_Content(
      storeId: await _getStoreId(),
      storeTerminalId: await _getStoreTerminalId(),
      acceptanceItemsId: acceptanceItemsId,
      type: type,
      name: name,
      supplierId: supplierId,
      items: acceptanceItemsList,
    );
  }

  // Future<List> updateAcceptanceItemResponseItemsData(pbm.BalanceItemsResponse_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.DeleteAcceptanceItemRequest_Content>
      deleteAcceptanceItemRequestData(String acceptanceItemsId) async {
    return pbm.DeleteAcceptanceItemRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        acceptanceItemsId: acceptanceItemsId);
  }

  // Future<List> deleteAcceptanceItemResponseItemsData(pbm.BalanceItemsResponse_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.DetailAcceptanceItemRequest_Content>
      detailAcceptanceItemRequestData(String acceptanceItemsId) async {
    return pbm.DetailAcceptanceItemRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        acceptanceItemsId: acceptanceItemsId);
  }

  Future<List> detailAcceptanceItemResponseItemsData(
      pbm.DetailAcceptanceItemResponse_Content data) async {
    List list = [];
    for (pbm.AcceptanceItemDetail item in data.items) {
      Map map = HashMap();
      map["id"] = item.id;
      map["itemId"] = item.itemId;
      map["name"] = item.name;
      map["barcode"] = item.barcode;
      map["salePrice"] = item.salePrice;
      map["purchasePrice"] = item.purchasePrice;
      map["qty"] = item.qty;
      list.add(map);
    }
    return list;
  }

  Future<pbm.ListSupplierRequest_Content> listSupplierRequestData() async {
    return pbm.ListSupplierRequest_Content(
      storeId: await _getStoreId(),
      storeTerminalId: await _getStoreTerminalId(),
    );
  }

  Future<List> listSupplierResponseItemsData(
      pbm.ListSupplierResponse_Content data) async {
    List list = [];
    for (pbm.Supplier item in data.items) {
      Map map = HashMap();
      map["id"] = item.id;
      map["name"] = item.name;
      list.add(map);
    }
    return list;
  }

  Future<pbm.AddSupplierRequest_Content> addSupplierRequestData(
    String name,
  ) async {
    return pbm.AddSupplierRequest_Content(
      storeId: await _getStoreId(),
      storeTerminalId: await _getStoreTerminalId(),
      name: name,
    );
  }

  // Future<List> addSupplierResponseItemsData(pbm.BalanceItemsResponse_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.UpdateSupplierRequest_Content> updateSupplierRequestData(
    String supplierId,
    String name,
  ) async {
    return pbm.UpdateSupplierRequest_Content(
      storeId: await _getStoreId(),
      storeTerminalId: await _getStoreTerminalId(),
      supplierId: supplierId,
      name: name,
    );
  }

  // Future<List> updateSupplierResponseItemsData(pbm.BalanceItemsResponse_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.DeleteSupplierRequest_Content> deleteSupplierRequestData(
      String supplierId) async {
    return pbm.DeleteSupplierRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        supplierId: supplierId);
  }

  // Future<List> deleteSupplierResponseItemsData(pbm.BalanceItemsResponse_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.ListRevisionItemsRequest_Content> listRevisionItemsRequestData(
    String startDate,
    String endDate,
    int pageIndex,
    int pageSize,
  ) async {
    return pbm.ListRevisionItemsRequest_Content(
      storeId: await _getStoreId(),
      storeTerminalId: await _getStoreTerminalId(),
      startDate: startDate,
      endDate: endDate,
      pageIndex: pageIndex,
      pageSize: pageSize,
    );
  }

  Future<List> listRevisionItemsResponseItemsData(
      pbm.ListRevisionItemsResponse_Content data) async {
    List list = [];
    for (pbm.RevisionItem item in data.items) {
      Map map = HashMap();
      map["revisionItemsId"] = item.revisionItemsId;
      map["date"] = item.date;
      map["price"] = item.price;
      map["date"] = item.date;
      list.add(map);
    }
    return list;
  }

  Future<pbm.AddRevisionItemsRequest_Content> addRevisionItemsRequestData(
      String date, String name, List<Map> items) async {
    List<pbm.RevisionItemDetail> revisionItemDetailList = [];
    for (Map map in items) {
      pbm.RevisionItemDetail _revisionItemDetail = pbm.RevisionItemDetail(
        id: map["id"] ?? "",
        itemId: map["itemId"] ?? "",
        name: map["name"] ?? "",
        barcode: map["barcode"] ?? "",
        salePrice: map["salePrice"] ?? 0.0,
        purchasePrice: map["purchasePrice"] ?? 0.0,
        qty: map["qty"] ?? 0,
        realQty: map["realQty"] ?? 0,
        memo: map["memo"] ?? "",
      );
      revisionItemDetailList.add(_revisionItemDetail);
    }

    return pbm.AddRevisionItemsRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        date: date,
        name: name,
        items: revisionItemDetailList);
  }

  // Future<List> addRevisionItemsResponseItemsData(pbm.BalanceItemsResponse_Content data) async {
  //   List list=[];
  //   for (pbm.BalanceItems item in data.items) {
  //     Map map = HashMap();
  //     map["itemId"] = item.itemId;
  //     map["itemGroupId"] = item.itemGroupId;
  //     map["name"] = item.name;
  //     map["imageUri"] = item.imageUri;
  //     map["salePrice"] = item.salePrice;
  //     map["purchasePrice"] = item.purchasePrice;
  //     map["isMarking"] = item.isMarking;
  //     map["qty"] = item.qty;
  //     map["barcode"] = item.barcode;
  //     list.add(map);
  //   }
  //   return list;
  // }

  Future<pbm.DetailRevisionItemsRequest_Content> detailRevisionItemsRequestData(
      String revisionItemsId) async {
    return pbm.DetailRevisionItemsRequest_Content(
        storeId: await _getStoreId(),
        storeTerminalId: await _getStoreTerminalId(),
        revisionItemsId: revisionItemsId);
  }

  Future<List> detailRevisionItemsResponseItemsData(
      pbm.DetailRevisionItemsResponse_Content data) async {
    List list = [];
    for (pbm.RevisionItemDetail item in data.items) {
      Map map = HashMap();
      map["id"] = item.id;
      map["itemId"] = item.itemId;
      map["name"] = item.name;
      map["barcode"] = item.barcode;
      map["salePrice"] = item.salePrice;
      map["purchasePrice"] = item.purchasePrice;
      map["qty"] = item.qty;
      map["realQty"] = item.realQty;
      map["memo"] = item.memo;
      list.add(map);
    }
    return list;
  }
}

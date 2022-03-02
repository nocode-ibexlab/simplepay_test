///
//  Generated code. Do not modify.
//  source: api/v1/table/table.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AllTables extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AllTables', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..pc<AccountSubject>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSubject', $pb.PbFieldType.PM, subBuilder: AccountSubject.create)
    ..pc<BasicDataItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataItem', $pb.PbFieldType.PM, subBuilder: BasicDataItem.create)
    ..pc<StoreTerminalBasicData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicData', $pb.PbFieldType.PM, subBuilder: StoreTerminalBasicData.create)
    ..pc<StoreTerminalBasicDataItem>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataItem', $pb.PbFieldType.PM, subBuilder: StoreTerminalBasicDataItem.create)
    ..pc<I18NTerm>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i18nTerm', $pb.PbFieldType.PM, subBuilder: I18NTerm.create)
    ..pc<EmployeeGroup>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeGroup', $pb.PbFieldType.PM, subBuilder: EmployeeGroup.create)
    ..pc<Employee>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employee', $pb.PbFieldType.PM, subBuilder: Employee.create)
    ..pc<EmployeeAuthority>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeAuthority', $pb.PbFieldType.PM, subBuilder: EmployeeAuthority.create)
    ..pc<TableDetail>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableDetail', $pb.PbFieldType.PM, subBuilder: TableDetail.create)
    ..pc<TableGroup>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableGroup', $pb.PbFieldType.PM, subBuilder: TableGroup.create)
    ..pc<Table>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'table', $pb.PbFieldType.PM, subBuilder: Table.create)
    ..pc<BasicData>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicData', $pb.PbFieldType.PM, subBuilder: BasicData.create)
    ..pc<StoreTerminal>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminal', $pb.PbFieldType.PM, subBuilder: StoreTerminal.create)
    ..pc<KitchenMemoGroup>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoGroup', $pb.PbFieldType.PM, subBuilder: KitchenMemoGroup.create)
    ..pc<KitchenMemo>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemo', $pb.PbFieldType.PM, subBuilder: KitchenMemo.create)
    ..pc<ItemGroup>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroup', $pb.PbFieldType.PM, subBuilder: ItemGroup.create)
    ..pc<Item>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..pc<OptionGroup>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionGroup', $pb.PbFieldType.PM, subBuilder: OptionGroup.create)
    ..pc<OptionEntity>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionEntity', $pb.PbFieldType.PM, subBuilder: OptionEntity.create)
    ..pc<SetEntity>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setEntity', $pb.PbFieldType.PM, subBuilder: SetEntity.create)
    ..pc<ItemOption>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemOption', $pb.PbFieldType.PM, subBuilder: ItemOption.create)
    ..pc<MenuGroup>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroup', $pb.PbFieldType.PM, subBuilder: MenuGroup.create)
    ..pc<MenuGroupUse>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroupUse', $pb.PbFieldType.PM, subBuilder: MenuGroupUse.create)
    ..pc<MenuItem>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuItem', $pb.PbFieldType.PM, subBuilder: MenuItem.create)
    ..pc<Store>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'store', $pb.PbFieldType.PM, subBuilder: Store.create)
    ..pc<AdminUser>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminUser', $pb.PbFieldType.PM, subBuilder: AdminUser.create)
    ..pc<SelfMenuGroup>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMenuGroup', $pb.PbFieldType.PM, subBuilder: SelfMenuGroup.create)
    ..pc<SelfMenuItem>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMenuItem', $pb.PbFieldType.PM, subBuilder: SelfMenuItem.create)
    ..pc<TemplateItem>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'templateItem', $pb.PbFieldType.PM, subBuilder: TemplateItem.create)
    ..pc<StorePlace>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storePlace', $pb.PbFieldType.PM, subBuilder: StorePlace.create)
    ..hasRequiredFields = false
  ;

  AllTables._() : super();
  factory AllTables({
    $core.Iterable<AccountSubject>? accountSubject,
    $core.Iterable<BasicDataItem>? basicDataItem,
    $core.Iterable<StoreTerminalBasicData>? storeTerminalBasicData,
    $core.Iterable<StoreTerminalBasicDataItem>? storeTerminalBasicDataItem,
    $core.Iterable<I18NTerm>? i18nTerm,
    $core.Iterable<EmployeeGroup>? employeeGroup,
    $core.Iterable<Employee>? employee,
    $core.Iterable<EmployeeAuthority>? employeeAuthority,
    $core.Iterable<TableDetail>? tableDetail,
    $core.Iterable<TableGroup>? tableGroup,
    $core.Iterable<Table>? table,
    $core.Iterable<BasicData>? basicData,
    $core.Iterable<StoreTerminal>? storeTerminal,
    $core.Iterable<KitchenMemoGroup>? kitchenMemoGroup,
    $core.Iterable<KitchenMemo>? kitchenMemo,
    $core.Iterable<ItemGroup>? itemGroup,
    $core.Iterable<Item>? item,
    $core.Iterable<OptionGroup>? optionGroup,
    $core.Iterable<OptionEntity>? optionEntity,
    $core.Iterable<SetEntity>? setEntity,
    $core.Iterable<ItemOption>? itemOption,
    $core.Iterable<MenuGroup>? menuGroup,
    $core.Iterable<MenuGroupUse>? menuGroupUse,
    $core.Iterable<MenuItem>? menuItem,
    $core.Iterable<Store>? store,
    $core.Iterable<AdminUser>? adminUser,
    $core.Iterable<SelfMenuGroup>? selfMenuGroup,
    $core.Iterable<SelfMenuItem>? selfMenuItem,
    $core.Iterable<TemplateItem>? templateItem,
    $core.Iterable<StorePlace>? storePlace,
  }) {
    final _result = create();
    if (accountSubject != null) {
      _result.accountSubject.addAll(accountSubject);
    }
    if (basicDataItem != null) {
      _result.basicDataItem.addAll(basicDataItem);
    }
    if (storeTerminalBasicData != null) {
      _result.storeTerminalBasicData.addAll(storeTerminalBasicData);
    }
    if (storeTerminalBasicDataItem != null) {
      _result.storeTerminalBasicDataItem.addAll(storeTerminalBasicDataItem);
    }
    if (i18nTerm != null) {
      _result.i18nTerm.addAll(i18nTerm);
    }
    if (employeeGroup != null) {
      _result.employeeGroup.addAll(employeeGroup);
    }
    if (employee != null) {
      _result.employee.addAll(employee);
    }
    if (employeeAuthority != null) {
      _result.employeeAuthority.addAll(employeeAuthority);
    }
    if (tableDetail != null) {
      _result.tableDetail.addAll(tableDetail);
    }
    if (tableGroup != null) {
      _result.tableGroup.addAll(tableGroup);
    }
    if (table != null) {
      _result.table.addAll(table);
    }
    if (basicData != null) {
      _result.basicData.addAll(basicData);
    }
    if (storeTerminal != null) {
      _result.storeTerminal.addAll(storeTerminal);
    }
    if (kitchenMemoGroup != null) {
      _result.kitchenMemoGroup.addAll(kitchenMemoGroup);
    }
    if (kitchenMemo != null) {
      _result.kitchenMemo.addAll(kitchenMemo);
    }
    if (itemGroup != null) {
      _result.itemGroup.addAll(itemGroup);
    }
    if (item != null) {
      _result.item.addAll(item);
    }
    if (optionGroup != null) {
      _result.optionGroup.addAll(optionGroup);
    }
    if (optionEntity != null) {
      _result.optionEntity.addAll(optionEntity);
    }
    if (setEntity != null) {
      _result.setEntity.addAll(setEntity);
    }
    if (itemOption != null) {
      _result.itemOption.addAll(itemOption);
    }
    if (menuGroup != null) {
      _result.menuGroup.addAll(menuGroup);
    }
    if (menuGroupUse != null) {
      _result.menuGroupUse.addAll(menuGroupUse);
    }
    if (menuItem != null) {
      _result.menuItem.addAll(menuItem);
    }
    if (store != null) {
      _result.store.addAll(store);
    }
    if (adminUser != null) {
      _result.adminUser.addAll(adminUser);
    }
    if (selfMenuGroup != null) {
      _result.selfMenuGroup.addAll(selfMenuGroup);
    }
    if (selfMenuItem != null) {
      _result.selfMenuItem.addAll(selfMenuItem);
    }
    if (templateItem != null) {
      _result.templateItem.addAll(templateItem);
    }
    if (storePlace != null) {
      _result.storePlace.addAll(storePlace);
    }
    return _result;
  }
  factory AllTables.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllTables.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllTables clone() => AllTables()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllTables copyWith(void Function(AllTables) updates) => super.copyWith((message) => updates(message as AllTables)) as AllTables; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllTables create() => AllTables._();
  AllTables createEmptyInstance() => create();
  static $pb.PbList<AllTables> createRepeated() => $pb.PbList<AllTables>();
  @$core.pragma('dart2js:noInline')
  static AllTables getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllTables>(create);
  static AllTables? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AccountSubject> get accountSubject => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<BasicDataItem> get basicDataItem => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<StoreTerminalBasicData> get storeTerminalBasicData => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<StoreTerminalBasicDataItem> get storeTerminalBasicDataItem => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<I18NTerm> get i18nTerm => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<EmployeeGroup> get employeeGroup => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<Employee> get employee => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<EmployeeAuthority> get employeeAuthority => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<TableDetail> get tableDetail => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<TableGroup> get tableGroup => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<Table> get table => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<BasicData> get basicData => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<StoreTerminal> get storeTerminal => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<KitchenMemoGroup> get kitchenMemoGroup => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<KitchenMemo> get kitchenMemo => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<ItemGroup> get itemGroup => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<Item> get item => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<OptionGroup> get optionGroup => $_getList(17);

  @$pb.TagNumber(19)
  $core.List<OptionEntity> get optionEntity => $_getList(18);

  @$pb.TagNumber(20)
  $core.List<SetEntity> get setEntity => $_getList(19);

  @$pb.TagNumber(21)
  $core.List<ItemOption> get itemOption => $_getList(20);

  @$pb.TagNumber(22)
  $core.List<MenuGroup> get menuGroup => $_getList(21);

  @$pb.TagNumber(23)
  $core.List<MenuGroupUse> get menuGroupUse => $_getList(22);

  @$pb.TagNumber(24)
  $core.List<MenuItem> get menuItem => $_getList(23);

  @$pb.TagNumber(25)
  $core.List<Store> get store => $_getList(24);

  @$pb.TagNumber(26)
  $core.List<AdminUser> get adminUser => $_getList(25);

  @$pb.TagNumber(27)
  $core.List<SelfMenuGroup> get selfMenuGroup => $_getList(26);

  @$pb.TagNumber(28)
  $core.List<SelfMenuItem> get selfMenuItem => $_getList(27);

  @$pb.TagNumber(29)
  $core.List<TemplateItem> get templateItem => $_getList(28);

  @$pb.TagNumber(30)
  $core.List<StorePlace> get storePlace => $_getList(29);
}

class SalesAndReportTables extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesAndReportTables', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..pc<SalesHistory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesHistory', $pb.PbFieldType.PM, subBuilder: SalesHistory.create)
    ..pc<SalesHistoryItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesHistoryItem', $pb.PbFieldType.PM, subBuilder: SalesHistoryItem.create)
    ..pc<SalesAccountHistory>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountHistory', $pb.PbFieldType.PM, subBuilder: SalesAccountHistory.create)
    ..pc<SalesAccountHistoryDetails>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountHistoryDetails', $pb.PbFieldType.PM, subBuilder: SalesAccountHistoryDetails.create)
    ..pc<SalesAccountHistoryTip>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountHistoryTip', $pb.PbFieldType.PM, subBuilder: SalesAccountHistoryTip.create)
    ..pc<SalesHistoryDiscount>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesHistoryDiscount', $pb.PbFieldType.PM, subBuilder: SalesHistoryDiscount.create)
    ..pc<CashdrawCashInOutHistory>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawCashInOutHistory', $pb.PbFieldType.PM, subBuilder: CashdrawCashInOutHistory.create)
    ..pc<CashierBankHistory>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierBankHistory', $pb.PbFieldType.PM, subBuilder: CashierBankHistory.create)
    ..pc<CashierBankHistoryBill>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierBankHistoryBill', $pb.PbFieldType.PM, subBuilder: CashierBankHistoryBill.create)
    ..pc<DailyReportHistory>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dailyReportHistory', $pb.PbFieldType.PM, subBuilder: DailyReportHistory.create)
    ..pc<DailyReportHistoryPayments>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dailyReportHistoryPayments', $pb.PbFieldType.PM, subBuilder: DailyReportHistoryPayments.create)
    ..hasRequiredFields = false
  ;

  SalesAndReportTables._() : super();
  factory SalesAndReportTables({
    $core.Iterable<SalesHistory>? salesHistory,
    $core.Iterable<SalesHistoryItem>? salesHistoryItem,
    $core.Iterable<SalesAccountHistory>? salesAccountHistory,
    $core.Iterable<SalesAccountHistoryDetails>? salesAccountHistoryDetails,
    $core.Iterable<SalesAccountHistoryTip>? salesAccountHistoryTip,
    $core.Iterable<SalesHistoryDiscount>? salesHistoryDiscount,
    $core.Iterable<CashdrawCashInOutHistory>? cashdrawCashInOutHistory,
    $core.Iterable<CashierBankHistory>? cashierBankHistory,
    $core.Iterable<CashierBankHistoryBill>? cashierBankHistoryBill,
    $core.Iterable<DailyReportHistory>? dailyReportHistory,
    $core.Iterable<DailyReportHistoryPayments>? dailyReportHistoryPayments,
  }) {
    final _result = create();
    if (salesHistory != null) {
      _result.salesHistory.addAll(salesHistory);
    }
    if (salesHistoryItem != null) {
      _result.salesHistoryItem.addAll(salesHistoryItem);
    }
    if (salesAccountHistory != null) {
      _result.salesAccountHistory.addAll(salesAccountHistory);
    }
    if (salesAccountHistoryDetails != null) {
      _result.salesAccountHistoryDetails.addAll(salesAccountHistoryDetails);
    }
    if (salesAccountHistoryTip != null) {
      _result.salesAccountHistoryTip.addAll(salesAccountHistoryTip);
    }
    if (salesHistoryDiscount != null) {
      _result.salesHistoryDiscount.addAll(salesHistoryDiscount);
    }
    if (cashdrawCashInOutHistory != null) {
      _result.cashdrawCashInOutHistory.addAll(cashdrawCashInOutHistory);
    }
    if (cashierBankHistory != null) {
      _result.cashierBankHistory.addAll(cashierBankHistory);
    }
    if (cashierBankHistoryBill != null) {
      _result.cashierBankHistoryBill.addAll(cashierBankHistoryBill);
    }
    if (dailyReportHistory != null) {
      _result.dailyReportHistory.addAll(dailyReportHistory);
    }
    if (dailyReportHistoryPayments != null) {
      _result.dailyReportHistoryPayments.addAll(dailyReportHistoryPayments);
    }
    return _result;
  }
  factory SalesAndReportTables.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesAndReportTables.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesAndReportTables clone() => SalesAndReportTables()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesAndReportTables copyWith(void Function(SalesAndReportTables) updates) => super.copyWith((message) => updates(message as SalesAndReportTables)) as SalesAndReportTables; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesAndReportTables create() => SalesAndReportTables._();
  SalesAndReportTables createEmptyInstance() => create();
  static $pb.PbList<SalesAndReportTables> createRepeated() => $pb.PbList<SalesAndReportTables>();
  @$core.pragma('dart2js:noInline')
  static SalesAndReportTables getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesAndReportTables>(create);
  static SalesAndReportTables? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SalesHistory> get salesHistory => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<SalesHistoryItem> get salesHistoryItem => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SalesAccountHistory> get salesAccountHistory => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<SalesAccountHistoryDetails> get salesAccountHistoryDetails => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<SalesAccountHistoryTip> get salesAccountHistoryTip => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<SalesHistoryDiscount> get salesHistoryDiscount => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<CashdrawCashInOutHistory> get cashdrawCashInOutHistory => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<CashierBankHistory> get cashierBankHistory => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<CashierBankHistoryBill> get cashierBankHistoryBill => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<DailyReportHistory> get dailyReportHistory => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<DailyReportHistoryPayments> get dailyReportHistoryPayments => $_getList(10);
}

class AccountSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSubject', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSubjectId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i18nTermId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSubjectName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSubjectUseType', protoName: 'account_subject_useType')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSubjectType')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixedExpensesYn')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkA')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkB')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkC')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkD')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkE')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userInput')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  AccountSubject._() : super();
  factory AccountSubject({
    $core.String? accountSubjectId,
    $core.String? i18nTermId,
    $core.String? accountSubjectName,
    $core.String? accountSubjectUseType,
    $core.String? accountSubjectType,
    $core.bool? fixedExpensesYn,
    $core.String? remarkA,
    $core.String? remarkB,
    $core.String? remarkC,
    $core.String? remarkD,
    $core.String? remarkE,
    $core.String? userInput,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (accountSubjectId != null) {
      _result.accountSubjectId = accountSubjectId;
    }
    if (i18nTermId != null) {
      _result.i18nTermId = i18nTermId;
    }
    if (accountSubjectName != null) {
      _result.accountSubjectName = accountSubjectName;
    }
    if (accountSubjectUseType != null) {
      _result.accountSubjectUseType = accountSubjectUseType;
    }
    if (accountSubjectType != null) {
      _result.accountSubjectType = accountSubjectType;
    }
    if (fixedExpensesYn != null) {
      _result.fixedExpensesYn = fixedExpensesYn;
    }
    if (remarkA != null) {
      _result.remarkA = remarkA;
    }
    if (remarkB != null) {
      _result.remarkB = remarkB;
    }
    if (remarkC != null) {
      _result.remarkC = remarkC;
    }
    if (remarkD != null) {
      _result.remarkD = remarkD;
    }
    if (remarkE != null) {
      _result.remarkE = remarkE;
    }
    if (userInput != null) {
      _result.userInput = userInput;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory AccountSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSubject clone() => AccountSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSubject copyWith(void Function(AccountSubject) updates) => super.copyWith((message) => updates(message as AccountSubject)) as AccountSubject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSubject create() => AccountSubject._();
  AccountSubject createEmptyInstance() => create();
  static $pb.PbList<AccountSubject> createRepeated() => $pb.PbList<AccountSubject>();
  @$core.pragma('dart2js:noInline')
  static AccountSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSubject>(create);
  static AccountSubject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountSubjectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountSubjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountSubjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountSubjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get i18nTermId => $_getSZ(1);
  @$pb.TagNumber(2)
  set i18nTermId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasI18nTermId() => $_has(1);
  @$pb.TagNumber(2)
  void clearI18nTermId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountSubjectName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountSubjectName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountSubjectName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountSubjectName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountSubjectUseType => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountSubjectUseType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountSubjectUseType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountSubjectUseType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get accountSubjectType => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountSubjectType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccountSubjectType() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountSubjectType() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get fixedExpensesYn => $_getBF(5);
  @$pb.TagNumber(6)
  set fixedExpensesYn($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFixedExpensesYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearFixedExpensesYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get remarkA => $_getSZ(6);
  @$pb.TagNumber(7)
  set remarkA($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRemarkA() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemarkA() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get remarkB => $_getSZ(7);
  @$pb.TagNumber(8)
  set remarkB($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRemarkB() => $_has(7);
  @$pb.TagNumber(8)
  void clearRemarkB() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get remarkC => $_getSZ(8);
  @$pb.TagNumber(9)
  set remarkC($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRemarkC() => $_has(8);
  @$pb.TagNumber(9)
  void clearRemarkC() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get remarkD => $_getSZ(9);
  @$pb.TagNumber(10)
  set remarkD($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRemarkD() => $_has(9);
  @$pb.TagNumber(10)
  void clearRemarkD() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get remarkE => $_getSZ(10);
  @$pb.TagNumber(11)
  set remarkE($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRemarkE() => $_has(10);
  @$pb.TagNumber(11)
  void clearRemarkE() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get userInput => $_getSZ(11);
  @$pb.TagNumber(12)
  set userInput($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUserInput() => $_has(11);
  @$pb.TagNumber(12)
  void clearUserInput() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get firstRegistrantId => $_getSZ(12);
  @$pb.TagNumber(13)
  set firstRegistrantId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFirstRegistrantId() => $_has(12);
  @$pb.TagNumber(13)
  void clearFirstRegistrantId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrationDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrationDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrationDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrationDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get lastReviserId => $_getSZ(14);
  @$pb.TagNumber(15)
  set lastReviserId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLastReviserId() => $_has(14);
  @$pb.TagNumber(15)
  void clearLastReviserId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastRevisionDatetime() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get stateCode => $_getSZ(16);
  @$pb.TagNumber(17)
  set stateCode($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasStateCode() => $_has(16);
  @$pb.TagNumber(17)
  void clearStateCode() => clearField(17);
}

class BasicDataItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BasicDataItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataItemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i18nTermId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataItemSerialNumber', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataItemCodeName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataItemName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data4')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data5')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data6')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data7')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data8')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data9')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data10')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data11')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data12')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data13')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data14')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data15')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data16')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data17')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data18')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data19')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data20')
    ..aOB(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  BasicDataItem._() : super();
  factory BasicDataItem({
    $core.String? basicDataItemId,
    $core.String? basicDataId,
    $core.String? i18nTermId,
    $core.int? basicDataItemSerialNumber,
    $core.String? basicDataItemCodeName,
    $core.String? basicDataItemName,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
    $core.String? data4,
    $core.String? data5,
    $core.String? data6,
    $core.String? data7,
    $core.String? data8,
    $core.String? data9,
    $core.String? data10,
    $core.String? data11,
    $core.String? data12,
    $core.String? data13,
    $core.String? data14,
    $core.String? data15,
    $core.String? data16,
    $core.String? data17,
    $core.String? data18,
    $core.String? data19,
    $core.String? data20,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (basicDataItemId != null) {
      _result.basicDataItemId = basicDataItemId;
    }
    if (basicDataId != null) {
      _result.basicDataId = basicDataId;
    }
    if (i18nTermId != null) {
      _result.i18nTermId = i18nTermId;
    }
    if (basicDataItemSerialNumber != null) {
      _result.basicDataItemSerialNumber = basicDataItemSerialNumber;
    }
    if (basicDataItemCodeName != null) {
      _result.basicDataItemCodeName = basicDataItemCodeName;
    }
    if (basicDataItemName != null) {
      _result.basicDataItemName = basicDataItemName;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    if (data4 != null) {
      _result.data4 = data4;
    }
    if (data5 != null) {
      _result.data5 = data5;
    }
    if (data6 != null) {
      _result.data6 = data6;
    }
    if (data7 != null) {
      _result.data7 = data7;
    }
    if (data8 != null) {
      _result.data8 = data8;
    }
    if (data9 != null) {
      _result.data9 = data9;
    }
    if (data10 != null) {
      _result.data10 = data10;
    }
    if (data11 != null) {
      _result.data11 = data11;
    }
    if (data12 != null) {
      _result.data12 = data12;
    }
    if (data13 != null) {
      _result.data13 = data13;
    }
    if (data14 != null) {
      _result.data14 = data14;
    }
    if (data15 != null) {
      _result.data15 = data15;
    }
    if (data16 != null) {
      _result.data16 = data16;
    }
    if (data17 != null) {
      _result.data17 = data17;
    }
    if (data18 != null) {
      _result.data18 = data18;
    }
    if (data19 != null) {
      _result.data19 = data19;
    }
    if (data20 != null) {
      _result.data20 = data20;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory BasicDataItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BasicDataItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BasicDataItem clone() => BasicDataItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BasicDataItem copyWith(void Function(BasicDataItem) updates) => super.copyWith((message) => updates(message as BasicDataItem)) as BasicDataItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BasicDataItem create() => BasicDataItem._();
  BasicDataItem createEmptyInstance() => create();
  static $pb.PbList<BasicDataItem> createRepeated() => $pb.PbList<BasicDataItem>();
  @$core.pragma('dart2js:noInline')
  static BasicDataItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicDataItem>(create);
  static BasicDataItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get basicDataItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set basicDataItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasicDataItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicDataItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get basicDataId => $_getSZ(1);
  @$pb.TagNumber(2)
  set basicDataId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBasicDataId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBasicDataId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get i18nTermId => $_getSZ(2);
  @$pb.TagNumber(3)
  set i18nTermId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasI18nTermId() => $_has(2);
  @$pb.TagNumber(3)
  void clearI18nTermId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get basicDataItemSerialNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set basicDataItemSerialNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBasicDataItemSerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearBasicDataItemSerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get basicDataItemCodeName => $_getSZ(4);
  @$pb.TagNumber(5)
  set basicDataItemCodeName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBasicDataItemCodeName() => $_has(4);
  @$pb.TagNumber(5)
  void clearBasicDataItemCodeName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get basicDataItemName => $_getSZ(5);
  @$pb.TagNumber(6)
  set basicDataItemName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBasicDataItemName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBasicDataItemName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get data1 => $_getSZ(6);
  @$pb.TagNumber(7)
  set data1($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasData1() => $_has(6);
  @$pb.TagNumber(7)
  void clearData1() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get data2 => $_getSZ(7);
  @$pb.TagNumber(8)
  set data2($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasData2() => $_has(7);
  @$pb.TagNumber(8)
  void clearData2() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get data3 => $_getSZ(8);
  @$pb.TagNumber(9)
  set data3($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasData3() => $_has(8);
  @$pb.TagNumber(9)
  void clearData3() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get data4 => $_getSZ(9);
  @$pb.TagNumber(10)
  set data4($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasData4() => $_has(9);
  @$pb.TagNumber(10)
  void clearData4() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get data5 => $_getSZ(10);
  @$pb.TagNumber(11)
  set data5($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasData5() => $_has(10);
  @$pb.TagNumber(11)
  void clearData5() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get data6 => $_getSZ(11);
  @$pb.TagNumber(12)
  set data6($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasData6() => $_has(11);
  @$pb.TagNumber(12)
  void clearData6() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get data7 => $_getSZ(12);
  @$pb.TagNumber(13)
  set data7($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasData7() => $_has(12);
  @$pb.TagNumber(13)
  void clearData7() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get data8 => $_getSZ(13);
  @$pb.TagNumber(14)
  set data8($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasData8() => $_has(13);
  @$pb.TagNumber(14)
  void clearData8() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get data9 => $_getSZ(14);
  @$pb.TagNumber(15)
  set data9($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasData9() => $_has(14);
  @$pb.TagNumber(15)
  void clearData9() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get data10 => $_getSZ(15);
  @$pb.TagNumber(16)
  set data10($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasData10() => $_has(15);
  @$pb.TagNumber(16)
  void clearData10() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get data11 => $_getSZ(16);
  @$pb.TagNumber(17)
  set data11($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasData11() => $_has(16);
  @$pb.TagNumber(17)
  void clearData11() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get data12 => $_getSZ(17);
  @$pb.TagNumber(18)
  set data12($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasData12() => $_has(17);
  @$pb.TagNumber(18)
  void clearData12() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get data13 => $_getSZ(18);
  @$pb.TagNumber(19)
  set data13($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasData13() => $_has(18);
  @$pb.TagNumber(19)
  void clearData13() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get data14 => $_getSZ(19);
  @$pb.TagNumber(20)
  set data14($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasData14() => $_has(19);
  @$pb.TagNumber(20)
  void clearData14() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get data15 => $_getSZ(20);
  @$pb.TagNumber(21)
  set data15($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasData15() => $_has(20);
  @$pb.TagNumber(21)
  void clearData15() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get data16 => $_getSZ(21);
  @$pb.TagNumber(22)
  set data16($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasData16() => $_has(21);
  @$pb.TagNumber(22)
  void clearData16() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get data17 => $_getSZ(22);
  @$pb.TagNumber(23)
  set data17($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasData17() => $_has(22);
  @$pb.TagNumber(23)
  void clearData17() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get data18 => $_getSZ(23);
  @$pb.TagNumber(24)
  set data18($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasData18() => $_has(23);
  @$pb.TagNumber(24)
  void clearData18() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get data19 => $_getSZ(24);
  @$pb.TagNumber(25)
  set data19($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasData19() => $_has(24);
  @$pb.TagNumber(25)
  void clearData19() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get data20 => $_getSZ(25);
  @$pb.TagNumber(26)
  set data20($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasData20() => $_has(25);
  @$pb.TagNumber(26)
  void clearData20() => clearField(26);

  @$pb.TagNumber(27)
  $core.bool get hidingYn => $_getBF(26);
  @$pb.TagNumber(27)
  set hidingYn($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasHidingYn() => $_has(26);
  @$pb.TagNumber(27)
  void clearHidingYn() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get firstRegistrantId => $_getSZ(27);
  @$pb.TagNumber(28)
  set firstRegistrantId($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasFirstRegistrantId() => $_has(27);
  @$pb.TagNumber(28)
  void clearFirstRegistrantId() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get firstRegistrationDatetime => $_getSZ(28);
  @$pb.TagNumber(29)
  set firstRegistrationDatetime($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasFirstRegistrationDatetime() => $_has(28);
  @$pb.TagNumber(29)
  void clearFirstRegistrationDatetime() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get lastReviserId => $_getSZ(29);
  @$pb.TagNumber(30)
  set lastReviserId($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasLastReviserId() => $_has(29);
  @$pb.TagNumber(30)
  void clearLastReviserId() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get lastRevisionDatetime => $_getSZ(30);
  @$pb.TagNumber(31)
  set lastRevisionDatetime($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasLastRevisionDatetime() => $_has(30);
  @$pb.TagNumber(31)
  void clearLastRevisionDatetime() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get stateCode => $_getSZ(31);
  @$pb.TagNumber(32)
  set stateCode($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasStateCode() => $_has(31);
  @$pb.TagNumber(32)
  void clearStateCode() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get serverLastRevisionDatetime => $_getSZ(32);
  @$pb.TagNumber(33)
  set serverLastRevisionDatetime($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasServerLastRevisionDatetime() => $_has(32);
  @$pb.TagNumber(33)
  void clearServerLastRevisionDatetime() => clearField(33);
}

class StoreTerminalBasicData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreTerminalBasicData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i18nTermId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataCodeName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataName')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  StoreTerminalBasicData._() : super();
  factory StoreTerminalBasicData({
    $core.String? storeTerminalBasicDataId,
    $core.String? storeTerminalId,
    $core.String? i18nTermId,
    $core.String? storeTerminalBasicDataCodeName,
    $core.String? storeTerminalBasicDataName,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (storeTerminalBasicDataId != null) {
      _result.storeTerminalBasicDataId = storeTerminalBasicDataId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (i18nTermId != null) {
      _result.i18nTermId = i18nTermId;
    }
    if (storeTerminalBasicDataCodeName != null) {
      _result.storeTerminalBasicDataCodeName = storeTerminalBasicDataCodeName;
    }
    if (storeTerminalBasicDataName != null) {
      _result.storeTerminalBasicDataName = storeTerminalBasicDataName;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory StoreTerminalBasicData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreTerminalBasicData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreTerminalBasicData clone() => StoreTerminalBasicData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreTerminalBasicData copyWith(void Function(StoreTerminalBasicData) updates) => super.copyWith((message) => updates(message as StoreTerminalBasicData)) as StoreTerminalBasicData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreTerminalBasicData create() => StoreTerminalBasicData._();
  StoreTerminalBasicData createEmptyInstance() => create();
  static $pb.PbList<StoreTerminalBasicData> createRepeated() => $pb.PbList<StoreTerminalBasicData>();
  @$core.pragma('dart2js:noInline')
  static StoreTerminalBasicData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreTerminalBasicData>(create);
  static StoreTerminalBasicData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeTerminalBasicDataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeTerminalBasicDataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreTerminalBasicDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreTerminalBasicDataId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get i18nTermId => $_getSZ(2);
  @$pb.TagNumber(3)
  set i18nTermId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasI18nTermId() => $_has(2);
  @$pb.TagNumber(3)
  void clearI18nTermId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalBasicDataCodeName => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalBasicDataCodeName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalBasicDataCodeName() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalBasicDataCodeName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get storeTerminalBasicDataName => $_getSZ(4);
  @$pb.TagNumber(5)
  set storeTerminalBasicDataName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStoreTerminalBasicDataName() => $_has(4);
  @$pb.TagNumber(5)
  void clearStoreTerminalBasicDataName() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hidingYn => $_getBF(5);
  @$pb.TagNumber(6)
  set hidingYn($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHidingYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearHidingYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstRegistrantId => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstRegistrantId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstRegistrantId() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstRegistrantId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstRegistrationDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstRegistrationDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstRegistrationDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstRegistrationDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastReviserId => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastReviserId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastReviserId() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastReviserId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get lastRevisionDatetime => $_getSZ(9);
  @$pb.TagNumber(10)
  set lastRevisionDatetime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastRevisionDatetime() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastRevisionDatetime() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get stateCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set stateCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStateCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearStateCode() => clearField(11);
}

class StoreTerminalBasicDataItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreTerminalBasicDataItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataItemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i18nTermId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataItemSerialNumber', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataItemCodeName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataItemName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data4')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data5')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data6')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data7')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data8')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data9')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data10')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data11')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data12')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data13')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data14')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data15')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data16')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data17')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data18')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data19')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data20')
    ..aOB(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  StoreTerminalBasicDataItem._() : super();
  factory StoreTerminalBasicDataItem({
    $core.String? storeTerminalBasicDataItemId,
    $core.String? storeTerminalBasicDataId,
    $core.String? i18nTermId,
    $core.int? storeTerminalBasicDataItemSerialNumber,
    $core.String? storeTerminalBasicDataItemCodeName,
    $core.String? storeTerminalBasicDataItemName,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
    $core.String? data4,
    $core.String? data5,
    $core.String? data6,
    $core.String? data7,
    $core.String? data8,
    $core.String? data9,
    $core.String? data10,
    $core.String? data11,
    $core.String? data12,
    $core.String? data13,
    $core.String? data14,
    $core.String? data15,
    $core.String? data16,
    $core.String? data17,
    $core.String? data18,
    $core.String? data19,
    $core.String? data20,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (storeTerminalBasicDataItemId != null) {
      _result.storeTerminalBasicDataItemId = storeTerminalBasicDataItemId;
    }
    if (storeTerminalBasicDataId != null) {
      _result.storeTerminalBasicDataId = storeTerminalBasicDataId;
    }
    if (i18nTermId != null) {
      _result.i18nTermId = i18nTermId;
    }
    if (storeTerminalBasicDataItemSerialNumber != null) {
      _result.storeTerminalBasicDataItemSerialNumber = storeTerminalBasicDataItemSerialNumber;
    }
    if (storeTerminalBasicDataItemCodeName != null) {
      _result.storeTerminalBasicDataItemCodeName = storeTerminalBasicDataItemCodeName;
    }
    if (storeTerminalBasicDataItemName != null) {
      _result.storeTerminalBasicDataItemName = storeTerminalBasicDataItemName;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    if (data4 != null) {
      _result.data4 = data4;
    }
    if (data5 != null) {
      _result.data5 = data5;
    }
    if (data6 != null) {
      _result.data6 = data6;
    }
    if (data7 != null) {
      _result.data7 = data7;
    }
    if (data8 != null) {
      _result.data8 = data8;
    }
    if (data9 != null) {
      _result.data9 = data9;
    }
    if (data10 != null) {
      _result.data10 = data10;
    }
    if (data11 != null) {
      _result.data11 = data11;
    }
    if (data12 != null) {
      _result.data12 = data12;
    }
    if (data13 != null) {
      _result.data13 = data13;
    }
    if (data14 != null) {
      _result.data14 = data14;
    }
    if (data15 != null) {
      _result.data15 = data15;
    }
    if (data16 != null) {
      _result.data16 = data16;
    }
    if (data17 != null) {
      _result.data17 = data17;
    }
    if (data18 != null) {
      _result.data18 = data18;
    }
    if (data19 != null) {
      _result.data19 = data19;
    }
    if (data20 != null) {
      _result.data20 = data20;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory StoreTerminalBasicDataItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreTerminalBasicDataItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreTerminalBasicDataItem clone() => StoreTerminalBasicDataItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreTerminalBasicDataItem copyWith(void Function(StoreTerminalBasicDataItem) updates) => super.copyWith((message) => updates(message as StoreTerminalBasicDataItem)) as StoreTerminalBasicDataItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreTerminalBasicDataItem create() => StoreTerminalBasicDataItem._();
  StoreTerminalBasicDataItem createEmptyInstance() => create();
  static $pb.PbList<StoreTerminalBasicDataItem> createRepeated() => $pb.PbList<StoreTerminalBasicDataItem>();
  @$core.pragma('dart2js:noInline')
  static StoreTerminalBasicDataItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreTerminalBasicDataItem>(create);
  static StoreTerminalBasicDataItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeTerminalBasicDataItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeTerminalBasicDataItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreTerminalBasicDataItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreTerminalBasicDataItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalBasicDataId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalBasicDataId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalBasicDataId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalBasicDataId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get i18nTermId => $_getSZ(2);
  @$pb.TagNumber(3)
  set i18nTermId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasI18nTermId() => $_has(2);
  @$pb.TagNumber(3)
  void clearI18nTermId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get storeTerminalBasicDataItemSerialNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set storeTerminalBasicDataItemSerialNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalBasicDataItemSerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalBasicDataItemSerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get storeTerminalBasicDataItemCodeName => $_getSZ(4);
  @$pb.TagNumber(5)
  set storeTerminalBasicDataItemCodeName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStoreTerminalBasicDataItemCodeName() => $_has(4);
  @$pb.TagNumber(5)
  void clearStoreTerminalBasicDataItemCodeName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get storeTerminalBasicDataItemName => $_getSZ(5);
  @$pb.TagNumber(6)
  set storeTerminalBasicDataItemName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStoreTerminalBasicDataItemName() => $_has(5);
  @$pb.TagNumber(6)
  void clearStoreTerminalBasicDataItemName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get data1 => $_getSZ(6);
  @$pb.TagNumber(7)
  set data1($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasData1() => $_has(6);
  @$pb.TagNumber(7)
  void clearData1() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get data2 => $_getSZ(7);
  @$pb.TagNumber(8)
  set data2($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasData2() => $_has(7);
  @$pb.TagNumber(8)
  void clearData2() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get data3 => $_getSZ(8);
  @$pb.TagNumber(9)
  set data3($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasData3() => $_has(8);
  @$pb.TagNumber(9)
  void clearData3() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get data4 => $_getSZ(9);
  @$pb.TagNumber(10)
  set data4($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasData4() => $_has(9);
  @$pb.TagNumber(10)
  void clearData4() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get data5 => $_getSZ(10);
  @$pb.TagNumber(11)
  set data5($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasData5() => $_has(10);
  @$pb.TagNumber(11)
  void clearData5() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get data6 => $_getSZ(11);
  @$pb.TagNumber(12)
  set data6($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasData6() => $_has(11);
  @$pb.TagNumber(12)
  void clearData6() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get data7 => $_getSZ(12);
  @$pb.TagNumber(13)
  set data7($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasData7() => $_has(12);
  @$pb.TagNumber(13)
  void clearData7() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get data8 => $_getSZ(13);
  @$pb.TagNumber(14)
  set data8($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasData8() => $_has(13);
  @$pb.TagNumber(14)
  void clearData8() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get data9 => $_getSZ(14);
  @$pb.TagNumber(15)
  set data9($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasData9() => $_has(14);
  @$pb.TagNumber(15)
  void clearData9() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get data10 => $_getSZ(15);
  @$pb.TagNumber(16)
  set data10($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasData10() => $_has(15);
  @$pb.TagNumber(16)
  void clearData10() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get data11 => $_getSZ(16);
  @$pb.TagNumber(17)
  set data11($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasData11() => $_has(16);
  @$pb.TagNumber(17)
  void clearData11() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get data12 => $_getSZ(17);
  @$pb.TagNumber(18)
  set data12($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasData12() => $_has(17);
  @$pb.TagNumber(18)
  void clearData12() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get data13 => $_getSZ(18);
  @$pb.TagNumber(19)
  set data13($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasData13() => $_has(18);
  @$pb.TagNumber(19)
  void clearData13() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get data14 => $_getSZ(19);
  @$pb.TagNumber(20)
  set data14($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasData14() => $_has(19);
  @$pb.TagNumber(20)
  void clearData14() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get data15 => $_getSZ(20);
  @$pb.TagNumber(21)
  set data15($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasData15() => $_has(20);
  @$pb.TagNumber(21)
  void clearData15() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get data16 => $_getSZ(21);
  @$pb.TagNumber(22)
  set data16($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasData16() => $_has(21);
  @$pb.TagNumber(22)
  void clearData16() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get data17 => $_getSZ(22);
  @$pb.TagNumber(23)
  set data17($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasData17() => $_has(22);
  @$pb.TagNumber(23)
  void clearData17() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get data18 => $_getSZ(23);
  @$pb.TagNumber(24)
  set data18($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasData18() => $_has(23);
  @$pb.TagNumber(24)
  void clearData18() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get data19 => $_getSZ(24);
  @$pb.TagNumber(25)
  set data19($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasData19() => $_has(24);
  @$pb.TagNumber(25)
  void clearData19() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get data20 => $_getSZ(25);
  @$pb.TagNumber(26)
  set data20($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasData20() => $_has(25);
  @$pb.TagNumber(26)
  void clearData20() => clearField(26);

  @$pb.TagNumber(27)
  $core.bool get hidingYn => $_getBF(26);
  @$pb.TagNumber(27)
  set hidingYn($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasHidingYn() => $_has(26);
  @$pb.TagNumber(27)
  void clearHidingYn() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get firstRegistrantId => $_getSZ(27);
  @$pb.TagNumber(28)
  set firstRegistrantId($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasFirstRegistrantId() => $_has(27);
  @$pb.TagNumber(28)
  void clearFirstRegistrantId() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get firstRegistrationDatetime => $_getSZ(28);
  @$pb.TagNumber(29)
  set firstRegistrationDatetime($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasFirstRegistrationDatetime() => $_has(28);
  @$pb.TagNumber(29)
  void clearFirstRegistrationDatetime() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get lastReviserId => $_getSZ(29);
  @$pb.TagNumber(30)
  set lastReviserId($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasLastReviserId() => $_has(29);
  @$pb.TagNumber(30)
  void clearLastReviserId() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get lastRevisionDatetime => $_getSZ(30);
  @$pb.TagNumber(31)
  set lastRevisionDatetime($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasLastRevisionDatetime() => $_has(30);
  @$pb.TagNumber(31)
  void clearLastRevisionDatetime() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get stateCode => $_getSZ(31);
  @$pb.TagNumber(32)
  set stateCode($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasStateCode() => $_has(31);
  @$pb.TagNumber(32)
  void clearStateCode() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get serverLastRevisionDatetime => $_getSZ(32);
  @$pb.TagNumber(33)
  set serverLastRevisionDatetime($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasServerLastRevisionDatetime() => $_has(32);
  @$pb.TagNumber(33)
  void clearServerLastRevisionDatetime() => clearField(33);
}

class I18NTerm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'I18NTerm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i18nTermId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userInput')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'english')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'korean')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'japanese')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chinese')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'german')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spanish')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'portuguese')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vietnamese')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'french')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'russian')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arabic')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thai')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kazakhstan')
    ..hasRequiredFields = false
  ;

  I18NTerm._() : super();
  factory I18NTerm({
    $core.String? i18nTermId,
    $core.String? userInput,
    $core.String? english,
    $core.String? korean,
    $core.String? japanese,
    $core.String? chinese,
    $core.String? german,
    $core.String? spanish,
    $core.String? portuguese,
    $core.String? vietnamese,
    $core.String? french,
    $core.String? russian,
    $core.String? arabic,
    $core.String? thai,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? kazakhstan,
  }) {
    final _result = create();
    if (i18nTermId != null) {
      _result.i18nTermId = i18nTermId;
    }
    if (userInput != null) {
      _result.userInput = userInput;
    }
    if (english != null) {
      _result.english = english;
    }
    if (korean != null) {
      _result.korean = korean;
    }
    if (japanese != null) {
      _result.japanese = japanese;
    }
    if (chinese != null) {
      _result.chinese = chinese;
    }
    if (german != null) {
      _result.german = german;
    }
    if (spanish != null) {
      _result.spanish = spanish;
    }
    if (portuguese != null) {
      _result.portuguese = portuguese;
    }
    if (vietnamese != null) {
      _result.vietnamese = vietnamese;
    }
    if (french != null) {
      _result.french = french;
    }
    if (russian != null) {
      _result.russian = russian;
    }
    if (arabic != null) {
      _result.arabic = arabic;
    }
    if (thai != null) {
      _result.thai = thai;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (kazakhstan != null) {
      _result.kazakhstan = kazakhstan;
    }
    return _result;
  }
  factory I18NTerm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory I18NTerm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  I18NTerm clone() => I18NTerm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  I18NTerm copyWith(void Function(I18NTerm) updates) => super.copyWith((message) => updates(message as I18NTerm)) as I18NTerm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static I18NTerm create() => I18NTerm._();
  I18NTerm createEmptyInstance() => create();
  static $pb.PbList<I18NTerm> createRepeated() => $pb.PbList<I18NTerm>();
  @$core.pragma('dart2js:noInline')
  static I18NTerm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<I18NTerm>(create);
  static I18NTerm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get i18nTermId => $_getSZ(0);
  @$pb.TagNumber(1)
  set i18nTermId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasI18nTermId() => $_has(0);
  @$pb.TagNumber(1)
  void clearI18nTermId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userInput => $_getSZ(1);
  @$pb.TagNumber(2)
  set userInput($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserInput() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get english => $_getSZ(2);
  @$pb.TagNumber(3)
  set english($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnglish() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnglish() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get korean => $_getSZ(3);
  @$pb.TagNumber(4)
  set korean($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKorean() => $_has(3);
  @$pb.TagNumber(4)
  void clearKorean() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get japanese => $_getSZ(4);
  @$pb.TagNumber(5)
  set japanese($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasJapanese() => $_has(4);
  @$pb.TagNumber(5)
  void clearJapanese() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get chinese => $_getSZ(5);
  @$pb.TagNumber(6)
  set chinese($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChinese() => $_has(5);
  @$pb.TagNumber(6)
  void clearChinese() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get german => $_getSZ(6);
  @$pb.TagNumber(7)
  set german($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGerman() => $_has(6);
  @$pb.TagNumber(7)
  void clearGerman() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get spanish => $_getSZ(7);
  @$pb.TagNumber(8)
  set spanish($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpanish() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpanish() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get portuguese => $_getSZ(8);
  @$pb.TagNumber(9)
  set portuguese($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPortuguese() => $_has(8);
  @$pb.TagNumber(9)
  void clearPortuguese() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get vietnamese => $_getSZ(9);
  @$pb.TagNumber(10)
  set vietnamese($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasVietnamese() => $_has(9);
  @$pb.TagNumber(10)
  void clearVietnamese() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get french => $_getSZ(10);
  @$pb.TagNumber(11)
  set french($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFrench() => $_has(10);
  @$pb.TagNumber(11)
  void clearFrench() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get russian => $_getSZ(11);
  @$pb.TagNumber(12)
  set russian($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRussian() => $_has(11);
  @$pb.TagNumber(12)
  void clearRussian() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get arabic => $_getSZ(12);
  @$pb.TagNumber(13)
  set arabic($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasArabic() => $_has(12);
  @$pb.TagNumber(13)
  void clearArabic() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get thai => $_getSZ(13);
  @$pb.TagNumber(14)
  set thai($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasThai() => $_has(13);
  @$pb.TagNumber(14)
  void clearThai() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get firstRegistrantId => $_getSZ(14);
  @$pb.TagNumber(15)
  set firstRegistrantId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFirstRegistrantId() => $_has(14);
  @$pb.TagNumber(15)
  void clearFirstRegistrantId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get firstRegistrationDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set firstRegistrationDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasFirstRegistrationDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearFirstRegistrationDatetime() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get lastReviserId => $_getSZ(16);
  @$pb.TagNumber(17)
  set lastReviserId($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLastReviserId() => $_has(16);
  @$pb.TagNumber(17)
  void clearLastReviserId() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get lastRevisionDatetime => $_getSZ(17);
  @$pb.TagNumber(18)
  set lastRevisionDatetime($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasLastRevisionDatetime() => $_has(17);
  @$pb.TagNumber(18)
  void clearLastRevisionDatetime() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get stateCode => $_getSZ(18);
  @$pb.TagNumber(19)
  set stateCode($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasStateCode() => $_has(18);
  @$pb.TagNumber(19)
  void clearStateCode() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get kazakhstan => $_getSZ(19);
  @$pb.TagNumber(20)
  set kazakhstan($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasKazakhstan() => $_has(19);
  @$pb.TagNumber(20)
  void clearKazakhstan() => clearField(20);
}

class EmployeeGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmployeeGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeGroupName')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  EmployeeGroup._() : super();
  factory EmployeeGroup({
    $core.String? employeeGroupId,
    $core.String? employeeGroupName,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (employeeGroupId != null) {
      _result.employeeGroupId = employeeGroupId;
    }
    if (employeeGroupName != null) {
      _result.employeeGroupName = employeeGroupName;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory EmployeeGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmployeeGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmployeeGroup clone() => EmployeeGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmployeeGroup copyWith(void Function(EmployeeGroup) updates) => super.copyWith((message) => updates(message as EmployeeGroup)) as EmployeeGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmployeeGroup create() => EmployeeGroup._();
  EmployeeGroup createEmptyInstance() => create();
  static $pb.PbList<EmployeeGroup> createRepeated() => $pb.PbList<EmployeeGroup>();
  @$core.pragma('dart2js:noInline')
  static EmployeeGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmployeeGroup>(create);
  static EmployeeGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get employeeGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set employeeGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployeeGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployeeGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get employeeGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set employeeGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmployeeGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmployeeGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get hidingYn => $_getBF(2);
  @$pb.TagNumber(3)
  set hidingYn($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHidingYn() => $_has(2);
  @$pb.TagNumber(3)
  void clearHidingYn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstRegistrantId => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstRegistrantId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstRegistrantId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstRegistrantId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrationDatetime => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrationDatetime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrationDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrationDatetime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastReviserId => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastReviserId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastReviserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReviserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastRevisionDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastRevisionDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastRevisionDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastRevisionDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stateCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set stateCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStateCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearStateCode() => clearField(8);
}

class Employee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Employee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'telNumber')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hpNumber')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primaryAddress')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detailAddress')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginPassword')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeDescription')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeCode', $pb.PbFieldType.O3)
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..hasRequiredFields = false
  ;

  Employee._() : super();
  factory Employee({
    $core.String? employeeId,
    $core.String? employeeGroupId,
    $core.String? employeeName,
    $core.String? telNumber,
    $core.String? hpNumber,
    $core.String? primaryAddress,
    $core.String? detailAddress,
    $core.String? loginPassword,
    $core.String? employeeDescription,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.int? employeeCode,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
  }) {
    final _result = create();
    if (employeeId != null) {
      _result.employeeId = employeeId;
    }
    if (employeeGroupId != null) {
      _result.employeeGroupId = employeeGroupId;
    }
    if (employeeName != null) {
      _result.employeeName = employeeName;
    }
    if (telNumber != null) {
      _result.telNumber = telNumber;
    }
    if (hpNumber != null) {
      _result.hpNumber = hpNumber;
    }
    if (primaryAddress != null) {
      _result.primaryAddress = primaryAddress;
    }
    if (detailAddress != null) {
      _result.detailAddress = detailAddress;
    }
    if (loginPassword != null) {
      _result.loginPassword = loginPassword;
    }
    if (employeeDescription != null) {
      _result.employeeDescription = employeeDescription;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (employeeCode != null) {
      _result.employeeCode = employeeCode;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    return _result;
  }
  factory Employee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Employee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Employee clone() => Employee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Employee copyWith(void Function(Employee) updates) => super.copyWith((message) => updates(message as Employee)) as Employee; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Employee create() => Employee._();
  Employee createEmptyInstance() => create();
  static $pb.PbList<Employee> createRepeated() => $pb.PbList<Employee>();
  @$core.pragma('dart2js:noInline')
  static Employee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Employee>(create);
  static Employee? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get employeeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set employeeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployeeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployeeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get employeeGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set employeeGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmployeeGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmployeeGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get employeeName => $_getSZ(2);
  @$pb.TagNumber(3)
  set employeeName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmployeeName() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmployeeName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get telNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set telNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTelNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearTelNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hpNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set hpNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHpNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearHpNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get primaryAddress => $_getSZ(5);
  @$pb.TagNumber(6)
  set primaryAddress($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrimaryAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrimaryAddress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get detailAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set detailAddress($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDetailAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearDetailAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get loginPassword => $_getSZ(7);
  @$pb.TagNumber(8)
  set loginPassword($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLoginPassword() => $_has(7);
  @$pb.TagNumber(8)
  void clearLoginPassword() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get employeeDescription => $_getSZ(8);
  @$pb.TagNumber(9)
  set employeeDescription($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEmployeeDescription() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmployeeDescription() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get hidingYn => $_getBF(9);
  @$pb.TagNumber(10)
  set hidingYn($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHidingYn() => $_has(9);
  @$pb.TagNumber(10)
  void clearHidingYn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get firstRegistrantId => $_getSZ(10);
  @$pb.TagNumber(11)
  set firstRegistrantId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstRegistrantId() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstRegistrantId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get firstRegistrationDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set firstRegistrationDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFirstRegistrationDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearFirstRegistrationDatetime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get lastReviserId => $_getSZ(12);
  @$pb.TagNumber(13)
  set lastReviserId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastReviserId() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastReviserId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get lastRevisionDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set lastRevisionDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastRevisionDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastRevisionDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get stateCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set stateCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasStateCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearStateCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get employeeCode => $_getIZ(15);
  @$pb.TagNumber(16)
  set employeeCode($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasEmployeeCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearEmployeeCode() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get data1 => $_getSZ(16);
  @$pb.TagNumber(17)
  set data1($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasData1() => $_has(16);
  @$pb.TagNumber(17)
  void clearData1() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get data2 => $_getSZ(17);
  @$pb.TagNumber(18)
  set data2($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasData2() => $_has(17);
  @$pb.TagNumber(18)
  void clearData2() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get data3 => $_getSZ(18);
  @$pb.TagNumber(19)
  set data3($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasData3() => $_has(18);
  @$pb.TagNumber(19)
  void clearData3() => clearField(19);
}

class EmployeeAuthority extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmployeeAuthority', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeAuthorityId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientAuthorityGroupCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  EmployeeAuthority._() : super();
  factory EmployeeAuthority({
    $core.String? employeeAuthorityId,
    $core.String? employeeId,
    $core.String? clientAuthorityGroupCode,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (employeeAuthorityId != null) {
      _result.employeeAuthorityId = employeeAuthorityId;
    }
    if (employeeId != null) {
      _result.employeeId = employeeId;
    }
    if (clientAuthorityGroupCode != null) {
      _result.clientAuthorityGroupCode = clientAuthorityGroupCode;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory EmployeeAuthority.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmployeeAuthority.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmployeeAuthority clone() => EmployeeAuthority()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmployeeAuthority copyWith(void Function(EmployeeAuthority) updates) => super.copyWith((message) => updates(message as EmployeeAuthority)) as EmployeeAuthority; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmployeeAuthority create() => EmployeeAuthority._();
  EmployeeAuthority createEmptyInstance() => create();
  static $pb.PbList<EmployeeAuthority> createRepeated() => $pb.PbList<EmployeeAuthority>();
  @$core.pragma('dart2js:noInline')
  static EmployeeAuthority getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmployeeAuthority>(create);
  static EmployeeAuthority? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get employeeAuthorityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set employeeAuthorityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployeeAuthorityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployeeAuthorityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get employeeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set employeeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmployeeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmployeeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientAuthorityGroupCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientAuthorityGroupCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientAuthorityGroupCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientAuthorityGroupCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstRegistrantId => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstRegistrantId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstRegistrantId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstRegistrantId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrationDatetime => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrationDatetime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrationDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrationDatetime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastReviserId => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastReviserId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastReviserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReviserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastRevisionDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastRevisionDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastRevisionDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastRevisionDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stateCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set stateCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStateCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearStateCode() => clearField(8);
}

class TableDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TableDetail', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seatCount', $pb.PbFieldType.O3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smokingPossibleYn')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'windowYn')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boothYn')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'privacyProtectionYn')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargedServerId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  TableDetail._() : super();
  factory TableDetail({
    $core.String? tableId,
    $core.int? seatCount,
    $core.bool? smokingPossibleYn,
    $core.bool? windowYn,
    $core.bool? boothYn,
    $core.bool? privacyProtectionYn,
    $core.String? chargedServerId,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (tableId != null) {
      _result.tableId = tableId;
    }
    if (seatCount != null) {
      _result.seatCount = seatCount;
    }
    if (smokingPossibleYn != null) {
      _result.smokingPossibleYn = smokingPossibleYn;
    }
    if (windowYn != null) {
      _result.windowYn = windowYn;
    }
    if (boothYn != null) {
      _result.boothYn = boothYn;
    }
    if (privacyProtectionYn != null) {
      _result.privacyProtectionYn = privacyProtectionYn;
    }
    if (chargedServerId != null) {
      _result.chargedServerId = chargedServerId;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory TableDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TableDetail clone() => TableDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TableDetail copyWith(void Function(TableDetail) updates) => super.copyWith((message) => updates(message as TableDetail)) as TableDetail; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableDetail create() => TableDetail._();
  TableDetail createEmptyInstance() => create();
  static $pb.PbList<TableDetail> createRepeated() => $pb.PbList<TableDetail>();
  @$core.pragma('dart2js:noInline')
  static TableDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TableDetail>(create);
  static TableDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tableId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tableId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTableId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTableId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get seatCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set seatCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeatCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeatCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get smokingPossibleYn => $_getBF(2);
  @$pb.TagNumber(3)
  set smokingPossibleYn($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSmokingPossibleYn() => $_has(2);
  @$pb.TagNumber(3)
  void clearSmokingPossibleYn() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get windowYn => $_getBF(3);
  @$pb.TagNumber(4)
  set windowYn($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWindowYn() => $_has(3);
  @$pb.TagNumber(4)
  void clearWindowYn() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get boothYn => $_getBF(4);
  @$pb.TagNumber(5)
  set boothYn($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoothYn() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoothYn() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get privacyProtectionYn => $_getBF(5);
  @$pb.TagNumber(6)
  set privacyProtectionYn($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrivacyProtectionYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrivacyProtectionYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get chargedServerId => $_getSZ(6);
  @$pb.TagNumber(7)
  set chargedServerId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChargedServerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearChargedServerId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstRegistrantId => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstRegistrantId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstRegistrantId() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstRegistrantId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstRegistrationDatetime => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstRegistrationDatetime($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstRegistrationDatetime() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstRegistrationDatetime() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get lastReviserId => $_getSZ(9);
  @$pb.TagNumber(10)
  set lastReviserId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastReviserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastReviserId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastRevisionDatetime => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastRevisionDatetime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastRevisionDatetime() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastRevisionDatetime() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get stateCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set stateCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStateCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearStateCode() => clearField(12);
}

class TableGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TableGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableGroupName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundImageName')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  TableGroup._() : super();
  factory TableGroup({
    $core.String? tableGroupId,
    $core.String? tableGroupName,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.String? backgroundImageName,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (tableGroupId != null) {
      _result.tableGroupId = tableGroupId;
    }
    if (tableGroupName != null) {
      _result.tableGroupName = tableGroupName;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (backgroundImageName != null) {
      _result.backgroundImageName = backgroundImageName;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory TableGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TableGroup clone() => TableGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TableGroup copyWith(void Function(TableGroup) updates) => super.copyWith((message) => updates(message as TableGroup)) as TableGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableGroup create() => TableGroup._();
  TableGroup createEmptyInstance() => create();
  static $pb.PbList<TableGroup> createRepeated() => $pb.PbList<TableGroup>();
  @$core.pragma('dart2js:noInline')
  static TableGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TableGroup>(create);
  static TableGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tableGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tableGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTableGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTableGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tableGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set tableGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTableGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTableGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get locationX => $_getIZ(2);
  @$pb.TagNumber(3)
  set locationX($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocationX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationX() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get locationY => $_getIZ(3);
  @$pb.TagNumber(4)
  set locationY($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationZ => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationZ($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationZ() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationZ() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get backgroundImageName => $_getSZ(5);
  @$pb.TagNumber(6)
  set backgroundImageName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBackgroundImageName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBackgroundImageName() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hidingYn => $_getBF(6);
  @$pb.TagNumber(7)
  set hidingYn($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHidingYn() => $_has(6);
  @$pb.TagNumber(7)
  void clearHidingYn() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstRegistrantId => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstRegistrantId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstRegistrantId() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstRegistrantId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstRegistrationDatetime => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstRegistrationDatetime($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstRegistrationDatetime() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstRegistrationDatetime() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get lastReviserId => $_getSZ(9);
  @$pb.TagNumber(10)
  set lastReviserId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastReviserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastReviserId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastRevisionDatetime => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastRevisionDatetime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastRevisionDatetime() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastRevisionDatetime() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get stateCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set stateCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStateCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearStateCode() => clearField(12);
}

class Table extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Table', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverTableId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableGroupId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableName')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableImageName')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  Table._() : super();
  factory Table({
    $core.String? tableId,
    $core.String? serverTableId,
    $core.String? tableGroupId,
    $core.String? tableName,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? width,
    $core.int? height,
    $core.String? tableImageName,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (tableId != null) {
      _result.tableId = tableId;
    }
    if (serverTableId != null) {
      _result.serverTableId = serverTableId;
    }
    if (tableGroupId != null) {
      _result.tableGroupId = tableGroupId;
    }
    if (tableName != null) {
      _result.tableName = tableName;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (tableImageName != null) {
      _result.tableImageName = tableImageName;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory Table.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Table.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Table clone() => Table()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Table copyWith(void Function(Table) updates) => super.copyWith((message) => updates(message as Table)) as Table; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Table create() => Table._();
  Table createEmptyInstance() => create();
  static $pb.PbList<Table> createRepeated() => $pb.PbList<Table>();
  @$core.pragma('dart2js:noInline')
  static Table getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Table>(create);
  static Table? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tableId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tableId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTableId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTableId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serverTableId => $_getSZ(1);
  @$pb.TagNumber(2)
  set serverTableId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServerTableId() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerTableId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tableGroupId => $_getSZ(2);
  @$pb.TagNumber(3)
  set tableGroupId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTableGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTableGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tableName => $_getSZ(3);
  @$pb.TagNumber(4)
  set tableName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTableName() => $_has(3);
  @$pb.TagNumber(4)
  void clearTableName() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationX => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationX($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationX() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationX() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get locationY => $_getIZ(5);
  @$pb.TagNumber(6)
  set locationY($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocationY() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocationY() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get width => $_getIZ(6);
  @$pb.TagNumber(7)
  set width($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWidth() => $_has(6);
  @$pb.TagNumber(7)
  void clearWidth() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get height => $_getIZ(7);
  @$pb.TagNumber(8)
  set height($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHeight() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeight() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get tableImageName => $_getSZ(8);
  @$pb.TagNumber(9)
  set tableImageName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTableImageName() => $_has(8);
  @$pb.TagNumber(9)
  void clearTableImageName() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get hidingYn => $_getBF(9);
  @$pb.TagNumber(10)
  set hidingYn($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHidingYn() => $_has(9);
  @$pb.TagNumber(10)
  void clearHidingYn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get firstRegistrantId => $_getSZ(10);
  @$pb.TagNumber(11)
  set firstRegistrantId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstRegistrantId() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstRegistrantId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get firstRegistrationDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set firstRegistrationDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFirstRegistrationDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearFirstRegistrationDatetime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get lastReviserId => $_getSZ(12);
  @$pb.TagNumber(13)
  set lastReviserId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastReviserId() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastReviserId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get lastRevisionDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set lastRevisionDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastRevisionDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastRevisionDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get stateCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set stateCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasStateCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearStateCode() => clearField(15);
}

class BasicData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BasicData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataCodeName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  BasicData._() : super();
  factory BasicData({
    $core.String? basicDataId,
    $core.String? basicDataCodeName,
    $core.String? basicDataName,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (basicDataId != null) {
      _result.basicDataId = basicDataId;
    }
    if (basicDataCodeName != null) {
      _result.basicDataCodeName = basicDataCodeName;
    }
    if (basicDataName != null) {
      _result.basicDataName = basicDataName;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory BasicData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BasicData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BasicData clone() => BasicData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BasicData copyWith(void Function(BasicData) updates) => super.copyWith((message) => updates(message as BasicData)) as BasicData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BasicData create() => BasicData._();
  BasicData createEmptyInstance() => create();
  static $pb.PbList<BasicData> createRepeated() => $pb.PbList<BasicData>();
  @$core.pragma('dart2js:noInline')
  static BasicData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicData>(create);
  static BasicData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get basicDataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set basicDataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasicDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasicDataId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get basicDataCodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set basicDataCodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBasicDataCodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBasicDataCodeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get basicDataName => $_getSZ(2);
  @$pb.TagNumber(3)
  set basicDataName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBasicDataName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBasicDataName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstRegistrantId => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstRegistrantId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstRegistrantId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstRegistrantId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrationDatetime => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrationDatetime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrationDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrationDatetime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastReviserId => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastReviserId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastReviserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReviserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastRevisionDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastRevisionDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastRevisionDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastRevisionDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stateCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set stateCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStateCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearStateCode() => clearField(8);
}

class StoreTerminal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreTerminal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'terminalId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceUniqueValue')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterTerminalYn')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterTerminalAddress')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterTerminalPort')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'terminalRoleSectionCode')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverConnectionYn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'languageCode')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currencyCode')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appActionTypeCode')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierAutoLoginYn')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installationLocation')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalDescription')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalGroupId')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  StoreTerminal._() : super();
  factory StoreTerminal({
    $core.String? storeTerminalId,
    $core.String? storeId,
    $core.String? terminalId,
    $core.String? storeTerminalName,
    $core.String? deviceUniqueValue,
    $core.bool? masterTerminalYn,
    $core.String? masterTerminalAddress,
    $core.String? masterTerminalPort,
    $core.String? terminalRoleSectionCode,
    $core.bool? serverConnectionYn,
    $core.String? languageCode,
    $core.String? currencyCode,
    $core.String? appActionTypeCode,
    $core.bool? cashierAutoLoginYn,
    $core.String? installationLocation,
    $core.String? storeTerminalDescription,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? storeTerminalGroupId,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (terminalId != null) {
      _result.terminalId = terminalId;
    }
    if (storeTerminalName != null) {
      _result.storeTerminalName = storeTerminalName;
    }
    if (deviceUniqueValue != null) {
      _result.deviceUniqueValue = deviceUniqueValue;
    }
    if (masterTerminalYn != null) {
      _result.masterTerminalYn = masterTerminalYn;
    }
    if (masterTerminalAddress != null) {
      _result.masterTerminalAddress = masterTerminalAddress;
    }
    if (masterTerminalPort != null) {
      _result.masterTerminalPort = masterTerminalPort;
    }
    if (terminalRoleSectionCode != null) {
      _result.terminalRoleSectionCode = terminalRoleSectionCode;
    }
    if (serverConnectionYn != null) {
      _result.serverConnectionYn = serverConnectionYn;
    }
    if (languageCode != null) {
      _result.languageCode = languageCode;
    }
    if (currencyCode != null) {
      _result.currencyCode = currencyCode;
    }
    if (appActionTypeCode != null) {
      _result.appActionTypeCode = appActionTypeCode;
    }
    if (cashierAutoLoginYn != null) {
      _result.cashierAutoLoginYn = cashierAutoLoginYn;
    }
    if (installationLocation != null) {
      _result.installationLocation = installationLocation;
    }
    if (storeTerminalDescription != null) {
      _result.storeTerminalDescription = storeTerminalDescription;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (storeTerminalGroupId != null) {
      _result.storeTerminalGroupId = storeTerminalGroupId;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory StoreTerminal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreTerminal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreTerminal clone() => StoreTerminal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreTerminal copyWith(void Function(StoreTerminal) updates) => super.copyWith((message) => updates(message as StoreTerminal)) as StoreTerminal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreTerminal create() => StoreTerminal._();
  StoreTerminal createEmptyInstance() => create();
  static $pb.PbList<StoreTerminal> createRepeated() => $pb.PbList<StoreTerminal>();
  @$core.pragma('dart2js:noInline')
  static StoreTerminal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreTerminal>(create);
  static StoreTerminal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeTerminalId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeTerminalId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreTerminalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreTerminalId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get terminalId => $_getSZ(2);
  @$pb.TagNumber(3)
  set terminalId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerminalId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerminalId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalName => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalName() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get deviceUniqueValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set deviceUniqueValue($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeviceUniqueValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeviceUniqueValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get masterTerminalYn => $_getBF(5);
  @$pb.TagNumber(6)
  set masterTerminalYn($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMasterTerminalYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearMasterTerminalYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get masterTerminalAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set masterTerminalAddress($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMasterTerminalAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearMasterTerminalAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get masterTerminalPort => $_getSZ(7);
  @$pb.TagNumber(8)
  set masterTerminalPort($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMasterTerminalPort() => $_has(7);
  @$pb.TagNumber(8)
  void clearMasterTerminalPort() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get terminalRoleSectionCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set terminalRoleSectionCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTerminalRoleSectionCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearTerminalRoleSectionCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get serverConnectionYn => $_getBF(9);
  @$pb.TagNumber(10)
  set serverConnectionYn($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasServerConnectionYn() => $_has(9);
  @$pb.TagNumber(10)
  void clearServerConnectionYn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get languageCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set languageCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLanguageCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearLanguageCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get currencyCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set currencyCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCurrencyCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearCurrencyCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get appActionTypeCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set appActionTypeCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAppActionTypeCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearAppActionTypeCode() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get cashierAutoLoginYn => $_getBF(13);
  @$pb.TagNumber(14)
  set cashierAutoLoginYn($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCashierAutoLoginYn() => $_has(13);
  @$pb.TagNumber(14)
  void clearCashierAutoLoginYn() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get installationLocation => $_getSZ(14);
  @$pb.TagNumber(15)
  set installationLocation($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasInstallationLocation() => $_has(14);
  @$pb.TagNumber(15)
  void clearInstallationLocation() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get storeTerminalDescription => $_getSZ(15);
  @$pb.TagNumber(16)
  set storeTerminalDescription($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasStoreTerminalDescription() => $_has(15);
  @$pb.TagNumber(16)
  void clearStoreTerminalDescription() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get data1 => $_getSZ(16);
  @$pb.TagNumber(17)
  set data1($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasData1() => $_has(16);
  @$pb.TagNumber(17)
  void clearData1() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get data2 => $_getSZ(17);
  @$pb.TagNumber(18)
  set data2($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasData2() => $_has(17);
  @$pb.TagNumber(18)
  void clearData2() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get data3 => $_getSZ(18);
  @$pb.TagNumber(19)
  set data3($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasData3() => $_has(18);
  @$pb.TagNumber(19)
  void clearData3() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get firstRegistrantId => $_getSZ(19);
  @$pb.TagNumber(20)
  set firstRegistrantId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasFirstRegistrantId() => $_has(19);
  @$pb.TagNumber(20)
  void clearFirstRegistrantId() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get firstRegistrationDatetime => $_getSZ(20);
  @$pb.TagNumber(21)
  set firstRegistrationDatetime($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasFirstRegistrationDatetime() => $_has(20);
  @$pb.TagNumber(21)
  void clearFirstRegistrationDatetime() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get lastReviserId => $_getSZ(21);
  @$pb.TagNumber(22)
  set lastReviserId($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasLastReviserId() => $_has(21);
  @$pb.TagNumber(22)
  void clearLastReviserId() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get lastRevisionDatetime => $_getSZ(22);
  @$pb.TagNumber(23)
  set lastRevisionDatetime($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasLastRevisionDatetime() => $_has(22);
  @$pb.TagNumber(23)
  void clearLastRevisionDatetime() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get stateCode => $_getSZ(23);
  @$pb.TagNumber(24)
  set stateCode($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasStateCode() => $_has(23);
  @$pb.TagNumber(24)
  void clearStateCode() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get storeTerminalGroupId => $_getSZ(24);
  @$pb.TagNumber(25)
  set storeTerminalGroupId($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasStoreTerminalGroupId() => $_has(24);
  @$pb.TagNumber(25)
  void clearStoreTerminalGroupId() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get serverLastRevisionDatetime => $_getSZ(25);
  @$pb.TagNumber(26)
  set serverLastRevisionDatetime($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasServerLastRevisionDatetime() => $_has(25);
  @$pb.TagNumber(26)
  void clearServerLastRevisionDatetime() => clearField(26);
}

class KitchenMemoGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KitchenMemoGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoGroupName')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  KitchenMemoGroup._() : super();
  factory KitchenMemoGroup({
    $core.String? kitchenMemoGroupId,
    $core.String? kitchenMemoGroupName,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (kitchenMemoGroupId != null) {
      _result.kitchenMemoGroupId = kitchenMemoGroupId;
    }
    if (kitchenMemoGroupName != null) {
      _result.kitchenMemoGroupName = kitchenMemoGroupName;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory KitchenMemoGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KitchenMemoGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KitchenMemoGroup clone() => KitchenMemoGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KitchenMemoGroup copyWith(void Function(KitchenMemoGroup) updates) => super.copyWith((message) => updates(message as KitchenMemoGroup)) as KitchenMemoGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KitchenMemoGroup create() => KitchenMemoGroup._();
  KitchenMemoGroup createEmptyInstance() => create();
  static $pb.PbList<KitchenMemoGroup> createRepeated() => $pb.PbList<KitchenMemoGroup>();
  @$core.pragma('dart2js:noInline')
  static KitchenMemoGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KitchenMemoGroup>(create);
  static KitchenMemoGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kitchenMemoGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kitchenMemoGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKitchenMemoGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKitchenMemoGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get kitchenMemoGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set kitchenMemoGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKitchenMemoGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearKitchenMemoGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get hidingYn => $_getBF(2);
  @$pb.TagNumber(3)
  set hidingYn($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHidingYn() => $_has(2);
  @$pb.TagNumber(3)
  void clearHidingYn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstRegistrantId => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstRegistrantId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstRegistrantId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstRegistrantId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrationDatetime => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrationDatetime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrationDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrationDatetime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastReviserId => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastReviserId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastReviserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReviserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastRevisionDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastRevisionDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastRevisionDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastRevisionDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stateCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set stateCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStateCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearStateCode() => clearField(8);
}

class KitchenMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KitchenMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemo')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoCode')
    ..hasRequiredFields = false
  ;

  KitchenMemo._() : super();
  factory KitchenMemo({
    $core.String? kitchenMemoGroupId,
    $core.String? kitchenMemoId,
    $core.String? kitchenMemoName,
    $core.String? kitchenMemo,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? kitchenMemoCode,
  }) {
    final _result = create();
    if (kitchenMemoGroupId != null) {
      _result.kitchenMemoGroupId = kitchenMemoGroupId;
    }
    if (kitchenMemoId != null) {
      _result.kitchenMemoId = kitchenMemoId;
    }
    if (kitchenMemoName != null) {
      _result.kitchenMemoName = kitchenMemoName;
    }
    if (kitchenMemo != null) {
      _result.kitchenMemo = kitchenMemo;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (kitchenMemoCode != null) {
      _result.kitchenMemoCode = kitchenMemoCode;
    }
    return _result;
  }
  factory KitchenMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KitchenMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KitchenMemo clone() => KitchenMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KitchenMemo copyWith(void Function(KitchenMemo) updates) => super.copyWith((message) => updates(message as KitchenMemo)) as KitchenMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KitchenMemo create() => KitchenMemo._();
  KitchenMemo createEmptyInstance() => create();
  static $pb.PbList<KitchenMemo> createRepeated() => $pb.PbList<KitchenMemo>();
  @$core.pragma('dart2js:noInline')
  static KitchenMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KitchenMemo>(create);
  static KitchenMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kitchenMemoGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kitchenMemoGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKitchenMemoGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKitchenMemoGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get kitchenMemoId => $_getSZ(1);
  @$pb.TagNumber(2)
  set kitchenMemoId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKitchenMemoId() => $_has(1);
  @$pb.TagNumber(2)
  void clearKitchenMemoId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get kitchenMemoName => $_getSZ(2);
  @$pb.TagNumber(3)
  set kitchenMemoName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKitchenMemoName() => $_has(2);
  @$pb.TagNumber(3)
  void clearKitchenMemoName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get kitchenMemo => $_getSZ(3);
  @$pb.TagNumber(4)
  set kitchenMemo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKitchenMemo() => $_has(3);
  @$pb.TagNumber(4)
  void clearKitchenMemo() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hidingYn => $_getBF(4);
  @$pb.TagNumber(5)
  set hidingYn($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHidingYn() => $_has(4);
  @$pb.TagNumber(5)
  void clearHidingYn() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstRegistrantId => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstRegistrantId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstRegistrantId() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstRegistrantId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstRegistrationDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstRegistrationDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstRegistrationDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstRegistrationDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastReviserId => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastReviserId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastReviserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastReviserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastRevisionDatetime => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastRevisionDatetime($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastRevisionDatetime() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastRevisionDatetime() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get stateCode => $_getSZ(9);
  @$pb.TagNumber(10)
  set stateCode($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStateCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearStateCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get kitchenMemoCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set kitchenMemoCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasKitchenMemoCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearKitchenMemoCode() => clearField(11);
}

class ItemGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ItemGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupTypeCode')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upperItemGroupId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  ItemGroup._() : super();
  factory ItemGroup({
    $core.String? itemGroupId,
    $core.String? itemGroupName,
    $core.String? itemGroupTypeCode,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? upperItemGroupId,
    $core.String? operationTypeCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (itemGroupId != null) {
      _result.itemGroupId = itemGroupId;
    }
    if (itemGroupName != null) {
      _result.itemGroupName = itemGroupName;
    }
    if (itemGroupTypeCode != null) {
      _result.itemGroupTypeCode = itemGroupTypeCode;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (upperItemGroupId != null) {
      _result.upperItemGroupId = upperItemGroupId;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory ItemGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemGroup clone() => ItemGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemGroup copyWith(void Function(ItemGroup) updates) => super.copyWith((message) => updates(message as ItemGroup)) as ItemGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemGroup create() => ItemGroup._();
  ItemGroup createEmptyInstance() => create();
  static $pb.PbList<ItemGroup> createRepeated() => $pb.PbList<ItemGroup>();
  @$core.pragma('dart2js:noInline')
  static ItemGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemGroup>(create);
  static ItemGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemGroupTypeCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemGroupTypeCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemGroupTypeCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemGroupTypeCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get hidingYn => $_getBF(3);
  @$pb.TagNumber(4)
  set hidingYn($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHidingYn() => $_has(3);
  @$pb.TagNumber(4)
  void clearHidingYn() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrantId => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrantId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrantId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrantId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstRegistrationDatetime => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstRegistrationDatetime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstRegistrationDatetime() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstRegistrationDatetime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastReviserId => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastReviserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastReviserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastReviserId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastRevisionDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastRevisionDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastRevisionDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastRevisionDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get stateCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set stateCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStateCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearStateCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get upperItemGroupId => $_getSZ(9);
  @$pb.TagNumber(10)
  set upperItemGroupId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpperItemGroupId() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpperItemGroupId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get operationTypeCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set operationTypeCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOperationTypeCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearOperationTypeCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get serverLastRevisionDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set serverLastRevisionDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasServerLastRevisionDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearServerLastRevisionDatetime() => clearField(12);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleTypeCode')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cost', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sellingPrice', $pb.PbFieldType.OD)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openPriceYn')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTax0Yn')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTax1Yn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTax2Yn')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDiscountYn')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inventoryQuantity', $pb.PbFieldType.OD)
    ..aOB(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenPrinterOutputYn')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priceTypeCode')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionUseTypeCode')
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recommendedItemYn')
    ..aOB(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packingPossibleYn')
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onlineSaleYn')
    ..aOB(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'soldOutYn')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemCode')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkCode', protoName: 'linkCode')
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item({
    $core.String? itemId,
    $core.String? itemGroupId,
    $core.String? itemName,
    $core.String? saleTypeCode,
    $core.double? cost,
    $core.double? sellingPrice,
    $core.bool? openPriceYn,
    $core.String? barcode,
    $core.String? applyTax0Yn,
    $core.String? applyTax1Yn,
    $core.String? applyTax2Yn,
    $core.bool? applyDiscountYn,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.double? inventoryQuantity,
    $core.bool? kitchenPrinterOutputYn,
    $core.String? priceTypeCode,
    $core.String? optionUseTypeCode,
    $core.bool? recommendedItemYn,
    $core.bool? packingPossibleYn,
    $core.bool? onlineSaleYn,
    $core.bool? soldOutYn,
    $core.String? imageUrl,
    $core.String? operationTypeCode,
    $core.String? itemCode,
    $core.String? serverLastRevisionDatetime,
    $core.String? linkCode,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (itemGroupId != null) {
      _result.itemGroupId = itemGroupId;
    }
    if (itemName != null) {
      _result.itemName = itemName;
    }
    if (saleTypeCode != null) {
      _result.saleTypeCode = saleTypeCode;
    }
    if (cost != null) {
      _result.cost = cost;
    }
    if (sellingPrice != null) {
      _result.sellingPrice = sellingPrice;
    }
    if (openPriceYn != null) {
      _result.openPriceYn = openPriceYn;
    }
    if (barcode != null) {
      _result.barcode = barcode;
    }
    if (applyTax0Yn != null) {
      _result.applyTax0Yn = applyTax0Yn;
    }
    if (applyTax1Yn != null) {
      _result.applyTax1Yn = applyTax1Yn;
    }
    if (applyTax2Yn != null) {
      _result.applyTax2Yn = applyTax2Yn;
    }
    if (applyDiscountYn != null) {
      _result.applyDiscountYn = applyDiscountYn;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (inventoryQuantity != null) {
      _result.inventoryQuantity = inventoryQuantity;
    }
    if (kitchenPrinterOutputYn != null) {
      _result.kitchenPrinterOutputYn = kitchenPrinterOutputYn;
    }
    if (priceTypeCode != null) {
      _result.priceTypeCode = priceTypeCode;
    }
    if (optionUseTypeCode != null) {
      _result.optionUseTypeCode = optionUseTypeCode;
    }
    if (recommendedItemYn != null) {
      _result.recommendedItemYn = recommendedItemYn;
    }
    if (packingPossibleYn != null) {
      _result.packingPossibleYn = packingPossibleYn;
    }
    if (onlineSaleYn != null) {
      _result.onlineSaleYn = onlineSaleYn;
    }
    if (soldOutYn != null) {
      _result.soldOutYn = soldOutYn;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (itemCode != null) {
      _result.itemCode = itemCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    if (linkCode != null) {
      _result.linkCode = linkCode;
    }
    return _result;
  }
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item clone() => Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item)) as Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemName => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemName() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get saleTypeCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set saleTypeCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSaleTypeCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearSaleTypeCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get cost => $_getN(4);
  @$pb.TagNumber(5)
  set cost($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCost() => $_has(4);
  @$pb.TagNumber(5)
  void clearCost() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get sellingPrice => $_getN(5);
  @$pb.TagNumber(6)
  set sellingPrice($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSellingPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearSellingPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get openPriceYn => $_getBF(6);
  @$pb.TagNumber(7)
  set openPriceYn($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOpenPriceYn() => $_has(6);
  @$pb.TagNumber(7)
  void clearOpenPriceYn() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get barcode => $_getSZ(7);
  @$pb.TagNumber(8)
  set barcode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBarcode() => $_has(7);
  @$pb.TagNumber(8)
  void clearBarcode() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get applyTax0Yn => $_getSZ(8);
  @$pb.TagNumber(9)
  set applyTax0Yn($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasApplyTax0Yn() => $_has(8);
  @$pb.TagNumber(9)
  void clearApplyTax0Yn() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get applyTax1Yn => $_getSZ(9);
  @$pb.TagNumber(10)
  set applyTax1Yn($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasApplyTax1Yn() => $_has(9);
  @$pb.TagNumber(10)
  void clearApplyTax1Yn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get applyTax2Yn => $_getSZ(10);
  @$pb.TagNumber(11)
  set applyTax2Yn($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasApplyTax2Yn() => $_has(10);
  @$pb.TagNumber(11)
  void clearApplyTax2Yn() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get applyDiscountYn => $_getBF(11);
  @$pb.TagNumber(12)
  set applyDiscountYn($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasApplyDiscountYn() => $_has(11);
  @$pb.TagNumber(12)
  void clearApplyDiscountYn() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get hidingYn => $_getBF(12);
  @$pb.TagNumber(13)
  set hidingYn($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasHidingYn() => $_has(12);
  @$pb.TagNumber(13)
  void clearHidingYn() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrantId => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrantId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrantId() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrantId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get firstRegistrationDatetime => $_getSZ(14);
  @$pb.TagNumber(15)
  set firstRegistrationDatetime($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFirstRegistrationDatetime() => $_has(14);
  @$pb.TagNumber(15)
  void clearFirstRegistrationDatetime() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastReviserId => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastReviserId($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastReviserId() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastReviserId() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get lastRevisionDatetime => $_getSZ(16);
  @$pb.TagNumber(17)
  set lastRevisionDatetime($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLastRevisionDatetime() => $_has(16);
  @$pb.TagNumber(17)
  void clearLastRevisionDatetime() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get stateCode => $_getSZ(17);
  @$pb.TagNumber(18)
  set stateCode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasStateCode() => $_has(17);
  @$pb.TagNumber(18)
  void clearStateCode() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get inventoryQuantity => $_getN(18);
  @$pb.TagNumber(19)
  set inventoryQuantity($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasInventoryQuantity() => $_has(18);
  @$pb.TagNumber(19)
  void clearInventoryQuantity() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get kitchenPrinterOutputYn => $_getBF(19);
  @$pb.TagNumber(20)
  set kitchenPrinterOutputYn($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasKitchenPrinterOutputYn() => $_has(19);
  @$pb.TagNumber(20)
  void clearKitchenPrinterOutputYn() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get priceTypeCode => $_getSZ(20);
  @$pb.TagNumber(21)
  set priceTypeCode($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasPriceTypeCode() => $_has(20);
  @$pb.TagNumber(21)
  void clearPriceTypeCode() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get optionUseTypeCode => $_getSZ(21);
  @$pb.TagNumber(22)
  set optionUseTypeCode($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasOptionUseTypeCode() => $_has(21);
  @$pb.TagNumber(22)
  void clearOptionUseTypeCode() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get recommendedItemYn => $_getBF(22);
  @$pb.TagNumber(23)
  set recommendedItemYn($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasRecommendedItemYn() => $_has(22);
  @$pb.TagNumber(23)
  void clearRecommendedItemYn() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get packingPossibleYn => $_getBF(23);
  @$pb.TagNumber(24)
  set packingPossibleYn($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasPackingPossibleYn() => $_has(23);
  @$pb.TagNumber(24)
  void clearPackingPossibleYn() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get onlineSaleYn => $_getBF(24);
  @$pb.TagNumber(25)
  set onlineSaleYn($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasOnlineSaleYn() => $_has(24);
  @$pb.TagNumber(25)
  void clearOnlineSaleYn() => clearField(25);

  @$pb.TagNumber(26)
  $core.bool get soldOutYn => $_getBF(25);
  @$pb.TagNumber(26)
  set soldOutYn($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasSoldOutYn() => $_has(25);
  @$pb.TagNumber(26)
  void clearSoldOutYn() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get imageUrl => $_getSZ(26);
  @$pb.TagNumber(27)
  set imageUrl($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasImageUrl() => $_has(26);
  @$pb.TagNumber(27)
  void clearImageUrl() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get operationTypeCode => $_getSZ(27);
  @$pb.TagNumber(28)
  set operationTypeCode($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasOperationTypeCode() => $_has(27);
  @$pb.TagNumber(28)
  void clearOperationTypeCode() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get itemCode => $_getSZ(28);
  @$pb.TagNumber(29)
  set itemCode($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasItemCode() => $_has(28);
  @$pb.TagNumber(29)
  void clearItemCode() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get serverLastRevisionDatetime => $_getSZ(29);
  @$pb.TagNumber(30)
  set serverLastRevisionDatetime($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasServerLastRevisionDatetime() => $_has(29);
  @$pb.TagNumber(30)
  void clearServerLastRevisionDatetime() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get linkCode => $_getSZ(30);
  @$pb.TagNumber(31)
  set linkCode($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasLinkCode() => $_has(30);
  @$pb.TagNumber(31)
  void clearLinkCode() => clearField(31);
}

class OptionGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OptionGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionGroupName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requiredYn')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  OptionGroup._() : super();
  factory OptionGroup({
    $core.String? optionGroupId,
    $core.String? optionGroupName,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.bool? requiredYn,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (optionGroupId != null) {
      _result.optionGroupId = optionGroupId;
    }
    if (optionGroupName != null) {
      _result.optionGroupName = optionGroupName;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (requiredYn != null) {
      _result.requiredYn = requiredYn;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory OptionGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionGroup clone() => OptionGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionGroup copyWith(void Function(OptionGroup) updates) => super.copyWith((message) => updates(message as OptionGroup)) as OptionGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OptionGroup create() => OptionGroup._();
  OptionGroup createEmptyInstance() => create();
  static $pb.PbList<OptionGroup> createRepeated() => $pb.PbList<OptionGroup>();
  @$core.pragma('dart2js:noInline')
  static OptionGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionGroup>(create);
  static OptionGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get optionGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set optionGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptionGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get optionGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set optionGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptionGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get locationX => $_getIZ(2);
  @$pb.TagNumber(3)
  set locationX($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocationX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationX() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get locationY => $_getIZ(3);
  @$pb.TagNumber(4)
  set locationY($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationZ => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationZ($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationZ() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationZ() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get requiredYn => $_getBF(5);
  @$pb.TagNumber(6)
  set requiredYn($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequiredYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequiredYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hidingYn => $_getBF(6);
  @$pb.TagNumber(7)
  set hidingYn($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHidingYn() => $_has(6);
  @$pb.TagNumber(7)
  void clearHidingYn() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstRegistrantId => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstRegistrantId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstRegistrantId() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstRegistrantId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstRegistrationDatetime => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstRegistrationDatetime($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstRegistrationDatetime() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstRegistrationDatetime() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get lastReviserId => $_getSZ(9);
  @$pb.TagNumber(10)
  set lastReviserId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastReviserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastReviserId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastRevisionDatetime => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastRevisionDatetime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastRevisionDatetime() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastRevisionDatetime() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get stateCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set stateCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStateCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearStateCode() => clearField(12);
}

class OptionEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OptionEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionEntityId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionEntitySerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonSizeTypeCode')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  OptionEntity._() : super();
  factory OptionEntity({
    $core.String? optionEntityId,
    $core.String? optionGroupId,
    $core.String? itemId,
    $core.int? optionEntitySerialNumber,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.String? buttonSizeTypeCode,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (optionEntityId != null) {
      _result.optionEntityId = optionEntityId;
    }
    if (optionGroupId != null) {
      _result.optionGroupId = optionGroupId;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (optionEntitySerialNumber != null) {
      _result.optionEntitySerialNumber = optionEntitySerialNumber;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (buttonSizeTypeCode != null) {
      _result.buttonSizeTypeCode = buttonSizeTypeCode;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory OptionEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionEntity clone() => OptionEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionEntity copyWith(void Function(OptionEntity) updates) => super.copyWith((message) => updates(message as OptionEntity)) as OptionEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OptionEntity create() => OptionEntity._();
  OptionEntity createEmptyInstance() => create();
  static $pb.PbList<OptionEntity> createRepeated() => $pb.PbList<OptionEntity>();
  @$core.pragma('dart2js:noInline')
  static OptionEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionEntity>(create);
  static OptionEntity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get optionEntityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set optionEntityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptionEntityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionEntityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get optionGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set optionGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptionGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get optionEntitySerialNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set optionEntitySerialNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptionEntitySerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptionEntitySerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationX => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationX($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationX() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationX() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get locationY => $_getIZ(5);
  @$pb.TagNumber(6)
  set locationY($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocationY() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocationY() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get locationZ => $_getIZ(6);
  @$pb.TagNumber(7)
  set locationZ($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLocationZ() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocationZ() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get buttonSizeTypeCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set buttonSizeTypeCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasButtonSizeTypeCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearButtonSizeTypeCode() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstRegistrantId => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstRegistrantId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstRegistrantId() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstRegistrantId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get firstRegistrationDatetime => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstRegistrationDatetime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstRegistrationDatetime() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstRegistrationDatetime() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastReviserId => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastReviserId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastReviserId() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastReviserId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get lastRevisionDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set lastRevisionDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastRevisionDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastRevisionDatetime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get stateCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set stateCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStateCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearStateCode() => clearField(13);
}

class SetEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setEntityId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setItemId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entityItemId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setEntitySerialNumber')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OD)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  SetEntity._() : super();
  factory SetEntity({
    $core.String? setEntityId,
    $core.String? setItemId,
    $core.String? entityItemId,
    $core.String? setEntitySerialNumber,
    $core.double? quantity,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (setEntityId != null) {
      _result.setEntityId = setEntityId;
    }
    if (setItemId != null) {
      _result.setItemId = setItemId;
    }
    if (entityItemId != null) {
      _result.entityItemId = entityItemId;
    }
    if (setEntitySerialNumber != null) {
      _result.setEntitySerialNumber = setEntitySerialNumber;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory SetEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetEntity clone() => SetEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetEntity copyWith(void Function(SetEntity) updates) => super.copyWith((message) => updates(message as SetEntity)) as SetEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetEntity create() => SetEntity._();
  SetEntity createEmptyInstance() => create();
  static $pb.PbList<SetEntity> createRepeated() => $pb.PbList<SetEntity>();
  @$core.pragma('dart2js:noInline')
  static SetEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetEntity>(create);
  static SetEntity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get setEntityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set setEntityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetEntityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetEntityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get setItemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set setItemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get entityItemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set entityItemId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntityItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntityItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get setEntitySerialNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set setEntitySerialNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetEntitySerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetEntitySerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get quantity => $_getN(4);
  @$pb.TagNumber(5)
  set quantity($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasQuantity() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuantity() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstRegistrantId => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstRegistrantId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstRegistrantId() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstRegistrantId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstRegistrationDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstRegistrationDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstRegistrationDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstRegistrationDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastReviserId => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastReviserId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastReviserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastReviserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastRevisionDatetime => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastRevisionDatetime($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastRevisionDatetime() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastRevisionDatetime() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get stateCode => $_getSZ(9);
  @$pb.TagNumber(10)
  set stateCode($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStateCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearStateCode() => clearField(10);
}

class ItemOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ItemOption', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemOptionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionGroupId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemOptionSerialNumber', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  ItemOption._() : super();
  factory ItemOption({
    $core.String? itemOptionId,
    $core.String? itemId,
    $core.String? optionGroupId,
    $core.int? itemOptionSerialNumber,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (itemOptionId != null) {
      _result.itemOptionId = itemOptionId;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (optionGroupId != null) {
      _result.optionGroupId = optionGroupId;
    }
    if (itemOptionSerialNumber != null) {
      _result.itemOptionSerialNumber = itemOptionSerialNumber;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory ItemOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemOption clone() => ItemOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemOption copyWith(void Function(ItemOption) updates) => super.copyWith((message) => updates(message as ItemOption)) as ItemOption; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemOption create() => ItemOption._();
  ItemOption createEmptyInstance() => create();
  static $pb.PbList<ItemOption> createRepeated() => $pb.PbList<ItemOption>();
  @$core.pragma('dart2js:noInline')
  static ItemOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemOption>(create);
  static ItemOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemOptionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemOptionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemOptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemOptionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get optionGroupId => $_getSZ(2);
  @$pb.TagNumber(3)
  set optionGroupId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptionGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptionGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get itemOptionSerialNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set itemOptionSerialNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItemOptionSerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemOptionSerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrantId => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrantId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrantId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrantId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstRegistrationDatetime => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstRegistrationDatetime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstRegistrationDatetime() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstRegistrationDatetime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastReviserId => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastReviserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastReviserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastReviserId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastRevisionDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastRevisionDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastRevisionDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastRevisionDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get stateCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set stateCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStateCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearStateCode() => clearField(9);
}

class MenuGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MenuGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroupName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundImageName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundColor')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontName')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontSize', $pb.PbFieldType.OD)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontStyle')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontColor')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultYn')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onlineSaleYn')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkInformation')
    ..hasRequiredFields = false
  ;

  MenuGroup._() : super();
  factory MenuGroup({
    $core.String? menuGroupId,
    $core.String? menuGroupName,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.String? backgroundImageName,
    $core.String? backgroundColor,
    $core.String? fontName,
    $core.double? fontSize,
    $core.String? fontStyle,
    $core.String? fontColor,
    $core.bool? defaultYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.bool? onlineSaleYn,
    $core.String? linkInformation,
  }) {
    final _result = create();
    if (menuGroupId != null) {
      _result.menuGroupId = menuGroupId;
    }
    if (menuGroupName != null) {
      _result.menuGroupName = menuGroupName;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (backgroundImageName != null) {
      _result.backgroundImageName = backgroundImageName;
    }
    if (backgroundColor != null) {
      _result.backgroundColor = backgroundColor;
    }
    if (fontName != null) {
      _result.fontName = fontName;
    }
    if (fontSize != null) {
      _result.fontSize = fontSize;
    }
    if (fontStyle != null) {
      _result.fontStyle = fontStyle;
    }
    if (fontColor != null) {
      _result.fontColor = fontColor;
    }
    if (defaultYn != null) {
      _result.defaultYn = defaultYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (onlineSaleYn != null) {
      _result.onlineSaleYn = onlineSaleYn;
    }
    if (linkInformation != null) {
      _result.linkInformation = linkInformation;
    }
    return _result;
  }
  factory MenuGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MenuGroup clone() => MenuGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MenuGroup copyWith(void Function(MenuGroup) updates) => super.copyWith((message) => updates(message as MenuGroup)) as MenuGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuGroup create() => MenuGroup._();
  MenuGroup createEmptyInstance() => create();
  static $pb.PbList<MenuGroup> createRepeated() => $pb.PbList<MenuGroup>();
  @$core.pragma('dart2js:noInline')
  static MenuGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuGroup>(create);
  static MenuGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get menuGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set menuGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMenuGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenuGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get menuGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set menuGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMenuGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenuGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get locationX => $_getIZ(2);
  @$pb.TagNumber(3)
  set locationX($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocationX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationX() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get locationY => $_getIZ(3);
  @$pb.TagNumber(4)
  set locationY($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationZ => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationZ($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationZ() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationZ() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get backgroundImageName => $_getSZ(5);
  @$pb.TagNumber(6)
  set backgroundImageName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBackgroundImageName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBackgroundImageName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get backgroundColor => $_getSZ(6);
  @$pb.TagNumber(7)
  set backgroundColor($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackgroundColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackgroundColor() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fontName => $_getSZ(7);
  @$pb.TagNumber(8)
  set fontName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFontName() => $_has(7);
  @$pb.TagNumber(8)
  void clearFontName() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get fontSize => $_getN(8);
  @$pb.TagNumber(9)
  set fontSize($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFontSize() => $_has(8);
  @$pb.TagNumber(9)
  void clearFontSize() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get fontStyle => $_getSZ(9);
  @$pb.TagNumber(10)
  set fontStyle($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFontStyle() => $_has(9);
  @$pb.TagNumber(10)
  void clearFontStyle() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get fontColor => $_getSZ(10);
  @$pb.TagNumber(11)
  set fontColor($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFontColor() => $_has(10);
  @$pb.TagNumber(11)
  void clearFontColor() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get defaultYn => $_getBF(11);
  @$pb.TagNumber(12)
  set defaultYn($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDefaultYn() => $_has(11);
  @$pb.TagNumber(12)
  void clearDefaultYn() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get firstRegistrantId => $_getSZ(12);
  @$pb.TagNumber(13)
  set firstRegistrantId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFirstRegistrantId() => $_has(12);
  @$pb.TagNumber(13)
  void clearFirstRegistrantId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrationDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrationDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrationDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrationDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get lastReviserId => $_getSZ(14);
  @$pb.TagNumber(15)
  set lastReviserId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLastReviserId() => $_has(14);
  @$pb.TagNumber(15)
  void clearLastReviserId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastRevisionDatetime() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get stateCode => $_getSZ(16);
  @$pb.TagNumber(17)
  set stateCode($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasStateCode() => $_has(16);
  @$pb.TagNumber(17)
  void clearStateCode() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get onlineSaleYn => $_getBF(17);
  @$pb.TagNumber(18)
  set onlineSaleYn($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasOnlineSaleYn() => $_has(17);
  @$pb.TagNumber(18)
  void clearOnlineSaleYn() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get linkInformation => $_getSZ(18);
  @$pb.TagNumber(19)
  set linkInformation($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasLinkInformation() => $_has(18);
  @$pb.TagNumber(19)
  void clearLinkInformation() => clearField(19);
}

class MenuGroupUse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MenuGroupUse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessSectionCode')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useYn')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  MenuGroupUse._() : super();
  factory MenuGroupUse({
    $core.String? menuGroupId,
    $core.String? businessSectionCode,
    $core.bool? useYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (menuGroupId != null) {
      _result.menuGroupId = menuGroupId;
    }
    if (businessSectionCode != null) {
      _result.businessSectionCode = businessSectionCode;
    }
    if (useYn != null) {
      _result.useYn = useYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory MenuGroupUse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuGroupUse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MenuGroupUse clone() => MenuGroupUse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MenuGroupUse copyWith(void Function(MenuGroupUse) updates) => super.copyWith((message) => updates(message as MenuGroupUse)) as MenuGroupUse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuGroupUse create() => MenuGroupUse._();
  MenuGroupUse createEmptyInstance() => create();
  static $pb.PbList<MenuGroupUse> createRepeated() => $pb.PbList<MenuGroupUse>();
  @$core.pragma('dart2js:noInline')
  static MenuGroupUse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuGroupUse>(create);
  static MenuGroupUse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get menuGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set menuGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMenuGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenuGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get businessSectionCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set businessSectionCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBusinessSectionCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearBusinessSectionCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get useYn => $_getBF(2);
  @$pb.TagNumber(3)
  set useYn($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUseYn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUseYn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstRegistrantId => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstRegistrantId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstRegistrantId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstRegistrantId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrationDatetime => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrationDatetime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrationDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrationDatetime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastReviserId => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastReviserId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastReviserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReviserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastRevisionDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastRevisionDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastRevisionDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastRevisionDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stateCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set stateCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStateCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearStateCode() => clearField(8);
}

class MenuItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MenuItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuItemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundColor')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontColor')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonSizeTypeCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkInformation')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  MenuItem._() : super();
  factory MenuItem({
    $core.String? menuItemId,
    $core.String? menuGroupId,
    $core.String? itemId,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.String? backgroundColor,
    $core.String? fontColor,
    $core.String? buttonSizeTypeCode,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? linkInformation,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (menuItemId != null) {
      _result.menuItemId = menuItemId;
    }
    if (menuGroupId != null) {
      _result.menuGroupId = menuGroupId;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (backgroundColor != null) {
      _result.backgroundColor = backgroundColor;
    }
    if (fontColor != null) {
      _result.fontColor = fontColor;
    }
    if (buttonSizeTypeCode != null) {
      _result.buttonSizeTypeCode = buttonSizeTypeCode;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (linkInformation != null) {
      _result.linkInformation = linkInformation;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory MenuItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MenuItem clone() => MenuItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MenuItem copyWith(void Function(MenuItem) updates) => super.copyWith((message) => updates(message as MenuItem)) as MenuItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuItem create() => MenuItem._();
  MenuItem createEmptyInstance() => create();
  static $pb.PbList<MenuItem> createRepeated() => $pb.PbList<MenuItem>();
  @$core.pragma('dart2js:noInline')
  static MenuItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuItem>(create);
  static MenuItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get menuItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set menuItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMenuItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenuItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get menuGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set menuGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMenuGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenuGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get locationX => $_getIZ(3);
  @$pb.TagNumber(4)
  set locationX($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationX() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationX() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationY => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationY($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationY() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationY() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get locationZ => $_getIZ(5);
  @$pb.TagNumber(6)
  set locationZ($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocationZ() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocationZ() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get backgroundColor => $_getSZ(6);
  @$pb.TagNumber(7)
  set backgroundColor($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackgroundColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackgroundColor() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fontColor => $_getSZ(7);
  @$pb.TagNumber(8)
  set fontColor($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFontColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearFontColor() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get buttonSizeTypeCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set buttonSizeTypeCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasButtonSizeTypeCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearButtonSizeTypeCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get firstRegistrantId => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstRegistrantId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstRegistrantId() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstRegistrantId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get firstRegistrationDatetime => $_getSZ(10);
  @$pb.TagNumber(11)
  set firstRegistrationDatetime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstRegistrationDatetime() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstRegistrationDatetime() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get lastReviserId => $_getSZ(11);
  @$pb.TagNumber(12)
  set lastReviserId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastReviserId() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastReviserId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get lastRevisionDatetime => $_getSZ(12);
  @$pb.TagNumber(13)
  set lastRevisionDatetime($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastRevisionDatetime() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastRevisionDatetime() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get stateCode => $_getSZ(13);
  @$pb.TagNumber(14)
  set stateCode($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStateCode() => $_has(13);
  @$pb.TagNumber(14)
  void clearStateCode() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get linkInformation => $_getSZ(14);
  @$pb.TagNumber(15)
  set linkInformation($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLinkInformation() => $_has(14);
  @$pb.TagNumber(15)
  void clearLinkInformation() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get serverLastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set serverLastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasServerLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearServerLastRevisionDatetime() => clearField(16);
}

class Store extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Store', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'managerId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zipcode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primaryAddress')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detailAddress')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'telNumber')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hpNumber')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'faxNumber')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessRegistrationNumber')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxSectionCode')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'languageCode')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currencyCode')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeStateCode')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeBusinessTime')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openingHours')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closedDays')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parkingTypeCode')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessSectors')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainProducts')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ceoName')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerName')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkTypeCode')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceTypeCode')
    ..aOS(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  Store._() : super();
  factory Store({
    $core.String? storeId,
    $core.String? agencyId,
    $core.String? managerId,
    $core.String? storeName,
    $core.String? zipcode,
    $core.String? primaryAddress,
    $core.String? detailAddress,
    $core.String? telNumber,
    $core.String? hpNumber,
    $core.String? faxNumber,
    $core.String? businessRegistrationNumber,
    $core.String? taxSectionCode,
    $core.String? languageCode,
    $core.String? currencyCode,
    $core.String? storeStateCode,
    $core.String? closeBusinessTime,
    $core.String? openingHours,
    $core.String? closedDays,
    $core.String? parkingTypeCode,
    $core.String? businessSectors,
    $core.String? mainProducts,
    $core.String? ceoName,
    $core.String? ownerName,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? linkTypeCode,
    $core.String? serviceTypeCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
    }
    if (managerId != null) {
      _result.managerId = managerId;
    }
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (zipcode != null) {
      _result.zipcode = zipcode;
    }
    if (primaryAddress != null) {
      _result.primaryAddress = primaryAddress;
    }
    if (detailAddress != null) {
      _result.detailAddress = detailAddress;
    }
    if (telNumber != null) {
      _result.telNumber = telNumber;
    }
    if (hpNumber != null) {
      _result.hpNumber = hpNumber;
    }
    if (faxNumber != null) {
      _result.faxNumber = faxNumber;
    }
    if (businessRegistrationNumber != null) {
      _result.businessRegistrationNumber = businessRegistrationNumber;
    }
    if (taxSectionCode != null) {
      _result.taxSectionCode = taxSectionCode;
    }
    if (languageCode != null) {
      _result.languageCode = languageCode;
    }
    if (currencyCode != null) {
      _result.currencyCode = currencyCode;
    }
    if (storeStateCode != null) {
      _result.storeStateCode = storeStateCode;
    }
    if (closeBusinessTime != null) {
      _result.closeBusinessTime = closeBusinessTime;
    }
    if (openingHours != null) {
      _result.openingHours = openingHours;
    }
    if (closedDays != null) {
      _result.closedDays = closedDays;
    }
    if (parkingTypeCode != null) {
      _result.parkingTypeCode = parkingTypeCode;
    }
    if (businessSectors != null) {
      _result.businessSectors = businessSectors;
    }
    if (mainProducts != null) {
      _result.mainProducts = mainProducts;
    }
    if (ceoName != null) {
      _result.ceoName = ceoName;
    }
    if (ownerName != null) {
      _result.ownerName = ownerName;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (linkTypeCode != null) {
      _result.linkTypeCode = linkTypeCode;
    }
    if (serviceTypeCode != null) {
      _result.serviceTypeCode = serviceTypeCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory Store.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Store.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Store clone() => Store()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Store copyWith(void Function(Store) updates) => super.copyWith((message) => updates(message as Store)) as Store; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Store create() => Store._();
  Store createEmptyInstance() => create();
  static $pb.PbList<Store> createRepeated() => $pb.PbList<Store>();
  @$core.pragma('dart2js:noInline')
  static Store getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Store>(create);
  static Store? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get agencyId => $_getSZ(1);
  @$pb.TagNumber(2)
  set agencyId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get managerId => $_getSZ(2);
  @$pb.TagNumber(3)
  set managerId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasManagerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearManagerId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeName => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreName() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get zipcode => $_getSZ(4);
  @$pb.TagNumber(5)
  set zipcode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasZipcode() => $_has(4);
  @$pb.TagNumber(5)
  void clearZipcode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get primaryAddress => $_getSZ(5);
  @$pb.TagNumber(6)
  set primaryAddress($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrimaryAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrimaryAddress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get detailAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set detailAddress($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDetailAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearDetailAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get telNumber => $_getSZ(7);
  @$pb.TagNumber(8)
  set telNumber($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTelNumber() => $_has(7);
  @$pb.TagNumber(8)
  void clearTelNumber() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get hpNumber => $_getSZ(8);
  @$pb.TagNumber(9)
  set hpNumber($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHpNumber() => $_has(8);
  @$pb.TagNumber(9)
  void clearHpNumber() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get faxNumber => $_getSZ(9);
  @$pb.TagNumber(10)
  set faxNumber($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFaxNumber() => $_has(9);
  @$pb.TagNumber(10)
  void clearFaxNumber() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get businessRegistrationNumber => $_getSZ(10);
  @$pb.TagNumber(11)
  set businessRegistrationNumber($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBusinessRegistrationNumber() => $_has(10);
  @$pb.TagNumber(11)
  void clearBusinessRegistrationNumber() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get taxSectionCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set taxSectionCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTaxSectionCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearTaxSectionCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get languageCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set languageCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLanguageCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearLanguageCode() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get currencyCode => $_getSZ(13);
  @$pb.TagNumber(14)
  set currencyCode($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCurrencyCode() => $_has(13);
  @$pb.TagNumber(14)
  void clearCurrencyCode() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get storeStateCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set storeStateCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasStoreStateCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearStoreStateCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get closeBusinessTime => $_getSZ(15);
  @$pb.TagNumber(16)
  set closeBusinessTime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCloseBusinessTime() => $_has(15);
  @$pb.TagNumber(16)
  void clearCloseBusinessTime() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get openingHours => $_getSZ(16);
  @$pb.TagNumber(17)
  set openingHours($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasOpeningHours() => $_has(16);
  @$pb.TagNumber(17)
  void clearOpeningHours() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get closedDays => $_getSZ(17);
  @$pb.TagNumber(18)
  set closedDays($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasClosedDays() => $_has(17);
  @$pb.TagNumber(18)
  void clearClosedDays() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get parkingTypeCode => $_getSZ(18);
  @$pb.TagNumber(19)
  set parkingTypeCode($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasParkingTypeCode() => $_has(18);
  @$pb.TagNumber(19)
  void clearParkingTypeCode() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get businessSectors => $_getSZ(19);
  @$pb.TagNumber(20)
  set businessSectors($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBusinessSectors() => $_has(19);
  @$pb.TagNumber(20)
  void clearBusinessSectors() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get mainProducts => $_getSZ(20);
  @$pb.TagNumber(21)
  set mainProducts($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasMainProducts() => $_has(20);
  @$pb.TagNumber(21)
  void clearMainProducts() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get ceoName => $_getSZ(21);
  @$pb.TagNumber(22)
  set ceoName($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasCeoName() => $_has(21);
  @$pb.TagNumber(22)
  void clearCeoName() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get ownerName => $_getSZ(22);
  @$pb.TagNumber(23)
  set ownerName($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasOwnerName() => $_has(22);
  @$pb.TagNumber(23)
  void clearOwnerName() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get data1 => $_getSZ(23);
  @$pb.TagNumber(24)
  set data1($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasData1() => $_has(23);
  @$pb.TagNumber(24)
  void clearData1() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get data2 => $_getSZ(24);
  @$pb.TagNumber(25)
  set data2($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasData2() => $_has(24);
  @$pb.TagNumber(25)
  void clearData2() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get data3 => $_getSZ(25);
  @$pb.TagNumber(26)
  set data3($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasData3() => $_has(25);
  @$pb.TagNumber(26)
  void clearData3() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get firstRegistrantId => $_getSZ(26);
  @$pb.TagNumber(27)
  set firstRegistrantId($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasFirstRegistrantId() => $_has(26);
  @$pb.TagNumber(27)
  void clearFirstRegistrantId() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get firstRegistrationDatetime => $_getSZ(27);
  @$pb.TagNumber(28)
  set firstRegistrationDatetime($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasFirstRegistrationDatetime() => $_has(27);
  @$pb.TagNumber(28)
  void clearFirstRegistrationDatetime() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get lastReviserId => $_getSZ(28);
  @$pb.TagNumber(29)
  set lastReviserId($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasLastReviserId() => $_has(28);
  @$pb.TagNumber(29)
  void clearLastReviserId() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get lastRevisionDatetime => $_getSZ(29);
  @$pb.TagNumber(30)
  set lastRevisionDatetime($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasLastRevisionDatetime() => $_has(29);
  @$pb.TagNumber(30)
  void clearLastRevisionDatetime() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get stateCode => $_getSZ(30);
  @$pb.TagNumber(31)
  set stateCode($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasStateCode() => $_has(30);
  @$pb.TagNumber(31)
  void clearStateCode() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get linkTypeCode => $_getSZ(31);
  @$pb.TagNumber(32)
  set linkTypeCode($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasLinkTypeCode() => $_has(31);
  @$pb.TagNumber(32)
  void clearLinkTypeCode() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get serviceTypeCode => $_getSZ(32);
  @$pb.TagNumber(33)
  set serviceTypeCode($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasServiceTypeCode() => $_has(32);
  @$pb.TagNumber(33)
  void clearServiceTypeCode() => clearField(33);

  @$pb.TagNumber(34)
  $core.String get serverLastRevisionDatetime => $_getSZ(33);
  @$pb.TagNumber(34)
  set serverLastRevisionDatetime($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasServerLastRevisionDatetime() => $_has(33);
  @$pb.TagNumber(34)
  void clearServerLastRevisionDatetime() => clearField(34);
}

class AdminUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminUserId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminAuthorityGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'affiliatedCompanyId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginPassword')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminUserName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'telNumber')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hpNumber')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailAddress')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primaryAddress')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detailAddress')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminAccountStateCode')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminUserDescription')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  AdminUser._() : super();
  factory AdminUser({
    $core.String? adminUserId,
    $core.String? adminAuthorityGroupId,
    $core.String? affiliatedCompanyId,
    $core.String? loginId,
    $core.String? loginPassword,
    $core.String? adminUserName,
    $core.String? telNumber,
    $core.String? hpNumber,
    $core.String? emailAddress,
    $core.String? primaryAddress,
    $core.String? detailAddress,
    $core.String? adminAccountStateCode,
    $core.String? adminUserDescription,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (adminUserId != null) {
      _result.adminUserId = adminUserId;
    }
    if (adminAuthorityGroupId != null) {
      _result.adminAuthorityGroupId = adminAuthorityGroupId;
    }
    if (affiliatedCompanyId != null) {
      _result.affiliatedCompanyId = affiliatedCompanyId;
    }
    if (loginId != null) {
      _result.loginId = loginId;
    }
    if (loginPassword != null) {
      _result.loginPassword = loginPassword;
    }
    if (adminUserName != null) {
      _result.adminUserName = adminUserName;
    }
    if (telNumber != null) {
      _result.telNumber = telNumber;
    }
    if (hpNumber != null) {
      _result.hpNumber = hpNumber;
    }
    if (emailAddress != null) {
      _result.emailAddress = emailAddress;
    }
    if (primaryAddress != null) {
      _result.primaryAddress = primaryAddress;
    }
    if (detailAddress != null) {
      _result.detailAddress = detailAddress;
    }
    if (adminAccountStateCode != null) {
      _result.adminAccountStateCode = adminAccountStateCode;
    }
    if (adminUserDescription != null) {
      _result.adminUserDescription = adminUserDescription;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory AdminUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminUser clone() => AdminUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminUser copyWith(void Function(AdminUser) updates) => super.copyWith((message) => updates(message as AdminUser)) as AdminUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminUser create() => AdminUser._();
  AdminUser createEmptyInstance() => create();
  static $pb.PbList<AdminUser> createRepeated() => $pb.PbList<AdminUser>();
  @$core.pragma('dart2js:noInline')
  static AdminUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminUser>(create);
  static AdminUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get adminUserId => $_getSZ(0);
  @$pb.TagNumber(1)
  set adminUserId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get adminAuthorityGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set adminAuthorityGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdminAuthorityGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdminAuthorityGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get affiliatedCompanyId => $_getSZ(2);
  @$pb.TagNumber(3)
  set affiliatedCompanyId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAffiliatedCompanyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAffiliatedCompanyId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get loginId => $_getSZ(3);
  @$pb.TagNumber(4)
  set loginId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLoginId() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoginId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get loginPassword => $_getSZ(4);
  @$pb.TagNumber(5)
  set loginPassword($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLoginPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoginPassword() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get adminUserName => $_getSZ(5);
  @$pb.TagNumber(6)
  set adminUserName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAdminUserName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdminUserName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get telNumber => $_getSZ(6);
  @$pb.TagNumber(7)
  set telNumber($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTelNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearTelNumber() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get hpNumber => $_getSZ(7);
  @$pb.TagNumber(8)
  set hpNumber($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHpNumber() => $_has(7);
  @$pb.TagNumber(8)
  void clearHpNumber() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get emailAddress => $_getSZ(8);
  @$pb.TagNumber(9)
  set emailAddress($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEmailAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmailAddress() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get primaryAddress => $_getSZ(9);
  @$pb.TagNumber(10)
  set primaryAddress($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPrimaryAddress() => $_has(9);
  @$pb.TagNumber(10)
  void clearPrimaryAddress() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get detailAddress => $_getSZ(10);
  @$pb.TagNumber(11)
  set detailAddress($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDetailAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearDetailAddress() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get adminAccountStateCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set adminAccountStateCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAdminAccountStateCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearAdminAccountStateCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get adminUserDescription => $_getSZ(12);
  @$pb.TagNumber(13)
  set adminUserDescription($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAdminUserDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearAdminUserDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrantId => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrantId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrantId() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrantId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get firstRegistrationDatetime => $_getSZ(14);
  @$pb.TagNumber(15)
  set firstRegistrationDatetime($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFirstRegistrationDatetime() => $_has(14);
  @$pb.TagNumber(15)
  void clearFirstRegistrationDatetime() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastReviserId => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastReviserId($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastReviserId() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastReviserId() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get lastRevisionDatetime => $_getSZ(16);
  @$pb.TagNumber(17)
  set lastRevisionDatetime($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLastRevisionDatetime() => $_has(16);
  @$pb.TagNumber(17)
  void clearLastRevisionDatetime() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get stateCode => $_getSZ(17);
  @$pb.TagNumber(18)
  set stateCode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasStateCode() => $_has(17);
  @$pb.TagNumber(18)
  void clearStateCode() => clearField(18);
}

class SelfMenuGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelfMenuGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMenuGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMenuGroupName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundImageName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundColor')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontName')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontSize', $pb.PbFieldType.OD)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontStyle')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontColor')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultYn')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  SelfMenuGroup._() : super();
  factory SelfMenuGroup({
    $core.String? selfMenuGroupId,
    $core.String? selfMenuGroupName,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.String? backgroundImageName,
    $core.String? backgroundColor,
    $core.String? fontName,
    $core.double? fontSize,
    $core.String? fontStyle,
    $core.String? fontColor,
    $core.bool? defaultYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (selfMenuGroupId != null) {
      _result.selfMenuGroupId = selfMenuGroupId;
    }
    if (selfMenuGroupName != null) {
      _result.selfMenuGroupName = selfMenuGroupName;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (backgroundImageName != null) {
      _result.backgroundImageName = backgroundImageName;
    }
    if (backgroundColor != null) {
      _result.backgroundColor = backgroundColor;
    }
    if (fontName != null) {
      _result.fontName = fontName;
    }
    if (fontSize != null) {
      _result.fontSize = fontSize;
    }
    if (fontStyle != null) {
      _result.fontStyle = fontStyle;
    }
    if (fontColor != null) {
      _result.fontColor = fontColor;
    }
    if (defaultYn != null) {
      _result.defaultYn = defaultYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory SelfMenuGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfMenuGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfMenuGroup clone() => SelfMenuGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfMenuGroup copyWith(void Function(SelfMenuGroup) updates) => super.copyWith((message) => updates(message as SelfMenuGroup)) as SelfMenuGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SelfMenuGroup create() => SelfMenuGroup._();
  SelfMenuGroup createEmptyInstance() => create();
  static $pb.PbList<SelfMenuGroup> createRepeated() => $pb.PbList<SelfMenuGroup>();
  @$core.pragma('dart2js:noInline')
  static SelfMenuGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfMenuGroup>(create);
  static SelfMenuGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get selfMenuGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set selfMenuGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelfMenuGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelfMenuGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get selfMenuGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set selfMenuGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelfMenuGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelfMenuGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get locationX => $_getIZ(2);
  @$pb.TagNumber(3)
  set locationX($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocationX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationX() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get locationY => $_getIZ(3);
  @$pb.TagNumber(4)
  set locationY($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationZ => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationZ($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationZ() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationZ() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get backgroundImageName => $_getSZ(5);
  @$pb.TagNumber(6)
  set backgroundImageName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBackgroundImageName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBackgroundImageName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get backgroundColor => $_getSZ(6);
  @$pb.TagNumber(7)
  set backgroundColor($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackgroundColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackgroundColor() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fontName => $_getSZ(7);
  @$pb.TagNumber(8)
  set fontName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFontName() => $_has(7);
  @$pb.TagNumber(8)
  void clearFontName() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get fontSize => $_getN(8);
  @$pb.TagNumber(9)
  set fontSize($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFontSize() => $_has(8);
  @$pb.TagNumber(9)
  void clearFontSize() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get fontStyle => $_getSZ(9);
  @$pb.TagNumber(10)
  set fontStyle($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFontStyle() => $_has(9);
  @$pb.TagNumber(10)
  void clearFontStyle() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get fontColor => $_getSZ(10);
  @$pb.TagNumber(11)
  set fontColor($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFontColor() => $_has(10);
  @$pb.TagNumber(11)
  void clearFontColor() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get defaultYn => $_getBF(11);
  @$pb.TagNumber(12)
  set defaultYn($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDefaultYn() => $_has(11);
  @$pb.TagNumber(12)
  void clearDefaultYn() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get firstRegistrantId => $_getSZ(12);
  @$pb.TagNumber(13)
  set firstRegistrantId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFirstRegistrantId() => $_has(12);
  @$pb.TagNumber(13)
  void clearFirstRegistrantId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrationDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrationDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrationDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrationDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get lastReviserId => $_getSZ(14);
  @$pb.TagNumber(15)
  set lastReviserId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLastReviserId() => $_has(14);
  @$pb.TagNumber(15)
  void clearLastReviserId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastRevisionDatetime() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get stateCode => $_getSZ(16);
  @$pb.TagNumber(17)
  set stateCode($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasStateCode() => $_has(16);
  @$pb.TagNumber(17)
  void clearStateCode() => clearField(17);
}

class SelfMenuItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelfMenuItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMenuItemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMenuGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationX', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationY', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationZ', $pb.PbFieldType.O3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundColor')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fontColor')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonSizeTypeCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  SelfMenuItem._() : super();
  factory SelfMenuItem({
    $core.String? selfMenuItemId,
    $core.String? selfMenuGroupId,
    $core.String? itemId,
    $core.int? locationX,
    $core.int? locationY,
    $core.int? locationZ,
    $core.String? backgroundColor,
    $core.String? fontColor,
    $core.String? buttonSizeTypeCode,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (selfMenuItemId != null) {
      _result.selfMenuItemId = selfMenuItemId;
    }
    if (selfMenuGroupId != null) {
      _result.selfMenuGroupId = selfMenuGroupId;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (locationX != null) {
      _result.locationX = locationX;
    }
    if (locationY != null) {
      _result.locationY = locationY;
    }
    if (locationZ != null) {
      _result.locationZ = locationZ;
    }
    if (backgroundColor != null) {
      _result.backgroundColor = backgroundColor;
    }
    if (fontColor != null) {
      _result.fontColor = fontColor;
    }
    if (buttonSizeTypeCode != null) {
      _result.buttonSizeTypeCode = buttonSizeTypeCode;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory SelfMenuItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfMenuItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfMenuItem clone() => SelfMenuItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfMenuItem copyWith(void Function(SelfMenuItem) updates) => super.copyWith((message) => updates(message as SelfMenuItem)) as SelfMenuItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SelfMenuItem create() => SelfMenuItem._();
  SelfMenuItem createEmptyInstance() => create();
  static $pb.PbList<SelfMenuItem> createRepeated() => $pb.PbList<SelfMenuItem>();
  @$core.pragma('dart2js:noInline')
  static SelfMenuItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfMenuItem>(create);
  static SelfMenuItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get selfMenuItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set selfMenuItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelfMenuItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelfMenuItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get selfMenuGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set selfMenuGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelfMenuGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelfMenuGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get locationX => $_getIZ(3);
  @$pb.TagNumber(4)
  set locationX($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationX() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationX() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get locationY => $_getIZ(4);
  @$pb.TagNumber(5)
  set locationY($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocationY() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocationY() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get locationZ => $_getIZ(5);
  @$pb.TagNumber(6)
  set locationZ($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocationZ() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocationZ() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get backgroundColor => $_getSZ(6);
  @$pb.TagNumber(7)
  set backgroundColor($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackgroundColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackgroundColor() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fontColor => $_getSZ(7);
  @$pb.TagNumber(8)
  set fontColor($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFontColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearFontColor() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get buttonSizeTypeCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set buttonSizeTypeCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasButtonSizeTypeCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearButtonSizeTypeCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get firstRegistrantId => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstRegistrantId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstRegistrantId() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstRegistrantId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get firstRegistrationDatetime => $_getSZ(10);
  @$pb.TagNumber(11)
  set firstRegistrationDatetime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstRegistrationDatetime() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstRegistrationDatetime() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get lastReviserId => $_getSZ(11);
  @$pb.TagNumber(12)
  set lastReviserId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastReviserId() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastReviserId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get lastRevisionDatetime => $_getSZ(12);
  @$pb.TagNumber(13)
  set lastRevisionDatetime($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastRevisionDatetime() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastRevisionDatetime() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get stateCode => $_getSZ(13);
  @$pb.TagNumber(14)
  set stateCode($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStateCode() => $_has(13);
  @$pb.TagNumber(14)
  void clearStateCode() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get serverLastRevisionDatetime => $_getSZ(14);
  @$pb.TagNumber(15)
  set serverLastRevisionDatetime($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasServerLastRevisionDatetime() => $_has(14);
  @$pb.TagNumber(15)
  void clearServerLastRevisionDatetime() => clearField(15);
}

class TemplateItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemplateItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'templateItemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'template')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cut')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isListType')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  TemplateItem._() : super();
  factory TemplateItem({
    $core.String? templateItemId,
    $core.String? name,
    $core.String? template,
    $core.String? cut,
    $core.String? isListType,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (templateItemId != null) {
      _result.templateItemId = templateItemId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (template != null) {
      _result.template = template;
    }
    if (cut != null) {
      _result.cut = cut;
    }
    if (isListType != null) {
      _result.isListType = isListType;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory TemplateItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TemplateItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TemplateItem clone() => TemplateItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TemplateItem copyWith(void Function(TemplateItem) updates) => super.copyWith((message) => updates(message as TemplateItem)) as TemplateItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemplateItem create() => TemplateItem._();
  TemplateItem createEmptyInstance() => create();
  static $pb.PbList<TemplateItem> createRepeated() => $pb.PbList<TemplateItem>();
  @$core.pragma('dart2js:noInline')
  static TemplateItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemplateItem>(create);
  static TemplateItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get templateItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set templateItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemplateItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplateItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get template => $_getSZ(2);
  @$pb.TagNumber(3)
  set template($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTemplate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cut => $_getSZ(3);
  @$pb.TagNumber(4)
  set cut($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCut() => $_has(3);
  @$pb.TagNumber(4)
  void clearCut() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get isListType => $_getSZ(4);
  @$pb.TagNumber(5)
  set isListType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsListType() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsListType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstRegistrantId => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstRegistrantId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstRegistrantId() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstRegistrantId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstRegistrationDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstRegistrationDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstRegistrationDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstRegistrationDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastReviserId => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastReviserId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastReviserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastReviserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastRevisionDatetime => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastRevisionDatetime($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastRevisionDatetime() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastRevisionDatetime() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get stateCode => $_getSZ(9);
  @$pb.TagNumber(10)
  set stateCode($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStateCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearStateCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get serverLastRevisionDatetime => $_getSZ(10);
  @$pb.TagNumber(11)
  set serverLastRevisionDatetime($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasServerLastRevisionDatetime() => $_has(10);
  @$pb.TagNumber(11)
  void clearServerLastRevisionDatetime() => clearField(11);
}

class StorePlace extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StorePlace', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storePlaceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDefault')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeShortName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeDesc')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeAddress1')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeAddress2')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeTel')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeTimezone')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useDst')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  StorePlace._() : super();
  factory StorePlace({
    $core.String? storePlaceId,
    $core.String? storeId,
    $core.String? placeType,
    $core.String? isDefault,
    $core.String? placeName,
    $core.String? placeShortName,
    $core.String? placeDesc,
    $core.String? placeAddress1,
    $core.String? placeAddress2,
    $core.String? employeeId,
    $core.String? placeTel,
    $core.String? placeTimezone,
    $core.String? useDst,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (storePlaceId != null) {
      _result.storePlaceId = storePlaceId;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (placeType != null) {
      _result.placeType = placeType;
    }
    if (isDefault != null) {
      _result.isDefault = isDefault;
    }
    if (placeName != null) {
      _result.placeName = placeName;
    }
    if (placeShortName != null) {
      _result.placeShortName = placeShortName;
    }
    if (placeDesc != null) {
      _result.placeDesc = placeDesc;
    }
    if (placeAddress1 != null) {
      _result.placeAddress1 = placeAddress1;
    }
    if (placeAddress2 != null) {
      _result.placeAddress2 = placeAddress2;
    }
    if (employeeId != null) {
      _result.employeeId = employeeId;
    }
    if (placeTel != null) {
      _result.placeTel = placeTel;
    }
    if (placeTimezone != null) {
      _result.placeTimezone = placeTimezone;
    }
    if (useDst != null) {
      _result.useDst = useDst;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory StorePlace.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorePlace.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorePlace clone() => StorePlace()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorePlace copyWith(void Function(StorePlace) updates) => super.copyWith((message) => updates(message as StorePlace)) as StorePlace; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StorePlace create() => StorePlace._();
  StorePlace createEmptyInstance() => create();
  static $pb.PbList<StorePlace> createRepeated() => $pb.PbList<StorePlace>();
  @$core.pragma('dart2js:noInline')
  static StorePlace getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorePlace>(create);
  static StorePlace? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storePlaceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storePlaceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStorePlaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStorePlaceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get placeType => $_getSZ(2);
  @$pb.TagNumber(3)
  set placeType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlaceType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlaceType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get isDefault => $_getSZ(3);
  @$pb.TagNumber(4)
  set isDefault($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsDefault() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsDefault() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get placeName => $_getSZ(4);
  @$pb.TagNumber(5)
  set placeName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPlaceName() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlaceName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get placeShortName => $_getSZ(5);
  @$pb.TagNumber(6)
  set placeShortName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlaceShortName() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlaceShortName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get placeDesc => $_getSZ(6);
  @$pb.TagNumber(7)
  set placeDesc($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlaceDesc() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlaceDesc() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get placeAddress1 => $_getSZ(7);
  @$pb.TagNumber(8)
  set placeAddress1($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPlaceAddress1() => $_has(7);
  @$pb.TagNumber(8)
  void clearPlaceAddress1() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get placeAddress2 => $_getSZ(8);
  @$pb.TagNumber(9)
  set placeAddress2($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPlaceAddress2() => $_has(8);
  @$pb.TagNumber(9)
  void clearPlaceAddress2() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get employeeId => $_getSZ(9);
  @$pb.TagNumber(10)
  set employeeId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEmployeeId() => $_has(9);
  @$pb.TagNumber(10)
  void clearEmployeeId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get placeTel => $_getSZ(10);
  @$pb.TagNumber(11)
  set placeTel($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPlaceTel() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlaceTel() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get placeTimezone => $_getSZ(11);
  @$pb.TagNumber(12)
  set placeTimezone($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPlaceTimezone() => $_has(11);
  @$pb.TagNumber(12)
  void clearPlaceTimezone() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get useDst => $_getSZ(12);
  @$pb.TagNumber(13)
  set useDst($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUseDst() => $_has(12);
  @$pb.TagNumber(13)
  void clearUseDst() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrantId => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrantId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrantId() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrantId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get firstRegistrationDatetime => $_getSZ(14);
  @$pb.TagNumber(15)
  set firstRegistrationDatetime($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFirstRegistrationDatetime() => $_has(14);
  @$pb.TagNumber(15)
  void clearFirstRegistrationDatetime() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastReviserId => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastReviserId($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastReviserId() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastReviserId() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get lastRevisionDatetime => $_getSZ(16);
  @$pb.TagNumber(17)
  set lastRevisionDatetime($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLastRevisionDatetime() => $_has(16);
  @$pb.TagNumber(17)
  void clearLastRevisionDatetime() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get stateCode => $_getSZ(17);
  @$pb.TagNumber(18)
  set stateCode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasStateCode() => $_has(17);
  @$pb.TagNumber(18)
  void clearStateCode() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get serverLastRevisionDatetime => $_getSZ(18);
  @$pb.TagNumber(19)
  set serverLastRevisionDatetime($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasServerLastRevisionDatetime() => $_has(18);
  @$pb.TagNumber(19)
  void clearServerLastRevisionDatetime() => clearField(19);
}

class SalesHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleSerialNumber', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderLink')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessSectionCode')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount0', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount1', $pb.PbFieldType.OD)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount2', $pb.PbFieldType.OD)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAmount', $pb.PbFieldType.OD)
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxFreeYn')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxFreeReason')
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipTaxAmount', $pb.PbFieldType.OD)
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'servingEmployeeId')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderEmployeeId')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelLink')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelReason')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelTypeCode')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelEmployeeId')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeBusinessTypeCode')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..aOB(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffBankYn')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOS(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..a<$core.int>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemSerialNumber', $pb.PbFieldType.O3)
    ..aOS(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data0')
    ..aOS(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..aOS(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data4')
    ..aOS(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data5')
    ..aOS(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data6')
    ..aOS(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data7')
    ..aOS(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data8')
    ..aOS(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data9')
    ..aOS(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data10')
    ..hasRequiredFields = false
  ;

  SalesHistory._() : super();
  factory SalesHistory({
    $core.String? commonDate,
    $core.int? saleSerialNumber,
    $core.String? tableId,
    $core.String? orderLink,
    $core.String? businessSectionCode,
    $core.double? supplyValue,
    $core.double? supplyAmount,
    $core.double? taxAmount0,
    $core.double? taxAmount1,
    $core.double? taxAmount2,
    $core.double? discountTotalAmount,
    $core.double? totalAmount,
    $core.bool? taxFreeYn,
    $core.String? taxFreeReason,
    $core.double? tipTotalAmount,
    $core.double? preTipTotalAmount,
    $core.double? preTipAmount,
    $core.double? preTipTaxAmount,
    $core.double? paymentTipTotalAmount,
    $core.double? paymentTipAmount,
    $core.double? paymentTipTaxAmount,
    $core.String? servingEmployeeId,
    $core.String? orderEmployeeId,
    $core.String? cancelLink,
    $core.String? cancelReason,
    $core.String? cancelTypeCode,
    $core.String? cancelEmployeeId,
    $core.String? closeBusinessTypeCode,
    $core.String? memo,
    $core.bool? staffBankYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? operationTypeCode,
    $core.String? serverLastRevisionDatetime,
    $core.int? salesAccountSerialNumber,
    $core.int? itemSerialNumber,
    $core.String? data0,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
    $core.String? data4,
    $core.String? data5,
    $core.String? data6,
    $core.String? data7,
    $core.String? data8,
    $core.String? data9,
    $core.String? data10,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (saleSerialNumber != null) {
      _result.saleSerialNumber = saleSerialNumber;
    }
    if (tableId != null) {
      _result.tableId = tableId;
    }
    if (orderLink != null) {
      _result.orderLink = orderLink;
    }
    if (businessSectionCode != null) {
      _result.businessSectionCode = businessSectionCode;
    }
    if (supplyValue != null) {
      _result.supplyValue = supplyValue;
    }
    if (supplyAmount != null) {
      _result.supplyAmount = supplyAmount;
    }
    if (taxAmount0 != null) {
      _result.taxAmount0 = taxAmount0;
    }
    if (taxAmount1 != null) {
      _result.taxAmount1 = taxAmount1;
    }
    if (taxAmount2 != null) {
      _result.taxAmount2 = taxAmount2;
    }
    if (discountTotalAmount != null) {
      _result.discountTotalAmount = discountTotalAmount;
    }
    if (totalAmount != null) {
      _result.totalAmount = totalAmount;
    }
    if (taxFreeYn != null) {
      _result.taxFreeYn = taxFreeYn;
    }
    if (taxFreeReason != null) {
      _result.taxFreeReason = taxFreeReason;
    }
    if (tipTotalAmount != null) {
      _result.tipTotalAmount = tipTotalAmount;
    }
    if (preTipTotalAmount != null) {
      _result.preTipTotalAmount = preTipTotalAmount;
    }
    if (preTipAmount != null) {
      _result.preTipAmount = preTipAmount;
    }
    if (preTipTaxAmount != null) {
      _result.preTipTaxAmount = preTipTaxAmount;
    }
    if (paymentTipTotalAmount != null) {
      _result.paymentTipTotalAmount = paymentTipTotalAmount;
    }
    if (paymentTipAmount != null) {
      _result.paymentTipAmount = paymentTipAmount;
    }
    if (paymentTipTaxAmount != null) {
      _result.paymentTipTaxAmount = paymentTipTaxAmount;
    }
    if (servingEmployeeId != null) {
      _result.servingEmployeeId = servingEmployeeId;
    }
    if (orderEmployeeId != null) {
      _result.orderEmployeeId = orderEmployeeId;
    }
    if (cancelLink != null) {
      _result.cancelLink = cancelLink;
    }
    if (cancelReason != null) {
      _result.cancelReason = cancelReason;
    }
    if (cancelTypeCode != null) {
      _result.cancelTypeCode = cancelTypeCode;
    }
    if (cancelEmployeeId != null) {
      _result.cancelEmployeeId = cancelEmployeeId;
    }
    if (closeBusinessTypeCode != null) {
      _result.closeBusinessTypeCode = closeBusinessTypeCode;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    if (staffBankYn != null) {
      _result.staffBankYn = staffBankYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    if (salesAccountSerialNumber != null) {
      _result.salesAccountSerialNumber = salesAccountSerialNumber;
    }
    if (itemSerialNumber != null) {
      _result.itemSerialNumber = itemSerialNumber;
    }
    if (data0 != null) {
      _result.data0 = data0;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    if (data4 != null) {
      _result.data4 = data4;
    }
    if (data5 != null) {
      _result.data5 = data5;
    }
    if (data6 != null) {
      _result.data6 = data6;
    }
    if (data7 != null) {
      _result.data7 = data7;
    }
    if (data8 != null) {
      _result.data8 = data8;
    }
    if (data9 != null) {
      _result.data9 = data9;
    }
    if (data10 != null) {
      _result.data10 = data10;
    }
    return _result;
  }
  factory SalesHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesHistory clone() => SalesHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesHistory copyWith(void Function(SalesHistory) updates) => super.copyWith((message) => updates(message as SalesHistory)) as SalesHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesHistory create() => SalesHistory._();
  SalesHistory createEmptyInstance() => create();
  static $pb.PbList<SalesHistory> createRepeated() => $pb.PbList<SalesHistory>();
  @$core.pragma('dart2js:noInline')
  static SalesHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesHistory>(create);
  static SalesHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get saleSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set saleSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaleSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaleSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tableId => $_getSZ(2);
  @$pb.TagNumber(3)
  set tableId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTableId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTableId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get orderLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set orderLink($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrderLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrderLink() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get businessSectionCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set businessSectionCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBusinessSectionCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBusinessSectionCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get supplyValue => $_getN(5);
  @$pb.TagNumber(6)
  set supplyValue($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSupplyValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupplyValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get supplyAmount => $_getN(6);
  @$pb.TagNumber(7)
  set supplyAmount($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSupplyAmount() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupplyAmount() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get taxAmount0 => $_getN(7);
  @$pb.TagNumber(8)
  set taxAmount0($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTaxAmount0() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaxAmount0() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get taxAmount1 => $_getN(8);
  @$pb.TagNumber(9)
  set taxAmount1($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTaxAmount1() => $_has(8);
  @$pb.TagNumber(9)
  void clearTaxAmount1() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get taxAmount2 => $_getN(9);
  @$pb.TagNumber(10)
  set taxAmount2($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTaxAmount2() => $_has(9);
  @$pb.TagNumber(10)
  void clearTaxAmount2() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get discountTotalAmount => $_getN(10);
  @$pb.TagNumber(11)
  set discountTotalAmount($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDiscountTotalAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearDiscountTotalAmount() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get totalAmount => $_getN(11);
  @$pb.TagNumber(12)
  set totalAmount($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTotalAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalAmount() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get taxFreeYn => $_getBF(12);
  @$pb.TagNumber(13)
  set taxFreeYn($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTaxFreeYn() => $_has(12);
  @$pb.TagNumber(13)
  void clearTaxFreeYn() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get taxFreeReason => $_getSZ(13);
  @$pb.TagNumber(14)
  set taxFreeReason($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTaxFreeReason() => $_has(13);
  @$pb.TagNumber(14)
  void clearTaxFreeReason() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get tipTotalAmount => $_getN(14);
  @$pb.TagNumber(15)
  set tipTotalAmount($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasTipTotalAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearTipTotalAmount() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get preTipTotalAmount => $_getN(15);
  @$pb.TagNumber(16)
  set preTipTotalAmount($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasPreTipTotalAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearPreTipTotalAmount() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get preTipAmount => $_getN(16);
  @$pb.TagNumber(17)
  set preTipAmount($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPreTipAmount() => $_has(16);
  @$pb.TagNumber(17)
  void clearPreTipAmount() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get preTipTaxAmount => $_getN(17);
  @$pb.TagNumber(18)
  set preTipTaxAmount($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasPreTipTaxAmount() => $_has(17);
  @$pb.TagNumber(18)
  void clearPreTipTaxAmount() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get paymentTipTotalAmount => $_getN(18);
  @$pb.TagNumber(19)
  set paymentTipTotalAmount($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasPaymentTipTotalAmount() => $_has(18);
  @$pb.TagNumber(19)
  void clearPaymentTipTotalAmount() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get paymentTipAmount => $_getN(19);
  @$pb.TagNumber(20)
  set paymentTipAmount($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPaymentTipAmount() => $_has(19);
  @$pb.TagNumber(20)
  void clearPaymentTipAmount() => clearField(20);

  @$pb.TagNumber(21)
  $core.double get paymentTipTaxAmount => $_getN(20);
  @$pb.TagNumber(21)
  set paymentTipTaxAmount($core.double v) { $_setDouble(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasPaymentTipTaxAmount() => $_has(20);
  @$pb.TagNumber(21)
  void clearPaymentTipTaxAmount() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get servingEmployeeId => $_getSZ(21);
  @$pb.TagNumber(22)
  set servingEmployeeId($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasServingEmployeeId() => $_has(21);
  @$pb.TagNumber(22)
  void clearServingEmployeeId() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get orderEmployeeId => $_getSZ(22);
  @$pb.TagNumber(23)
  set orderEmployeeId($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasOrderEmployeeId() => $_has(22);
  @$pb.TagNumber(23)
  void clearOrderEmployeeId() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get cancelLink => $_getSZ(23);
  @$pb.TagNumber(24)
  set cancelLink($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasCancelLink() => $_has(23);
  @$pb.TagNumber(24)
  void clearCancelLink() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get cancelReason => $_getSZ(24);
  @$pb.TagNumber(25)
  set cancelReason($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasCancelReason() => $_has(24);
  @$pb.TagNumber(25)
  void clearCancelReason() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get cancelTypeCode => $_getSZ(25);
  @$pb.TagNumber(26)
  set cancelTypeCode($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasCancelTypeCode() => $_has(25);
  @$pb.TagNumber(26)
  void clearCancelTypeCode() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get cancelEmployeeId => $_getSZ(26);
  @$pb.TagNumber(27)
  set cancelEmployeeId($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasCancelEmployeeId() => $_has(26);
  @$pb.TagNumber(27)
  void clearCancelEmployeeId() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get closeBusinessTypeCode => $_getSZ(27);
  @$pb.TagNumber(28)
  set closeBusinessTypeCode($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasCloseBusinessTypeCode() => $_has(27);
  @$pb.TagNumber(28)
  void clearCloseBusinessTypeCode() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get memo => $_getSZ(28);
  @$pb.TagNumber(29)
  set memo($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasMemo() => $_has(28);
  @$pb.TagNumber(29)
  void clearMemo() => clearField(29);

  @$pb.TagNumber(30)
  $core.bool get staffBankYn => $_getBF(29);
  @$pb.TagNumber(30)
  set staffBankYn($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasStaffBankYn() => $_has(29);
  @$pb.TagNumber(30)
  void clearStaffBankYn() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get firstRegistrantId => $_getSZ(30);
  @$pb.TagNumber(31)
  set firstRegistrantId($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasFirstRegistrantId() => $_has(30);
  @$pb.TagNumber(31)
  void clearFirstRegistrantId() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get firstRegistrationDatetime => $_getSZ(31);
  @$pb.TagNumber(32)
  set firstRegistrationDatetime($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasFirstRegistrationDatetime() => $_has(31);
  @$pb.TagNumber(32)
  void clearFirstRegistrationDatetime() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get lastReviserId => $_getSZ(32);
  @$pb.TagNumber(33)
  set lastReviserId($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasLastReviserId() => $_has(32);
  @$pb.TagNumber(33)
  void clearLastReviserId() => clearField(33);

  @$pb.TagNumber(34)
  $core.String get lastRevisionDatetime => $_getSZ(33);
  @$pb.TagNumber(34)
  set lastRevisionDatetime($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasLastRevisionDatetime() => $_has(33);
  @$pb.TagNumber(34)
  void clearLastRevisionDatetime() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get stateCode => $_getSZ(34);
  @$pb.TagNumber(35)
  set stateCode($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasStateCode() => $_has(34);
  @$pb.TagNumber(35)
  void clearStateCode() => clearField(35);

  @$pb.TagNumber(36)
  $core.String get operationTypeCode => $_getSZ(35);
  @$pb.TagNumber(36)
  set operationTypeCode($core.String v) { $_setString(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasOperationTypeCode() => $_has(35);
  @$pb.TagNumber(36)
  void clearOperationTypeCode() => clearField(36);

  @$pb.TagNumber(37)
  $core.String get serverLastRevisionDatetime => $_getSZ(36);
  @$pb.TagNumber(37)
  set serverLastRevisionDatetime($core.String v) { $_setString(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasServerLastRevisionDatetime() => $_has(36);
  @$pb.TagNumber(37)
  void clearServerLastRevisionDatetime() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get salesAccountSerialNumber => $_getIZ(37);
  @$pb.TagNumber(38)
  set salesAccountSerialNumber($core.int v) { $_setSignedInt32(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasSalesAccountSerialNumber() => $_has(37);
  @$pb.TagNumber(38)
  void clearSalesAccountSerialNumber() => clearField(38);

  @$pb.TagNumber(39)
  $core.int get itemSerialNumber => $_getIZ(38);
  @$pb.TagNumber(39)
  set itemSerialNumber($core.int v) { $_setSignedInt32(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasItemSerialNumber() => $_has(38);
  @$pb.TagNumber(39)
  void clearItemSerialNumber() => clearField(39);

  @$pb.TagNumber(40)
  $core.String get data0 => $_getSZ(39);
  @$pb.TagNumber(40)
  set data0($core.String v) { $_setString(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasData0() => $_has(39);
  @$pb.TagNumber(40)
  void clearData0() => clearField(40);

  @$pb.TagNumber(41)
  $core.String get data1 => $_getSZ(40);
  @$pb.TagNumber(41)
  set data1($core.String v) { $_setString(40, v); }
  @$pb.TagNumber(41)
  $core.bool hasData1() => $_has(40);
  @$pb.TagNumber(41)
  void clearData1() => clearField(41);

  @$pb.TagNumber(42)
  $core.String get data2 => $_getSZ(41);
  @$pb.TagNumber(42)
  set data2($core.String v) { $_setString(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasData2() => $_has(41);
  @$pb.TagNumber(42)
  void clearData2() => clearField(42);

  @$pb.TagNumber(43)
  $core.String get data3 => $_getSZ(42);
  @$pb.TagNumber(43)
  set data3($core.String v) { $_setString(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasData3() => $_has(42);
  @$pb.TagNumber(43)
  void clearData3() => clearField(43);

  @$pb.TagNumber(44)
  $core.String get data4 => $_getSZ(43);
  @$pb.TagNumber(44)
  set data4($core.String v) { $_setString(43, v); }
  @$pb.TagNumber(44)
  $core.bool hasData4() => $_has(43);
  @$pb.TagNumber(44)
  void clearData4() => clearField(44);

  @$pb.TagNumber(45)
  $core.String get data5 => $_getSZ(44);
  @$pb.TagNumber(45)
  set data5($core.String v) { $_setString(44, v); }
  @$pb.TagNumber(45)
  $core.bool hasData5() => $_has(44);
  @$pb.TagNumber(45)
  void clearData5() => clearField(45);

  @$pb.TagNumber(46)
  $core.String get data6 => $_getSZ(45);
  @$pb.TagNumber(46)
  set data6($core.String v) { $_setString(45, v); }
  @$pb.TagNumber(46)
  $core.bool hasData6() => $_has(45);
  @$pb.TagNumber(46)
  void clearData6() => clearField(46);

  @$pb.TagNumber(47)
  $core.String get data7 => $_getSZ(46);
  @$pb.TagNumber(47)
  set data7($core.String v) { $_setString(46, v); }
  @$pb.TagNumber(47)
  $core.bool hasData7() => $_has(46);
  @$pb.TagNumber(47)
  void clearData7() => clearField(47);

  @$pb.TagNumber(48)
  $core.String get data8 => $_getSZ(47);
  @$pb.TagNumber(48)
  set data8($core.String v) { $_setString(47, v); }
  @$pb.TagNumber(48)
  $core.bool hasData8() => $_has(47);
  @$pb.TagNumber(48)
  void clearData8() => clearField(48);

  @$pb.TagNumber(49)
  $core.String get data9 => $_getSZ(48);
  @$pb.TagNumber(49)
  set data9($core.String v) { $_setString(48, v); }
  @$pb.TagNumber(49)
  $core.bool hasData9() => $_has(48);
  @$pb.TagNumber(49)
  void clearData9() => clearField(49);

  @$pb.TagNumber(50)
  $core.String get data10 => $_getSZ(49);
  @$pb.TagNumber(50)
  set data10($core.String v) { $_setString(49, v); }
  @$pb.TagNumber(50)
  $core.bool hasData10() => $_has(49);
  @$pb.TagNumber(50)
  void clearData10() => clearField(50);
}

class SalesHistoryItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesHistoryItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount0', $pb.PbFieldType.OD)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount1', $pb.PbFieldType.OD)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount2', $pb.PbFieldType.OD)
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountSectionCode')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTypeCode')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderDiscountAmount', $pb.PbFieldType.OD)
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelSerialNumber', $pb.PbFieldType.O3)
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelReason')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelEmployeeId')
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuPaymentSerialNumber', $pb.PbFieldType.O3)
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..a<$core.int>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upperItemSerialNumber', $pb.PbFieldType.O3)
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderOptionCode')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackingInfo')
    ..hasRequiredFields = false
  ;

  SalesHistoryItem._() : super();
  factory SalesHistoryItem({
    $core.String? commonDate,
    $core.int? saleSerialNumber,
    $core.int? itemSerialNumber,
    $core.String? itemId,
    $core.double? quantity,
    $core.double? price,
    $core.double? supplyValue,
    $core.double? supplyAmount,
    $core.double? taxAmount0,
    $core.double? taxAmount1,
    $core.double? taxAmount2,
    $core.String? discountSectionCode,
    $core.String? discountTypeCode,
    $core.double? discountAmount,
    $core.double? orderDiscountAmount,
    $core.int? cancelSerialNumber,
    $core.String? cancelReason,
    $core.String? cancelEmployeeId,
    $core.int? menuPaymentSerialNumber,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.int? upperItemSerialNumber,
    $core.String? orderOptionCode,
    $core.String? serverLastRevisionDatetime,
    $core.String? trackingInfo,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (saleSerialNumber != null) {
      _result.saleSerialNumber = saleSerialNumber;
    }
    if (itemSerialNumber != null) {
      _result.itemSerialNumber = itemSerialNumber;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (price != null) {
      _result.price = price;
    }
    if (supplyValue != null) {
      _result.supplyValue = supplyValue;
    }
    if (supplyAmount != null) {
      _result.supplyAmount = supplyAmount;
    }
    if (taxAmount0 != null) {
      _result.taxAmount0 = taxAmount0;
    }
    if (taxAmount1 != null) {
      _result.taxAmount1 = taxAmount1;
    }
    if (taxAmount2 != null) {
      _result.taxAmount2 = taxAmount2;
    }
    if (discountSectionCode != null) {
      _result.discountSectionCode = discountSectionCode;
    }
    if (discountTypeCode != null) {
      _result.discountTypeCode = discountTypeCode;
    }
    if (discountAmount != null) {
      _result.discountAmount = discountAmount;
    }
    if (orderDiscountAmount != null) {
      _result.orderDiscountAmount = orderDiscountAmount;
    }
    if (cancelSerialNumber != null) {
      _result.cancelSerialNumber = cancelSerialNumber;
    }
    if (cancelReason != null) {
      _result.cancelReason = cancelReason;
    }
    if (cancelEmployeeId != null) {
      _result.cancelEmployeeId = cancelEmployeeId;
    }
    if (menuPaymentSerialNumber != null) {
      _result.menuPaymentSerialNumber = menuPaymentSerialNumber;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (upperItemSerialNumber != null) {
      _result.upperItemSerialNumber = upperItemSerialNumber;
    }
    if (orderOptionCode != null) {
      _result.orderOptionCode = orderOptionCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    if (trackingInfo != null) {
      _result.trackingInfo = trackingInfo;
    }
    return _result;
  }
  factory SalesHistoryItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesHistoryItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesHistoryItem clone() => SalesHistoryItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesHistoryItem copyWith(void Function(SalesHistoryItem) updates) => super.copyWith((message) => updates(message as SalesHistoryItem)) as SalesHistoryItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesHistoryItem create() => SalesHistoryItem._();
  SalesHistoryItem createEmptyInstance() => create();
  static $pb.PbList<SalesHistoryItem> createRepeated() => $pb.PbList<SalesHistoryItem>();
  @$core.pragma('dart2js:noInline')
  static SalesHistoryItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesHistoryItem>(create);
  static SalesHistoryItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get saleSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set saleSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaleSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaleSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get itemId => $_getSZ(3);
  @$pb.TagNumber(4)
  set itemId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItemId() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemId() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get quantity => $_getN(4);
  @$pb.TagNumber(5)
  set quantity($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasQuantity() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuantity() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get price => $_getN(5);
  @$pb.TagNumber(6)
  set price($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get supplyValue => $_getN(6);
  @$pb.TagNumber(7)
  set supplyValue($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSupplyValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupplyValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get supplyAmount => $_getN(7);
  @$pb.TagNumber(8)
  set supplyAmount($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSupplyAmount() => $_has(7);
  @$pb.TagNumber(8)
  void clearSupplyAmount() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get taxAmount0 => $_getN(8);
  @$pb.TagNumber(9)
  set taxAmount0($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTaxAmount0() => $_has(8);
  @$pb.TagNumber(9)
  void clearTaxAmount0() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get taxAmount1 => $_getN(9);
  @$pb.TagNumber(10)
  set taxAmount1($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTaxAmount1() => $_has(9);
  @$pb.TagNumber(10)
  void clearTaxAmount1() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get taxAmount2 => $_getN(10);
  @$pb.TagNumber(11)
  set taxAmount2($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTaxAmount2() => $_has(10);
  @$pb.TagNumber(11)
  void clearTaxAmount2() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get discountSectionCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set discountSectionCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDiscountSectionCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearDiscountSectionCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get discountTypeCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set discountTypeCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDiscountTypeCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearDiscountTypeCode() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get discountAmount => $_getN(13);
  @$pb.TagNumber(14)
  set discountAmount($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDiscountAmount() => $_has(13);
  @$pb.TagNumber(14)
  void clearDiscountAmount() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get orderDiscountAmount => $_getN(14);
  @$pb.TagNumber(15)
  set orderDiscountAmount($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasOrderDiscountAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearOrderDiscountAmount() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get cancelSerialNumber => $_getIZ(15);
  @$pb.TagNumber(16)
  set cancelSerialNumber($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCancelSerialNumber() => $_has(15);
  @$pb.TagNumber(16)
  void clearCancelSerialNumber() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get cancelReason => $_getSZ(16);
  @$pb.TagNumber(17)
  set cancelReason($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasCancelReason() => $_has(16);
  @$pb.TagNumber(17)
  void clearCancelReason() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get cancelEmployeeId => $_getSZ(17);
  @$pb.TagNumber(18)
  set cancelEmployeeId($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasCancelEmployeeId() => $_has(17);
  @$pb.TagNumber(18)
  void clearCancelEmployeeId() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get menuPaymentSerialNumber => $_getIZ(18);
  @$pb.TagNumber(19)
  set menuPaymentSerialNumber($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasMenuPaymentSerialNumber() => $_has(18);
  @$pb.TagNumber(19)
  void clearMenuPaymentSerialNumber() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get firstRegistrantId => $_getSZ(19);
  @$pb.TagNumber(20)
  set firstRegistrantId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasFirstRegistrantId() => $_has(19);
  @$pb.TagNumber(20)
  void clearFirstRegistrantId() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get firstRegistrationDatetime => $_getSZ(20);
  @$pb.TagNumber(21)
  set firstRegistrationDatetime($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasFirstRegistrationDatetime() => $_has(20);
  @$pb.TagNumber(21)
  void clearFirstRegistrationDatetime() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get lastReviserId => $_getSZ(21);
  @$pb.TagNumber(22)
  set lastReviserId($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasLastReviserId() => $_has(21);
  @$pb.TagNumber(22)
  void clearLastReviserId() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get lastRevisionDatetime => $_getSZ(22);
  @$pb.TagNumber(23)
  set lastRevisionDatetime($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasLastRevisionDatetime() => $_has(22);
  @$pb.TagNumber(23)
  void clearLastRevisionDatetime() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get stateCode => $_getSZ(23);
  @$pb.TagNumber(24)
  set stateCode($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasStateCode() => $_has(23);
  @$pb.TagNumber(24)
  void clearStateCode() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get upperItemSerialNumber => $_getIZ(24);
  @$pb.TagNumber(25)
  set upperItemSerialNumber($core.int v) { $_setSignedInt32(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasUpperItemSerialNumber() => $_has(24);
  @$pb.TagNumber(25)
  void clearUpperItemSerialNumber() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get orderOptionCode => $_getSZ(25);
  @$pb.TagNumber(26)
  set orderOptionCode($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasOrderOptionCode() => $_has(25);
  @$pb.TagNumber(26)
  void clearOrderOptionCode() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get serverLastRevisionDatetime => $_getSZ(26);
  @$pb.TagNumber(27)
  set serverLastRevisionDatetime($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasServerLastRevisionDatetime() => $_has(26);
  @$pb.TagNumber(27)
  void clearServerLastRevisionDatetime() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get trackingInfo => $_getSZ(27);
  @$pb.TagNumber(28)
  set trackingInfo($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasTrackingInfo() => $_has(27);
  @$pb.TagNumber(28)
  void clearTrackingInfo() => clearField(28);
}

class SalesAccountHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesAccountHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawSectionCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentSectionCode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashReceiptIdentifyTypeCode')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashReceiptIdentifyNumber')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalTypeCode')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashReceiptTypeCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentApprovalNumber')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalDate')
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount1', $pb.PbFieldType.OD)
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount2', $pb.PbFieldType.OD)
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryDate')
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installmentMonth', $pb.PbFieldType.O3)
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardName')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardCompanySectionCode')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardCompanyName')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardCompanyAffiliateNumber')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardPurchaseCompanyCode')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardPurchaseCompanyName')
    ..aOB(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardSwipYn')
    ..a<$core.double>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAmount', $pb.PbFieldType.OD)
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelSerialNumber')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelEmployeeId')
    ..aOB(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completeSettlementYn')
    ..aOS(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiptNumber')
    ..aOS(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentOption')
    ..a<$core.double>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuDiscountAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderDiscountAmount', $pb.PbFieldType.OD)
    ..aOS(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalDatePrimaryPattern')
    ..aOS(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionTypeCode')
    ..aOB(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleTransmitYn')
    ..aOS(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOB(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notInSalesYn')
    ..a<$core.double>(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'takenAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeAmount', $pb.PbFieldType.OD)
    ..aOS(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..aOS(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentMethodCode')
    ..aOS(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalTransactionNo')
    ..hasRequiredFields = false
  ;

  SalesAccountHistory._() : super();
  factory SalesAccountHistory({
    $core.String? commonDate,
    $core.int? saleSerialNumber,
    $core.int? salesAccountSerialNumber,
    $core.String? cashdrawSectionCode,
    $core.String? paymentSectionCode,
    $core.String? cashReceiptIdentifyTypeCode,
    $core.String? cashReceiptIdentifyNumber,
    $core.String? approvalTypeCode,
    $core.String? cashReceiptTypeCode,
    $core.String? paymentApprovalNumber,
    $core.String? approvalDate,
    $core.double? supplyValue,
    $core.double? taxAmount,
    $core.double? taxAmount1,
    $core.double? taxAmount2,
    $core.String? expiryDate,
    $core.int? installmentMonth,
    $core.String? cardName,
    $core.String? cardCompanySectionCode,
    $core.String? cardCompanyName,
    $core.String? cardCompanyAffiliateNumber,
    $core.String? cardPurchaseCompanyCode,
    $core.String? cardPurchaseCompanyName,
    $core.bool? cardSwipYn,
    $core.double? preTipTotalAmount,
    $core.double? preTipAmount,
    $core.double? preTipTaxAmount,
    $core.double? paymentTipTotalAmount,
    $core.double? paymentTipAmount,
    $core.double? paymentTipTaxAmount,
    $core.double? totalAmount,
    $core.String? cancelSerialNumber,
    $core.String? cancelEmployeeId,
    $core.bool? completeSettlementYn,
    $core.String? receiptNumber,
    $core.String? paymentOption,
    $core.double? menuDiscountAmount,
    $core.double? orderDiscountAmount,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? approvalDatePrimaryPattern,
    $core.String? transactionTypeCode,
    $core.bool? saleTransmitYn,
    $core.String? operationTypeCode,
    $core.bool? notInSalesYn,
    $core.double? takenAmount,
    $core.double? changeAmount,
    $core.String? serverLastRevisionDatetime,
    $core.String? paymentMethodCode,
    $core.String? approvalTransactionNo,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (saleSerialNumber != null) {
      _result.saleSerialNumber = saleSerialNumber;
    }
    if (salesAccountSerialNumber != null) {
      _result.salesAccountSerialNumber = salesAccountSerialNumber;
    }
    if (cashdrawSectionCode != null) {
      _result.cashdrawSectionCode = cashdrawSectionCode;
    }
    if (paymentSectionCode != null) {
      _result.paymentSectionCode = paymentSectionCode;
    }
    if (cashReceiptIdentifyTypeCode != null) {
      _result.cashReceiptIdentifyTypeCode = cashReceiptIdentifyTypeCode;
    }
    if (cashReceiptIdentifyNumber != null) {
      _result.cashReceiptIdentifyNumber = cashReceiptIdentifyNumber;
    }
    if (approvalTypeCode != null) {
      _result.approvalTypeCode = approvalTypeCode;
    }
    if (cashReceiptTypeCode != null) {
      _result.cashReceiptTypeCode = cashReceiptTypeCode;
    }
    if (paymentApprovalNumber != null) {
      _result.paymentApprovalNumber = paymentApprovalNumber;
    }
    if (approvalDate != null) {
      _result.approvalDate = approvalDate;
    }
    if (supplyValue != null) {
      _result.supplyValue = supplyValue;
    }
    if (taxAmount != null) {
      _result.taxAmount = taxAmount;
    }
    if (taxAmount1 != null) {
      _result.taxAmount1 = taxAmount1;
    }
    if (taxAmount2 != null) {
      _result.taxAmount2 = taxAmount2;
    }
    if (expiryDate != null) {
      _result.expiryDate = expiryDate;
    }
    if (installmentMonth != null) {
      _result.installmentMonth = installmentMonth;
    }
    if (cardName != null) {
      _result.cardName = cardName;
    }
    if (cardCompanySectionCode != null) {
      _result.cardCompanySectionCode = cardCompanySectionCode;
    }
    if (cardCompanyName != null) {
      _result.cardCompanyName = cardCompanyName;
    }
    if (cardCompanyAffiliateNumber != null) {
      _result.cardCompanyAffiliateNumber = cardCompanyAffiliateNumber;
    }
    if (cardPurchaseCompanyCode != null) {
      _result.cardPurchaseCompanyCode = cardPurchaseCompanyCode;
    }
    if (cardPurchaseCompanyName != null) {
      _result.cardPurchaseCompanyName = cardPurchaseCompanyName;
    }
    if (cardSwipYn != null) {
      _result.cardSwipYn = cardSwipYn;
    }
    if (preTipTotalAmount != null) {
      _result.preTipTotalAmount = preTipTotalAmount;
    }
    if (preTipAmount != null) {
      _result.preTipAmount = preTipAmount;
    }
    if (preTipTaxAmount != null) {
      _result.preTipTaxAmount = preTipTaxAmount;
    }
    if (paymentTipTotalAmount != null) {
      _result.paymentTipTotalAmount = paymentTipTotalAmount;
    }
    if (paymentTipAmount != null) {
      _result.paymentTipAmount = paymentTipAmount;
    }
    if (paymentTipTaxAmount != null) {
      _result.paymentTipTaxAmount = paymentTipTaxAmount;
    }
    if (totalAmount != null) {
      _result.totalAmount = totalAmount;
    }
    if (cancelSerialNumber != null) {
      _result.cancelSerialNumber = cancelSerialNumber;
    }
    if (cancelEmployeeId != null) {
      _result.cancelEmployeeId = cancelEmployeeId;
    }
    if (completeSettlementYn != null) {
      _result.completeSettlementYn = completeSettlementYn;
    }
    if (receiptNumber != null) {
      _result.receiptNumber = receiptNumber;
    }
    if (paymentOption != null) {
      _result.paymentOption = paymentOption;
    }
    if (menuDiscountAmount != null) {
      _result.menuDiscountAmount = menuDiscountAmount;
    }
    if (orderDiscountAmount != null) {
      _result.orderDiscountAmount = orderDiscountAmount;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (approvalDatePrimaryPattern != null) {
      _result.approvalDatePrimaryPattern = approvalDatePrimaryPattern;
    }
    if (transactionTypeCode != null) {
      _result.transactionTypeCode = transactionTypeCode;
    }
    if (saleTransmitYn != null) {
      _result.saleTransmitYn = saleTransmitYn;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (notInSalesYn != null) {
      _result.notInSalesYn = notInSalesYn;
    }
    if (takenAmount != null) {
      _result.takenAmount = takenAmount;
    }
    if (changeAmount != null) {
      _result.changeAmount = changeAmount;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    if (paymentMethodCode != null) {
      _result.paymentMethodCode = paymentMethodCode;
    }
    if (approvalTransactionNo != null) {
      _result.approvalTransactionNo = approvalTransactionNo;
    }
    return _result;
  }
  factory SalesAccountHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesAccountHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesAccountHistory clone() => SalesAccountHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesAccountHistory copyWith(void Function(SalesAccountHistory) updates) => super.copyWith((message) => updates(message as SalesAccountHistory)) as SalesAccountHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesAccountHistory create() => SalesAccountHistory._();
  SalesAccountHistory createEmptyInstance() => create();
  static $pb.PbList<SalesAccountHistory> createRepeated() => $pb.PbList<SalesAccountHistory>();
  @$core.pragma('dart2js:noInline')
  static SalesAccountHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesAccountHistory>(create);
  static SalesAccountHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get saleSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set saleSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaleSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaleSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get salesAccountSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set salesAccountSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSalesAccountSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSalesAccountSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cashdrawSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set cashdrawSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCashdrawSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCashdrawSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get paymentSectionCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set paymentSectionCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPaymentSectionCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaymentSectionCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get cashReceiptIdentifyTypeCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set cashReceiptIdentifyTypeCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCashReceiptIdentifyTypeCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearCashReceiptIdentifyTypeCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get cashReceiptIdentifyNumber => $_getSZ(6);
  @$pb.TagNumber(7)
  set cashReceiptIdentifyNumber($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCashReceiptIdentifyNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearCashReceiptIdentifyNumber() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get approvalTypeCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set approvalTypeCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasApprovalTypeCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearApprovalTypeCode() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get cashReceiptTypeCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set cashReceiptTypeCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCashReceiptTypeCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearCashReceiptTypeCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get paymentApprovalNumber => $_getSZ(9);
  @$pb.TagNumber(10)
  set paymentApprovalNumber($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPaymentApprovalNumber() => $_has(9);
  @$pb.TagNumber(10)
  void clearPaymentApprovalNumber() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get approvalDate => $_getSZ(10);
  @$pb.TagNumber(11)
  set approvalDate($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasApprovalDate() => $_has(10);
  @$pb.TagNumber(11)
  void clearApprovalDate() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get supplyValue => $_getN(11);
  @$pb.TagNumber(12)
  set supplyValue($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSupplyValue() => $_has(11);
  @$pb.TagNumber(12)
  void clearSupplyValue() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get taxAmount => $_getN(12);
  @$pb.TagNumber(13)
  set taxAmount($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTaxAmount() => $_has(12);
  @$pb.TagNumber(13)
  void clearTaxAmount() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get taxAmount1 => $_getN(13);
  @$pb.TagNumber(14)
  set taxAmount1($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTaxAmount1() => $_has(13);
  @$pb.TagNumber(14)
  void clearTaxAmount1() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get taxAmount2 => $_getN(14);
  @$pb.TagNumber(15)
  set taxAmount2($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasTaxAmount2() => $_has(14);
  @$pb.TagNumber(15)
  void clearTaxAmount2() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get expiryDate => $_getSZ(15);
  @$pb.TagNumber(16)
  set expiryDate($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasExpiryDate() => $_has(15);
  @$pb.TagNumber(16)
  void clearExpiryDate() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get installmentMonth => $_getIZ(16);
  @$pb.TagNumber(17)
  set installmentMonth($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasInstallmentMonth() => $_has(16);
  @$pb.TagNumber(17)
  void clearInstallmentMonth() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get cardName => $_getSZ(17);
  @$pb.TagNumber(18)
  set cardName($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasCardName() => $_has(17);
  @$pb.TagNumber(18)
  void clearCardName() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get cardCompanySectionCode => $_getSZ(18);
  @$pb.TagNumber(19)
  set cardCompanySectionCode($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasCardCompanySectionCode() => $_has(18);
  @$pb.TagNumber(19)
  void clearCardCompanySectionCode() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get cardCompanyName => $_getSZ(19);
  @$pb.TagNumber(20)
  set cardCompanyName($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasCardCompanyName() => $_has(19);
  @$pb.TagNumber(20)
  void clearCardCompanyName() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get cardCompanyAffiliateNumber => $_getSZ(20);
  @$pb.TagNumber(21)
  set cardCompanyAffiliateNumber($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasCardCompanyAffiliateNumber() => $_has(20);
  @$pb.TagNumber(21)
  void clearCardCompanyAffiliateNumber() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get cardPurchaseCompanyCode => $_getSZ(21);
  @$pb.TagNumber(22)
  set cardPurchaseCompanyCode($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasCardPurchaseCompanyCode() => $_has(21);
  @$pb.TagNumber(22)
  void clearCardPurchaseCompanyCode() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get cardPurchaseCompanyName => $_getSZ(22);
  @$pb.TagNumber(23)
  set cardPurchaseCompanyName($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasCardPurchaseCompanyName() => $_has(22);
  @$pb.TagNumber(23)
  void clearCardPurchaseCompanyName() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get cardSwipYn => $_getBF(23);
  @$pb.TagNumber(24)
  set cardSwipYn($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasCardSwipYn() => $_has(23);
  @$pb.TagNumber(24)
  void clearCardSwipYn() => clearField(24);

  @$pb.TagNumber(25)
  $core.double get preTipTotalAmount => $_getN(24);
  @$pb.TagNumber(25)
  set preTipTotalAmount($core.double v) { $_setDouble(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasPreTipTotalAmount() => $_has(24);
  @$pb.TagNumber(25)
  void clearPreTipTotalAmount() => clearField(25);

  @$pb.TagNumber(26)
  $core.double get preTipAmount => $_getN(25);
  @$pb.TagNumber(26)
  set preTipAmount($core.double v) { $_setDouble(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasPreTipAmount() => $_has(25);
  @$pb.TagNumber(26)
  void clearPreTipAmount() => clearField(26);

  @$pb.TagNumber(27)
  $core.double get preTipTaxAmount => $_getN(26);
  @$pb.TagNumber(27)
  set preTipTaxAmount($core.double v) { $_setDouble(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasPreTipTaxAmount() => $_has(26);
  @$pb.TagNumber(27)
  void clearPreTipTaxAmount() => clearField(27);

  @$pb.TagNumber(28)
  $core.double get paymentTipTotalAmount => $_getN(27);
  @$pb.TagNumber(28)
  set paymentTipTotalAmount($core.double v) { $_setDouble(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasPaymentTipTotalAmount() => $_has(27);
  @$pb.TagNumber(28)
  void clearPaymentTipTotalAmount() => clearField(28);

  @$pb.TagNumber(29)
  $core.double get paymentTipAmount => $_getN(28);
  @$pb.TagNumber(29)
  set paymentTipAmount($core.double v) { $_setDouble(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasPaymentTipAmount() => $_has(28);
  @$pb.TagNumber(29)
  void clearPaymentTipAmount() => clearField(29);

  @$pb.TagNumber(30)
  $core.double get paymentTipTaxAmount => $_getN(29);
  @$pb.TagNumber(30)
  set paymentTipTaxAmount($core.double v) { $_setDouble(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasPaymentTipTaxAmount() => $_has(29);
  @$pb.TagNumber(30)
  void clearPaymentTipTaxAmount() => clearField(30);

  @$pb.TagNumber(31)
  $core.double get totalAmount => $_getN(30);
  @$pb.TagNumber(31)
  set totalAmount($core.double v) { $_setDouble(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasTotalAmount() => $_has(30);
  @$pb.TagNumber(31)
  void clearTotalAmount() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get cancelSerialNumber => $_getSZ(31);
  @$pb.TagNumber(32)
  set cancelSerialNumber($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasCancelSerialNumber() => $_has(31);
  @$pb.TagNumber(32)
  void clearCancelSerialNumber() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get cancelEmployeeId => $_getSZ(32);
  @$pb.TagNumber(33)
  set cancelEmployeeId($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasCancelEmployeeId() => $_has(32);
  @$pb.TagNumber(33)
  void clearCancelEmployeeId() => clearField(33);

  @$pb.TagNumber(34)
  $core.bool get completeSettlementYn => $_getBF(33);
  @$pb.TagNumber(34)
  set completeSettlementYn($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasCompleteSettlementYn() => $_has(33);
  @$pb.TagNumber(34)
  void clearCompleteSettlementYn() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get receiptNumber => $_getSZ(34);
  @$pb.TagNumber(35)
  set receiptNumber($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasReceiptNumber() => $_has(34);
  @$pb.TagNumber(35)
  void clearReceiptNumber() => clearField(35);

  @$pb.TagNumber(36)
  $core.String get paymentOption => $_getSZ(35);
  @$pb.TagNumber(36)
  set paymentOption($core.String v) { $_setString(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasPaymentOption() => $_has(35);
  @$pb.TagNumber(36)
  void clearPaymentOption() => clearField(36);

  @$pb.TagNumber(37)
  $core.double get menuDiscountAmount => $_getN(36);
  @$pb.TagNumber(37)
  set menuDiscountAmount($core.double v) { $_setDouble(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasMenuDiscountAmount() => $_has(36);
  @$pb.TagNumber(37)
  void clearMenuDiscountAmount() => clearField(37);

  @$pb.TagNumber(38)
  $core.double get orderDiscountAmount => $_getN(37);
  @$pb.TagNumber(38)
  set orderDiscountAmount($core.double v) { $_setDouble(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasOrderDiscountAmount() => $_has(37);
  @$pb.TagNumber(38)
  void clearOrderDiscountAmount() => clearField(38);

  @$pb.TagNumber(39)
  $core.String get firstRegistrantId => $_getSZ(38);
  @$pb.TagNumber(39)
  set firstRegistrantId($core.String v) { $_setString(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasFirstRegistrantId() => $_has(38);
  @$pb.TagNumber(39)
  void clearFirstRegistrantId() => clearField(39);

  @$pb.TagNumber(40)
  $core.String get firstRegistrationDatetime => $_getSZ(39);
  @$pb.TagNumber(40)
  set firstRegistrationDatetime($core.String v) { $_setString(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasFirstRegistrationDatetime() => $_has(39);
  @$pb.TagNumber(40)
  void clearFirstRegistrationDatetime() => clearField(40);

  @$pb.TagNumber(41)
  $core.String get lastReviserId => $_getSZ(40);
  @$pb.TagNumber(41)
  set lastReviserId($core.String v) { $_setString(40, v); }
  @$pb.TagNumber(41)
  $core.bool hasLastReviserId() => $_has(40);
  @$pb.TagNumber(41)
  void clearLastReviserId() => clearField(41);

  @$pb.TagNumber(42)
  $core.String get lastRevisionDatetime => $_getSZ(41);
  @$pb.TagNumber(42)
  set lastRevisionDatetime($core.String v) { $_setString(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasLastRevisionDatetime() => $_has(41);
  @$pb.TagNumber(42)
  void clearLastRevisionDatetime() => clearField(42);

  @$pb.TagNumber(43)
  $core.String get stateCode => $_getSZ(42);
  @$pb.TagNumber(43)
  set stateCode($core.String v) { $_setString(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasStateCode() => $_has(42);
  @$pb.TagNumber(43)
  void clearStateCode() => clearField(43);

  @$pb.TagNumber(44)
  $core.String get approvalDatePrimaryPattern => $_getSZ(43);
  @$pb.TagNumber(44)
  set approvalDatePrimaryPattern($core.String v) { $_setString(43, v); }
  @$pb.TagNumber(44)
  $core.bool hasApprovalDatePrimaryPattern() => $_has(43);
  @$pb.TagNumber(44)
  void clearApprovalDatePrimaryPattern() => clearField(44);

  @$pb.TagNumber(45)
  $core.String get transactionTypeCode => $_getSZ(44);
  @$pb.TagNumber(45)
  set transactionTypeCode($core.String v) { $_setString(44, v); }
  @$pb.TagNumber(45)
  $core.bool hasTransactionTypeCode() => $_has(44);
  @$pb.TagNumber(45)
  void clearTransactionTypeCode() => clearField(45);

  @$pb.TagNumber(46)
  $core.bool get saleTransmitYn => $_getBF(45);
  @$pb.TagNumber(46)
  set saleTransmitYn($core.bool v) { $_setBool(45, v); }
  @$pb.TagNumber(46)
  $core.bool hasSaleTransmitYn() => $_has(45);
  @$pb.TagNumber(46)
  void clearSaleTransmitYn() => clearField(46);

  @$pb.TagNumber(47)
  $core.String get operationTypeCode => $_getSZ(46);
  @$pb.TagNumber(47)
  set operationTypeCode($core.String v) { $_setString(46, v); }
  @$pb.TagNumber(47)
  $core.bool hasOperationTypeCode() => $_has(46);
  @$pb.TagNumber(47)
  void clearOperationTypeCode() => clearField(47);

  @$pb.TagNumber(48)
  $core.bool get notInSalesYn => $_getBF(47);
  @$pb.TagNumber(48)
  set notInSalesYn($core.bool v) { $_setBool(47, v); }
  @$pb.TagNumber(48)
  $core.bool hasNotInSalesYn() => $_has(47);
  @$pb.TagNumber(48)
  void clearNotInSalesYn() => clearField(48);

  @$pb.TagNumber(49)
  $core.double get takenAmount => $_getN(48);
  @$pb.TagNumber(49)
  set takenAmount($core.double v) { $_setDouble(48, v); }
  @$pb.TagNumber(49)
  $core.bool hasTakenAmount() => $_has(48);
  @$pb.TagNumber(49)
  void clearTakenAmount() => clearField(49);

  @$pb.TagNumber(50)
  $core.double get changeAmount => $_getN(49);
  @$pb.TagNumber(50)
  set changeAmount($core.double v) { $_setDouble(49, v); }
  @$pb.TagNumber(50)
  $core.bool hasChangeAmount() => $_has(49);
  @$pb.TagNumber(50)
  void clearChangeAmount() => clearField(50);

  @$pb.TagNumber(51)
  $core.String get serverLastRevisionDatetime => $_getSZ(50);
  @$pb.TagNumber(51)
  set serverLastRevisionDatetime($core.String v) { $_setString(50, v); }
  @$pb.TagNumber(51)
  $core.bool hasServerLastRevisionDatetime() => $_has(50);
  @$pb.TagNumber(51)
  void clearServerLastRevisionDatetime() => clearField(51);

  @$pb.TagNumber(52)
  $core.String get paymentMethodCode => $_getSZ(51);
  @$pb.TagNumber(52)
  set paymentMethodCode($core.String v) { $_setString(51, v); }
  @$pb.TagNumber(52)
  $core.bool hasPaymentMethodCode() => $_has(51);
  @$pb.TagNumber(52)
  void clearPaymentMethodCode() => clearField(52);

  @$pb.TagNumber(53)
  $core.String get approvalTransactionNo => $_getSZ(52);
  @$pb.TagNumber(53)
  set approvalTransactionNo($core.String v) { $_setString(52, v); }
  @$pb.TagNumber(53)
  $core.bool hasApprovalTransactionNo() => $_has(52);
  @$pb.TagNumber(53)
  void clearApprovalTransactionNo() => clearField(53);
}

class SalesAccountHistoryDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesAccountHistoryDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data0')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data3')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data4')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data5')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data6')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data7')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data8')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data9')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data10')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data11')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data12')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data13')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data14')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data15')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data16')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data17')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data18')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data19')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data20')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  SalesAccountHistoryDetails._() : super();
  factory SalesAccountHistoryDetails({
    $core.String? commonDate,
    $core.int? saleSerialNumber,
    $core.int? salesAccountSerialNumber,
    $core.String? data0,
    $core.String? data1,
    $core.String? data2,
    $core.String? data3,
    $core.String? data4,
    $core.String? data5,
    $core.String? data6,
    $core.String? data7,
    $core.String? data8,
    $core.String? data9,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? data10,
    $core.String? data11,
    $core.String? data12,
    $core.String? data13,
    $core.String? data14,
    $core.String? data15,
    $core.String? data16,
    $core.String? data17,
    $core.String? data18,
    $core.String? data19,
    $core.String? data20,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (saleSerialNumber != null) {
      _result.saleSerialNumber = saleSerialNumber;
    }
    if (salesAccountSerialNumber != null) {
      _result.salesAccountSerialNumber = salesAccountSerialNumber;
    }
    if (data0 != null) {
      _result.data0 = data0;
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    if (data3 != null) {
      _result.data3 = data3;
    }
    if (data4 != null) {
      _result.data4 = data4;
    }
    if (data5 != null) {
      _result.data5 = data5;
    }
    if (data6 != null) {
      _result.data6 = data6;
    }
    if (data7 != null) {
      _result.data7 = data7;
    }
    if (data8 != null) {
      _result.data8 = data8;
    }
    if (data9 != null) {
      _result.data9 = data9;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (data10 != null) {
      _result.data10 = data10;
    }
    if (data11 != null) {
      _result.data11 = data11;
    }
    if (data12 != null) {
      _result.data12 = data12;
    }
    if (data13 != null) {
      _result.data13 = data13;
    }
    if (data14 != null) {
      _result.data14 = data14;
    }
    if (data15 != null) {
      _result.data15 = data15;
    }
    if (data16 != null) {
      _result.data16 = data16;
    }
    if (data17 != null) {
      _result.data17 = data17;
    }
    if (data18 != null) {
      _result.data18 = data18;
    }
    if (data19 != null) {
      _result.data19 = data19;
    }
    if (data20 != null) {
      _result.data20 = data20;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory SalesAccountHistoryDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesAccountHistoryDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesAccountHistoryDetails clone() => SalesAccountHistoryDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesAccountHistoryDetails copyWith(void Function(SalesAccountHistoryDetails) updates) => super.copyWith((message) => updates(message as SalesAccountHistoryDetails)) as SalesAccountHistoryDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesAccountHistoryDetails create() => SalesAccountHistoryDetails._();
  SalesAccountHistoryDetails createEmptyInstance() => create();
  static $pb.PbList<SalesAccountHistoryDetails> createRepeated() => $pb.PbList<SalesAccountHistoryDetails>();
  @$core.pragma('dart2js:noInline')
  static SalesAccountHistoryDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesAccountHistoryDetails>(create);
  static SalesAccountHistoryDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get saleSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set saleSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaleSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaleSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get salesAccountSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set salesAccountSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSalesAccountSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSalesAccountSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get data0 => $_getSZ(3);
  @$pb.TagNumber(4)
  set data0($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasData0() => $_has(3);
  @$pb.TagNumber(4)
  void clearData0() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get data1 => $_getSZ(4);
  @$pb.TagNumber(5)
  set data1($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData1() => $_has(4);
  @$pb.TagNumber(5)
  void clearData1() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get data2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set data2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasData2() => $_has(5);
  @$pb.TagNumber(6)
  void clearData2() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get data3 => $_getSZ(6);
  @$pb.TagNumber(7)
  set data3($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasData3() => $_has(6);
  @$pb.TagNumber(7)
  void clearData3() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get data4 => $_getSZ(7);
  @$pb.TagNumber(8)
  set data4($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasData4() => $_has(7);
  @$pb.TagNumber(8)
  void clearData4() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get data5 => $_getSZ(8);
  @$pb.TagNumber(9)
  set data5($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasData5() => $_has(8);
  @$pb.TagNumber(9)
  void clearData5() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get data6 => $_getSZ(9);
  @$pb.TagNumber(10)
  set data6($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasData6() => $_has(9);
  @$pb.TagNumber(10)
  void clearData6() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get data7 => $_getSZ(10);
  @$pb.TagNumber(11)
  set data7($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasData7() => $_has(10);
  @$pb.TagNumber(11)
  void clearData7() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get data8 => $_getSZ(11);
  @$pb.TagNumber(12)
  set data8($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasData8() => $_has(11);
  @$pb.TagNumber(12)
  void clearData8() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get data9 => $_getSZ(12);
  @$pb.TagNumber(13)
  set data9($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasData9() => $_has(12);
  @$pb.TagNumber(13)
  void clearData9() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrantId => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrantId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrantId() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrantId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get firstRegistrationDatetime => $_getSZ(14);
  @$pb.TagNumber(15)
  set firstRegistrationDatetime($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFirstRegistrationDatetime() => $_has(14);
  @$pb.TagNumber(15)
  void clearFirstRegistrationDatetime() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastReviserId => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastReviserId($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastReviserId() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastReviserId() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get lastRevisionDatetime => $_getSZ(16);
  @$pb.TagNumber(17)
  set lastRevisionDatetime($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLastRevisionDatetime() => $_has(16);
  @$pb.TagNumber(17)
  void clearLastRevisionDatetime() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get stateCode => $_getSZ(17);
  @$pb.TagNumber(18)
  set stateCode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasStateCode() => $_has(17);
  @$pb.TagNumber(18)
  void clearStateCode() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get data10 => $_getSZ(18);
  @$pb.TagNumber(19)
  set data10($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasData10() => $_has(18);
  @$pb.TagNumber(19)
  void clearData10() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get data11 => $_getSZ(19);
  @$pb.TagNumber(20)
  set data11($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasData11() => $_has(19);
  @$pb.TagNumber(20)
  void clearData11() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get data12 => $_getSZ(20);
  @$pb.TagNumber(21)
  set data12($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasData12() => $_has(20);
  @$pb.TagNumber(21)
  void clearData12() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get data13 => $_getSZ(21);
  @$pb.TagNumber(22)
  set data13($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasData13() => $_has(21);
  @$pb.TagNumber(22)
  void clearData13() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get data14 => $_getSZ(22);
  @$pb.TagNumber(23)
  set data14($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasData14() => $_has(22);
  @$pb.TagNumber(23)
  void clearData14() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get data15 => $_getSZ(23);
  @$pb.TagNumber(24)
  set data15($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasData15() => $_has(23);
  @$pb.TagNumber(24)
  void clearData15() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get data16 => $_getSZ(24);
  @$pb.TagNumber(25)
  set data16($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasData16() => $_has(24);
  @$pb.TagNumber(25)
  void clearData16() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get data17 => $_getSZ(25);
  @$pb.TagNumber(26)
  set data17($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasData17() => $_has(25);
  @$pb.TagNumber(26)
  void clearData17() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get data18 => $_getSZ(26);
  @$pb.TagNumber(27)
  set data18($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasData18() => $_has(26);
  @$pb.TagNumber(27)
  void clearData18() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get data19 => $_getSZ(27);
  @$pb.TagNumber(28)
  set data19($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasData19() => $_has(27);
  @$pb.TagNumber(28)
  void clearData19() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get data20 => $_getSZ(28);
  @$pb.TagNumber(29)
  set data20($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasData20() => $_has(28);
  @$pb.TagNumber(29)
  void clearData20() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get serverLastRevisionDatetime => $_getSZ(29);
  @$pb.TagNumber(30)
  set serverLastRevisionDatetime($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasServerLastRevisionDatetime() => $_has(29);
  @$pb.TagNumber(30)
  void clearServerLastRevisionDatetime() => clearField(30);
}

class SalesAccountHistoryTip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesAccountHistoryTip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentSectionCode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalTypeCode')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawSectionCode')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount', $pb.PbFieldType.OD)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tipReceiptEmployeeId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  SalesAccountHistoryTip._() : super();
  factory SalesAccountHistoryTip({
    $core.String? commonDate,
    $core.int? saleSerialNumber,
    $core.int? salesAccountSerialNumber,
    $core.String? storeTerminalId,
    $core.String? paymentSectionCode,
    $core.String? approvalTypeCode,
    $core.String? cashdrawSectionCode,
    $core.double? paymentAmount,
    $core.double? taxAmount,
    $core.String? tipReceiptEmployeeId,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (saleSerialNumber != null) {
      _result.saleSerialNumber = saleSerialNumber;
    }
    if (salesAccountSerialNumber != null) {
      _result.salesAccountSerialNumber = salesAccountSerialNumber;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (paymentSectionCode != null) {
      _result.paymentSectionCode = paymentSectionCode;
    }
    if (approvalTypeCode != null) {
      _result.approvalTypeCode = approvalTypeCode;
    }
    if (cashdrawSectionCode != null) {
      _result.cashdrawSectionCode = cashdrawSectionCode;
    }
    if (paymentAmount != null) {
      _result.paymentAmount = paymentAmount;
    }
    if (taxAmount != null) {
      _result.taxAmount = taxAmount;
    }
    if (tipReceiptEmployeeId != null) {
      _result.tipReceiptEmployeeId = tipReceiptEmployeeId;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory SalesAccountHistoryTip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesAccountHistoryTip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesAccountHistoryTip clone() => SalesAccountHistoryTip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesAccountHistoryTip copyWith(void Function(SalesAccountHistoryTip) updates) => super.copyWith((message) => updates(message as SalesAccountHistoryTip)) as SalesAccountHistoryTip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesAccountHistoryTip create() => SalesAccountHistoryTip._();
  SalesAccountHistoryTip createEmptyInstance() => create();
  static $pb.PbList<SalesAccountHistoryTip> createRepeated() => $pb.PbList<SalesAccountHistoryTip>();
  @$core.pragma('dart2js:noInline')
  static SalesAccountHistoryTip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesAccountHistoryTip>(create);
  static SalesAccountHistoryTip? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get saleSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set saleSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaleSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaleSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get salesAccountSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set salesAccountSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSalesAccountSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearSalesAccountSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalId => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get paymentSectionCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set paymentSectionCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPaymentSectionCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaymentSectionCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get approvalTypeCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set approvalTypeCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasApprovalTypeCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearApprovalTypeCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get cashdrawSectionCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set cashdrawSectionCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCashdrawSectionCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearCashdrawSectionCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get paymentAmount => $_getN(7);
  @$pb.TagNumber(8)
  set paymentAmount($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPaymentAmount() => $_has(7);
  @$pb.TagNumber(8)
  void clearPaymentAmount() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get taxAmount => $_getN(8);
  @$pb.TagNumber(9)
  set taxAmount($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTaxAmount() => $_has(8);
  @$pb.TagNumber(9)
  void clearTaxAmount() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get tipReceiptEmployeeId => $_getSZ(9);
  @$pb.TagNumber(10)
  set tipReceiptEmployeeId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTipReceiptEmployeeId() => $_has(9);
  @$pb.TagNumber(10)
  void clearTipReceiptEmployeeId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get firstRegistrantId => $_getSZ(10);
  @$pb.TagNumber(11)
  set firstRegistrantId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstRegistrantId() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstRegistrantId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get firstRegistrationDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set firstRegistrationDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFirstRegistrationDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearFirstRegistrationDatetime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get lastReviserId => $_getSZ(12);
  @$pb.TagNumber(13)
  set lastReviserId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastReviserId() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastReviserId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get lastRevisionDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set lastRevisionDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastRevisionDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastRevisionDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get stateCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set stateCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasStateCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearStateCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get serverLastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set serverLastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasServerLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearServerLastRevisionDatetime() => clearField(16);
}

class SalesHistoryDiscount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesHistoryDiscount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountSectionCode')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountRate', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountAmount', $pb.PbFieldType.OD)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelSerialNumber', $pb.PbFieldType.O3)
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelEmployeeId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  SalesHistoryDiscount._() : super();
  factory SalesHistoryDiscount({
    $core.String? commonDate,
    $core.int? saleSerialNumber,
    $core.int? discountSerialNumber,
    $core.String? discountSectionCode,
    $core.double? discountRate,
    $core.double? discountAmount,
    $core.String? discountName,
    $core.String? itemId,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.int? cancelSerialNumber,
    $core.String? cancelEmployeeId,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (saleSerialNumber != null) {
      _result.saleSerialNumber = saleSerialNumber;
    }
    if (discountSerialNumber != null) {
      _result.discountSerialNumber = discountSerialNumber;
    }
    if (discountSectionCode != null) {
      _result.discountSectionCode = discountSectionCode;
    }
    if (discountRate != null) {
      _result.discountRate = discountRate;
    }
    if (discountAmount != null) {
      _result.discountAmount = discountAmount;
    }
    if (discountName != null) {
      _result.discountName = discountName;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (cancelSerialNumber != null) {
      _result.cancelSerialNumber = cancelSerialNumber;
    }
    if (cancelEmployeeId != null) {
      _result.cancelEmployeeId = cancelEmployeeId;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory SalesHistoryDiscount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesHistoryDiscount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesHistoryDiscount clone() => SalesHistoryDiscount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesHistoryDiscount copyWith(void Function(SalesHistoryDiscount) updates) => super.copyWith((message) => updates(message as SalesHistoryDiscount)) as SalesHistoryDiscount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesHistoryDiscount create() => SalesHistoryDiscount._();
  SalesHistoryDiscount createEmptyInstance() => create();
  static $pb.PbList<SalesHistoryDiscount> createRepeated() => $pb.PbList<SalesHistoryDiscount>();
  @$core.pragma('dart2js:noInline')
  static SalesHistoryDiscount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesHistoryDiscount>(create);
  static SalesHistoryDiscount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get saleSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set saleSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaleSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaleSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get discountSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set discountSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDiscountSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscountSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get discountSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set discountSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDiscountSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiscountSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get discountRate => $_getN(4);
  @$pb.TagNumber(5)
  set discountRate($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiscountRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiscountRate() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get discountAmount => $_getN(5);
  @$pb.TagNumber(6)
  set discountAmount($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDiscountAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiscountAmount() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get discountName => $_getSZ(6);
  @$pb.TagNumber(7)
  set discountName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDiscountName() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscountName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get itemId => $_getSZ(7);
  @$pb.TagNumber(8)
  set itemId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasItemId() => $_has(7);
  @$pb.TagNumber(8)
  void clearItemId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstRegistrantId => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstRegistrantId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstRegistrantId() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstRegistrantId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get firstRegistrationDatetime => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstRegistrationDatetime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstRegistrationDatetime() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstRegistrationDatetime() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastReviserId => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastReviserId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastReviserId() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastReviserId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get lastRevisionDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set lastRevisionDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastRevisionDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastRevisionDatetime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get stateCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set stateCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStateCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearStateCode() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get cancelSerialNumber => $_getIZ(13);
  @$pb.TagNumber(14)
  set cancelSerialNumber($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCancelSerialNumber() => $_has(13);
  @$pb.TagNumber(14)
  void clearCancelSerialNumber() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get cancelEmployeeId => $_getSZ(14);
  @$pb.TagNumber(15)
  set cancelEmployeeId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCancelEmployeeId() => $_has(14);
  @$pb.TagNumber(15)
  void clearCancelEmployeeId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get serverLastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set serverLastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasServerLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearServerLastRevisionDatetime() => clearField(16);
}

class CashdrawCashInOutHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashdrawCashInOutHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSubjectId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawSectionCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inOutTypeCode')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkA')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkB')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarkC')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'personalAccountId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesLink')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierBankLink')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inOutEmployeeId')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  CashdrawCashInOutHistory._() : super();
  factory CashdrawCashInOutHistory({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.String? accountSubjectId,
    $core.String? cashdrawSectionCode,
    $core.String? inOutTypeCode,
    $core.double? amount,
    $core.String? remarkA,
    $core.String? remarkB,
    $core.String? remarkC,
    $core.String? personalAccountId,
    $core.String? salesLink,
    $core.String? cashierBankLink,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? inOutEmployeeId,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (accountSubjectId != null) {
      _result.accountSubjectId = accountSubjectId;
    }
    if (cashdrawSectionCode != null) {
      _result.cashdrawSectionCode = cashdrawSectionCode;
    }
    if (inOutTypeCode != null) {
      _result.inOutTypeCode = inOutTypeCode;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (remarkA != null) {
      _result.remarkA = remarkA;
    }
    if (remarkB != null) {
      _result.remarkB = remarkB;
    }
    if (remarkC != null) {
      _result.remarkC = remarkC;
    }
    if (personalAccountId != null) {
      _result.personalAccountId = personalAccountId;
    }
    if (salesLink != null) {
      _result.salesLink = salesLink;
    }
    if (cashierBankLink != null) {
      _result.cashierBankLink = cashierBankLink;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (inOutEmployeeId != null) {
      _result.inOutEmployeeId = inOutEmployeeId;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory CashdrawCashInOutHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashdrawCashInOutHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashdrawCashInOutHistory clone() => CashdrawCashInOutHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashdrawCashInOutHistory copyWith(void Function(CashdrawCashInOutHistory) updates) => super.copyWith((message) => updates(message as CashdrawCashInOutHistory)) as CashdrawCashInOutHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashdrawCashInOutHistory create() => CashdrawCashInOutHistory._();
  CashdrawCashInOutHistory createEmptyInstance() => create();
  static $pb.PbList<CashdrawCashInOutHistory> createRepeated() => $pb.PbList<CashdrawCashInOutHistory>();
  @$core.pragma('dart2js:noInline')
  static CashdrawCashInOutHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashdrawCashInOutHistory>(create);
  static CashdrawCashInOutHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountSubjectId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountSubjectId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountSubjectId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountSubjectId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cashdrawSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set cashdrawSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCashdrawSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCashdrawSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get inOutTypeCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set inOutTypeCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInOutTypeCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearInOutTypeCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get amount => $_getN(5);
  @$pb.TagNumber(6)
  set amount($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmount() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get remarkA => $_getSZ(6);
  @$pb.TagNumber(7)
  set remarkA($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRemarkA() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemarkA() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get remarkB => $_getSZ(7);
  @$pb.TagNumber(8)
  set remarkB($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRemarkB() => $_has(7);
  @$pb.TagNumber(8)
  void clearRemarkB() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get remarkC => $_getSZ(8);
  @$pb.TagNumber(9)
  set remarkC($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRemarkC() => $_has(8);
  @$pb.TagNumber(9)
  void clearRemarkC() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get personalAccountId => $_getSZ(9);
  @$pb.TagNumber(10)
  set personalAccountId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPersonalAccountId() => $_has(9);
  @$pb.TagNumber(10)
  void clearPersonalAccountId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get salesLink => $_getSZ(10);
  @$pb.TagNumber(11)
  set salesLink($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSalesLink() => $_has(10);
  @$pb.TagNumber(11)
  void clearSalesLink() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get cashierBankLink => $_getSZ(11);
  @$pb.TagNumber(12)
  set cashierBankLink($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCashierBankLink() => $_has(11);
  @$pb.TagNumber(12)
  void clearCashierBankLink() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get firstRegistrantId => $_getSZ(12);
  @$pb.TagNumber(13)
  set firstRegistrantId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFirstRegistrantId() => $_has(12);
  @$pb.TagNumber(13)
  void clearFirstRegistrantId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get firstRegistrationDatetime => $_getSZ(13);
  @$pb.TagNumber(14)
  set firstRegistrationDatetime($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstRegistrationDatetime() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstRegistrationDatetime() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get lastReviserId => $_getSZ(14);
  @$pb.TagNumber(15)
  set lastReviserId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLastReviserId() => $_has(14);
  @$pb.TagNumber(15)
  void clearLastReviserId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get lastRevisionDatetime => $_getSZ(15);
  @$pb.TagNumber(16)
  set lastRevisionDatetime($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLastRevisionDatetime() => $_has(15);
  @$pb.TagNumber(16)
  void clearLastRevisionDatetime() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get stateCode => $_getSZ(16);
  @$pb.TagNumber(17)
  set stateCode($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasStateCode() => $_has(16);
  @$pb.TagNumber(17)
  void clearStateCode() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get inOutEmployeeId => $_getSZ(17);
  @$pb.TagNumber(18)
  set inOutEmployeeId($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasInOutEmployeeId() => $_has(17);
  @$pb.TagNumber(18)
  void clearInOutEmployeeId() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get serverLastRevisionDatetime => $_getSZ(18);
  @$pb.TagNumber(19)
  set serverLastRevisionDatetime($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasServerLastRevisionDatetime() => $_has(18);
  @$pb.TagNumber(19)
  void clearServerLastRevisionDatetime() => clearField(19);
}

class CashierBankHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashierBankHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawSectionCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessOpenCloseSectionCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierTypeCode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessStartDatetime')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessEndDatetime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessChangeDatetime')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesCount', $pb.PbFieldType.O3)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableTurnoverRate', $pb.PbFieldType.OD)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'employeeId')
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openBusinessCashTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeBusinessCashTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessChangeCashTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'posCashTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashDifferenceAmount', $pb.PbFieldType.OD)
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashDifferenceReason')
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashDepositTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashWithdrawalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelSerialNumber', $pb.PbFieldType.O3)
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shiftSerialNumber')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..a<$core.double>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesTotalCashAmount', $pb.PbFieldType.OD)
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..a<$core.int>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batchId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CashierBankHistory._() : super();
  factory CashierBankHistory({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.String? cashdrawSectionCode,
    $core.String? businessOpenCloseSectionCode,
    $core.String? cashierTypeCode,
    $core.String? businessStartDatetime,
    $core.String? businessEndDatetime,
    $core.String? businessChangeDatetime,
    $core.int? salesCount,
    $core.double? tableTurnoverRate,
    $core.String? employeeId,
    $core.double? openBusinessCashTotalAmount,
    $core.double? closeBusinessCashTotalAmount,
    $core.double? businessChangeCashTotalAmount,
    $core.double? posCashTotalAmount,
    $core.double? cashDifferenceAmount,
    $core.String? cashDifferenceReason,
    $core.double? cashDepositTotalAmount,
    $core.double? cashWithdrawalAmount,
    $core.double? salesTotalAmount,
    $core.double? discountTotalAmount,
    $core.double? tipTotalAmount,
    $core.int? cancelSerialNumber,
    $core.String? shiftSerialNumber,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.double? salesTotalCashAmount,
    $core.String? serverLastRevisionDatetime,
    $core.int? batchId,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (cashdrawSectionCode != null) {
      _result.cashdrawSectionCode = cashdrawSectionCode;
    }
    if (businessOpenCloseSectionCode != null) {
      _result.businessOpenCloseSectionCode = businessOpenCloseSectionCode;
    }
    if (cashierTypeCode != null) {
      _result.cashierTypeCode = cashierTypeCode;
    }
    if (businessStartDatetime != null) {
      _result.businessStartDatetime = businessStartDatetime;
    }
    if (businessEndDatetime != null) {
      _result.businessEndDatetime = businessEndDatetime;
    }
    if (businessChangeDatetime != null) {
      _result.businessChangeDatetime = businessChangeDatetime;
    }
    if (salesCount != null) {
      _result.salesCount = salesCount;
    }
    if (tableTurnoverRate != null) {
      _result.tableTurnoverRate = tableTurnoverRate;
    }
    if (employeeId != null) {
      _result.employeeId = employeeId;
    }
    if (openBusinessCashTotalAmount != null) {
      _result.openBusinessCashTotalAmount = openBusinessCashTotalAmount;
    }
    if (closeBusinessCashTotalAmount != null) {
      _result.closeBusinessCashTotalAmount = closeBusinessCashTotalAmount;
    }
    if (businessChangeCashTotalAmount != null) {
      _result.businessChangeCashTotalAmount = businessChangeCashTotalAmount;
    }
    if (posCashTotalAmount != null) {
      _result.posCashTotalAmount = posCashTotalAmount;
    }
    if (cashDifferenceAmount != null) {
      _result.cashDifferenceAmount = cashDifferenceAmount;
    }
    if (cashDifferenceReason != null) {
      _result.cashDifferenceReason = cashDifferenceReason;
    }
    if (cashDepositTotalAmount != null) {
      _result.cashDepositTotalAmount = cashDepositTotalAmount;
    }
    if (cashWithdrawalAmount != null) {
      _result.cashWithdrawalAmount = cashWithdrawalAmount;
    }
    if (salesTotalAmount != null) {
      _result.salesTotalAmount = salesTotalAmount;
    }
    if (discountTotalAmount != null) {
      _result.discountTotalAmount = discountTotalAmount;
    }
    if (tipTotalAmount != null) {
      _result.tipTotalAmount = tipTotalAmount;
    }
    if (cancelSerialNumber != null) {
      _result.cancelSerialNumber = cancelSerialNumber;
    }
    if (shiftSerialNumber != null) {
      _result.shiftSerialNumber = shiftSerialNumber;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (salesTotalCashAmount != null) {
      _result.salesTotalCashAmount = salesTotalCashAmount;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    if (batchId != null) {
      _result.batchId = batchId;
    }
    return _result;
  }
  factory CashierBankHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashierBankHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashierBankHistory clone() => CashierBankHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashierBankHistory copyWith(void Function(CashierBankHistory) updates) => super.copyWith((message) => updates(message as CashierBankHistory)) as CashierBankHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashierBankHistory create() => CashierBankHistory._();
  CashierBankHistory createEmptyInstance() => create();
  static $pb.PbList<CashierBankHistory> createRepeated() => $pb.PbList<CashierBankHistory>();
  @$core.pragma('dart2js:noInline')
  static CashierBankHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashierBankHistory>(create);
  static CashierBankHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cashdrawSectionCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set cashdrawSectionCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCashdrawSectionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCashdrawSectionCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get businessOpenCloseSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set businessOpenCloseSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBusinessOpenCloseSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearBusinessOpenCloseSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get cashierTypeCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set cashierTypeCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCashierTypeCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearCashierTypeCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get businessStartDatetime => $_getSZ(5);
  @$pb.TagNumber(6)
  set businessStartDatetime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBusinessStartDatetime() => $_has(5);
  @$pb.TagNumber(6)
  void clearBusinessStartDatetime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get businessEndDatetime => $_getSZ(6);
  @$pb.TagNumber(7)
  set businessEndDatetime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBusinessEndDatetime() => $_has(6);
  @$pb.TagNumber(7)
  void clearBusinessEndDatetime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get businessChangeDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set businessChangeDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBusinessChangeDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearBusinessChangeDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get salesCount => $_getIZ(8);
  @$pb.TagNumber(9)
  set salesCount($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSalesCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearSalesCount() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get tableTurnoverRate => $_getN(9);
  @$pb.TagNumber(10)
  set tableTurnoverRate($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTableTurnoverRate() => $_has(9);
  @$pb.TagNumber(10)
  void clearTableTurnoverRate() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get employeeId => $_getSZ(10);
  @$pb.TagNumber(11)
  set employeeId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEmployeeId() => $_has(10);
  @$pb.TagNumber(11)
  void clearEmployeeId() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get openBusinessCashTotalAmount => $_getN(11);
  @$pb.TagNumber(12)
  set openBusinessCashTotalAmount($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasOpenBusinessCashTotalAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearOpenBusinessCashTotalAmount() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get closeBusinessCashTotalAmount => $_getN(12);
  @$pb.TagNumber(13)
  set closeBusinessCashTotalAmount($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCloseBusinessCashTotalAmount() => $_has(12);
  @$pb.TagNumber(13)
  void clearCloseBusinessCashTotalAmount() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get businessChangeCashTotalAmount => $_getN(13);
  @$pb.TagNumber(14)
  set businessChangeCashTotalAmount($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBusinessChangeCashTotalAmount() => $_has(13);
  @$pb.TagNumber(14)
  void clearBusinessChangeCashTotalAmount() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get posCashTotalAmount => $_getN(14);
  @$pb.TagNumber(15)
  set posCashTotalAmount($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPosCashTotalAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearPosCashTotalAmount() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get cashDifferenceAmount => $_getN(15);
  @$pb.TagNumber(16)
  set cashDifferenceAmount($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCashDifferenceAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearCashDifferenceAmount() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get cashDifferenceReason => $_getSZ(16);
  @$pb.TagNumber(17)
  set cashDifferenceReason($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasCashDifferenceReason() => $_has(16);
  @$pb.TagNumber(17)
  void clearCashDifferenceReason() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get cashDepositTotalAmount => $_getN(17);
  @$pb.TagNumber(18)
  set cashDepositTotalAmount($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasCashDepositTotalAmount() => $_has(17);
  @$pb.TagNumber(18)
  void clearCashDepositTotalAmount() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get cashWithdrawalAmount => $_getN(18);
  @$pb.TagNumber(19)
  set cashWithdrawalAmount($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasCashWithdrawalAmount() => $_has(18);
  @$pb.TagNumber(19)
  void clearCashWithdrawalAmount() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get salesTotalAmount => $_getN(19);
  @$pb.TagNumber(20)
  set salesTotalAmount($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasSalesTotalAmount() => $_has(19);
  @$pb.TagNumber(20)
  void clearSalesTotalAmount() => clearField(20);

  @$pb.TagNumber(21)
  $core.double get discountTotalAmount => $_getN(20);
  @$pb.TagNumber(21)
  set discountTotalAmount($core.double v) { $_setDouble(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasDiscountTotalAmount() => $_has(20);
  @$pb.TagNumber(21)
  void clearDiscountTotalAmount() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get tipTotalAmount => $_getN(21);
  @$pb.TagNumber(22)
  set tipTotalAmount($core.double v) { $_setDouble(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasTipTotalAmount() => $_has(21);
  @$pb.TagNumber(22)
  void clearTipTotalAmount() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get cancelSerialNumber => $_getIZ(22);
  @$pb.TagNumber(23)
  set cancelSerialNumber($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasCancelSerialNumber() => $_has(22);
  @$pb.TagNumber(23)
  void clearCancelSerialNumber() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get shiftSerialNumber => $_getSZ(23);
  @$pb.TagNumber(24)
  set shiftSerialNumber($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasShiftSerialNumber() => $_has(23);
  @$pb.TagNumber(24)
  void clearShiftSerialNumber() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get firstRegistrantId => $_getSZ(24);
  @$pb.TagNumber(25)
  set firstRegistrantId($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasFirstRegistrantId() => $_has(24);
  @$pb.TagNumber(25)
  void clearFirstRegistrantId() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get firstRegistrationDatetime => $_getSZ(25);
  @$pb.TagNumber(26)
  set firstRegistrationDatetime($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasFirstRegistrationDatetime() => $_has(25);
  @$pb.TagNumber(26)
  void clearFirstRegistrationDatetime() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get lastReviserId => $_getSZ(26);
  @$pb.TagNumber(27)
  set lastReviserId($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasLastReviserId() => $_has(26);
  @$pb.TagNumber(27)
  void clearLastReviserId() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get lastRevisionDatetime => $_getSZ(27);
  @$pb.TagNumber(28)
  set lastRevisionDatetime($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasLastRevisionDatetime() => $_has(27);
  @$pb.TagNumber(28)
  void clearLastRevisionDatetime() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get stateCode => $_getSZ(28);
  @$pb.TagNumber(29)
  set stateCode($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasStateCode() => $_has(28);
  @$pb.TagNumber(29)
  void clearStateCode() => clearField(29);

  @$pb.TagNumber(30)
  $core.double get salesTotalCashAmount => $_getN(29);
  @$pb.TagNumber(30)
  set salesTotalCashAmount($core.double v) { $_setDouble(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasSalesTotalCashAmount() => $_has(29);
  @$pb.TagNumber(30)
  void clearSalesTotalCashAmount() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get serverLastRevisionDatetime => $_getSZ(30);
  @$pb.TagNumber(31)
  set serverLastRevisionDatetime($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasServerLastRevisionDatetime() => $_has(30);
  @$pb.TagNumber(31)
  void clearServerLastRevisionDatetime() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get batchId => $_getIZ(31);
  @$pb.TagNumber(32)
  set batchId($core.int v) { $_setSignedInt32(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasBatchId() => $_has(31);
  @$pb.TagNumber(32)
  void clearBatchId() => clearField(32);
}

class CashierBankHistoryBill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashierBankHistoryBill', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawSectionCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessOpenCloseSectionCode')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'billSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAmount', $pb.PbFieldType.OD)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill0Number', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill1Number', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill2Number', $pb.PbFieldType.O3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill3Number', $pb.PbFieldType.O3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill4Number', $pb.PbFieldType.O3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill5Number', $pb.PbFieldType.O3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill6Number', $pb.PbFieldType.O3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill7Number', $pb.PbFieldType.O3)
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill8Number', $pb.PbFieldType.O3)
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill9Number', $pb.PbFieldType.O3)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill10Number', $pb.PbFieldType.O3)
    ..a<$core.int>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill11Number', $pb.PbFieldType.O3)
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill12Number', $pb.PbFieldType.O3)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill13Number', $pb.PbFieldType.O3)
    ..a<$core.int>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill14Number', $pb.PbFieldType.O3)
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill15Number', $pb.PbFieldType.O3)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill16Number', $pb.PbFieldType.O3)
    ..a<$core.int>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill17Number', $pb.PbFieldType.O3)
    ..a<$core.int>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill18Number', $pb.PbFieldType.O3)
    ..a<$core.int>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill19Number', $pb.PbFieldType.O3)
    ..a<$core.double>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userInputAmount', $pb.PbFieldType.OD)
    ..a<$core.int>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelSerialNumber', $pb.PbFieldType.O3)
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shiftSerialNumber')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  CashierBankHistoryBill._() : super();
  factory CashierBankHistoryBill({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.String? cashdrawSectionCode,
    $core.String? businessOpenCloseSectionCode,
    $core.int? billSerialNumber,
    $core.double? totalAmount,
    $core.int? bill0Number,
    $core.int? bill1Number,
    $core.int? bill2Number,
    $core.int? bill3Number,
    $core.int? bill4Number,
    $core.int? bill5Number,
    $core.int? bill6Number,
    $core.int? bill7Number,
    $core.int? bill8Number,
    $core.int? bill9Number,
    $core.int? bill10Number,
    $core.int? bill11Number,
    $core.int? bill12Number,
    $core.int? bill13Number,
    $core.int? bill14Number,
    $core.int? bill15Number,
    $core.int? bill16Number,
    $core.int? bill17Number,
    $core.int? bill18Number,
    $core.int? bill19Number,
    $core.double? userInputAmount,
    $core.int? cancelSerialNumber,
    $core.String? shiftSerialNumber,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (cashdrawSectionCode != null) {
      _result.cashdrawSectionCode = cashdrawSectionCode;
    }
    if (businessOpenCloseSectionCode != null) {
      _result.businessOpenCloseSectionCode = businessOpenCloseSectionCode;
    }
    if (billSerialNumber != null) {
      _result.billSerialNumber = billSerialNumber;
    }
    if (totalAmount != null) {
      _result.totalAmount = totalAmount;
    }
    if (bill0Number != null) {
      _result.bill0Number = bill0Number;
    }
    if (bill1Number != null) {
      _result.bill1Number = bill1Number;
    }
    if (bill2Number != null) {
      _result.bill2Number = bill2Number;
    }
    if (bill3Number != null) {
      _result.bill3Number = bill3Number;
    }
    if (bill4Number != null) {
      _result.bill4Number = bill4Number;
    }
    if (bill5Number != null) {
      _result.bill5Number = bill5Number;
    }
    if (bill6Number != null) {
      _result.bill6Number = bill6Number;
    }
    if (bill7Number != null) {
      _result.bill7Number = bill7Number;
    }
    if (bill8Number != null) {
      _result.bill8Number = bill8Number;
    }
    if (bill9Number != null) {
      _result.bill9Number = bill9Number;
    }
    if (bill10Number != null) {
      _result.bill10Number = bill10Number;
    }
    if (bill11Number != null) {
      _result.bill11Number = bill11Number;
    }
    if (bill12Number != null) {
      _result.bill12Number = bill12Number;
    }
    if (bill13Number != null) {
      _result.bill13Number = bill13Number;
    }
    if (bill14Number != null) {
      _result.bill14Number = bill14Number;
    }
    if (bill15Number != null) {
      _result.bill15Number = bill15Number;
    }
    if (bill16Number != null) {
      _result.bill16Number = bill16Number;
    }
    if (bill17Number != null) {
      _result.bill17Number = bill17Number;
    }
    if (bill18Number != null) {
      _result.bill18Number = bill18Number;
    }
    if (bill19Number != null) {
      _result.bill19Number = bill19Number;
    }
    if (userInputAmount != null) {
      _result.userInputAmount = userInputAmount;
    }
    if (cancelSerialNumber != null) {
      _result.cancelSerialNumber = cancelSerialNumber;
    }
    if (shiftSerialNumber != null) {
      _result.shiftSerialNumber = shiftSerialNumber;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory CashierBankHistoryBill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashierBankHistoryBill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashierBankHistoryBill clone() => CashierBankHistoryBill()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashierBankHistoryBill copyWith(void Function(CashierBankHistoryBill) updates) => super.copyWith((message) => updates(message as CashierBankHistoryBill)) as CashierBankHistoryBill; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashierBankHistoryBill create() => CashierBankHistoryBill._();
  CashierBankHistoryBill createEmptyInstance() => create();
  static $pb.PbList<CashierBankHistoryBill> createRepeated() => $pb.PbList<CashierBankHistoryBill>();
  @$core.pragma('dart2js:noInline')
  static CashierBankHistoryBill getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashierBankHistoryBill>(create);
  static CashierBankHistoryBill? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cashdrawSectionCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set cashdrawSectionCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCashdrawSectionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCashdrawSectionCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get businessOpenCloseSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set businessOpenCloseSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBusinessOpenCloseSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearBusinessOpenCloseSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get billSerialNumber => $_getIZ(4);
  @$pb.TagNumber(5)
  set billSerialNumber($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBillSerialNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearBillSerialNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get totalAmount => $_getN(5);
  @$pb.TagNumber(6)
  set totalAmount($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalAmount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get bill0Number => $_getIZ(6);
  @$pb.TagNumber(7)
  set bill0Number($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBill0Number() => $_has(6);
  @$pb.TagNumber(7)
  void clearBill0Number() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get bill1Number => $_getIZ(7);
  @$pb.TagNumber(8)
  set bill1Number($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBill1Number() => $_has(7);
  @$pb.TagNumber(8)
  void clearBill1Number() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get bill2Number => $_getIZ(8);
  @$pb.TagNumber(9)
  set bill2Number($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBill2Number() => $_has(8);
  @$pb.TagNumber(9)
  void clearBill2Number() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get bill3Number => $_getIZ(9);
  @$pb.TagNumber(10)
  set bill3Number($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBill3Number() => $_has(9);
  @$pb.TagNumber(10)
  void clearBill3Number() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get bill4Number => $_getIZ(10);
  @$pb.TagNumber(11)
  set bill4Number($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBill4Number() => $_has(10);
  @$pb.TagNumber(11)
  void clearBill4Number() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get bill5Number => $_getIZ(11);
  @$pb.TagNumber(12)
  set bill5Number($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBill5Number() => $_has(11);
  @$pb.TagNumber(12)
  void clearBill5Number() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get bill6Number => $_getIZ(12);
  @$pb.TagNumber(13)
  set bill6Number($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBill6Number() => $_has(12);
  @$pb.TagNumber(13)
  void clearBill6Number() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get bill7Number => $_getIZ(13);
  @$pb.TagNumber(14)
  set bill7Number($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBill7Number() => $_has(13);
  @$pb.TagNumber(14)
  void clearBill7Number() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get bill8Number => $_getIZ(14);
  @$pb.TagNumber(15)
  set bill8Number($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasBill8Number() => $_has(14);
  @$pb.TagNumber(15)
  void clearBill8Number() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get bill9Number => $_getIZ(15);
  @$pb.TagNumber(16)
  set bill9Number($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasBill9Number() => $_has(15);
  @$pb.TagNumber(16)
  void clearBill9Number() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get bill10Number => $_getIZ(16);
  @$pb.TagNumber(17)
  set bill10Number($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasBill10Number() => $_has(16);
  @$pb.TagNumber(17)
  void clearBill10Number() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get bill11Number => $_getIZ(17);
  @$pb.TagNumber(18)
  set bill11Number($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasBill11Number() => $_has(17);
  @$pb.TagNumber(18)
  void clearBill11Number() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get bill12Number => $_getIZ(18);
  @$pb.TagNumber(19)
  set bill12Number($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasBill12Number() => $_has(18);
  @$pb.TagNumber(19)
  void clearBill12Number() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get bill13Number => $_getIZ(19);
  @$pb.TagNumber(20)
  set bill13Number($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBill13Number() => $_has(19);
  @$pb.TagNumber(20)
  void clearBill13Number() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get bill14Number => $_getIZ(20);
  @$pb.TagNumber(21)
  set bill14Number($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasBill14Number() => $_has(20);
  @$pb.TagNumber(21)
  void clearBill14Number() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get bill15Number => $_getIZ(21);
  @$pb.TagNumber(22)
  set bill15Number($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasBill15Number() => $_has(21);
  @$pb.TagNumber(22)
  void clearBill15Number() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get bill16Number => $_getIZ(22);
  @$pb.TagNumber(23)
  set bill16Number($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasBill16Number() => $_has(22);
  @$pb.TagNumber(23)
  void clearBill16Number() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get bill17Number => $_getIZ(23);
  @$pb.TagNumber(24)
  set bill17Number($core.int v) { $_setSignedInt32(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasBill17Number() => $_has(23);
  @$pb.TagNumber(24)
  void clearBill17Number() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get bill18Number => $_getIZ(24);
  @$pb.TagNumber(25)
  set bill18Number($core.int v) { $_setSignedInt32(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasBill18Number() => $_has(24);
  @$pb.TagNumber(25)
  void clearBill18Number() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get bill19Number => $_getIZ(25);
  @$pb.TagNumber(26)
  set bill19Number($core.int v) { $_setSignedInt32(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasBill19Number() => $_has(25);
  @$pb.TagNumber(26)
  void clearBill19Number() => clearField(26);

  @$pb.TagNumber(27)
  $core.double get userInputAmount => $_getN(26);
  @$pb.TagNumber(27)
  set userInputAmount($core.double v) { $_setDouble(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasUserInputAmount() => $_has(26);
  @$pb.TagNumber(27)
  void clearUserInputAmount() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get cancelSerialNumber => $_getIZ(27);
  @$pb.TagNumber(28)
  set cancelSerialNumber($core.int v) { $_setSignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasCancelSerialNumber() => $_has(27);
  @$pb.TagNumber(28)
  void clearCancelSerialNumber() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get shiftSerialNumber => $_getSZ(28);
  @$pb.TagNumber(29)
  set shiftSerialNumber($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasShiftSerialNumber() => $_has(28);
  @$pb.TagNumber(29)
  void clearShiftSerialNumber() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get firstRegistrantId => $_getSZ(29);
  @$pb.TagNumber(30)
  set firstRegistrantId($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasFirstRegistrantId() => $_has(29);
  @$pb.TagNumber(30)
  void clearFirstRegistrantId() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get firstRegistrationDatetime => $_getSZ(30);
  @$pb.TagNumber(31)
  set firstRegistrationDatetime($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasFirstRegistrationDatetime() => $_has(30);
  @$pb.TagNumber(31)
  void clearFirstRegistrationDatetime() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get lastReviserId => $_getSZ(31);
  @$pb.TagNumber(32)
  set lastReviserId($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasLastReviserId() => $_has(31);
  @$pb.TagNumber(32)
  void clearLastReviserId() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get lastRevisionDatetime => $_getSZ(32);
  @$pb.TagNumber(33)
  set lastRevisionDatetime($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasLastRevisionDatetime() => $_has(32);
  @$pb.TagNumber(33)
  void clearLastRevisionDatetime() => clearField(33);

  @$pb.TagNumber(34)
  $core.String get stateCode => $_getSZ(33);
  @$pb.TagNumber(34)
  set stateCode($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasStateCode() => $_has(33);
  @$pb.TagNumber(34)
  void clearStateCode() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get serverLastRevisionDatetime => $_getSZ(34);
  @$pb.TagNumber(35)
  set serverLastRevisionDatetime($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasServerLastRevisionDatetime() => $_has(34);
  @$pb.TagNumber(35)
  void clearServerLastRevisionDatetime() => clearField(35);
}

class DailyReportHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DailyReportHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessDatetime')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSalesAmount', $pb.PbFieldType.OD)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSalesCount', $pb.PbFieldType.O3)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTipTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCancelAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalRefundAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'posCashTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashDepositTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashWithdrawalAmount', $pb.PbFieldType.OD)
    ..aOB(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'synchronizedYn')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  DailyReportHistory._() : super();
  factory DailyReportHistory({
    $core.String? storeTerminalId,
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.String? businessDatetime,
    $core.double? totalSalesAmount,
    $core.int? totalSalesCount,
    $core.double? totalSupplyValue,
    $core.double? totalTaxAmount,
    $core.double? totalTipAmount,
    $core.double? totalTipTaxAmount,
    $core.double? discountTotalAmount,
    $core.double? totalCancelAmount,
    $core.double? totalRefundAmount,
    $core.double? posCashTotalAmount,
    $core.double? cashDepositTotalAmount,
    $core.double? cashWithdrawalAmount,
    $core.bool? synchronizedYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (businessDatetime != null) {
      _result.businessDatetime = businessDatetime;
    }
    if (totalSalesAmount != null) {
      _result.totalSalesAmount = totalSalesAmount;
    }
    if (totalSalesCount != null) {
      _result.totalSalesCount = totalSalesCount;
    }
    if (totalSupplyValue != null) {
      _result.totalSupplyValue = totalSupplyValue;
    }
    if (totalTaxAmount != null) {
      _result.totalTaxAmount = totalTaxAmount;
    }
    if (totalTipAmount != null) {
      _result.totalTipAmount = totalTipAmount;
    }
    if (totalTipTaxAmount != null) {
      _result.totalTipTaxAmount = totalTipTaxAmount;
    }
    if (discountTotalAmount != null) {
      _result.discountTotalAmount = discountTotalAmount;
    }
    if (totalCancelAmount != null) {
      _result.totalCancelAmount = totalCancelAmount;
    }
    if (totalRefundAmount != null) {
      _result.totalRefundAmount = totalRefundAmount;
    }
    if (posCashTotalAmount != null) {
      _result.posCashTotalAmount = posCashTotalAmount;
    }
    if (cashDepositTotalAmount != null) {
      _result.cashDepositTotalAmount = cashDepositTotalAmount;
    }
    if (cashWithdrawalAmount != null) {
      _result.cashWithdrawalAmount = cashWithdrawalAmount;
    }
    if (synchronizedYn != null) {
      _result.synchronizedYn = synchronizedYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory DailyReportHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DailyReportHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DailyReportHistory clone() => DailyReportHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DailyReportHistory copyWith(void Function(DailyReportHistory) updates) => super.copyWith((message) => updates(message as DailyReportHistory)) as DailyReportHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DailyReportHistory create() => DailyReportHistory._();
  DailyReportHistory createEmptyInstance() => create();
  static $pb.PbList<DailyReportHistory> createRepeated() => $pb.PbList<DailyReportHistory>();
  @$core.pragma('dart2js:noInline')
  static DailyReportHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DailyReportHistory>(create);
  static DailyReportHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeTerminalId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeTerminalId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreTerminalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreTerminalId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commonDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set commonDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get commonSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set commonSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCommonSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommonSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get businessDatetime => $_getSZ(3);
  @$pb.TagNumber(4)
  set businessDatetime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBusinessDatetime() => $_has(3);
  @$pb.TagNumber(4)
  void clearBusinessDatetime() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get totalSalesAmount => $_getN(4);
  @$pb.TagNumber(5)
  set totalSalesAmount($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalSalesAmount() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalSalesAmount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalSalesCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalSalesCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalSalesCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalSalesCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get totalSupplyValue => $_getN(6);
  @$pb.TagNumber(7)
  set totalSupplyValue($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalSupplyValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalSupplyValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get totalTaxAmount => $_getN(7);
  @$pb.TagNumber(8)
  set totalTaxAmount($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalTaxAmount() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalTaxAmount() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get totalTipAmount => $_getN(8);
  @$pb.TagNumber(9)
  set totalTipAmount($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTotalTipAmount() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalTipAmount() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get totalTipTaxAmount => $_getN(9);
  @$pb.TagNumber(10)
  set totalTipTaxAmount($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTotalTipTaxAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearTotalTipTaxAmount() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get discountTotalAmount => $_getN(10);
  @$pb.TagNumber(11)
  set discountTotalAmount($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDiscountTotalAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearDiscountTotalAmount() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get totalCancelAmount => $_getN(11);
  @$pb.TagNumber(12)
  set totalCancelAmount($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTotalCancelAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalCancelAmount() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get totalRefundAmount => $_getN(12);
  @$pb.TagNumber(13)
  set totalRefundAmount($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTotalRefundAmount() => $_has(12);
  @$pb.TagNumber(13)
  void clearTotalRefundAmount() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get posCashTotalAmount => $_getN(13);
  @$pb.TagNumber(14)
  set posCashTotalAmount($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPosCashTotalAmount() => $_has(13);
  @$pb.TagNumber(14)
  void clearPosCashTotalAmount() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get cashDepositTotalAmount => $_getN(14);
  @$pb.TagNumber(15)
  set cashDepositTotalAmount($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCashDepositTotalAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearCashDepositTotalAmount() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get cashWithdrawalAmount => $_getN(15);
  @$pb.TagNumber(16)
  set cashWithdrawalAmount($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCashWithdrawalAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearCashWithdrawalAmount() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get synchronizedYn => $_getBF(16);
  @$pb.TagNumber(17)
  set synchronizedYn($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasSynchronizedYn() => $_has(16);
  @$pb.TagNumber(17)
  void clearSynchronizedYn() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get firstRegistrantId => $_getSZ(17);
  @$pb.TagNumber(18)
  set firstRegistrantId($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFirstRegistrantId() => $_has(17);
  @$pb.TagNumber(18)
  void clearFirstRegistrantId() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get firstRegistrationDatetime => $_getSZ(18);
  @$pb.TagNumber(19)
  set firstRegistrationDatetime($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasFirstRegistrationDatetime() => $_has(18);
  @$pb.TagNumber(19)
  void clearFirstRegistrationDatetime() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get lastReviserId => $_getSZ(19);
  @$pb.TagNumber(20)
  set lastReviserId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasLastReviserId() => $_has(19);
  @$pb.TagNumber(20)
  void clearLastReviserId() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get lastRevisionDatetime => $_getSZ(20);
  @$pb.TagNumber(21)
  set lastRevisionDatetime($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasLastRevisionDatetime() => $_has(20);
  @$pb.TagNumber(21)
  void clearLastRevisionDatetime() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get stateCode => $_getSZ(21);
  @$pb.TagNumber(22)
  set stateCode($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasStateCode() => $_has(21);
  @$pb.TagNumber(22)
  void clearStateCode() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get serverLastRevisionDatetime => $_getSZ(22);
  @$pb.TagNumber(23)
  set serverLastRevisionDatetime($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasServerLastRevisionDatetime() => $_has(22);
  @$pb.TagNumber(23)
  void clearServerLastRevisionDatetime() => clearField(23);
}

class DailyReportHistoryPayments extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DailyReportHistoryPayments', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentSectionCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessDatetime')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSalesAmount', $pb.PbFieldType.OD)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSalesCount', $pb.PbFieldType.O3)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTipTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCancelAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalRefundAmount', $pb.PbFieldType.OD)
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'synchronizedYn')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..hasRequiredFields = false
  ;

  DailyReportHistoryPayments._() : super();
  factory DailyReportHistoryPayments({
    $core.String? storeTerminalId,
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.String? paymentSectionCode,
    $core.String? businessDatetime,
    $core.double? totalSalesAmount,
    $core.int? totalSalesCount,
    $core.double? totalSupplyValue,
    $core.double? totalTaxAmount,
    $core.double? totalTipAmount,
    $core.double? totalTipTaxAmount,
    $core.double? discountTotalAmount,
    $core.double? totalCancelAmount,
    $core.double? totalRefundAmount,
    $core.bool? synchronizedYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
  }) {
    final _result = create();
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (paymentSectionCode != null) {
      _result.paymentSectionCode = paymentSectionCode;
    }
    if (businessDatetime != null) {
      _result.businessDatetime = businessDatetime;
    }
    if (totalSalesAmount != null) {
      _result.totalSalesAmount = totalSalesAmount;
    }
    if (totalSalesCount != null) {
      _result.totalSalesCount = totalSalesCount;
    }
    if (totalSupplyValue != null) {
      _result.totalSupplyValue = totalSupplyValue;
    }
    if (totalTaxAmount != null) {
      _result.totalTaxAmount = totalTaxAmount;
    }
    if (totalTipAmount != null) {
      _result.totalTipAmount = totalTipAmount;
    }
    if (totalTipTaxAmount != null) {
      _result.totalTipTaxAmount = totalTipTaxAmount;
    }
    if (discountTotalAmount != null) {
      _result.discountTotalAmount = discountTotalAmount;
    }
    if (totalCancelAmount != null) {
      _result.totalCancelAmount = totalCancelAmount;
    }
    if (totalRefundAmount != null) {
      _result.totalRefundAmount = totalRefundAmount;
    }
    if (synchronizedYn != null) {
      _result.synchronizedYn = synchronizedYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    return _result;
  }
  factory DailyReportHistoryPayments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DailyReportHistoryPayments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DailyReportHistoryPayments clone() => DailyReportHistoryPayments()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DailyReportHistoryPayments copyWith(void Function(DailyReportHistoryPayments) updates) => super.copyWith((message) => updates(message as DailyReportHistoryPayments)) as DailyReportHistoryPayments; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DailyReportHistoryPayments create() => DailyReportHistoryPayments._();
  DailyReportHistoryPayments createEmptyInstance() => create();
  static $pb.PbList<DailyReportHistoryPayments> createRepeated() => $pb.PbList<DailyReportHistoryPayments>();
  @$core.pragma('dart2js:noInline')
  static DailyReportHistoryPayments getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DailyReportHistoryPayments>(create);
  static DailyReportHistoryPayments? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeTerminalId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeTerminalId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreTerminalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreTerminalId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commonDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set commonDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get commonSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set commonSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCommonSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommonSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get paymentSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set paymentSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaymentSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaymentSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get businessDatetime => $_getSZ(4);
  @$pb.TagNumber(5)
  set businessDatetime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBusinessDatetime() => $_has(4);
  @$pb.TagNumber(5)
  void clearBusinessDatetime() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get totalSalesAmount => $_getN(5);
  @$pb.TagNumber(6)
  set totalSalesAmount($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalSalesAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalSalesAmount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalSalesCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalSalesCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalSalesCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalSalesCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get totalSupplyValue => $_getN(7);
  @$pb.TagNumber(8)
  set totalSupplyValue($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalSupplyValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalSupplyValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get totalTaxAmount => $_getN(8);
  @$pb.TagNumber(9)
  set totalTaxAmount($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTotalTaxAmount() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalTaxAmount() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get totalTipAmount => $_getN(9);
  @$pb.TagNumber(10)
  set totalTipAmount($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTotalTipAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearTotalTipAmount() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get totalTipTaxAmount => $_getN(10);
  @$pb.TagNumber(11)
  set totalTipTaxAmount($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTotalTipTaxAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearTotalTipTaxAmount() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get discountTotalAmount => $_getN(11);
  @$pb.TagNumber(12)
  set discountTotalAmount($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDiscountTotalAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearDiscountTotalAmount() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get totalCancelAmount => $_getN(12);
  @$pb.TagNumber(13)
  set totalCancelAmount($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTotalCancelAmount() => $_has(12);
  @$pb.TagNumber(13)
  void clearTotalCancelAmount() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get totalRefundAmount => $_getN(13);
  @$pb.TagNumber(14)
  set totalRefundAmount($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTotalRefundAmount() => $_has(13);
  @$pb.TagNumber(14)
  void clearTotalRefundAmount() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get synchronizedYn => $_getBF(14);
  @$pb.TagNumber(15)
  set synchronizedYn($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSynchronizedYn() => $_has(14);
  @$pb.TagNumber(15)
  void clearSynchronizedYn() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get firstRegistrantId => $_getSZ(15);
  @$pb.TagNumber(16)
  set firstRegistrantId($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasFirstRegistrantId() => $_has(15);
  @$pb.TagNumber(16)
  void clearFirstRegistrantId() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get firstRegistrationDatetime => $_getSZ(16);
  @$pb.TagNumber(17)
  set firstRegistrationDatetime($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasFirstRegistrationDatetime() => $_has(16);
  @$pb.TagNumber(17)
  void clearFirstRegistrationDatetime() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get lastReviserId => $_getSZ(17);
  @$pb.TagNumber(18)
  set lastReviserId($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasLastReviserId() => $_has(17);
  @$pb.TagNumber(18)
  void clearLastReviserId() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get lastRevisionDatetime => $_getSZ(18);
  @$pb.TagNumber(19)
  set lastRevisionDatetime($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasLastRevisionDatetime() => $_has(18);
  @$pb.TagNumber(19)
  void clearLastRevisionDatetime() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get stateCode => $_getSZ(19);
  @$pb.TagNumber(20)
  set stateCode($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasStateCode() => $_has(19);
  @$pb.TagNumber(20)
  void clearStateCode() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get serverLastRevisionDatetime => $_getSZ(20);
  @$pb.TagNumber(21)
  set serverLastRevisionDatetime($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasServerLastRevisionDatetime() => $_has(20);
  @$pb.TagNumber(21)
  void clearServerLastRevisionDatetime() => clearField(21);
}

class OrderHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'businessSectionCode')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount0', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount1', $pb.PbFieldType.OD)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount2', $pb.PbFieldType.OD)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderTotalAmount', $pb.PbFieldType.OD)
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxFreeYn')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxFreeReason')
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preTipTaxAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipTotalAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentTipTaxAmount', $pb.PbFieldType.OD)
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'servingEmployeeId')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderEmployeeId')
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagerNumber', $pb.PbFieldType.O3)
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverLastRevisionDatetime')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentInitiatorId')
    ..aOB(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFinalized')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..hasRequiredFields = false
  ;

  OrderHistory._() : super();
  factory OrderHistory({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.String? tableId,
    $core.String? operationTypeCode,
    $core.String? businessSectionCode,
    $core.double? supplyValue,
    $core.double? supplyAmount,
    $core.double? taxAmount0,
    $core.double? taxAmount1,
    $core.double? taxAmount2,
    $core.double? discountTotalAmount,
    $core.double? orderTotalAmount,
    $core.bool? taxFreeYn,
    $core.String? taxFreeReason,
    $core.double? preTipTotalAmount,
    $core.double? preTipAmount,
    $core.double? preTipTaxAmount,
    $core.double? paymentTipTotalAmount,
    $core.double? paymentTipAmount,
    $core.double? paymentTipTaxAmount,
    $core.String? servingEmployeeId,
    $core.String? orderEmployeeId,
    $core.int? pagerNumber,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? serverLastRevisionDatetime,
    $core.String? paymentInitiatorId,
    $core.bool? isFinalized,
    $core.String? memo,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (tableId != null) {
      _result.tableId = tableId;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (businessSectionCode != null) {
      _result.businessSectionCode = businessSectionCode;
    }
    if (supplyValue != null) {
      _result.supplyValue = supplyValue;
    }
    if (supplyAmount != null) {
      _result.supplyAmount = supplyAmount;
    }
    if (taxAmount0 != null) {
      _result.taxAmount0 = taxAmount0;
    }
    if (taxAmount1 != null) {
      _result.taxAmount1 = taxAmount1;
    }
    if (taxAmount2 != null) {
      _result.taxAmount2 = taxAmount2;
    }
    if (discountTotalAmount != null) {
      _result.discountTotalAmount = discountTotalAmount;
    }
    if (orderTotalAmount != null) {
      _result.orderTotalAmount = orderTotalAmount;
    }
    if (taxFreeYn != null) {
      _result.taxFreeYn = taxFreeYn;
    }
    if (taxFreeReason != null) {
      _result.taxFreeReason = taxFreeReason;
    }
    if (preTipTotalAmount != null) {
      _result.preTipTotalAmount = preTipTotalAmount;
    }
    if (preTipAmount != null) {
      _result.preTipAmount = preTipAmount;
    }
    if (preTipTaxAmount != null) {
      _result.preTipTaxAmount = preTipTaxAmount;
    }
    if (paymentTipTotalAmount != null) {
      _result.paymentTipTotalAmount = paymentTipTotalAmount;
    }
    if (paymentTipAmount != null) {
      _result.paymentTipAmount = paymentTipAmount;
    }
    if (paymentTipTaxAmount != null) {
      _result.paymentTipTaxAmount = paymentTipTaxAmount;
    }
    if (servingEmployeeId != null) {
      _result.servingEmployeeId = servingEmployeeId;
    }
    if (orderEmployeeId != null) {
      _result.orderEmployeeId = orderEmployeeId;
    }
    if (pagerNumber != null) {
      _result.pagerNumber = pagerNumber;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (serverLastRevisionDatetime != null) {
      _result.serverLastRevisionDatetime = serverLastRevisionDatetime;
    }
    if (paymentInitiatorId != null) {
      _result.paymentInitiatorId = paymentInitiatorId;
    }
    if (isFinalized != null) {
      _result.isFinalized = isFinalized;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    return _result;
  }
  factory OrderHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderHistory clone() => OrderHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderHistory copyWith(void Function(OrderHistory) updates) => super.copyWith((message) => updates(message as OrderHistory)) as OrderHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderHistory create() => OrderHistory._();
  OrderHistory createEmptyInstance() => create();
  static $pb.PbList<OrderHistory> createRepeated() => $pb.PbList<OrderHistory>();
  @$core.pragma('dart2js:noInline')
  static OrderHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderHistory>(create);
  static OrderHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tableId => $_getSZ(2);
  @$pb.TagNumber(3)
  set tableId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTableId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTableId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get operationTypeCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set operationTypeCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOperationTypeCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearOperationTypeCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get businessSectionCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set businessSectionCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBusinessSectionCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBusinessSectionCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get supplyValue => $_getN(5);
  @$pb.TagNumber(6)
  set supplyValue($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSupplyValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupplyValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get supplyAmount => $_getN(6);
  @$pb.TagNumber(7)
  set supplyAmount($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSupplyAmount() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupplyAmount() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get taxAmount0 => $_getN(7);
  @$pb.TagNumber(8)
  set taxAmount0($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTaxAmount0() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaxAmount0() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get taxAmount1 => $_getN(8);
  @$pb.TagNumber(9)
  set taxAmount1($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTaxAmount1() => $_has(8);
  @$pb.TagNumber(9)
  void clearTaxAmount1() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get taxAmount2 => $_getN(9);
  @$pb.TagNumber(10)
  set taxAmount2($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTaxAmount2() => $_has(9);
  @$pb.TagNumber(10)
  void clearTaxAmount2() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get discountTotalAmount => $_getN(10);
  @$pb.TagNumber(11)
  set discountTotalAmount($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDiscountTotalAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearDiscountTotalAmount() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get orderTotalAmount => $_getN(11);
  @$pb.TagNumber(12)
  set orderTotalAmount($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasOrderTotalAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearOrderTotalAmount() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get taxFreeYn => $_getBF(12);
  @$pb.TagNumber(13)
  set taxFreeYn($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTaxFreeYn() => $_has(12);
  @$pb.TagNumber(13)
  void clearTaxFreeYn() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get taxFreeReason => $_getSZ(13);
  @$pb.TagNumber(14)
  set taxFreeReason($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTaxFreeReason() => $_has(13);
  @$pb.TagNumber(14)
  void clearTaxFreeReason() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get preTipTotalAmount => $_getN(14);
  @$pb.TagNumber(15)
  set preTipTotalAmount($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPreTipTotalAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearPreTipTotalAmount() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get preTipAmount => $_getN(15);
  @$pb.TagNumber(16)
  set preTipAmount($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasPreTipAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearPreTipAmount() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get preTipTaxAmount => $_getN(16);
  @$pb.TagNumber(17)
  set preTipTaxAmount($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPreTipTaxAmount() => $_has(16);
  @$pb.TagNumber(17)
  void clearPreTipTaxAmount() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get paymentTipTotalAmount => $_getN(17);
  @$pb.TagNumber(18)
  set paymentTipTotalAmount($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasPaymentTipTotalAmount() => $_has(17);
  @$pb.TagNumber(18)
  void clearPaymentTipTotalAmount() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get paymentTipAmount => $_getN(18);
  @$pb.TagNumber(19)
  set paymentTipAmount($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasPaymentTipAmount() => $_has(18);
  @$pb.TagNumber(19)
  void clearPaymentTipAmount() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get paymentTipTaxAmount => $_getN(19);
  @$pb.TagNumber(20)
  set paymentTipTaxAmount($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPaymentTipTaxAmount() => $_has(19);
  @$pb.TagNumber(20)
  void clearPaymentTipTaxAmount() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get servingEmployeeId => $_getSZ(20);
  @$pb.TagNumber(21)
  set servingEmployeeId($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasServingEmployeeId() => $_has(20);
  @$pb.TagNumber(21)
  void clearServingEmployeeId() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get orderEmployeeId => $_getSZ(21);
  @$pb.TagNumber(22)
  set orderEmployeeId($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasOrderEmployeeId() => $_has(21);
  @$pb.TagNumber(22)
  void clearOrderEmployeeId() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get pagerNumber => $_getIZ(22);
  @$pb.TagNumber(23)
  set pagerNumber($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasPagerNumber() => $_has(22);
  @$pb.TagNumber(23)
  void clearPagerNumber() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get firstRegistrantId => $_getSZ(23);
  @$pb.TagNumber(24)
  set firstRegistrantId($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasFirstRegistrantId() => $_has(23);
  @$pb.TagNumber(24)
  void clearFirstRegistrantId() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get firstRegistrationDatetime => $_getSZ(24);
  @$pb.TagNumber(25)
  set firstRegistrationDatetime($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasFirstRegistrationDatetime() => $_has(24);
  @$pb.TagNumber(25)
  void clearFirstRegistrationDatetime() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get lastReviserId => $_getSZ(25);
  @$pb.TagNumber(26)
  set lastReviserId($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasLastReviserId() => $_has(25);
  @$pb.TagNumber(26)
  void clearLastReviserId() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get lastRevisionDatetime => $_getSZ(26);
  @$pb.TagNumber(27)
  set lastRevisionDatetime($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasLastRevisionDatetime() => $_has(26);
  @$pb.TagNumber(27)
  void clearLastRevisionDatetime() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get stateCode => $_getSZ(27);
  @$pb.TagNumber(28)
  set stateCode($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasStateCode() => $_has(27);
  @$pb.TagNumber(28)
  void clearStateCode() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get serverLastRevisionDatetime => $_getSZ(28);
  @$pb.TagNumber(29)
  set serverLastRevisionDatetime($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasServerLastRevisionDatetime() => $_has(28);
  @$pb.TagNumber(29)
  void clearServerLastRevisionDatetime() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get paymentInitiatorId => $_getSZ(29);
  @$pb.TagNumber(30)
  set paymentInitiatorId($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasPaymentInitiatorId() => $_has(29);
  @$pb.TagNumber(30)
  void clearPaymentInitiatorId() => clearField(30);

  @$pb.TagNumber(31)
  $core.bool get isFinalized => $_getBF(30);
  @$pb.TagNumber(31)
  set isFinalized($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasIsFinalized() => $_has(30);
  @$pb.TagNumber(31)
  void clearIsFinalized() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get memo => $_getSZ(31);
  @$pb.TagNumber(32)
  set memo($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasMemo() => $_has(31);
  @$pb.TagNumber(32)
  void clearMemo() => clearField(32);
}

class OrderHistoryItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderHistoryItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upperItemSerialNumber', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OD)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyValue', $pb.PbFieldType.OD)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount0', $pb.PbFieldType.OD)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount1', $pb.PbFieldType.OD)
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxAmount2', $pb.PbFieldType.OD)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountSectionCode')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountRate', $pb.PbFieldType.OD)
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountAmount', $pb.PbFieldType.OD)
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountTypeCode')
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuDiscountAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderDiscountAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplyAmount', $pb.PbFieldType.OD)
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderOptionCode')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderHoldingTime')
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelSerialNumber', $pb.PbFieldType.O3)
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelEmployeeId')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelReason')
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuPaymentYn')
    ..a<$core.int>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuPaymentSerialNumber', $pb.PbFieldType.O3)
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  OrderHistoryItem._() : super();
  factory OrderHistoryItem({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.int? itemSerialNumber,
    $core.int? upperItemSerialNumber,
    $core.String? itemId,
    $core.String? storeTerminalId,
    $core.double? quantity,
    $core.double? price,
    $core.double? supplyValue,
    $core.double? taxAmount0,
    $core.double? taxAmount1,
    $core.double? taxAmount2,
    $core.String? discountSectionCode,
    $core.double? discountRate,
    $core.double? discountAmount,
    $core.String? discountTypeCode,
    $core.double? menuDiscountAmount,
    $core.double? orderDiscountAmount,
    $core.double? supplyAmount,
    $core.String? orderOptionCode,
    $core.String? orderHoldingTime,
    $core.int? cancelSerialNumber,
    $core.String? cancelEmployeeId,
    $core.String? cancelReason,
    $core.bool? menuPaymentYn,
    $core.int? menuPaymentSerialNumber,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (itemSerialNumber != null) {
      _result.itemSerialNumber = itemSerialNumber;
    }
    if (upperItemSerialNumber != null) {
      _result.upperItemSerialNumber = upperItemSerialNumber;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (price != null) {
      _result.price = price;
    }
    if (supplyValue != null) {
      _result.supplyValue = supplyValue;
    }
    if (taxAmount0 != null) {
      _result.taxAmount0 = taxAmount0;
    }
    if (taxAmount1 != null) {
      _result.taxAmount1 = taxAmount1;
    }
    if (taxAmount2 != null) {
      _result.taxAmount2 = taxAmount2;
    }
    if (discountSectionCode != null) {
      _result.discountSectionCode = discountSectionCode;
    }
    if (discountRate != null) {
      _result.discountRate = discountRate;
    }
    if (discountAmount != null) {
      _result.discountAmount = discountAmount;
    }
    if (discountTypeCode != null) {
      _result.discountTypeCode = discountTypeCode;
    }
    if (menuDiscountAmount != null) {
      _result.menuDiscountAmount = menuDiscountAmount;
    }
    if (orderDiscountAmount != null) {
      _result.orderDiscountAmount = orderDiscountAmount;
    }
    if (supplyAmount != null) {
      _result.supplyAmount = supplyAmount;
    }
    if (orderOptionCode != null) {
      _result.orderOptionCode = orderOptionCode;
    }
    if (orderHoldingTime != null) {
      _result.orderHoldingTime = orderHoldingTime;
    }
    if (cancelSerialNumber != null) {
      _result.cancelSerialNumber = cancelSerialNumber;
    }
    if (cancelEmployeeId != null) {
      _result.cancelEmployeeId = cancelEmployeeId;
    }
    if (cancelReason != null) {
      _result.cancelReason = cancelReason;
    }
    if (menuPaymentYn != null) {
      _result.menuPaymentYn = menuPaymentYn;
    }
    if (menuPaymentSerialNumber != null) {
      _result.menuPaymentSerialNumber = menuPaymentSerialNumber;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory OrderHistoryItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderHistoryItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderHistoryItem clone() => OrderHistoryItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderHistoryItem copyWith(void Function(OrderHistoryItem) updates) => super.copyWith((message) => updates(message as OrderHistoryItem)) as OrderHistoryItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderHistoryItem create() => OrderHistoryItem._();
  OrderHistoryItem createEmptyInstance() => create();
  static $pb.PbList<OrderHistoryItem> createRepeated() => $pb.PbList<OrderHistoryItem>();
  @$core.pragma('dart2js:noInline')
  static OrderHistoryItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderHistoryItem>(create);
  static OrderHistoryItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get upperItemSerialNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set upperItemSerialNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpperItemSerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpperItemSerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get itemId => $_getSZ(4);
  @$pb.TagNumber(5)
  set itemId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasItemId() => $_has(4);
  @$pb.TagNumber(5)
  void clearItemId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get storeTerminalId => $_getSZ(5);
  @$pb.TagNumber(6)
  set storeTerminalId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStoreTerminalId() => $_has(5);
  @$pb.TagNumber(6)
  void clearStoreTerminalId() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get quantity => $_getN(6);
  @$pb.TagNumber(7)
  set quantity($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuantity() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuantity() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get price => $_getN(7);
  @$pb.TagNumber(8)
  set price($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPrice() => $_has(7);
  @$pb.TagNumber(8)
  void clearPrice() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get supplyValue => $_getN(8);
  @$pb.TagNumber(9)
  set supplyValue($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSupplyValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearSupplyValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get taxAmount0 => $_getN(9);
  @$pb.TagNumber(10)
  set taxAmount0($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTaxAmount0() => $_has(9);
  @$pb.TagNumber(10)
  void clearTaxAmount0() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get taxAmount1 => $_getN(10);
  @$pb.TagNumber(11)
  set taxAmount1($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTaxAmount1() => $_has(10);
  @$pb.TagNumber(11)
  void clearTaxAmount1() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get taxAmount2 => $_getN(11);
  @$pb.TagNumber(12)
  set taxAmount2($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTaxAmount2() => $_has(11);
  @$pb.TagNumber(12)
  void clearTaxAmount2() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get discountSectionCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set discountSectionCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDiscountSectionCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearDiscountSectionCode() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get discountRate => $_getN(13);
  @$pb.TagNumber(14)
  set discountRate($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDiscountRate() => $_has(13);
  @$pb.TagNumber(14)
  void clearDiscountRate() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get discountAmount => $_getN(14);
  @$pb.TagNumber(15)
  set discountAmount($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDiscountAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearDiscountAmount() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get discountTypeCode => $_getSZ(15);
  @$pb.TagNumber(16)
  set discountTypeCode($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasDiscountTypeCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearDiscountTypeCode() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get menuDiscountAmount => $_getN(16);
  @$pb.TagNumber(17)
  set menuDiscountAmount($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMenuDiscountAmount() => $_has(16);
  @$pb.TagNumber(17)
  void clearMenuDiscountAmount() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get orderDiscountAmount => $_getN(17);
  @$pb.TagNumber(18)
  set orderDiscountAmount($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasOrderDiscountAmount() => $_has(17);
  @$pb.TagNumber(18)
  void clearOrderDiscountAmount() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get supplyAmount => $_getN(18);
  @$pb.TagNumber(19)
  set supplyAmount($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSupplyAmount() => $_has(18);
  @$pb.TagNumber(19)
  void clearSupplyAmount() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get orderOptionCode => $_getSZ(19);
  @$pb.TagNumber(20)
  set orderOptionCode($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasOrderOptionCode() => $_has(19);
  @$pb.TagNumber(20)
  void clearOrderOptionCode() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get orderHoldingTime => $_getSZ(20);
  @$pb.TagNumber(21)
  set orderHoldingTime($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasOrderHoldingTime() => $_has(20);
  @$pb.TagNumber(21)
  void clearOrderHoldingTime() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get cancelSerialNumber => $_getIZ(21);
  @$pb.TagNumber(22)
  set cancelSerialNumber($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasCancelSerialNumber() => $_has(21);
  @$pb.TagNumber(22)
  void clearCancelSerialNumber() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get cancelEmployeeId => $_getSZ(22);
  @$pb.TagNumber(23)
  set cancelEmployeeId($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasCancelEmployeeId() => $_has(22);
  @$pb.TagNumber(23)
  void clearCancelEmployeeId() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get cancelReason => $_getSZ(23);
  @$pb.TagNumber(24)
  set cancelReason($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasCancelReason() => $_has(23);
  @$pb.TagNumber(24)
  void clearCancelReason() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get menuPaymentYn => $_getBF(24);
  @$pb.TagNumber(25)
  set menuPaymentYn($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasMenuPaymentYn() => $_has(24);
  @$pb.TagNumber(25)
  void clearMenuPaymentYn() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get menuPaymentSerialNumber => $_getIZ(25);
  @$pb.TagNumber(26)
  set menuPaymentSerialNumber($core.int v) { $_setSignedInt32(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasMenuPaymentSerialNumber() => $_has(25);
  @$pb.TagNumber(26)
  void clearMenuPaymentSerialNumber() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get firstRegistrantId => $_getSZ(26);
  @$pb.TagNumber(27)
  set firstRegistrantId($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasFirstRegistrantId() => $_has(26);
  @$pb.TagNumber(27)
  void clearFirstRegistrantId() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get firstRegistrationDatetime => $_getSZ(27);
  @$pb.TagNumber(28)
  set firstRegistrationDatetime($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasFirstRegistrationDatetime() => $_has(27);
  @$pb.TagNumber(28)
  void clearFirstRegistrationDatetime() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get lastReviserId => $_getSZ(28);
  @$pb.TagNumber(29)
  set lastReviserId($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasLastReviserId() => $_has(28);
  @$pb.TagNumber(29)
  void clearLastReviserId() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get lastRevisionDatetime => $_getSZ(29);
  @$pb.TagNumber(30)
  set lastRevisionDatetime($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasLastRevisionDatetime() => $_has(29);
  @$pb.TagNumber(30)
  void clearLastRevisionDatetime() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get stateCode => $_getSZ(30);
  @$pb.TagNumber(31)
  set stateCode($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasStateCode() => $_has(30);
  @$pb.TagNumber(31)
  void clearStateCode() => clearField(31);
}

class OrderHistoryKitchenMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderHistoryKitchenMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoSerialNumber', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemoId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenMemo')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  OrderHistoryKitchenMemo._() : super();
  factory OrderHistoryKitchenMemo({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.int? itemSerialNumber,
    $core.int? kitchenMemoSerialNumber,
    $core.String? kitchenMemoId,
    $core.String? kitchenMemo,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (itemSerialNumber != null) {
      _result.itemSerialNumber = itemSerialNumber;
    }
    if (kitchenMemoSerialNumber != null) {
      _result.kitchenMemoSerialNumber = kitchenMemoSerialNumber;
    }
    if (kitchenMemoId != null) {
      _result.kitchenMemoId = kitchenMemoId;
    }
    if (kitchenMemo != null) {
      _result.kitchenMemo = kitchenMemo;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory OrderHistoryKitchenMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderHistoryKitchenMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderHistoryKitchenMemo clone() => OrderHistoryKitchenMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderHistoryKitchenMemo copyWith(void Function(OrderHistoryKitchenMemo) updates) => super.copyWith((message) => updates(message as OrderHistoryKitchenMemo)) as OrderHistoryKitchenMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderHistoryKitchenMemo create() => OrderHistoryKitchenMemo._();
  OrderHistoryKitchenMemo createEmptyInstance() => create();
  static $pb.PbList<OrderHistoryKitchenMemo> createRepeated() => $pb.PbList<OrderHistoryKitchenMemo>();
  @$core.pragma('dart2js:noInline')
  static OrderHistoryKitchenMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderHistoryKitchenMemo>(create);
  static OrderHistoryKitchenMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get kitchenMemoSerialNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set kitchenMemoSerialNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKitchenMemoSerialNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearKitchenMemoSerialNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get kitchenMemoId => $_getSZ(4);
  @$pb.TagNumber(5)
  set kitchenMemoId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasKitchenMemoId() => $_has(4);
  @$pb.TagNumber(5)
  void clearKitchenMemoId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get kitchenMemo => $_getSZ(5);
  @$pb.TagNumber(6)
  set kitchenMemo($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasKitchenMemo() => $_has(5);
  @$pb.TagNumber(6)
  void clearKitchenMemo() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstRegistrantId => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstRegistrantId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstRegistrantId() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstRegistrantId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstRegistrationDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstRegistrationDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstRegistrationDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstRegistrationDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastReviserId => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastReviserId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastReviserId() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastReviserId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get lastRevisionDatetime => $_getSZ(9);
  @$pb.TagNumber(10)
  set lastRevisionDatetime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastRevisionDatetime() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastRevisionDatetime() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get stateCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set stateCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStateCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearStateCode() => clearField(11);
}

class OrderHistoryDiscount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderHistoryDiscount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1.table'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonDate')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonSerialNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountSerialNumber', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountSectionCode')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountRate', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountAmount', $pb.PbFieldType.OD)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discountName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  OrderHistoryDiscount._() : super();
  factory OrderHistoryDiscount({
    $core.String? commonDate,
    $core.int? commonSerialNumber,
    $core.int? discountSerialNumber,
    $core.String? discountSectionCode,
    $core.double? discountRate,
    $core.double? discountAmount,
    $core.String? discountName,
    $core.String? itemId,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (commonDate != null) {
      _result.commonDate = commonDate;
    }
    if (commonSerialNumber != null) {
      _result.commonSerialNumber = commonSerialNumber;
    }
    if (discountSerialNumber != null) {
      _result.discountSerialNumber = discountSerialNumber;
    }
    if (discountSectionCode != null) {
      _result.discountSectionCode = discountSectionCode;
    }
    if (discountRate != null) {
      _result.discountRate = discountRate;
    }
    if (discountAmount != null) {
      _result.discountAmount = discountAmount;
    }
    if (discountName != null) {
      _result.discountName = discountName;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory OrderHistoryDiscount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderHistoryDiscount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderHistoryDiscount clone() => OrderHistoryDiscount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderHistoryDiscount copyWith(void Function(OrderHistoryDiscount) updates) => super.copyWith((message) => updates(message as OrderHistoryDiscount)) as OrderHistoryDiscount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderHistoryDiscount create() => OrderHistoryDiscount._();
  OrderHistoryDiscount createEmptyInstance() => create();
  static $pb.PbList<OrderHistoryDiscount> createRepeated() => $pb.PbList<OrderHistoryDiscount>();
  @$core.pragma('dart2js:noInline')
  static OrderHistoryDiscount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderHistoryDiscount>(create);
  static OrderHistoryDiscount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommonDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get commonSerialNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set commonSerialNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get discountSerialNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set discountSerialNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDiscountSerialNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscountSerialNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get discountSectionCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set discountSectionCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDiscountSectionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiscountSectionCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get discountRate => $_getN(4);
  @$pb.TagNumber(5)
  set discountRate($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiscountRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiscountRate() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get discountAmount => $_getN(5);
  @$pb.TagNumber(6)
  set discountAmount($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDiscountAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiscountAmount() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get discountName => $_getSZ(6);
  @$pb.TagNumber(7)
  set discountName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDiscountName() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscountName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get itemId => $_getSZ(7);
  @$pb.TagNumber(8)
  set itemId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasItemId() => $_has(7);
  @$pb.TagNumber(8)
  void clearItemId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstRegistrantId => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstRegistrantId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstRegistrantId() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstRegistrantId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get firstRegistrationDatetime => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstRegistrationDatetime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstRegistrationDatetime() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstRegistrationDatetime() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastReviserId => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastReviserId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastReviserId() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastReviserId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get lastRevisionDatetime => $_getSZ(11);
  @$pb.TagNumber(12)
  set lastRevisionDatetime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastRevisionDatetime() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastRevisionDatetime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get stateCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set stateCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStateCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearStateCode() => clearField(13);
}


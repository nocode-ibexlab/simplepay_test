import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'Util/DateTimeConverter.dart';
import 'dao.dart';
import 'db.dart';

part 'database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 26, entities: [
  AccountSubject,
  AdminUser,
  BasicData,
  BasicDataItem,
  CashdrawCashInOutHistory,
  CashierBankHistory,
  CashierBankHistoryBill,
  CommonId,
  DailyReportHistory,
  DailyReportHistoryPayments,
  Employee,
  EmployeeAuthority,
  EmployeeBreakHistory,
  EmployeeGroup,
  EmployeeWorkHistory,
  I18NTerm,
  InstallLog,
  IntegrityVerificationHistory,
  Item,
  ItemGroup,
  ItemOption,
  KitchenMemo,
  KitchenMemoGroup,
  MenuGroup,
  MenuGroupUse,
  MenuItem,
  Notice,
  OptionEntity,
  OptionGroup,
  OrderHistory,
  OrderHistoryDeletion,
  OrderHistoryCancelItem,
  OrderHistoryDiscount,
  OrderHistoryItem,
  OrderHistoryKitchenMemo,
  RequestPaymentHistory,
  SalesAccountHistory,
  SalesAccountHistoryDetails,
  SalesAccountHistoryTip,
  SalesHistory,
  SalesHistoryDiscount,
  SalesHistoryItem,
  SelfMenuGroup,
  SelfMenuItem,
  SetEntity,
  Store,
  StorePlace,
  StoreTerminal,
  StoreTerminalBasicData,
  StoreTerminalBasicDataItem,
  Table,
  TableDetail,
  TableGroup,
  TableLink,
  TableProcess,
  TemplateItem,
  EntranceRegistration
], views: [
  SalesHistoryDate
])
abstract class FlutterDatabase extends FloorDatabase {
  AccountSubjectDao get accountSubjectDao;

  AdminUserDao get adminUserDao;

  BasicDataDao get basicDataDao;

  BasicDataItemDao get basicDataItemDao;

  CashdrawCashInOutHistoryDao get cashdrawCashInOutHistoryDao;

  CashierBankHistoryDao get cashierBankHistoryDao;

  CashierBankHistoryBillDao get cashierBankHistoryBillDao;

  CommonIdDao get commonIdDao;

  DailyReportHistoryDao get dailyReportHistoryDao;

  DailyReportHistoryPaymentsDao get dailyReportHistoryPaymentsDao;

  EmployeeDao get employeeDao;

  EmployeeAuthorityDao get employeeAuthorityDao;

  EmployeeBreakHistoryDao get employeeBreakHistoryDao;

  EmployeeGroupDao get employeeGroupDao;

  EmployeeWorkHistoryDao get employeeWorkHistoryDao;

  I18NTermDao get i18NTermDao;

  InstallLogDao get installLogDao;

  IntegrityVerificationHistoryDao get integrityVerificationHistoryDao;

  ItemDao get itemDao;

  ItemGroupDao get itemGroupDao;

  ItemOptionDao get itemOptionDao;

  KitchenMemoDao get kitchenMemoDao;

  KitchenMemoGroupDao get kitchenMemoGroupDao;

  MenuGroupDao get menuGroupDao;

  MenuGroupUseDao get menuGroupUseDao;

  MenuItemDao get menuItemDao;

  NoticeDao get noticeDao;

  OptionEntityDao get optionEntityDao;

  OptionGroupDao get optionGroupDao;

  OrderHistoryDao get orderHistoryDao;

  OrderHistoryDeletionDao get orderHistoryDeletionDao;

  OrderHistoryCancelItemDao get orderHistoryCancelItemDao;

  OrderHistoryDiscountDao get orderHistoryDiscountDao;

  OrderHistoryItemDao get orderHistoryItemDao;

  OrderHistoryKitchenMemoDao get orderHistoryKitchenMemoDao;

  RequestPaymentHistoryDao get requestPaymentHistoryDao;

  SalesAccountHistoryDao get salesAccountHistoryDao;

  SalesAccountHistoryDetailsDao get salesAccountHistoryDetailsDao;

  SalesAccountHistoryTipDao get salesAccountHistoryTipDao;

  SalesHistoryDao get salesHistoryDao;

  SalesHistoryDiscountDao get salesHistoryDiscountDao;

  SalesHistoryItemDao get salesHistoryItemDao;

  SelfMenuGroupDao get selfMenuGroupDao;

  SelfMenuItemDao get selfMenuItemDao;

  SetEntityDao get setEntityDao;

  StoreDao get storeDao;

  StorePlaceDao get storePlaceDao;

  StoreTerminalDao get storeTerminalDao;

  StoreTerminalBasicDataDao get storeTerminalBasicDataDao;

  StoreTerminalBasicDataItemDao get storeTerminalBasicDataItemDao;

  TableDao get tableDao;

  TableDetailDao get tableDetailDao;

  TableGroupDao get tableGroupDao;

  TableLinkDao get tableLinkDao;

  TableProcessDao get tableProcessDao;

  TemplateItemDao get templateItemDao;

  EntranceRegistrationDao get entranceRegistrationDao;
}

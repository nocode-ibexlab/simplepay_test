import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Dao/TraceLogDao.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/LangCode.dart';
import 'package:simple_pay_api/src/Database/dao.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

class BaseBL_OPR_TP_CD {
  static BaseBL_OPR_TP_CD OPERATION_TYPE_SELL =
      BaseBL_OPR_TP_CD("0", LangCode.operation_sell);
  static BaseBL_OPR_TP_CD OPERATION_TYPE_BUY =
      BaseBL_OPR_TP_CD("1", LangCode.operation_buy);

  late String code;
  late int langCode;

  BaseBL_OPR_TP_CD(
    String code,
    int langCode,
  ) {
    this.code = code;
    this.langCode = langCode;
  }

  String getCode() {
    return code;
  }

  int getLangCode() {
    return langCode;
  }

  static BaseBL_OPR_TP_CD? getType(String? value) {
    switch (value) {
      case "0":
        return OPERATION_TYPE_SELL;
      case "1":
        return OPERATION_TYPE_BUY;

      default:
        return null;
    }
  }
}

abstract class BaseBL {
  static const STATE_DELETE = "99";
  static const String STATIC_STATE_DELETE = "99";

  static const int START_HNO = 101; // HNO 시작값
  static const int START_SNO = 1; // SNO 시작값

  CommonUtil? commonUtil;

  static String? _storeTerminalId;
  static String? _employeeId;
  static String? cashierInEmployeeId; //현재 캐셔인되어 있는 Employee ID
  static String? cashdrawSection="CB100";

  static late Map<int?, String?> lang;

  static late Map<int, String?> receiptLang;

  BaseBL() {}

  static String? get storeTerminalId => _storeTerminalId;

  static set storeTerminalId(String? value) {
    _storeTerminalId = value;
  }

  static String? get employeeId => _employeeId;

  static set employeeId(String? value) {
    _employeeId = value;
  }

  BasicDataDao? get basicDataDao => Common.db?.basicDataDao;

  BasicDataItemDao? get basicDataItemDao => Common.db?.basicDataItemDao;

  StoreTerminalBasicDataDao? get storeTerminalBasicDataDao =>
      Common.db?.storeTerminalBasicDataDao;

  StoreTerminalBasicDataItemDao? get storeTerminalBasicDataItemDao =>
      Common.db?.storeTerminalBasicDataItemDao;

  I18NTermDao? get i18NTermDao => Common.db?.i18NTermDao;

  AccountSubjectDao? get accountSubjectDao => Common.db?.accountSubjectDao;

  MenuGroupUseDao? get menuGroupUseDao => Common.db?.menuGroupUseDao;

  MenuGroupDao? get menuGroupDao => Common.db?.menuGroupDao;

  MenuItemDao? get menuItemDao => Common.db?.menuItemDao;

  KitchenMemoGroupDao? get kitchenMemoGroupDao =>
      Common.db?.kitchenMemoGroupDao;

  KitchenMemoDao? get kitchenMemoDao => Common.db?.kitchenMemoDao;

  StoreTerminalDao? get storeTerminalDao => Common.db?.storeTerminalDao;

  NoticeDao? get noticeDao => Common.db?.noticeDao;

  StoreDao? get storeDao => Common.db?.storeDao;

  AdminUserDao? get adminUserDao => Common.db?.adminUserDao;

  EmployeeGroupDao? get employeeGroupDao => Common.db?.employeeGroupDao;

  EmployeeDao? get employeeDao => Common.db?.employeeDao;

  EmployeeAuthorityDao? get employeeAuthorityDao =>
      Common.db?.employeeAuthorityDao;

  EmployeeWorkHistoryDao? get employeeWorkHistoryDao =>
      Common.db?.employeeWorkHistoryDao;

  EmployeeBreakHistoryDao? get employeeBreakHistoryDao =>
      Common.db?.employeeBreakHistoryDao;

  OptionGroupDao? get optionGroupDao => Common.db?.optionGroupDao;

  OptionEntityDao? get optionEntityDao => Common.db?.optionEntityDao;

  SetEntityDao? get setEntityDao => Common.db?.setEntityDao;

  ItemGroupDao? get itemGroupDao => Common.db?.itemGroupDao;

  ItemDao? get itemDao => Common.db?.itemDao;

  ItemOptionDao? get itemOptionDao => Common.db?.itemOptionDao;

  TableGroupDao? get tableGroupDao => Common.db?.tableGroupDao;

  TableDao? get tableDao => Common.db?.tableDao;

  TableDetailDao? get tableDetailDao => Common.db?.tableDetailDao;

  TableProcessDao? get tableProcessDao => Common.db?.tableProcessDao;

  SelfMenuGroupDao? get selfMenuGroupDao => Common.db?.selfMenuGroupDao;

  SelfMenuItemDao? get selfMenuItemDao => Common.db?.selfMenuItemDao;

  TemplateItemDao? get templateItemDao => Common.db?.templateItemDao;

  StorePlaceDao? get storePlaceDao => Common.db?.storePlaceDao;

  CommonIdDao? get commonIdDao => Common.db?.commonIdDao;

  OrderHistoryDao? get orderHistoryDao => Common.db?.orderHistoryDao;

  OrderHistoryDeletionDao? get orderHistoryDeletionDao =>
      Common.db?.orderHistoryDeletionDao;

  OrderHistoryItemDao? get orderHistoryItemDao =>
      Common.db?.orderHistoryItemDao;

  OrderHistoryKitchenMemoDao? get orderKitchenMemoDao =>
      Common.db?.orderHistoryKitchenMemoDao;

  OrderHistoryDiscountDao? get orderHistoryDiscountDao =>
      Common.db?.orderHistoryDiscountDao;

  OrderHistoryCancelItemDao? get orderHistoryCancelItemDao =>
      Common.db?.orderHistoryCancelItemDao;

  SalesHistoryDiscountDao? get salesHistoryDiscountDao =>
      Common.db?.salesHistoryDiscountDao;

  CashierBankHistoryDao? get cashierBankHistoryDao =>
      Common.db?.cashierBankHistoryDao;

  CashierBankHistoryBillDao? get cashierBankHistoryBillDao =>
      Common.db?.cashierBankHistoryBillDao;

  CashdrawCashInOutHistoryDao? get cashdrawHistoryDao =>
      Common.db?.cashdrawCashInOutHistoryDao;

  InstallLogDao? get installLogDao => Common.db?.installLogDao;

  SalesHistoryDiscountDao? get saleDiscountDao =>
      Common.db?.salesHistoryDiscountDao;

  SalesAccountHistoryDao? get saleACDao => Common.db?.salesAccountHistoryDao;

  SalesAccountHistoryDetailsDao? get saleACDetailDao =>
      Common.db?.salesAccountHistoryDetailsDao;

  SalesHistoryDao? get saleHDao => Common.db?.salesHistoryDao;

  SalesHistoryItemDao? get saleItemDao => Common.db?.salesHistoryItemDao;

  SalesAccountHistoryTipDao? get saleTipDao =>
      Common.db?.salesAccountHistoryTipDao;

  DailyReportHistoryDao? get dailyReportHistoryDao =>
      Common.db?.dailyReportHistoryDao;

  DailyReportHistoryPaymentsDao? get dailyReportHistoryPaymentsDao =>
      Common.db?.dailyReportHistoryPaymentsDao;

  TableLinkDao? get tableLinkDao => Common.db?.tableLinkDao;

  IntegrityVerificationHistoryDao? get variousLogDao =>
      Common.db?.integrityVerificationHistoryDao;

  RequestPaymentHistoryDao? get requestPaymentHistoryDao =>
      Common.db?.requestPaymentHistoryDao;

  TraceLogDao? get traceLogDao => Common.traceDb?.traceLogDao;

  EntranceRegistrationDao? get entranceRegistrationDao =>
      Common.db?.entranceRegistrationDao;

  // 주문 동기화로 인해 주문 번호가 단말기 단위가 아닌 상점 단위에서 고유하여야 함
  // 서버에서 주문 번호를 생성하게 하는 방법은 네트워크가 불안정활 경우도 고려해야 함
  //
  // 원래 단말기의 최초 주문 시작 시간만으로도 고유한 주문 번호를 발급받을 수 있음
  // 주문 번호에 store terminal id를 포함하면 좋겠지만 주문 번호가 너무 길어지고 주문 로직도 수정되어야 함
  // 대신 주문 번호에 store terminal id 정보도 일부 포함하도록 함
  int getCommonSerialNumber() {
    int terminalPart = BaseBL.storeTerminalId.hashCode % 100;
    int timePart = int.tryParse(DateFormat('mmss').format(DateTime.now())) ?? 0;
    return (terminalPart * 10000 + timePart) * 1000 + START_HNO;
  }
}

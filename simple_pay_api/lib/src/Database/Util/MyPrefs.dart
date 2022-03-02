import 'package:shared_preferences/shared_preferences.dart';

import 'BuildConfig.dart';

class MyPrefs {
  static final MyPrefs _singleton = MyPrefs._internal();

  factory MyPrefs() => _singleton;

  MyPrefs._internal();

  // SharedPreferences pref;
  ServerIndex? _serverIndex;
  RegisterNo? _registerNo;
  StoreTerminalId? _storeTerminalId;
  LoginId? _loginId;
  LoginPassword? _loginPassword;
  LoginDomain? _loginDomain;
  LoginSuccess? _loginSuccess;
  CurrencySymbol? _currencySymbol;
  DeviceKey? _deviceKey;
  AgentCode? _agentCode;
  NetworkCheckTime? _networkCheckTime;
  DbRestored? _dbRestored;
  ShowCode? _showCode;
  UseOrderSync? _useOrderSync;
  AuthToken? _authToken;
  CustomMemo? _customMemo;
  RingtoneOnNewOrder? _ringtoneOnNewOrder;
  TakeoutPrice? _takeoutPrice;
  TookAutoOpenClose? _tookAutoOpenClose;
  TookOpenDays? _tookOpenDays;
  TookAutoOpenTime? _tookAutoOpenTime;
  TookAutoCloseTime? _tookAutoCloseTime;
  Uuid? _uuid;
  TookToken? _tookToken;
  TookOpenTime? _tookOpenTime;
  TookStoreClosed? _tookStoreClosed;
  TookNotificationToken? _tookNotificationToken;
  BtPrinterAddress? _btPrinterAddress;
  IsSecurityLoginPw? _isSecurityLoginPw;
  SelfOrderNumber? _selfOrderNumber;
  CrmProtocolVersion? _crmProtocolVersion;
  CrmServerIp? _crmServerIp;
  CrmServerPort? _crmServerPort;
  CrmTerminalNumber? _crmTerminalNumber;
  CrmDomainType? _crmDomainType;
  CrmTaxType? _crmTaxType;
  CrmTaxationType? _crmTaxationType;
  CrmTaxPercent? _crmTaxPercent;
  IsCrmTaxInTotalSum? _isCrmTaxInTotalSum;
  CrmOperatorCode? _crmOperatorCode;
  CrmOperatorName? _crmOperatorName;
  WithdrawMoney? _withdrawMoney;
  KkmRegInfoFnsKkmId? _kkmRegInfoFnsKkmId;
  KkmRegInfoSerialNumber? _kkmRegInfoSerialNumber;
  OrgRegInfoTitle? _orgRegInfoTitle;
  OrgRegInfoAddress? _orgRegInfoAddress;
  PosRegInfoTitle? _posRegInfoTitle;
  PosRegInfoAddress? _posRegInfoAddress;
  OrgRegInfoInn? _orgRegInfoInn;
  TicketAdText? _ticketAdText;
  CrmReqNum? _crmReqNum;
  CrmRegistered? _crmRegistered;
  ShiftNumber? _shiftNumber;
  UseCrm? _useCrm;
  DisplayTheme? _displayTheme;
  BarcodeScannerMode? _barcodeScannerMode;
  BarcodeScannerType? _barcodeScannerType;
  TransactionNo? _transactionNo;
  TransactionData? _transactionData;
  UseWebKassa? _useWebKassa;
  UseWebKassaAutoRegistration? _useWebKassaAutoRegistration;
  IsSync _isSync = IsSync(false);
  LastSyncTime _lastSyncTime = LastSyncTime('');

  void init() {
    _serverIndex = ServerIndex(0);
    _registerNo = RegisterNo("");
    _storeTerminalId = StoreTerminalId("");
    _loginId = LoginId("");
    _loginPassword = LoginPassword("");
    _loginDomain = LoginDomain("");
    _loginSuccess = LoginSuccess(false);
    _currencySymbol = CurrencySymbol("");
    _deviceKey = DeviceKey("");
    _agentCode = AgentCode("1000");
    _networkCheckTime = NetworkCheckTime("");
    _dbRestored = DbRestored(false);
    _showCode = ShowCode(false);
    if ("YOSHOP_POS_HH" == (BuildConfig.APP_DISTINCT_KEYWORD)) {
      _useOrderSync = UseOrderSync(false);
    } else {
      _useOrderSync = UseOrderSync(true);
    }
    _authToken = AuthToken("");
    _customMemo = CustomMemo("");
    _ringtoneOnNewOrder = RingtoneOnNewOrder(true);
    _takeoutPrice = TakeoutPrice(100);
    _tookAutoOpenClose = TookAutoOpenClose(true);
    _tookOpenDays = TookOpenDays("12345");
    _tookAutoOpenTime = TookAutoOpenTime("09:00");
    _tookAutoCloseTime = TookAutoCloseTime("18:00");
    _uuid = Uuid("");
    _tookToken = TookToken("");
    _tookOpenTime = TookOpenTime(0);
    _tookStoreClosed = TookStoreClosed(false);
    _tookNotificationToken = TookNotificationToken("");
    _btPrinterAddress = BtPrinterAddress("00:00:00:00:00:00");
    _isSecurityLoginPw = IsSecurityLoginPw(false);
    _selfOrderNumber = SelfOrderNumber(0);

    _crmProtocolVersion = CrmProtocolVersion(125);
    _crmServerIp = CrmServerIp("crm-gw.yoshop.net");
    _crmServerPort = CrmServerPort(443);
    _crmTerminalNumber = CrmTerminalNumber(-1);
    _crmDomainType = CrmDomainType(0);
    _crmTaxType = CrmTaxType(100);
    _crmTaxationType = CrmTaxationType(100);
    _crmTaxPercent = CrmTaxPercent(10);
    _isCrmTaxInTotalSum = IsCrmTaxInTotalSum(true);
    _crmOperatorCode = CrmOperatorCode(1234);
    _crmOperatorName = CrmOperatorName("Operator");
    _withdrawMoney = WithdrawMoney(false);
    _kkmRegInfoFnsKkmId = KkmRegInfoFnsKkmId("");
    _kkmRegInfoSerialNumber = KkmRegInfoSerialNumber("");
    _orgRegInfoTitle = OrgRegInfoTitle("");
    _orgRegInfoAddress = OrgRegInfoAddress("");
    _posRegInfoTitle = PosRegInfoTitle("");
    _posRegInfoAddress = PosRegInfoAddress("");
    _orgRegInfoInn = OrgRegInfoInn("");
    _ticketAdText = TicketAdText("");
    _crmReqNum = CrmReqNum(0);
    _crmRegistered = CrmRegistered(false);
    _shiftNumber = ShiftNumber(1);
    _useCrm = UseCrm(false);
    _displayTheme = DisplayTheme("1");
    _barcodeScannerMode = BarcodeScannerMode("0");
    _barcodeScannerType = BarcodeScannerType(0);
    _transactionNo = TransactionNo(null);
    _transactionData = TransactionData(null);
    _useWebKassa = UseWebKassa(false);
    _useWebKassaAutoRegistration = UseWebKassaAutoRegistration(false);
  }

  ServerIndex? serverIndex() {
    return _serverIndex;
  }

  RegisterNo? registerNo() {
    return _registerNo;
  }

  StoreTerminalId? storeTerminalId() {
    return _storeTerminalId;
  }

  LoginId? loginId() {
    return _loginId;
  }

  LoginPassword? loginPassword() {
    return _loginPassword;
  }

  LoginDomain? loginDomain() {
    return _loginDomain;
  }

  LoginSuccess? loginSuccess() {
    return _loginSuccess;
  }

  CurrencySymbol? currencySymbol() {
    return _currencySymbol;
  }

  DeviceKey? deviceKey() {
    return _deviceKey;
  }

  AgentCode? agentCode() {
    return _agentCode;
  }

  NetworkCheckTime? networkCheckTime() {
    return _networkCheckTime;
  }

  DbRestored? dbRestored() {
    return _dbRestored;
  }

  ShowCode? showCode() {
    return _showCode;
  }

  UseOrderSync? useOrderSync() {
    return _useOrderSync;
  }

  AuthToken? authToken() {
    return _authToken;
  }

  CustomMemo? customMemo() {
    return _customMemo;
  }

  RingtoneOnNewOrder? ringtoneOnNewOrder() {
    return _ringtoneOnNewOrder;
  }

  TakeoutPrice? takeoutPrice() {
    return _takeoutPrice;
  }

  TookAutoOpenClose? tookAutoOpenClose() {
    return _tookAutoOpenClose;
  }

  TookOpenDays? tookOpenDays() {
    return _tookOpenDays;
  }

  TookAutoOpenTime? tookAutoOpenTime() {
    return _tookAutoOpenTime;
  }

  TookAutoCloseTime? tookAutoCloseTime() {
    return _tookAutoCloseTime;
  }

  Uuid? uuid() {
    return _uuid;
  }

  TookToken? tookToken() {
    return _tookToken;
  }

  TookOpenTime? tookOpenTime() {
    return _tookOpenTime;
  }

  TookStoreClosed? tookStoreClosed() {
    return _tookStoreClosed;
  }

  TookNotificationToken? tookNotificationToken() {
    return _tookNotificationToken;
  }

  BtPrinterAddress? btPrinterAddress() {
    return _btPrinterAddress;
  }

  IsSecurityLoginPw? isSecurityLoginPw() {
    return _isSecurityLoginPw;
  }

  SelfOrderNumber? selfOrderNumber() {
    return _selfOrderNumber;
  }

  CrmProtocolVersion? crmProtocolVersion() {
    return _crmProtocolVersion;
  }

  CrmServerIp? crmServerIp() {
    return _crmServerIp;
  }

  CrmServerPort? crmServerPort() {
    return _crmServerPort;
  }

  CrmTerminalNumber? crmTerminalNumber() {
    return _crmTerminalNumber;
  }

  CrmDomainType? crmDomainType() {
    return _crmDomainType;
  }

  CrmTaxType? crmTaxType() {
    return _crmTaxType;
  }

  CrmTaxationType? crmTaxationType() {
    return _crmTaxationType;
  }

  CrmTaxPercent? crmTaxPercent() {
    return _crmTaxPercent;
  }

  IsCrmTaxInTotalSum? isCrmTaxInTotalSum() {
    return _isCrmTaxInTotalSum;
  }

  CrmOperatorCode? crmOperatorCode() {
    return _crmOperatorCode;
  }

  CrmOperatorName? crmOperatorName() {
    return _crmOperatorName;
  }

  WithdrawMoney? withdrawMoney() {
    return _withdrawMoney;
  }

  KkmRegInfoFnsKkmId? kkmRegInfoFnsKkmId() {
    return _kkmRegInfoFnsKkmId;
  }

  KkmRegInfoSerialNumber? kkmRegInfoSerialNumber() {
    return _kkmRegInfoSerialNumber;
  }

  OrgRegInfoTitle? orgRegInfoTitle() {
    return _orgRegInfoTitle;
  }

  OrgRegInfoAddress? orgRegInfoAddress() {
    return _orgRegInfoAddress;
  }

  PosRegInfoTitle? posRegInfoTitle() {
    return _posRegInfoTitle;
  }

  PosRegInfoAddress? posRegInfoAddress() {
    return _posRegInfoAddress;
  }

  OrgRegInfoInn? orgRegInfoInn() {
    return _orgRegInfoInn;
  }

  TicketAdText? ticketAdText() {
    return _ticketAdText;
  }

  CrmReqNum? crmReqNum() {
    return _crmReqNum;
  }

  CrmRegistered? crmRegistered() {
    return _crmRegistered;
  }

  ShiftNumber? shiftNumber() {
    return _shiftNumber;
  }

  UseCrm? useCrm() {
    return _useCrm;
  }

  DisplayTheme? displayTheme() {
    return _displayTheme;
  }

  BarcodeScannerMode? barcodeScannerMode() {
    return _barcodeScannerMode;
  }

  BarcodeScannerType? barcodeScannerType() {
    return _barcodeScannerType;
  }

  TransactionNo? transactionNo() {
    return _transactionNo;
  }

  TransactionData? transactionData() {
    return _transactionData;
  }

  UseWebKassa? useWebKassa() {
    return _useWebKassa;
  }

  UseWebKassaAutoRegistration? useWebKassaAutoRegistration() {
    return _useWebKassaAutoRegistration;
  }

  IsSync isSync() => _isSync;

  LastSyncTime lastSyncTime() => _lastSyncTime;
}
///////////////////////////////////////////////////////////

class ServerIndex extends IntegerPrefField {
  ServerIndex(int defaultValue) : super("serverIndex", defaultValue);
}

class RegisterNo extends StringPrefField {
  RegisterNo(String defaultValue) : super("registerNo", defaultValue);
}

class StoreTerminalId extends StringPrefField {
  StoreTerminalId(String defaultValue) : super("storeTerminalId", defaultValue);
}

class LoginId extends StringPrefField {
  LoginId(String defaultValue) : super("loginId", defaultValue);
}

class LoginPassword extends StringPrefField {
  LoginPassword(String defaultValue) : super("loginPassword", defaultValue);
}

class LoginDomain extends StringPrefField {
  LoginDomain(String defaultValue) : super("loginDomain", defaultValue);
}

class LoginSuccess extends BooleanPrefField {
  LoginSuccess(bool defaultValue) : super("loginSuccess", defaultValue);
}

class CurrencySymbol extends StringPrefField {
  CurrencySymbol(String defaultValue) : super("currencySymbol", defaultValue);
}

class DeviceKey extends StringPrefField {
  DeviceKey(String defaultValue) : super("deviceKey", defaultValue);
}

class AgentCode extends StringPrefField {
  AgentCode(String defaultValue) : super("agentCode", defaultValue);
}

class NetworkCheckTime extends StringPrefField {
  NetworkCheckTime(String defaultValue)
      : super("networkCheckTime", defaultValue);
}

class DbRestored extends BooleanPrefField {
  DbRestored(bool defaultValue) : super("dbRestored", defaultValue);
}

class ShowCode extends BooleanPrefField {
  ShowCode(bool defaultValue) : super("showCode", defaultValue);
}

class UseOrderSync extends BooleanPrefField {
  UseOrderSync(bool defaultValue) : super("useOrderSync", defaultValue);
}

class AuthToken extends StringPrefField {
  AuthToken(String defaultValue) : super("authToken", defaultValue);
}

class CustomMemo extends StringPrefField {
  CustomMemo(String defaultValue) : super("customMemo", defaultValue);
}

class RingtoneOnNewOrder extends BooleanPrefField {
  RingtoneOnNewOrder(bool defaultValue)
      : super("ringtoneOnNewOrder", defaultValue);
}

class TakeoutPrice extends IntegerPrefField {
  TakeoutPrice(int defaultValue) : super("takeoutPrice", defaultValue);
}

class TookAutoOpenClose extends BooleanPrefField {
  TookAutoOpenClose(bool defaultValue)
      : super("tookAutoOpenClose", defaultValue);
}

class TookOpenDays extends StringPrefField {
  TookOpenDays(String defaultValue) : super("tookOpenDays", defaultValue);
}

class TookAutoOpenTime extends StringPrefField {
  TookAutoOpenTime(String defaultValue)
      : super("tookAutoOpenTime", defaultValue);
}

class TookAutoCloseTime extends StringPrefField {
  TookAutoCloseTime(String defaultValue)
      : super("tookAutoCloseTime", defaultValue);
}

class Uuid extends StringPrefField {
  Uuid(String defaultValue) : super("uuid", defaultValue);
}

class TookToken extends StringPrefField {
  TookToken(String defaultValue) : super("tookToken", defaultValue);
}

class TookOpenTime extends LongPrefField {
  TookOpenTime(int defaultValue) : super("tookOpenTime", defaultValue);
}

class TookStoreClosed extends BooleanPrefField {
  TookStoreClosed(bool defaultValue) : super("tookStoreClosed", defaultValue);
}

class TookNotificationToken extends StringPrefField {
  TookNotificationToken(String defaultValue)
      : super("tookNotificationToken", defaultValue);
}

class BtPrinterAddress extends StringPrefField {
  BtPrinterAddress(String defaultValue)
      : super("btPrinterAddress", defaultValue);
}

class IsSecurityLoginPw extends BooleanPrefField {
  IsSecurityLoginPw(bool defaultValue)
      : super("isSecurityLoginPw", defaultValue);
}

class SelfOrderNumber extends IntegerPrefField {
  SelfOrderNumber(int defaultValue) : super("selfOrderNumber", defaultValue);
}

class CrmProtocolVersion extends IntegerPrefField {
  CrmProtocolVersion(int defaultValue)
      : super("crmProtocolVersion", defaultValue);
}

// CRM, Cash Register Machine, 회계서버주소
class CrmServerIp extends StringPrefField {
  CrmServerIp(String defaultValue) : super("crmServerIp", defaultValue);
}

// 회계서버포트
class CrmServerPort extends IntegerPrefField {
  CrmServerPort(int defaultValue) : super("crmServerPort", defaultValue);
}

// 금전등록기 터미널번호
class CrmTerminalNumber extends IntegerPrefField {
  CrmTerminalNumber(int defaultValue)
      : super("crmTerminalNumber", defaultValue);
}

// 사업영역, DomainTypeEnum
class CrmDomainType extends IntegerPrefField {
  CrmDomainType(int defaultValue) : super("crmDomainType", defaultValue);
}

// 세금유형, TaxTypeEnum
class CrmTaxType extends IntegerPrefField {
  CrmTaxType(int defaultValue) : super("crmTaxType", defaultValue);
}

// 과세유형, TaxationTypeEnum
class CrmTaxationType extends IntegerPrefField {
  CrmTaxationType(int defaultValue) : super("crmTaxationType", defaultValue);
}

// 세율, The value of the tax percentage
class CrmTaxPercent extends IntegerPrefField {
  CrmTaxPercent(int defaultValue) : super("crmTaxPercent", defaultValue);
}

// 전체상품에 세금포함여부
class IsCrmTaxInTotalSum extends BooleanPrefField {
  IsCrmTaxInTotalSum(bool defaultValue)
      : super("isCrmTaxInTotalSum", defaultValue);
}

// 계산원정보, The code of the operator-cashier
class CrmOperatorCode extends IntegerPrefField {
  CrmOperatorCode(int defaultValue) : super("crmOperatorCode", defaultValue);
}

// 계산원이름, The name of the operator-cashier
class CrmOperatorName extends StringPrefField {
  CrmOperatorName(String defaultValue) : super("crmOperatorName", defaultValue);
}

// 마감후 현금 자동 출금여부   true : 자동출금
class WithdrawMoney extends BooleanPrefField {
  WithdrawMoney(bool defaultValue) : super("withdrawMoney", defaultValue);
}

class KkmRegInfoFnsKkmId extends StringPrefField {
  KkmRegInfoFnsKkmId(String defaultValue)
      : super("kkmRegInfoFnsKkmId", defaultValue);
}

class KkmRegInfoSerialNumber extends StringPrefField {
  KkmRegInfoSerialNumber(String defaultValue)
      : super("kkmRegInfoSerialNumber", defaultValue);
}

class OrgRegInfoTitle extends StringPrefField {
  OrgRegInfoTitle(String defaultValue) : super("orgRegInfoTitle", defaultValue);
}

class OrgRegInfoAddress extends StringPrefField {
  OrgRegInfoAddress(String defaultValue)
      : super("orgRegInfoAddress", defaultValue);
}

class PosRegInfoTitle extends StringPrefField {
  PosRegInfoTitle(String defaultValue) : super("posRegInfoTitle", defaultValue);
}

class PosRegInfoAddress extends StringPrefField {
  PosRegInfoAddress(String defaultValue)
      : super("posRegInfoAddress", defaultValue);
}

class OrgRegInfoInn extends StringPrefField {
  OrgRegInfoInn(String defaultValue) : super("orgRegInfoInn", defaultValue);
}

class TicketAdText extends StringPrefField {
  TicketAdText(String defaultValue) : super("ticketAdText", defaultValue);
}

// 요청번호
class CrmReqNum extends IntegerPrefField {
  CrmReqNum(int defaultValue) : super("crmReqNum", defaultValue);
}

// CRM 등록여부 (토큰을 가지고 최초 Info 를 받은 경우 등록되었다고 판단함)
class CrmRegistered extends BooleanPrefField {
  CrmRegistered(bool defaultValue) : super("crmRegistered", defaultValue);
}

// Shift Number
class ShiftNumber extends IntegerPrefField {
  ShiftNumber(int defaultValue) : super("shiftNumber", defaultValue);
}

class UseCrm extends BooleanPrefField {
  UseCrm(bool defaultValue) : super("useCrm", defaultValue);
}

class DisplayTheme extends StringPrefField {
  DisplayTheme(String defaultValue) : super("displayTheme", defaultValue);
}

class BarcodeScannerMode extends StringPrefField {
  BarcodeScannerMode(String defaultValue)
      : super("barcodeScannerMode", defaultValue);
}

class BarcodeScannerType extends IntegerPrefField {
  BarcodeScannerType(int defaultType) : super("barcodeReaderType", defaultType);
}

class TransactionNo extends StringPrefField {
  TransactionNo(String? defaultValue) : super("transactionNo", defaultValue);
}

class TransactionData extends StringPrefField {
  TransactionData(String? defaultValue)
      : super("transactionSource", defaultValue);
}

class UseWebKassa extends BooleanPrefField {
  UseWebKassa(bool defaultValue) : super("useWebKassa", defaultValue);
}

class UseWebKassaAutoRegistration extends BooleanPrefField {
  UseWebKassaAutoRegistration(bool defaultValue)
      : super("useWebKassaAutoRegistration", defaultValue);
}

class IsSync extends BooleanPrefField {
  IsSync(bool defaultValue) : super('isSync', defaultValue);
}

class LastSyncTime extends StringPrefField {
  LastSyncTime(String defaultValue) : super('lastSyncTime', defaultValue);
}

///////////////////////////////////////////////////////

abstract class IntegerPrefField {
  late String key;
  int? defaultValue;

  IntegerPrefField(String key, int defaultValue) {
    this.key = key;
    this.defaultValue = defaultValue;
  }

  Future<int?> get() async {
    var pref = await SharedPreferences.getInstance();
    if (pref.containsKey(key)) {
      return pref.getInt(key);
    } else {
      return defaultValue;
    }
  }

  Future<void> put(int value) async {
    var pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }
}

abstract class StringPrefField {
  late String key;
  String? defaultValue;

  StringPrefField(String key, String? defaultValue) {
    this.key = key;
    this.defaultValue = defaultValue;
  }

  Future<String?> get() async {
    var pref = await SharedPreferences.getInstance();
    if (pref.containsKey(key)) {
      return pref.getString(key);
    } else {
      return defaultValue;
    }
  }

  Future<void> put(String value) async {
    var pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }
}

abstract class BooleanPrefField {
  late String key;
  bool? defaultValue;

  BooleanPrefField(String key, bool defaultValue) {
    this.key = key;
    this.defaultValue = defaultValue;
  }

  Future<bool?> get() async {
    var pref = await SharedPreferences.getInstance();
    if (pref.containsKey(key)) {
      return pref.getBool(key);
    } else {
      return defaultValue;
    }
  }

  Future<void> put(bool value) async {
    var pref = await SharedPreferences.getInstance();
    pref.setBool(key, value);
  }
}

abstract class LongPrefField {
  late String key;
  int? defaultValue;

  LongPrefField(String key, int defaultValue) {
    this.key = key;
    this.defaultValue = defaultValue;
  }

  Future<int?> get() async {
    var pref = await SharedPreferences.getInstance();
    if (pref.containsKey(key)) {
      return pref.getInt(key);
    } else {
      return defaultValue;
    }
  }

  Future<void> put(int value) async {
    var pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }
}

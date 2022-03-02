import 'package:simple_pay_api/src/Database/Util/BuildConfig.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/MyPrefs.dart';
import 'package:simple_pay_api/src/Database/Util/Security.dart';
import 'package:simple_pay_api/src/Database/Util/UpdateServerInfo.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'Resources.dart';

class OperationBL extends BaseBL {
  static const String TAG = "OperationBL";
  static const String MODEL_NONE = "000";
  static const String MODEL_USER_DEFINED = "999";
  static const String VAN_KOVAN_MP506 = "107";
  static const String SIGN_PAD_TYPE_KOVAN = "01";
  static const String SIGN_PAD_TYPE_KICC = "02";
  static const String SIGN_PAD_TYPE_KCP = "03";
  static const String SIGN_PAD_TYPE_IP = "04";
  static const String SIGN_PAD_TYPE_KSNET = "05";

  static const String PRINTER_TYPE_IP = "01";
  static const String PRINTER_TYPE_SERIAL = "02";
  static const String PRINTER_TYPE_USB_1 = "03";
  static const String PRINTER_TYPE_USB_2 = "04";
  static const String PRINTER_TYPE_BLUETOOTH = "05";
  static const String PRINTER_TYPE_EMBEDDED = "06";
  static const String PRINTER_TYPE_CENTERM = "07";
  static const String PRINTER_TYPE_COBALT = "08";
  static const String PRINTER_TYPE_CAYSN = "09";
  static const String PRINTER_TYPE_CENTERM_IMAGE = "10";
  static const String PAPER_SIZE_2 = "01";
  static const String POS_TYPE_RETAIL = "01";
  static const String POS_TYPE_RESTAURANT = "02";
  static const String PAGER_BELLTECK = "001";
  static const String STORE_TOOK = "01";
  static const String SERVICE_PICKUP = "01";
  static const String MAX_CHARACTER_DEFAULT = "32";

  static final OperationBL _singleton = OperationBL._internal();

  factory OperationBL() => _singleton;

  OperationBL._internal() {
    _myPrefs = MyPrefs();
    _myPrefs.init();
    _basBL = BasBL();
  }

  late MyPrefs _myPrefs;
  late BasBL _basBL;
  late bool _useOrderSync;

  Future<void> init() async {
    await updateSettings();
    _useOrderSync = await isUseOrderSync();
  }

  Future<void> updateSettings() async {
    String? address = await getBtPrinterAddress();

    if ("00:00:00:00:00:00" != (address)) {
      String? receiptPrinterModel = await getReceiptPrinterModel();
      String? receiptPrinterType = await getReceiptPrinterType();
      String? receiptPrinterMacAddress = await getReceiptPrinterMacAddress();

      if (MODEL_NONE != (receiptPrinterModel) &&
          PRINTER_TYPE_BLUETOOTH == (receiptPrinterType) &&
          receiptPrinterMacAddress!.isEmpty) {
        setReceiptPrinterMacAddress(address);
      }
      String? kitchenPrinterModel = await getKitchenPrinterModel();
      String? kitchenPrinterType = await getKitchenPrinterType();
      String? kitchenPrinterMacAddress = await getKitchenPrinterMacAddress();
      if (MODEL_NONE != (kitchenPrinterModel) &&
          PRINTER_TYPE_BLUETOOTH == (kitchenPrinterType) &&
          kitchenPrinterMacAddress!.isEmpty) {
        setKitchenPrinterMacAddress(address);
      }
    }
  }

  Future<void> saveConfiguration(
      String groupCode, String itemCode, int pos, String? value) async {
    if (value == null) {
      return;
    }

    StoreTerminalBasicDataItem? item =
        await _basBL.getStoreTerminalBasicDataItem(groupCode, itemCode);

    if (item != null) {
      bool dirty = false;

      switch (pos) {
        case 1:
          if (value != (item.getData1())) {
            item.setData1(value);
            dirty = true;
          }
          break;
        case 2:
          if (value != (item.getData2())) {
            item.setData2(value);
            dirty = true;
          }
          break;
        case 3:
          if (value != (item.getData3())) {
            item.setData3(value);
            dirty = true;
          }
          break;
        case 4:
          if (value != (item.getData4())) {
            item.setData4(value);
            dirty = true;
          }
          break;
        case 5:
          if (value != (item.getData5())) {
            item.setData5(value);
            dirty = true;
          }
          break;
        case 6:
          if (value != (item.getData6())) {
            item.setData6(value);
            dirty = true;
          }
          break;
        case 7:
          if (value != (item.getData7())) {
            item.setData7(value);
            dirty = true;
          }
          break;
        case 8:
          if (value != (item.getData8())) {
            item.setData8(value);
            dirty = true;
          }
          break;
        case 9:
          if (value != (item.getData9())) {
            item.setData9(value);
            dirty = true;
          }
          break;
        case 10:
          if (value != (item.getData10())) {
            item.setData10(value);
            dirty = true;
          }
          break;
        case 11:
          if (value != (item.getData11())) {
            item.setData11(value);
            dirty = true;
          }
          break;
        case 12:
          if (value != (item.getData12())) {
            item.setData12(value);
            dirty = true;
          }
          break;
        case 13:
          if (value != (item.getData13())) {
            item.setData13(value);
            dirty = true;
          }
          break;
        case 14:
          if (value != (item.getData14())) {
            item.setData14(value);
            dirty = true;
          }
          break;
        case 15:
          if (value != (item.getData15())) {
            item.setData15(value);
            dirty = true;
          }
          break;
        case 16:
          if (value != (item.getData16())) {
            item.setData16(value);
            dirty = true;
          }
          break;
        case 17:
          if (value != (item.getData17())) {
            item.setData17(value);
            dirty = true;
          }
          break;
        case 18:
          if (value != (item.getData18())) {
            item.setData18(value);
            dirty = true;
          }
          break;
        case 19:
          if (value != (item.getData19())) {
            item.setData19(value);
            dirty = true;
          }
          break;
        case 20:
          if (value != (item.getData20())) {
            item.setData20(value);
            dirty = true;
          }
          break;
      }

      if (dirty) {
        await _basBL.saveStoreTerminalBasicDataItem(item);
      }
    }
  }

  Future<String?> getConfiguration(
      String groupCode, String? itemCode, int pos, String defaultValue) async {
    StoreTerminalBasicDataItem? item =
        await _basBL.getStoreTerminalBasicDataItem(groupCode, itemCode);

    if (item == null) {
      Log.d(
          TAG,
          "Store terminal configuration not found: " +
              groupCode +
              " / " +
              itemCode!);
      return defaultValue;
    }

    String? value = "";

    switch (pos) {
      case 1:
        value = item.getData1();
        break;
      case 2:
        value = item.getData2();
        break;
      case 3:
        value = item.getData3();
        break;
      case 4:
        value = item.getData4();
        break;
      case 5:
        value = item.getData5();
        break;
      case 6:
        value = item.getData6();
        break;
      case 7:
        value = item.getData7();
        break;
      case 8:
        value = item.getData8();
        break;
      case 9:
        value = item.getData9();
        break;
      case 10:
        value = item.getData10();
        break;
      case 11:
        value = item.getData11();
        break;
      case 12:
        value = item.getData12();
        break;
      case 13:
        value = item.getData13();
        break;
      case 14:
        value = item.getData14();
        break;
      case 15:
        value = item.getData15();
        break;
      case 16:
        value = item.getData16();
        break;
      case 17:
        value = item.getData17();
        break;
      case 18:
        value = item.getData18();
        break;
      case 19:
        value = item.getData19();
        break;
      case 20:
        value = item.getData20();
        break;
      default:
        Log.i(
            TAG,
            "Store terminal configuration not found: " +
                groupCode +
                " / " +
                itemCode! +
                " / " +
                pos.toString());
        break;
    }

    return value!.isNotEmpty ? value : defaultValue;
  }

  //다국어 적용필요없는 Van Name등을 위하여 무조건 영어로만 가져오도록
  Future<String?> getBaseConfigurationForUniqueItem(
      String groupCode, String itemCode, int pos) async {
    if (pos != 0) {
      return getBaseConfiguration(groupCode, itemCode, pos);
    }

    BasicDataItem? item = await _basBL.getBasicDataItem(groupCode, itemCode);

    if (item == null) {
      Log.d(
          TAG, "Base configuration not found: " + groupCode + " / " + itemCode);
      return "";
    }

    return await _basBL.getEngString(
        item.getI18nTermId(), item.getBasicDataItemName());
  }

  Future<String?> getBaseConfiguration(
      String groupCode, String? itemCode, int pos) async {
    BasicDataItem? item = await _basBL.getBasicDataItem(groupCode, itemCode);

    if (item == null) {
      Log.d(TAG,
          "Base configuration not found: " + groupCode + " / " + itemCode!);
      return "";
    }

    String? value = "";

    switch (pos) {
      case 0:
        value = await _basBL.getString(
            item.getI18nTermId(), item.getBasicDataItemName());
        break;
      case 1:
        value = item.getData1();
        break;
      case 2:
        value = item.getData2();
        break;
      case 3:
        value = item.getData3();
        break;
      case 4:
        value = item.getData4();
        break;
      case 5:
        value = item.getData5();
        break;
      case 6:
        value = item.getData6();
        break;
      case 7:
        value = item.getData7();
        break;
      case 8:
        value = item.getData8();
        break;
      case 9:
        value = item.getData9();
        break;
      case 10:
        value = item.getData10();
        break;
      case 11:
        value = item.getData11();
        break;
      case 12:
        value = item.getData12();
        break;
      case 13:
        value = item.getData13();
        break;
      case 14:
        value = item.getData14();
        break;
      case 15:
        value = item.getData15();
        break;
      case 16:
        value = item.getData16();
        break;
      case 17:
        value = item.getData17();
        break;
      case 18:
        value = item.getData18();
        break;
      case 19:
        value = item.getData19();
        break;
      case 20:
        value = item.getData20();
        break;
      default:
        Log.i(
            TAG,
            "Base configuration not found: " +
                groupCode +
                " / " +
                itemCode! +
                " / " +
                pos.toString());
        break;
    }

    return value;
  }

  Future<String?> getStoreId() async {
    Store? store = await _basBL.getStore();
    return store != null ? store.getStoreId() : "";
  }

  Future<void> setBusinessRegistrationNumber(String? brn) async {
    Store? store = await _basBL.getStore();

    if (store != null && store.getBusinessRegistrationNumber() != (brn)) {
      store.setBusinessRegistrationNumber(brn);
      await _basBL.setStore(store);
    }
  }

  Future<void> setStorePrimaryAddress(String? address) async {
    Store? store = await _basBL.getStore();

    if (store != null && store.getPrimaryAddress() != (address)) {
      store.setPrimaryAddress(address);
      await _basBL.setStore(store);
    }
  }

  Future<String?> getStorePrimaryAddress() async {
    Store? store = await _basBL.getStore();

    return store?.getPrimaryAddress();
  }

  Future<void> setStoreDetailAddress(String? address) async {
    Store? store = await _basBL.getStore();

    if (store != null && store.getDetailAddress() != (address)) {
      store.setDetailAddress(address);
      await _basBL.setStore(store);
    }
  }

  Future<String?> getStoreDetailAddress() async {
    Store? store = await _basBL.getStore();

    return store?.getDetailAddress();
  }

  Future<void> setStoreZipCode(String? zipCode) async {
    Store? store = await _basBL.getStore();

    if (store != null && store.getZipcode() != (zipCode)) {
      store.setZipcode(zipCode);
      await _basBL.setStore(store);
    }
  }

  Future<String?> getStoreZipCode() async {
    Store? store = await _basBL.getStore();

    return store?.getZipcode();
  }

  Future<void> setStoreTelNumber(String? tel) async {
    Store? store = await _basBL.getStore();

    if (store != null && store.getTelNumber() != (tel)) {
      store.setTelNumber(tel);
      await _basBL.setStore(store);
    }
  }

  Future<String?> getStoreTelNumber() async {
    Store? store = await _basBL.getStore();

    return store?.getTelNumber();
  }

  Future<void> setStoreCeoName(String? name) async {
    Store? store = await _basBL.getStore();

    if (store != null && store.getCeoName() != (name)) {
      store.setCeoName(name);
      await _basBL.setStore(store);
    }
  }

  Future<String?> getStoreCeoName() async {
    Store? store = await _basBL.getStore();
    return store?.getCeoName();
  }

  Future<void> setLanguage(String? language) async {
    StoreTerminal? storeTerminal =
        await _basBL.getStoreTerminalById(BaseBL.storeTerminalId);
    if (storeTerminal == null) {
      Log.e(TAG, 'setLanguage, StoreTerminal is null');
      return;
    }
    storeTerminal.setLanguageCode(language);
    storeTerminal.updateTime();
    await storeTerminal.update();
  }

  Future<String> getLanguage() async {
    StoreTerminal? storeTerminal =
        await _basBL.getStoreTerminalById(BaseBL.storeTerminalId);
    if (storeTerminal == null) {
      return "KOR";
    }
    String? language = storeTerminal.getLanguageCode();
    return language != null && language.isNotEmpty ? language : "KOR";
  }

  Future<String> getCurrency() async {
    StoreTerminal? storeTerminal =
        await _basBL.getStoreTerminalById(BaseBL.storeTerminalId);
    if (storeTerminal == null) {
      return "KR";
    }
    String? currency = storeTerminal.getCurrencyCode();
    return currency != null && currency.isNotEmpty ? currency : "KR";
  }

  Future<String?> getCurrencyName() async {
    return await getBaseConfiguration("CLI_CUR_CD", await getCurrency(), 0);
  }

  Future<String?> getCurrencyCode() async {
    return await getBaseConfigurationForUniqueItem(
        "CLI_CUR_CD", await getCurrency(), 0);
  }

  //SIGN_PAD
  //1:Model, 2:ype, 3:Speed, 4:AutoSending ,5:AutoResponseTime
  //6: NoSign , 7:Address, 8:WaitTime
  Future<void> setSignPadModel(String model) async {
    await saveConfiguration("DEV", "SIGN_PAD", 1, model);
    await loadSignPadModel(model);
  }

  Future<void> loadSignPadModel(String? model) async {
    if (MODEL_NONE != (model) && MODEL_USER_DEFINED != (model)) {
      await saveConfiguration("DEV", "SIGN_PAD", 2,
          await getBaseConfiguration("SIGN_PAD", model, 2));
      await saveConfiguration("DEV", "SIGN_PAD", 3,
          await getBaseConfiguration("SIGN_PAD", model, 3));
    }
  }

  Future<String?> getSignPadModel() async {
    return await getConfiguration("DEV", "SIGN_PAD", 1, OperationBL.MODEL_NONE);
  }

  Future<void> setSignPadType(String type) async {
    await saveConfiguration("DEV", "SIGN_PAD", 2, type);
  }

  Future<String?> getSignPadType() async {
    return await getConfiguration("DEV", "SIGN_PAD", 2, SIGN_PAD_TYPE_KOVAN);
  }

  Future<void> setSignPadAddress(String address) async {
    await saveConfiguration("DEV", "SIGN_PAD", 7, address);
  }

  Future<String?> getSignPadAddress() async {
    return await getConfiguration("DEV", "SIGN_PAD", 7, "0.0.0.0");
  }

  static bool isRealMode() {
    return false;
    //return !BuildConfig.DEBUG;
  }

  Future<void> setServerIndex(int index) async {
    await _myPrefs.serverIndex()!.put(index);
  }

  Future<String?> _getStringFromServerIndex(String type) async {
    var list = _serverList();
    int? index = await _myPrefs.serverIndex()!.get();
    index = index ?? 0;
    if (index >= list.length) {
      index = 0;
      _myPrefs.serverIndex()!.put(index);
    }

    return list[index][type];
  }

  List<String?> getStringArray(String type) {
    return _serverList().map((i) => i[type]).toList();
  }

  List<Map<String, String>> _serverList() {
    String region = BuildConfig.DEBUG ? 'DEV' : BuildConfig.SERVER_REGION;

    switch (region) {
      case 'CRM':
        return ServerList.CRM;
      case 'KR':
        return ServerList.KR;
      case 'CPOS':
        return ServerList.CPOS;
      case 'KZ':
        return ServerList.KZ;
      case 'DEV_KZ':
        return ServerList.DEV_KZ;
      case 'ALL':
      default:
        return ServerList.ALL;
    }
  }

  Future<String?> getAspServerUrl() {
    return _getStringFromServerIndex('asp');
  }

  Future<String?> getTookServerUrl() {
    return _getStringFromServerIndex('asp');
  }

  Future<String?> getMyDGWServerUrl() {
    return _getStringFromServerIndex('asp');
  }

  Future<String?> getAuthServerUrl() {
    return _getStringFromServerIndex('auth');
  }

  Future<String?> getGRpcApiServerUrl() {
    return _getStringFromServerIndex('grpc');
  }

  Future<UpdateServerInfo?> getUpdateServerInfo() async {
    String? text = await _getStringFromServerIndex('update');
    return UpdateServerInfo.from(text);
  }

  void setRegisterNo(String no) {
    _myPrefs.registerNo()!.put(no);
  }

  Future<String?> getRegisterNo() async {
    return await _myPrefs.registerNo()!.get();
  }

  Future<void> setStoreTerminalId(String id) async {
    await _myPrefs.storeTerminalId()!.put(id);
  }

  Future<String?> getStoreTerminalId() async {
    return await _myPrefs.storeTerminalId()!.get();
  }

  Future<void> setLoginId(String id) async {
    await _myPrefs.loginId()!.put(id);
  }

  Future<String?> getLoginId() async {
    return await _myPrefs.loginId()!.get();
  }

  Future<void> setLoginPasswordNoSecurity(String password) async {
    await _setIsSecurityLoginPw(false);
    await _myPrefs.loginPassword()!.put(password);
  }

  Future<void> setLoginPassword(String password) async {
    try {
      String? loginId = await getLoginId();
      _myPrefs
          .loginPassword()!
          .put(await Security.encrypt(password, loginId ?? ""));
      _setIsSecurityLoginPw(true);
    } catch (e) {
      print('Exception: $e');
    }
  }

  Future<String?> getLoginPassword() async {
    String? loginId = await getLoginId();
    bool? isSecurityLoginPw = await _getIsSecurityLoginPw();
    String? loginPassword = await _myPrefs.loginPassword()!.get();
    if (isSecurityLoginPw ?? false) {
      try {
        return Security.decrypt(loginPassword ?? "", loginId ?? "");
      } catch (e) {
        print('Exception: $e');
        return "";
      }
    } else {
      return await _myPrefs.loginPassword()!.get();
    }
  }

  Future<void> setLoginDomain(String domain) async {
    await _myPrefs.loginDomain()!.put(domain);
  }

  Future<String?> getLoginDomain() async {
    return await _myPrefs.loginDomain()!.get();
  }

  Future<void> setReceiptPrinterModel(String? model) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 1, model);
    await loadReceiptPrinterModel(model);
  }

  Future<void> loadReceiptPrinterModel(String? model) async {
    if (MODEL_NONE != (model) && MODEL_USER_DEFINED != (model)) {
      await saveConfiguration("DEV", "RECEIPT_PRINTER", 2,
          await getBaseConfiguration("RECEIPT_PRINTER", model, 2));
      await saveConfiguration("DEV", "RECEIPT_PRINTER", 3,
          await getBaseConfiguration("RECEIPT_PRINTER", model, 3));
      await saveConfiguration("DEV", "RECEIPT_PRINTER", 9,
          await getBaseConfiguration("RECEIPT_PRINTER", model, 9));
    }
  }

  /*
        NULL 혹은 공백: 없음
        000: 사용자 정의
        001: IP 프린터
        002: 시리얼 프린터
        003: 우심 프린터 (57600)
        004: 우심 프린터 (115200)
        005: 서우 프린터
        006: 세이코 (2인치)
        007: 세이코 (3인치)
     */
  Future<String?> getReceiptPrinterModel() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 1, MODEL_NONE);
  }

  Future<void> setReceiptPrinterType(String type) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 2, type);
  }

  Future<String?> getReceiptPrinterType([String model = ""]) async {
    if (model.isEmpty) {
      return await getConfiguration(
          "DEV", "RECEIPT_PRINTER", 2, PRINTER_TYPE_USB_1);
    }
    if (MODEL_NONE != (model) && MODEL_USER_DEFINED != (model)) {
      return await getBaseConfiguration("RECEIPT_PRINTER", model, 2);
    }

    return null;
  }

  Future<void> setReceiptPrinterPaperSize(String size) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 3, size);
  }

  /*
        01: 2인치
        02: 3인치
     */
  Future<String?> getReceiptPrinterPaperSize() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 3, PAPER_SIZE_2);
  }

  Future<void> setReceiptPrinterIPIp(String ip) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 4, ip);
  }

  Future<String?> getReceiptPrinterIPIp() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 4, "127.0.0.1");
  }

  Future<void> setReceiptPrinterIPPort(String port) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 5, port);
  }

  Future<String?> getReceiptPrinterIPPort() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 5, "300000");
  }

  Future<void> setReceiptPrinterPort(String port) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 6, port);
  }

  /*
        COM1, COM2, COM3
     */
  Future<String?> getReceiptPrinterPort() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 6, "COM1");
  }

  Future<void> setReceiptPrinterSpeed(String speed) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 7, speed);
  }

  /*
        9600, 19200, 38400, 57600, 115200
     */
  Future<String?> getReceiptPrinterSpeed() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 7, "9600");
  }

  Future<void> setReceiptPrinterUsbPortSpeed(String speed) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 8, speed);
  }

  /*
        9600, 19200, 38400, 57600, 115200
     */
  Future<String?> getReceiptPrinterUsbPortSpeed() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 8, "57600");
  }

  Future<void> setReceiptPrinterMaxChar(String size) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 9, size);
  }

  /*
        Max char
     */
  Future<String?> getReceiptPrinterMaxChar() async {
    return await getConfiguration(
        "DEV", "RECEIPT_PRINTER", 9, MAX_CHARACTER_DEFAULT);
  }

  Future<void> setReceiptPrinterMacAddress(String? address) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 11, address);
  }

  /*
        Bluetooth Mac Address
     */
  Future<String?> getReceiptPrinterMacAddress() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 11, "");
  }

  /*
        Ibex 프린터인 경우 밝기
     */
  Future<String?> getReceiptPrinterBright() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 12, "0");
  }

  Future<void> setReceiptPrinterBright(String bright) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 12, bright);
  }

  /*
        Ibex 프린터인 경우 출력 속도 (최고속도의 10 ~ 100%)
     */
  Future<String?> getReceiptPrinterPrintSpeed() async {
    return await getConfiguration("DEV", "RECEIPT_PRINTER", 13, "80");
  }

  Future<void> setReceiptPrinterPrintSpeed(String speed) async {
    await saveConfiguration("DEV", "RECEIPT_PRINTER", 13, speed);
  }

  Future<void> setKitchenPrinterModel(String? model) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 1, model);
    await loadKitchenPrinterModel(model);
  }

  Future<void> loadKitchenPrinterModel(String? model) async {
    if (MODEL_NONE != (model) && MODEL_USER_DEFINED != (model)) {
      await saveConfiguration("DEV", "KITCHEN_PRINTER", 2,
          await getBaseConfiguration("KITCHEN_PRINTER", model, 2));
      await saveConfiguration("DEV", "KITCHEN_PRINTER", 3,
          await getBaseConfiguration("KITCHEN_PRINTER", model, 3));
      await saveConfiguration("DEV", "KITCHEN_PRINTER", 9,
          await getBaseConfiguration("KITCHEN_PRINTER", model, 9));
    }
  }

  /*
        NULL 혹은 공백: 없음
        000: 사용자 정의
        001: IP 프린터
        002: 시리얼 프린터
        003: 우심 프린터
        004: 서우 프린터
     */
  Future<String?> getKitchenPrinterModel() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 1, MODEL_NONE);
  }

  Future<void> setKitchenPrinterType(String type) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 2, type);
  }

  /*
        01: IP 타입
        02: Serial 타입
        03: USB 1
        04: USB 2 (포트 설정 없음)
     */
  // String getKitchenPrinterType() {
  // }

  Future<String?> getKitchenPrinterType([String model = ""]) async {
    if (model.isEmpty) {
      return await getConfiguration(
          "DEV", "KITCHEN_PRINTER", 2, PRINTER_TYPE_USB_1);
    }
    if (MODEL_NONE != (model) && MODEL_USER_DEFINED != (model)) {
      return await getBaseConfiguration("KITCHEN_PRINTER", model, 2);
    }

    return null;
  }

  Future<void> setKitchenPrinterPaperSize(String size) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 3, size);
  }

  /*
        01: 2인치
        02: 3인치
     */
  Future<String?> getKitchenPrinterPaperSize() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 3, PAPER_SIZE_2);
  }

  Future<void> setKitchenPrinterIPIp(String ip) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 4, ip);
  }

  Future<String?> getKitchenPrinterIPIp() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 4, "127.0.0.1");
  }

  Future<void> setKitchenPrinterIPPort(String port) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 5, port);
  }

  Future<String?> getKitchenPrinterIPPort() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 5, "30000");
  }

  Future<void> setKitchenPrinterPort(String port) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 6, port);
  }

  /*
        COM1, COM2, COM3
     */
  Future<String?> getKitchenPrinterPort() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 6, "COM1");
  }

  Future<void> setKitchenPrinterSpeed(String speed) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 7, speed);
  }

  /*
        9600, 19200, 38400, 57600, 115200
     */
  Future<String?> getKitchenPrinterSpeed() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 7, "9600");
  }

  Future<void> setKitchenPrinterUsbPortSpeed(String speed) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 8, speed);
  }

  /*
        9600, 19200, 38400, 57600, 115200
     */
  Future<String?> getKitchenPrinterUsbPortSpeed() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 8, "57600");
  }

  Future<void> setKitchenPrinterMaxChar(String size) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 9, size);
  }

  /*
        Max char
     */
  Future<String?> getKitchenPrinterMaxChar() async {
    return await getConfiguration(
        "DEV", "KITCHEN_PRINTER", 9, MAX_CHARACTER_DEFAULT);
  }

  Future<void> setKitchenPrinterMacAddress(String? address) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 11, address);
  }

  /*
        Bluetooth Mac Address
     */
  Future<String?> getKitchenPrinterMacAddress() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 11, "");
  }

  /*
        Ibex 프린터인 경우 밝기
    */
  Future<String?> getKitchenPrinterBright() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 12, "0");
  }

  Future<void> setKitchenPrinterBright(String bright) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 12, bright);
  }

  /*
        Ibex 프린터인 경우 출력 속도 (최고속도의 10 ~ 100%)
     */
  Future<String?> getKitchenPrinterPrintSpeed() async {
    return await getConfiguration("DEV", "KITCHEN_PRINTER", 13, "80");
  }

  Future<void> setKitchenPrinterPrintSpeed(String speed) async {
    await saveConfiguration("DEV", "KITCHEN_PRINTER", 13, speed);
  }

  Future<void> setCoasterPagerModel(String model) async {
    await saveConfiguration("DEV", "COASTER_PAGER", 1, model);
  }

  Future<String?> getCoasterPagerModel() async {
    return await getConfiguration(
        "DEV", "COASTER_PAGER", 1, OperationBL.MODEL_NONE);
  }

  Future<void> setCoasterPagerRangeStart(String start) async {
    await saveConfiguration("DEV", "COASTER_PAGER", 2, start);
  }

  Future<String?> getCoasterPagerRangeStart() async {
    return await getConfiguration("DEV", "COASTER_PAGER", 2, "1");
  }

  Future<void> setCoasterPagerRangeEnd(String end) async {
    await saveConfiguration("DEV", "COASTER_PAGER", 3, end);
  }

  Future<String?> getCoasterPagerRangeEnd() async {
    return await getConfiguration("DEV", "COASTER_PAGER", 3, "9999");
  }

  Future<void> setSelfOrderIntroSlideTime(String slideTime) async {
    await saveConfiguration("SELF", "SELF_ORDER_INTRO", 1, slideTime);
  }

  Future<String?> getSelfOrderIntroSlideTime() async {
    return await getConfiguration("SELF", "SELF_ORDER_INTRO", 1, "3");
  }

  //mode : 0 - screen fit , 1 - image fit, 2 - no fit
  Future<void> setSelfOrderIntroImageMode(String mode) async {
    await saveConfiguration("SELF", "SELF_ORDER_INTRO", 2, mode);
  }

  Future<String?> getSelfOrderIntroImageMode() async {
    return await getConfiguration("SELF", "SELF_ORDER_INTRO", 2, "0");
  }

  Future<void> setSelfOrderIntroReturnTime(String returnTime) async {
    await saveConfiguration("SELF", "SELF_ORDER_INTRO", 3, returnTime);
  }

  Future<String?> getSelfOrderIntroReturnTime() async {
    return await getConfiguration("SELF", "SELF_ORDER_INTRO", 3, "60");
  }

  Future<void> setSelfOrderIntroReturnPopupTime(String returnTime) async {
    await saveConfiguration("SELF", "SELF_ORDER_INTRO", 4, returnTime);
  }

  Future<String?> getSelfOrderIntroReturnPopupTime() async {
    return await getConfiguration("SELF", "SELF_ORDER_INTRO", 4, "20");
  }

  Future<void> setSelfOrderNumberPrefix(String prefix) async {
    await saveConfiguration("SELF", "SELF_ORDER_NUMBER", 1, prefix);
  }

  Future<String?> getSelfOrderNumberPrefix() async {
    return await getConfiguration("SELF", "SELF_ORDER_NUMBER", 1, "0");
  }

  //mode : 0 - continue , 1 - change common date, 2 - app start
  Future<void> setSelfOrderNumberResetMode(String mode) async {
    await saveConfiguration("SELF", "SELF_ORDER_NUMBER", 2, mode);
  }

  Future<String?> getSelfOrderNumberResetMode() async {
    return await getConfiguration("SELF", "SELF_ORDER_NUMBER", 2, "0");
  }

  void setSelfOrderNumber(int value) {
    _myPrefs.selfOrderNumber()!.put(value);
  }

  Future<int?> getSelfOrderNumber() async {
    return await _myPrefs.selfOrderNumber()!.get();
  }

  void setCurrencySymbol(String symbol) {
    _myPrefs.currencySymbol()!.put(symbol);
  }

  Future<String?> getCurrencySymbol() async {
    return await _myPrefs.currencySymbol()!.get();
  }

  Future<void> setAutoResponseTime(String time) async {
    await saveConfiguration("DEV", "SIGN_PAD", 5, time);
  }

  Future<String?> getAutoResponseTime() async {
    return await getConfiguration("DEV", "SIGN_PAD", 5, "2");
  }

  Future<void> setSignAutoSending(bool value) async {
    await saveConfiguration("DEV", "SIGN_PAD", 4, value ? "1" : "0");
  }

  Future<bool> getSignAutoSending() async {
    String? value = await getConfiguration("DEV", "SIGN_PAD", 4, "1");
    return value != ("0");
  }

  Future<void> setSignWaitTime(String time) async {
    await saveConfiguration("DEV", "SIGN_PAD", 8, time);
  }

  Future<String?> getSignWaitTime() async {
    return await getConfiguration("DEV", "SIGN_PAD", 8, "0");
  }

  void setDeviceKey(String key) {
    _myPrefs.deviceKey()!.put(key);
  }

  Future<String> getDeviceKey() async {
    String? deviceKey = await _myPrefs.deviceKey()!.get();

    if (deviceKey != null && deviceKey.isEmpty) {
      deviceKey = await CommonUtil.getDeviceId();
      _myPrefs.deviceKey()!.put(deviceKey);
    }

    return deviceKey ?? "";
  }

  Future<void> setPrintBill(bool value) async {
    await saveConfiguration("PRINT", "BILL_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintBill() async {
    String? value = await getConfiguration("PRINT", "BILL_YN", 1, "1");
    return value != ("0");
  }

  Future<bool> printBillChangedItem() async {
    //0 : 변경내역출력, 1: 전체내역출력(기본값)
    String? value = await getConfiguration("PRINT", "BILL_YN", 2, "0");
    return value == ("0");
  }

  Future<void> setPrintBillChangedItem(bool value) async {
    //0 : 변경내역출력, 1: 전체내역출력(기본값)
    await saveConfiguration("PRINT", "BILL_YN", 2, value ? "0" : "1");
  }

  Future<void> setPrintOrder(bool value) async {
    await saveConfiguration("PRINT", "ORDER_SHEET_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintOrder() async {
    String? value = await getConfiguration("PRINT", "ORDER_SHEET_YN", 1, "1");
    return value != ("0");
  }

  Future<bool> printOrderChangedItem() async {
    //0 : 변경내역출력, 1: 전체내역출력(기본값)
    String? value = await getConfiguration("PRINT", "ORDER_SHEET_YN", 2, "0");
    return value == ("0");
  }

  Future<void> setPrintOrderChangedItem(bool value) async {
    //0 : 변경내역출력, 1: 전체내역출력(기본값)
    await saveConfiguration("PRINT", "ORDER_SHEET_YN", 2, value ? "0" : "1");
  }

  Future<void> setOrderPrintingPoint(bool value) async {
    //0 : 결제전(기본값), 1: 결제후
    await saveConfiguration("PRINT", "ORDER_SHEET_YN", 3, value ? "1" : "0");
  }

  Future<bool> isOrderPrintingPoint() async {
    String? value = await getConfiguration("PRINT", "ORDER_SHEET_YN", 3, "0");
    return value == ("1");
  }

  void setPrintCardReceiptToCustomer(bool? value) {}

  bool isPrintCardReceiptToCustomer() {
    return true;
  }

  Future<void> setPrintCardReceiptToStore(bool value) async {
    await saveConfiguration(
        "PRINT", "CARD_RECEIPT_STORE_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintCardReceiptToStore() async {
    String? value =
        await getConfiguration("PRINT", "CARD_RECEIPT_STORE_YN", 1, "1");
    return value != ("0");
  }

  Future<void> setPrintCardReceiptToCompany(bool value) async {
    await saveConfiguration(
        "PRINT", "CARD_RECEIPT_COMPANY_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintCardReceiptToCompany() async {
    String? value =
        await getConfiguration("PRINT", "CARD_RECEIPT_COMPANY_YN", 1, "1");
    return value != ("0");
  }

  Future<void> setPrintCashReceipt(bool value) async {
    await saveConfiguration("PRINT", "CASH_RECEIPT_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintCashReceipt() async {
    String? value = await getConfiguration("PRINT", "CASH_RECEIPT_YN", 1, "1");
    return value != ("0");
  }

  Future<void> setPrintCashierIn(bool value) async {
    await saveConfiguration(
        "PRINT", "BUSINESS_OPEN_ACCOUNT_STATEMENT_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintCashierIn() async {
    String? value = await getConfiguration(
        "PRINT", "BUSINESS_OPEN_ACCOUNT_STATEMENT_YN", 1, "1");
    return value != ("0");
  }

  Future<void> setPrintCashierOut(bool value) async {
    await saveConfiguration(
        "PRINT", "BUSINESS_CLOSE_ACCOUNT_STATEMENT_YN", 1, value ? "1" : "0");
  }

  Future<bool> isPrintCashierOut() async {
    String? value = await getConfiguration(
        "PRINT", "BUSINESS_CLOSE_ACCOUNT_STATEMENT_YN", 1, "1");
    return value != ("0");
  }

  String receiptOutputMessage(String? firstLine, String? secondLine,
      String? thirdLine, String? fourthLine, String? fifthLine) {
    String sb = "";
    if (!CommonUtil.isNullEmpty(firstLine)) {
      sb += firstLine!;
      if (!CommonUtil.isNullEmpty(secondLine)) sb += "\n";
    }
    if (!CommonUtil.isNullEmpty(secondLine)) {
      sb += secondLine!;
      if (!CommonUtil.isNullEmpty(thirdLine)) sb += "\n";
    }
    if (!CommonUtil.isNullEmpty(thirdLine)) {
      sb += thirdLine!;
      if (!CommonUtil.isNullEmpty(fourthLine)) sb += "\n";
    }
    if (!CommonUtil.isNullEmpty(fourthLine)) {
      sb += fourthLine!;
      if (!CommonUtil.isNullEmpty(fifthLine)) sb += "\n";
    }
    if (!CommonUtil.isNullEmpty(fifthLine)) {
      sb += fifthLine!;
    }
    return sb.toString();
  }

  Future<String> receipt_top_message() async {
    String? firstLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 1, "");
    String? secondLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 2, "");
    String? thirdLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 3, "");
    String? fourthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 4, "");
    String? fifthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 5, "");
    return receiptOutputMessage(
        firstLine, secondLine, thirdLine, fourthLine, fifthLine);
  }

  Future<String> receipt_lower_message() async {
    String? firstLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 6, "");
    String? secondLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 7, "");
    String? thirdLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 8, "");
    String? fourthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 9, "");
    String? fifthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 10, "");
    return receiptOutputMessage(
        firstLine, secondLine, thirdLine, fourthLine, fifthLine);
  }

  Future<String> bill_top_message() async {
    String? firstLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 11, "");
    String? secondLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 12, "");
    String? thirdLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 13, "");
    String? fourthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 14, "");
    String? fifthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 15, "");
    return receiptOutputMessage(
        firstLine, secondLine, thirdLine, fourthLine, fifthLine);
  }

  Future<String> bill_lower_message() async {
    String? firstLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 16, "");
    String? secondLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 17, "");
    String? thirdLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 18, "");
    String? fourthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 19, "");
    String? fifthLine =
        await getConfiguration("PRINT", "RECEIPT_OUTPUT_MESSAGE", 20, "");
    return receiptOutputMessage(
        firstLine, secondLine, thirdLine, fourthLine, fifthLine);
  }

  Future<void> setNoSign(bool value) async {
    await saveConfiguration("DEV", "SIGN_PAD", 6, value ? "1" : "0");
  }

  Future<bool> getNoSign() async {
    String? value = await getConfiguration("DEV", "SIGN_PAD", 6, "1");
    return value != ("0");
  }

  Future<void> setOrderScreenBarcode(bool isBarcode) async {
    await saveConfiguration("APP", "SHOW_BARCODE_YN", 1, isBarcode ? "1" : "0");
  }

  Future<bool> isOrderScreenBarcode() async {
    String? value = await getConfiguration("APP", "SHOW_BARCODE_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setPosType(String? posType) async {
    StoreTerminal? storeTerminal =
        await _basBL.getStoreTerminalById(BaseBL.storeTerminalId);
    if (storeTerminal == null) {
      Log.e(TAG, 'setPosType, storeTerminal is null');
      return;
    }
    storeTerminal.setAppActionTypeCode(posType);
    storeTerminal.updateTime();
    await storeTerminal.update();
  }

  // 01: 선불(소매업)
  // 02: 후불(요식업)
  Future<String?> getPosType() async {
    StoreTerminal? storeTerminal =
        await _basBL.getStoreTerminalById(BaseBL.storeTerminalId);
    return storeTerminal?.getAppActionTypeCode();
  }

  Future<String?> getSignPadPortSpeed() async {
    return await getConfiguration("DEV", "SIGN_PAD", 3, "115200");
  }

  Future<void> setSignPadPortSpeed(String speed) async {
    await saveConfiguration("DEV", "SIGN_PAD", 3, speed);
  }

  Future<bool> getIsShowIncludeTaxYn() async {
    String? value =
        await getConfiguration("APP", "USE_TAX_INCLUDED_PRICE_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setIsShowIncludeTaxYn(bool value) async {
    await saveConfiguration(
        "APP", "USE_TAX_INCLUDED_PRICE_YN", 1, value ? "1" : "0");
  }

  Future<bool> getKeepMenuCategory() async {
    String? value = await getConfiguration("APP", "KEEP_MENU_CATEGORY", 1, "1");
    return value == ("1");
  }

  Future<void> setKeepMenuCategory(bool value) async {
    await saveConfiguration("APP", "KEEP_MENU_CATEGORY", 1, value ? "1" : "0");
  }

  Future<bool> isAutoClearTable() async {
    String? value =
        await getConfiguration("APP", "TABLE_AUTO_CLEAN_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setAutoClearTable(bool value) async {
    await saveConfiguration("APP", "TABLE_AUTO_CLEAN_YN", 1, value ? "1" : "0");
  }

  Future<bool> getAutoInstallment() async {
    String? value =
        await getConfiguration("APP", "AUTO_INSTALLMENT_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setAutoInstallment(bool value) async {
    await saveConfiguration("APP", "AUTO_INSTALLMENT_YN", 1, value ? "1" : "0");
  }

  Future<bool> getAutoPayment() async {
    String? value = await getConfiguration("APP", "AUTO_PAYMENT_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setAutoPayment(bool value) async {
    await saveConfiguration("APP", "AUTO_PAYMENT_YN", 1, value ? "1" : "0");
  }

  Future<String> getNoticeUrl() async {
    return (await getAspServerUrl())! + "/intro/index.do";
  }

  Future<String?> getNoticeUrlServer() async {
    return await getBaseConfiguration("NOTICE_URL", "NURL", 1);
  }

  void setAgentCode(String code) {
    _myPrefs.agentCode()!.put(code);
  }

  Future<String?> getAgentCode() async {
    return await _myPrefs.agentCode()!.get();
  }

  void setNetworkCheckTime(String time) {
    _myPrefs.networkCheckTime()!.put(time);
  }

  Future<String?> getNetworkCheckTime() async {
    return await _myPrefs.networkCheckTime()!.get();
  }

  Future<bool?> isDbRestored() async {
    return await _myPrefs.dbRestored()!.get();
  }

  void setDbRestored(bool restored) {
    _myPrefs.dbRestored()!.put(restored);
  }

  Future<bool> getIsTaxFree() async {
    Store? store = await _basBL.getStore();

    return "00" == (store?.getTaxSectionCode());
  }

  Future<bool> getBasicUseSimpleReceipt() async {
    String? value =
        await getConfiguration("APP", "SIMPLE_RECEIPT_DEFAULT_YN", 1, "0");
    return value == ("1");
  }

  Future<void> setBasicUseSimpleReceipt(bool value) async {
    await saveConfiguration(
        "APP", "SIMPLE_RECEIPT_DEFAULT_YN", 1, value ? "1" : "0");
  }

  Future<bool> getIssueSimpleReceipt() async {
    String? value =
        await getConfiguration("APP", "ISSUE_SIMPLE_RECEIPT_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setIssueSimpleReceipt(bool value) async {
    await saveConfiguration(
        "APP", "ISSUE_SIMPLE_RECEIPT_YN", 1, value ? "1" : "0");
  }

  Future<bool> getIncludeSrSalesResult() async {
    String? value =
        await getConfiguration("APP", "INCLUDE_SR_SALES_RESULT_YN", 1, "0");
    return value != ("0");
  }

  Future<void> setIncludeSrSalesResult(bool value) async {
    await saveConfiguration(
        "APP", "INCLUDE_SR_SALES_RESULT_YN", 1, value ? "1" : "0");
  }

  Future<String?> getDefaultWareHouse() async {
    return await getConfiguration("APP", "DEFAULT_WAREHOUSE", 1, "");
  }

  Future<void> setDefaultWareHouse(String? value) async {
    await saveConfiguration("APP", "DEFAULT_WAREHOUSE", 1, value);
  }

  Future<String> getReceiptLanguage() async {
    String? receiptLanguage = await getConfiguration(
        "APP", "RECEIPT_LANGUAGE", 1, await getLanguage());
    if (receiptLanguage == null || receiptLanguage.isEmpty) {
      return await getLanguage();
    }
    return receiptLanguage;
  }

  Future<void> setReceiptLanguage(String? value) async {
    await saveConfiguration("APP", "RECEIPT_LANGUAGE", 1, value);
  }

  Future<bool> isShowKitchenMemo() async {
    String? value =
        await getConfiguration("ORD_MNU_BTN", "SHOW_KITCHEN_MEMO_YN", 1, "0");
    return "1" == value;
  }

  Future<bool> isShowHoldTime() async {
    String? value =
        await getConfiguration("ORD_MNU_BTN", "SHOW_DELAY_TIME_YN", 1, "0");
    return "1" == value;
  }

  Future<bool> isShowScanBarcode() async {
    String? value =
        await getConfiguration("ORD_MNU_BTN", "SHOW_SCAN_BARCODE_YN", 1, "0");
    return "1" == value;
  }

  Future<bool?> isShowCode() async {
    return await _myPrefs.showCode()!.get();
  }

  void setShowCode(bool showCode) {
    _myPrefs.showCode()!.put(showCode);
  }

  Future<bool> isUseOrderSync() async {
    return await _myPrefs.useOrderSync()!.get() ?? false;
  }

  Future<void> setUseOrderSync(bool enabled) async {
    await _myPrefs.useOrderSync()!.put(enabled);
  }

  bool useOrderSync() {
    // 앱 기동 시 설정 값을 사용
    if ("YOSHOP_POS_HH" == (BuildConfig.APP_DISTINCT_KEYWORD)) {
      return false;
    }
    return _useOrderSync;
  }

  Future<int?> getCrmProtocolVersion() async {
    return await _myPrefs.crmProtocolVersion()!.get();
  }

  void setCrmProtocolVersion(int crmProtocolVersion) {
    _myPrefs.crmProtocolVersion()!.put(crmProtocolVersion);
  }

  Future<String?> getCrmServerIp() async {
    return await _myPrefs.crmServerIp()!.get();
  }

  void setCrmServerIp(String crmServerIp) {
    _myPrefs.crmServerIp()!.put(crmServerIp);
  }

  Future<int?> getCrmServerPort() async {
    return await _myPrefs.crmServerPort()!.get();
  }

  void setCrmServerPort(int crmServerPort) {
    _myPrefs.crmServerPort()!.put(crmServerPort);
  }

  Future<int?> getCrmTerminalNumber() async {
    return await _myPrefs.crmTerminalNumber()!.get();
  }

  void setCrmTerminalNumber(int crmTerminalNumber) {
    _myPrefs.crmTerminalNumber()!.put(crmTerminalNumber);
  }

  Future<int?> getCrmDomainType() async {
    return await _myPrefs.crmDomainType()!.get();
  }

  void setCrmDomainType(int crmDomainType) {
    _myPrefs.crmDomainType()!.put(crmDomainType);
  }

  Future<int?> getCrmTaxType() async {
    return await _myPrefs.crmTaxType()!.get();
  }

  void setCrmTaxType(int crmTaxType) {
    _myPrefs.crmTaxType()!.put(crmTaxType);
  }

  Future<int?> getCrmTaxationType() async {
    return await _myPrefs.crmTaxationType()!.get();
  }

  void setCrmTaxationType(int crmTaxationType) {
    _myPrefs.crmTaxationType()!.put(crmTaxationType);
  }

  Future<int?> getCrmTaxPercent() async {
    return await _myPrefs.crmTaxPercent()!.get();
  }

  void setCrmTaxPercent(int crmTaxPercent) {
    _myPrefs.crmTaxPercent()!.put(crmTaxPercent);
  }

  Future<bool?> isCrmTaxInTotalSum() async {
    return await _myPrefs.isCrmTaxInTotalSum()!.get();
  }

  void setIsCrmTaxInTotalSum(bool value) {
    _myPrefs.isCrmTaxInTotalSum()!.put(value);
  }

  Future<int?> getCrmReqNum() async {
    return await _myPrefs.crmReqNum()!.get();
  }

  void setCrmReqNum(int crmReqNum) {
    _myPrefs.crmReqNum()!.put(crmReqNum);
  }

  Future<bool?> getWithdrawMoney() async {
    return await _myPrefs.withdrawMoney()!.get();
  }

  void setWithdrawMoney(bool withdrawMoney) {
    _myPrefs.withdrawMoney()!.put(withdrawMoney);
  }

  Future<String?> getKkmRegInfoFnsKkmId() async {
    return await _myPrefs.kkmRegInfoFnsKkmId()!.get();
  }

  void setKkmRegInfoFnsKkmId(String kkmRegInfoFnsKkmId) {
    _myPrefs.kkmRegInfoFnsKkmId()!.put(kkmRegInfoFnsKkmId);
  }

  Future<String?> getKkmRegInfoSerialNumber() async {
    return await _myPrefs.kkmRegInfoSerialNumber()!.get();
  }

  void setKkmRegInfoSerialNumber(String kkmRegInfoSerialNumber) {
    _myPrefs.kkmRegInfoSerialNumber()!.put(kkmRegInfoSerialNumber);
  }

  Future<String?> getOrgRegInfoTitle() async {
    return await _myPrefs.orgRegInfoTitle()!.get();
  }

  void setOrgRegInfoTitle(String orgRegInfoTitle) {
    _myPrefs.orgRegInfoTitle()!.put(orgRegInfoTitle);
  }

  Future<String?> getOrgRegInfoAddress() async {
    return await _myPrefs.orgRegInfoAddress()!.get();
  }

  void setOrgRegInfoAddress(String orgRegInfoAddress) {
    _myPrefs.orgRegInfoAddress()!.put(orgRegInfoAddress);
  }

  Future<String?> getPosRegInfoTitle() async {
    return await _myPrefs.posRegInfoTitle()!.get();
  }

  void setPosRegInfoTitle(String posRegInfoTitle) {
    _myPrefs.posRegInfoTitle()!.put(posRegInfoTitle);
  }

  Future<String?> getPosRegInfoAddress() async {
    return await _myPrefs.posRegInfoAddress()!.get();
  }

  void setPosRegInfoAddress(String posRegInfoAddress) {
    _myPrefs.posRegInfoAddress()!.put(posRegInfoAddress);
  }

  Future<String?> getOrgRegInfoInn() async {
    return await _myPrefs.orgRegInfoInn()!.get();
  }

  void setOrgRegInfoInn(String orgRegInfoInn) {
    _myPrefs.orgRegInfoInn()!.put(orgRegInfoInn);
  }

  Future<String?> getTicketAdText() async {
    return await _myPrefs.ticketAdText()!.get();
  }

  void setTicketAdText(String ticketAdText) {
    _myPrefs.ticketAdText()!.put(ticketAdText);
  }

  Future<bool?> getCrmRegistered() async {
    return await _myPrefs.crmRegistered()!.get();
  }

  void setCrmRegistered(bool value) {
    _myPrefs.crmRegistered()!.put(value);
  }

  Future<bool> isMaster() async {
    String? storeTerminalId = await getStoreTerminalId();
    StoreTerminal? storeTerminal =
        await _basBL.getStoreTerminalById(storeTerminalId);
    return storeTerminal == null ||
        "01" == (storeTerminal.getTerminalRoleSectionCode());
  }

  Future<String?> getAuthToken() async {
    return await _myPrefs.authToken()!.get();
  }

  void setAuthToken(String token) {
    _myPrefs.authToken()!.put(token);
  }

  Future<String?> getCustomMemo() async {
    return await _myPrefs.customMemo()!.get();
  }

  void setCustomMemo(String memo) {
    _myPrefs.customMemo()!.put(memo);
  }

  static const String TEMPLATE_ORDER_BILL = "TEMPLATE_ORDER_BILL";
  static const String TEMPLATE_ORDER_KITCHEN = "TEMPLATE_ORDER_KITCHEN";
  static const String TEMPLATE_RECEIPT = "TEMPLATE_RECEIPT";
  static const String TEMPLATE_REPORT1 = "TEMPLATE_REPORT1";
  static const String TEMPLATE_REPORT2 = "TEMPLATE_REPORT2";
  static const String TEMPLATE_REPORT3 = "TEMPLATE_REPORT3";
  static const String TEMPLATE_REPORT4 = "TEMPLATE_REPORT4";
  static const String TEMPLATE_REPORT5 = "TEMPLATE_REPORT5";
  static const String TEMPLATE_REPORT6 = "TEMPLATE_REPORT6";
  static const String TEMPLATE_CASH_RECEIPT = "TEMPLATE_CASH_RECEIPT";
  static const String TEMPLATE_NORMAL_STRING = "TEMPLATE_NORMAL_STRING";
  static const String TEMPLATE_KAZ_RECEIPT = "TEMPLATE_KAZ_RECEIPT";
  static const String TEMPLATE_REPORT_XZ = "TEMPLATE_REPORT_XZ";
  static const String TEMPLATE_REPORT_SECTION = "TEMPLATE_REPORT_SECTION";
  static const String TEMPLATE_REPORT_CASHIER = "TEMPLATE_REPORT_CASHIER";
  static const String TEMPLATE_KAZ_RECEIPT_CASH = "TEMPLATE_KAZ_RECEIPT_CASH";
  static const String TEMPLATE_KAZ_RECEIPT_CARD = "TEMPLATE_KAZ_RECEIPT_CARD";
  static const String TEMPLATE_PAY_IN_OUT = "TEMPLATE_PAY_IN_OUT";
  static const String TEMPLATE_REWARD_QR = 'TEMPLATE_REWARD_QR';

  Future<List<String>> getPrintTemplate(String? name) async {
    List<String> list = [];

    for (int i = 1; i <= 20; i++) {
      String? templateId = await getConfiguration("TEMPLATE", name, i, "");
      if (templateId == null || templateId.isEmpty) {
        break;
      } else {
        list.add(templateId);
      }
    }
    return list;
  }

  Future<List<String>> getReceiptPrintTemplate(
      String? paymentMethodCode) async {
    List<String> list = [];
    Map<String, String?> properties =
        await _basBL.getPaymentProperties(paymentMethodCode);
    String? templateId = properties["TEMPLATE"];

    if (templateId != null && templateId.isNotEmpty) {
      list.add(templateId);
    }

    return list;
  }

  Future<String?> getTaxOfficerCode() async {
    return await getBaseConfiguration("TAX_OFFICER", "CODE", 1);
  }

  void setBtPrinterAddress(String address) {
    _myPrefs.btPrinterAddress()!.put(address);
  }

  Future<String?> getBtPrinterAddress() async {
    return await _myPrefs.btPrinterAddress()!.get();
  }

  Future<void> _setIsSecurityLoginPw(bool value) async {
    await _myPrefs.isSecurityLoginPw()!.put(value);
  }

  Future<bool?> _getIsSecurityLoginPw() async {
    return await _myPrefs.isSecurityLoginPw()!.get();
  }

  void setDisplayTheme(String no) {
    _myPrefs.displayTheme()!.put(no);
  }

  Future<String?> getDisplayTheme() async {
    return await _myPrefs.displayTheme()!.get();
  }

  void setBarcodeScannerMode(String value) {
    _myPrefs.barcodeScannerMode()!.put(value);
  }

  Future<String?> getBarcodeScannerMode() async {
    return await _myPrefs.barcodeScannerMode()!.get();
  }

  Future<int?> getBarcodeScannerType() async {
    return await _myPrefs.barcodeScannerType()!.get();
  }

  void setBarcodeScannerType(int type) {
    _myPrefs.barcodeScannerType()!.put(type);
  }

  void setUseWebKassa(bool value) {
    _myPrefs.useWebKassa()!.put(value);
  }

  Future<bool?> getUseWebKassa() async {
    return await _myPrefs.useWebKassa()!.get();
  }

  void setWebKassaAutoRegistration(bool value) {
    _myPrefs.useWebKassaAutoRegistration()!.put(value);
  }

  Future<bool?> getUseWebKassaAutoRegistration() async {
    return await _myPrefs.useWebKassaAutoRegistration()!.get();
  }

  /////////////////////////////////////////////

  Future<bool?> isShowItemImage() async {
    StoreTerminalBasicDataItem? showItemImage =
        await _basBL.getStoreTerminalBasicDataItem("APP", "SHOW_ITEM_IMAGE");
    return showItemImage != null ? "1" == (showItemImage.getData1()) : null;
  }

  Future<void> setShowItemImage(bool show) async {
    await saveConfiguration("APP", "SHOW_ITEM_IMAGE", 1, show ? "1" : "0");
  }
}

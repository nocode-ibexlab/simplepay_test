import 'dart:collection';
import 'dart:io';

import 'package:simple_pay_api/src/Database/database.dart';
import 'package:simple_pay_api/src/Database/traceDatabase.dart';

import '../Format/NumberFormatUtil.dart';

class Common {
  static HashMap<String, dynamic>? _cardInfo = HashMap<String, dynamic>();
  static int _installment = 0;
  static String? _amount, _price, _tax;
  static bool _paymentCancel = false;
  static String? _paymentMethodCode;
  static String? _paymentSelect;
  static String? _cashierHistoryId;
  static String? _storageDir;

  static void setCardInfo(dynamic cardNo, dynamic cardData) {
    _cardInfo!["cardNo"] = cardNo;
    _cardInfo!["cardData"] = cardData;
  }

  static dynamic cardNo() {
    return _cardInfo!["cardNo"];
  }

  static dynamic cardData() {
    return _cardInfo!["cardData"];
  }

  static bool isPaymentCancel() {
    return _paymentCancel;
  }

  static void paymentCancel(bool paymentCancel) {
    _paymentCancel = paymentCancel;
  }

  static void setInstallment(int installment) {
    //if installment ==-1 cancel process
    _installment = installment;
  }

//not used
  static int installment() {
    return _installment;
  }

  static void setAmount(String amount, String price, String tax) {
    _amount = amount;
    _price = price;
    _tax = tax;
  }

  static void setReceiptNo(String? receiptNo) {
    _cardInfo!["receiptNo"] = receiptNo;
  }

  static void setCashierHistoryId(String? id) {
    _cashierHistoryId = id;
  }

  static String? cashierHistoryId() {
    return _cashierHistoryId;
  }

  static String? amount() {
    return _amount;
  }

  static String? price() {
    return _price;
  }

  static String? tax() {
    return _tax;
  }

  static dynamic receiptNo({int index = 0}) {
    return index == 0 ? _cardInfo!["receiptNo"] : _cardInfo!['receiptNo2'];
  }

  static void setResVan(
      {amount,
      cardNo,
      cardName,
      purchaseCompany,
      approvalDate,
      approvalNo,
      company,
      companyNo,
      receiptNo,
      paymentSection}) {
    _cardInfo!["amount"] = amount; //승인금액
    _cardInfo!["cardNo"] = cardNo; //카드번호
    _cardInfo!["cardName"] = cardName; //카드종류
    _cardInfo!["purchaseCompany"] = purchaseCompany; //매입사
    _cardInfo!["approvalDate"] = approvalDate; //승인일시
    _cardInfo!["approvalNo"] = approvalNo; //승인번호
    _cardInfo!["company"] = company; //가맹점
    _cardInfo!["companyNo"] = companyNo; //단말번호
    _cardInfo!["receiptNo"] = receiptNo; //영수증번호
    _cardInfo!["paymentSection"] = paymentSection; //영수증번호
  }

  static void setResVanCash(
      {amount,
      cardNo,
      cardName,
      purchaseCompany,
      approvalDate,
      approvalNo,
      company,
      companyNo,
      receiptNo,
      paymentSection,
      change,
      received,
      amount2,
      approvalNo2,
      receiptNo2}) {
    _cardInfo!["amount"] = amount; //승인금액
    _cardInfo!["cardNo"] = cardNo; //카드번호
    _cardInfo!["cardName"] = cardName; //카드종류
    _cardInfo!["purchaseCompany"] = purchaseCompany; //매입사
    _cardInfo!["approvalDate"] = approvalDate; //승인일시
    _cardInfo!["approvalNo"] = approvalNo; //승인번호
    _cardInfo!["company"] = company; //가맹점
    _cardInfo!["companyNo"] = companyNo; //단말번호
    _cardInfo!["receiptNo"] = receiptNo; //영수증번호
    _cardInfo!["paymentSection"] = paymentSection; //영수증번호
    _cardInfo!["change"] = change; //단말번호
    _cardInfo!["received"] = received; //영수증번호
    _cardInfo!['amount2'] = amount2;
    _cardInfo!['approvalNo2'] = approvalNo2;
    _cardInfo!['receiptNo2'] = receiptNo2;
  }

  static dynamic cardInfoMap() {
    return _cardInfo;
  }

  static Future<void> paymentComplete() async {
    setInstallment(0);
    paymentCancel(false);
    setAmount("0", "0", "0");
    setPaymentMethodCode(null);
    setPaymentSelect(null);
    _cardInfo!.clear();
  }

  static void setPaymentMethodCode(String? paymentMethodCode) {
    _paymentMethodCode = paymentMethodCode;
  }

  static void setPaymentSelect(String? paymentSelect) {
    _paymentSelect =
        paymentSelect; //CARD,CASH  //CRM_CASH,CRM_BANK_CARD,CRM_CREDIT_PAYMENT,CRM_PAYMENT_PACKAGING
  }

  static String? paymentMethodCode() {
    return _paymentMethodCode;
  }

  static String? paymentSelect() {
    return _paymentSelect;
  }

  static String? _crmPaymentType = OPERATION_TYPE_SELL;

  static void setCrmPaymentType(String? paymentType) {
    _crmPaymentType = paymentType; //"Sell","Buy"
  }

  static const String OPERATION_TYPE_SELL = "OPERATION_TYPE_SELL";
  static const String OPERATION_TYPE_BUY = "OPERATION_TYPE_BUY";

  static String isCrmPaymentTypeSell() {
    //OPERATION_TYPE_SELL: 0
    //OPERATION_TYPE_BUY: 1
    return (_crmPaymentType == OPERATION_TYPE_SELL) ? "0" : "1";
  }

  static const String TENDER = "000";
  static const String CASH = "001";
  static const String CARD = "002";
  static const String CHECK = "003";
  static const String UNION_PAY = "004";
  static const String SMART_PAY = "005";
  static const String KIWI_PG = "006";
  static const String AUTHORIZATION = "007";
  static const String AUTHORIZATION_CONFIRMATION = "008";
  static const String PURCHASE_RETURN = "009";
  static const String CRM_CASH = "050";
  static const String CRM_BANK_CARD = "051";
  static const String CRM_CREDIT_PAYMENT = "052";
  static const String CRM_PAYMENT_PACKAGING = "053";
  static const String SEARCH_CHECK = "103";
  static const String TOOK = "150";
  static const String MYD = "151";
  static const String MANUAL_PAYMENT = "200";
  static const String COUPON = "201";

  static const String DUMMY = "100";
  static const String NICE = "101";
  static const String KSNET = "102";
  static const String KICC = "103";
  static const String FDIK = "104";
  static const String KCP = "105";
  static const String KOVAN = "107";
  static const String KOCES = "108";

  static const String KAZCRM = "202";
  static const String KIWIPG = "203";
  static const String EX_PAY = "204";
  static const String EASY_CARD = "205";
  static const String EX_KS_NET = "207";
  static const String OPEN_WAY = "400";
  static const String OPEN_WAY_BCC = "KZB402";
  static const String HALYK_QR_PAY = "KZB201";
  static const String KASPI_QR_PAY = "KZB202";
  static const String YOLLET_PAY = "KRY201";
  static const String D_KS_NET = "KRB207";
  static const String CAT_KS_NET = "KRB208";

  static const String PREFIX_CASH = "KRC";
  static const String CASH_EX_PAY = "KRC207";
  static const String CASH_KS_NET = "KRC208";

  static const String PAYMENT_TYPE_CHARACTER_C = "C"; // CASH
  static const String PAYMENT_TYPE_CHARACTER_B = "B"; // BANK_CARD
  static const String PAYMENT_TYPE_CHARACTER_L = "L"; // CREDIT //FOR CRM
  static const String PAYMENT_TYPE_CHARACTER_P = "P"; // PACKAGING //FOR CRM
  static const String PAYMENT_TYPE_CHARACTER_R = "R"; // 결합결제
  static const String PAYMENT_TYPE_CHARACTER_T = "T"; // TAX AGENCY

  static const int CODE_BUSY = -123456; // ExtSend.CODE_BUSY 참조

  static bool isCrm(String? codeStr) {
    switch (codeStr) {
      case CRM_CASH:
      case CRM_BANK_CARD:
      case CRM_CREDIT_PAYMENT:
      case CRM_PAYMENT_PACKAGING:
        return true;

      default:
        return false;
    }
  }

  static bool isCashPayment([String? code]) {
    code = code ?? _paymentSelect;
    return [CASH, CRM_CASH, CRM_CREDIT_PAYMENT, CRM_PAYMENT_PACKAGING]
            .contains(code) ||
        (code != null && code.startsWith(PREFIX_CASH));
  }

  static bool isQRPay([String? code]) {
    code = code ?? _paymentSelect;
    return [HALYK_QR_PAY, KASPI_QR_PAY].contains(code);
  }

  static bool isHalykQRPay([String? code]) {
    code = code ?? _paymentSelect;
    return [HALYK_QR_PAY].contains(code);
  }

  static bool isKaspiQRPay([String? code]) {
    code = code ?? _paymentSelect;
    return [KASPI_QR_PAY].contains(code);
  }

  static bool isYolletPay([String? code]) =>
      (code ?? _paymentSelect) == YOLLET_PAY;

  static bool isOpenWay(String? type) =>
      type == OPEN_WAY || type == OPEN_WAY_BCC;

  static bool isInvisiblePayment([String? type]) {
    type = type ?? _paymentSelect;
    String paymentTypeCharacter = type!.substring(2, 3);
    if (PAYMENT_TYPE_CHARACTER_T == paymentTypeCharacter) {
      return true;
    }
    return false;
  }

  static String? _printReceipt;

  static void setPrintReceipt(String? printReceipt) {
    _printReceipt = printReceipt;
  }

  static String? printReceipt() {
    return _printReceipt;
  }

  static List printerError(int errCode) {
    switch (errCode) {
      case -4099:
        return [1, 'Busy'];
      case -4:
      case -4101:
      case -4103:
        return [2, 'Overheated'];
      case -2:
      case -4104:
        return [3, 'Out of paper'];
      case -4115:
        return [4, 'Low power'];
      case -3:
        return [5, 'Cover opened'];
      case -4100:
      default:
        return [6, 'Not responding'];
    }
  }

  static num numParse(String text) {
    if (text == null) return 0;

    if (text.isEmpty) return 0;

    num value;
    try {
      value = CurrencyFormatter.noSymbolCurrency.parse(text);
    } on Exception {
      value = num.parse(text);
    }
    return value;
  }

  static void setStorageDir(String? value) => _storageDir = value;

  static get imageDir =>
      (_storageDir ?? '') +
      Platform.pathSeparator +
      'images' +
      Platform.pathSeparator;

  static get backupDir =>
      (_storageDir ?? '') +
      Platform.pathSeparator +
      'backupDB' +
      Platform.pathSeparator;

  static bool isMarking(String? linkCode) {
    if (linkCode == null || linkCode.isEmpty) {
      linkCode = "00000000000000000000";
    }
    String isMarking = linkCode.substring(0, 2);
    if (isMarking == "01") return true;
    return false;
  }

  static FlutterDatabase? _database;

  static void setDB(FlutterDatabase database) => _database = database;

  static FlutterDatabase? get db => _database;

  static TraceDatabase? _traceDatabase;

  static void setTraceDB(TraceDatabase database) => _traceDatabase = database;

  static TraceDatabase? get traceDb => _traceDatabase;

  static bool success(r) =>
      r != null && r['common'] != null ? r['common']['resCode'] >= 0 : false;

  static int resCode(r) =>
      r != null && r['common'] != null ? r['common']['resCode'] : -1;

  static String message(r) =>
      r != null && r['common'] != null ? r['common']['resMessage'] : '';

  static dynamic result(r, k) =>
      r != null && r['content'] != null ? r['content'][k] : null;

  static Map resultMap(r) => r != null ? r['content'] ?? {} : {};
}

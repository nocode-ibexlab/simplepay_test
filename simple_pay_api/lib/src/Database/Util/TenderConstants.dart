import 'package:collection/collection.dart' show IterableExtension;
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/OperationBL.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import 'CommonUtil.dart';
import 'LangCode.dart';
import 'VANConstant.dart';

class TenderConstants {
  static const String VOID = "V";
  static const String REFUND = "R";

  //현급영수증 발급 타입 - 20: 개인오류발급, 21: 법인오류발급, 30:개인기타취소, 31:법인 기타취소
  static const String ISSUE_TYPE_VOLUNTARILY = "99"; //자진발급
  static const String VOLUNTARILY_ISSUE_NUMBER = "01000001234"; //자진발급 번호
  static const int TYPE_CASH_RECEIPT = 0;
  static const int TYPE_SIMPLE_RECEIPT = 1;

  static const String IS_CANCEL = "isCancel";
  static const String PRICE = "price";
  static const String SUM_TIP = "stip"; //tip+tiptax
  static const String TOT_AMT = VANConstant.TOT_AMT;
  static const String ORDER_DC_AMT = "orderDcAmt";
  static const String MENU_DC_AMT = "menuDcAmt";
  static const String SUPPLY_VALUE = "supplyValue";

  static const String PAID_AMOUNT = "paidamt";
  static const String PAID_TAX = "paidTax";
  static const String PAID_STIP = "paidstip";
  static const String PAID_TIP = "paidtip";
  static const String PAID_TIP_TAX = "paidTipTax";
  static const String PAID_MENU_DC_AMT = "paidMenuDcAmt";
  static const String PAID_ORDER_DC_AMT = "paidOrderDcAmt";

  static const String COUNTRY_KOR = "kor";
  static const String COUNTRY_KAZ = "kaz";

  static const String SALE_COM_DATE = "saleCommonDate";
  static const String SALE_SERIAL_NO = "saleSerialNumber";
  static const String PREFIX_CASH = "KRC";

  static const String INSTALLMENT = VANConstant.INSTALLMENT;
  static const String CARD_READ_TYPE = VANConstant.CARD_READ_TYPE;
  static const String IDENTITY_NUMBER = VANConstant.IDENTITY_NUMBER;
  static const String ISSUE_TYPE = VANConstant.ISSUE_TYPE;
  static const String CARD_READER_DATA = VANConstant.CARD_READER_DATA;
  static const String PAYMENTS = VANConstant.PAYMENTS;
  static const String AMOUNT = VANConstant.AMOUNT;
  static const String TAX = VANConstant.TAX;
  static const String TAXATION_AMOUNT = VANConstant.TAXATION_AMOUNT; //과세금액
  static const String EXEMPT_AMOUNT = VANConstant.EXEMPT_AMOUNT; //면세금액
  static const String DC_AMT = VANConstant.DC_AMT;
  static const String TIP = VANConstant.TIP;
  static const String TIP_TAX = VANConstant.TIP_TAX;
  static const String IS_MSR = VANConstant.IS_MSR;
  static const String IS_SIGN_DATA = VANConstant.IS_SIGN_DATA;
  static const String APP_NO = VANConstant.APP_NO;
  static const String APP_DATE = VANConstant.APP_DATE;
  static const String APP_SEQ_NO = VANConstant.APP_SEQ_NO;
  static const String PASSWORD = VANConstant.PASSWORD;
  static const String STORE_NAME = VANConstant.STORE_NAME;
  static const String STORE_PHONE_NUMBER = VANConstant.STORE_PHONE_NUMBER;
  static const String STORE_EMAIL = VANConstant.STORE_EMAIL;
  static const String ORDER_ITEM_NAME = VANConstant.ORDER_ITEM_NAME;
  static const String HEADER_TOKEN = VANConstant.HEADER_TOKEN;

  static const String TRANSACTION_RESULT = VANConstant.TRANSACTION_RESULT;
  static const String TRANSACTION_RESULT_TXT =
      VANConstant.TRANSACTION_RESULT_TXT;
  static const String ERR_CODE = VANConstant.ERR_CODE;
  static const String ERR_MESSAGE = VANConstant.ERR_MESSAGE;
  static const String ERR_VAN = VANConstant.ERR_VAN;

  static const String TRANSACTION_CANCEL_READER =
      VANConstant.TRANSACTION_CANCEL_READER;
  static const String TRANSACTION_CANCEL_VAN =
      VANConstant.TRANSACTION_CANCEL_VAN;
  static const String TRANSACTION_CANCEL_TYPE =
      VANConstant.TRANSACTION_CANCEL_TYPE;

  //MYD [[
  static const String DATA = VANConstant.DATA;
  static const String RECEIPT_NUMBER = VANConstant.RECEIPT_NUMBER;
  static const String P_CODE = VANConstant.P_CODE;
  static const String TPRICE = VANConstant.TPRICE;
  static const String COUNT = VANConstant.COUNT;
  static const String REPEAT_APPROVAL = VANConstant.REPEAT_APPROVAL;
  static const String MCODE = VANConstant.MCODE;
  static const String MNAME = VANConstant.MNAME;
  static const String MCNT = VANConstant.MCNT;
  static const String PRICE1 = VANConstant.PRICE1;
  static const String PRICE2 = VANConstant.PRICE2;
  static const String PRICE3 = VANConstant.PRICE3;
  static const String PRICE4 = VANConstant.PRICE4;
  static const String SERVER_URL = VANConstant.SERVER_URL;

  static const String PAYMENT_TYPE_CHARACTER_C = "C"; // CASH
  static const String PAYMENT_TYPE_CHARACTER_B = "B"; // BANK_CARD
  static const String PAYMENT_TYPE_CHARACTER_L = "L"; // CREDIT //FOR CRM
  static const String PAYMENT_TYPE_CHARACTER_P = "P"; // PACKAGING //FOR CRM
  static const String PAYMENT_TYPE_CHARACTER_R = "R"; // 결합결제
  static const String PAYMENT_TYPE_CHARACTER_T = "T"; // TAX AGENCY

  //MYD ]]
//
//     public enum Section {
//         TENDER("000", LangCode.tender, "Tender", false),
//         CASH("001", LangCode.cash, "Cash", true),
//         CARD("002", LangCode.card, "Card", false),
//         CHECK("003", LangCode.check, "Check", false),
//         UNION_PAY("004", LangCode.unionpay, "Union Pay", false),
//         SMART_PAY("005", LangCode.smart_pay, "Mobile Pay", false),
//         KIWI_PG("006", LangCode.kiwipg, "KiwiPG", false),
//         AUTHORIZATION("007", LangCode.authorization, "Authorization", false),
//         AUTHORIZATION_CONFIRMATION("008", LangCode.authorization, "Authorization Confirmation", false),
//         PURCHASE_RETURN("009", LangCode.cancel_purchase, "Purchase Return", false),
//         CRM_CASH("050", LangCode.cash, "Cash(CRM)", true),
//         CRM_BANK_CARD("051", LangCode.bank_card, "Bank Card", false),
//         CRM_CREDIT_PAYMENT("052", LangCode.credit_payment, "Credit Payment", false),
//         CRM_PAYMENT_PACKAGING("053", LangCode.payment_packaging, "Payment Packaging", false),
//         DUMMY("100", LangCode.card, "DUMMY", false),
//         NICE("101", LangCode.card, "NICE", false),
//         KSNET("102", LangCode.card, "KSNET", false),
//         KICC("103", LangCode.card, "KICC", false),
//         FDIK("104", LangCode.card, "FDIK", false),
//         KCP("105", LangCode.card, "KCP", false),
//         JTNET("106", LangCode.card, "JTNET", false),
//         KOVAN("107", LangCode.card, "KOVAN", false),
//         KOCES("108", LangCode.card, "KOCES", false),
//         TOOK("150", LangCode.card, "Took", false),
//         MYD("151", LangCode.my_d, "MyD", false),
//         MANUAL_PAYMENT("200", LangCode.manual_payment, "Manual Payment", false),
//         COUPON("201", LangCode.coupon_giftcard, "Coupon", false),
//         KAZCRM("202", LangCode.card, "KAZCRM", false),
//         KIWIPG("203", LangCode.card, "KIWIPG", false),
//         EX_PAY("204", LangCode.card, "EX_PAY", false),
//         EASY_CARD("205", LangCode.card, "EASY_CARD", false),
//         COMBINED_PAY("206", LangCode.card, "COMBINED_PAY", false),
//         OPEN_WAY("400", LangCode.card, "OPEN_WAY", false),
//         OPEN_WAY_BCC("KZB402", LangCode.card, "OPEN_WAY_BCC", false),
//         CASH_EX_PAY("KRC204", LangCode.cash, "Cash", true),
//         QR_PAY("KZB201", LangCode.card, "QRPay", false);
//
//         private String code;
//         private Integer langCode;
//         private String name;
//         private bool isCash; //현금거래여부
//
//         Section(String code, Integer langCode, String name, bool isCash) {
//             this.code = code;
//             this.langCode = langCode;
//             this.name = name;
//             this.isCash = isCash;
//         }
//
//         public String getCode() {
//             return code;
//         }
//
//         public Integer getLangCode() {
//             return langCode;
//         }
//
//         public String getName() {
//             return name;
//         }
//
//         public bool isCash() {
//             return isCash;
//         }
//
//         public bool isCard() {
//             switch (this) {
//                 case CARD:
//                 case CRM_BANK_CARD:
//                 case DUMMY:
//                 case NICE:
//                 case KSNET:
//                 case KICC:
//                 case FDIK:
//                 case KCP:
//                 case JTNET:
//                 case KOVAN:
//                 case KOCES:
//                 case EX_PAY:
//                 case EASY_CARD:
//                 case OPEN_WAY:
//                 case OPEN_WAY_BCC:
//                     return true;
//             }
//
//             return false;
//         }
//
//         static Section getSection(String code) {
//             if (code == null) {
//                 return CASH;
//             }
//
//             for (Section i : values()) {
//                 if (i.getCode() ==(code)) {
//                     return i;
//                 }
//             }
//
//             if(code.length()>=3){
//                 String paymentTypeCharacter = code.substring(2, 3);
//                 if (BizBase.PAYMENT_TYPE_CHARACTER_C ==(paymentTypeCharacter)) {
//                     return CASH;
//                 }else if (BizBase.PAYMENT_TYPE_CHARACTER_B ==(paymentTypeCharacter)) {
//                     return CARD;
//                 }
//             }
//
//             return code.startsWith(PREFIX_CASH) ? CASH : CARD;
//         }
//
//         static List<Section> allCash() {
//             List<Section> sections = List();
//
//             for (Section section : values()) {
//                 if (section.isCash()) {
//                     sections.add(section);
//                 }
//             }
//
//             return sections;
//         }
//
//         static List<Section> allCard() {
//             List<Section> sections = List();
//
//             for (Section section : values()) {
//                 if (section.isCard()) {
//                     sections.add(section);
//                 }
//             }
//
//             return sections;
//         }
//     }
//
//     public enum TRANS_TP_CD{
//         CRM_COMMODITY("1", LangCode.commodity),  //Commodity
//         CRM_STORNO_COMMODITY("2", LangCode.reversal_of_commodities), //Reversal of commodities
//         CRM_MARKUP("3", LangCode.mark_up),  //mark-up
//         CRM_STORNO_MARKUP("4", LangCode.reversal_of_margins), //reversal of margins
//         CRM_DISCOUNT("5", LangCode.a_discount), //A discount
//         CRM_STORNO_DISCOUNT("6", LangCode.reversal_discounts); //reversal discounts
//
//         private String code;
//         private int langCode;
//
//         TRANS_TP_CD(String code, int langCode){
//             this.code = code;
//             this.langCode = langCode;
//         }
//
//         public String getCode(){
//             return code;
//         }
//         public int getLangCode() {
//             return langCode;
//         }
//
//         static TRANS_TP_CD getType(String value) {
//             switch (value) {
//                 case "1": return CRM_COMMODITY;
//                 case "2": return CRM_STORNO_COMMODITY;
//                 case "3": return CRM_MARKUP;
//                 case "4": return CRM_STORNO_MARKUP;
//                 case "5": return CRM_DISCOUNT;
//                 case "6": return CRM_STORNO_DISCOUNT;
//                 default: return null;
//             }
//         }
//     }
//
//     public enum APRVL_TP_CD{
//         SELL_APRVL_EXT("1", 1, 1),  //판매외부승인 (+)
//         SELL_CNCL_EXT("2", -1, -1), //판매외부승인취소 (-)
//         SELL_APRVL_INT("3", 1, 1),  //판매내부승인 (+)
//         SELL_CNCL_INT("4", -1, -1), //판매내부승인취소 (-)
//         REF_CASH("5", -1, -1), //현금환불(내부결제취소) (-)
//         APRVL_SIM("6", 1, 1), //간이영수증(승인, 내부결제) (+)
//         CNCL_SIM("7", -1, -1), //간이영수증(취소, 내부결제취소) (-)
//         VAN_CNCL("8", 0, 0), //망취소, from Van
//         RDR_CNCL("9", 0, 0), //망취소, from Reader
//
//         BUY_APRVL_EXT("11", -1, 1),  //구매외부승인 (+)
//         BUY_CNCL_EXT("12", 1, -1); //구매외부승인취소 (-)
//
//         private String code;
//         private int inOut;   //1: IN, -1: OUT
//         private int arbitration; //입력데이터 부호에 따른 계산 부호를 조정하기 위함, inOut 부호 = 입력데이터 부호 * arbitration
//
//         APRVL_TP_CD(String code, int inOut, int arbitration) {
//             this.code = code;
//             this.inOut = inOut;
//             this.arbitration = arbitration;
//         }
//
//         public String getCode(){
//             return code;
//         }
//
//         public int getInOut(){
//             return inOut;
//         }
//
//         public int getMSign(){  //the multiplication sign
//             return inOut * arbitration;
//         }
//
//         public bool isIn(){
//             if(inOut == 1)
//                 return true;
//             else
//                 return false;
//         }
//
//         static APRVL_TP_CD getType(String value) {
//             switch (value) {
//                 case "1": return SELL_APRVL_EXT;
//                 case "2": return SELL_CNCL_EXT;
//                 case "3": return SELL_APRVL_INT;
//                 case "4": return SELL_CNCL_INT;
//                 case "5": return REF_CASH;
//                 case "6": return APRVL_SIM;
//                 case "7": return CNCL_SIM;
//                 case "8": return VAN_CNCL;
//                 case "9": return RDR_CNCL;
//                 case "11": return BUY_APRVL_EXT;
//                 case "12": return BUY_CNCL_EXT;
//
//                 default: return null;
//             }
//         }
//     }
//
//     public enum CASH_RECPT_TP_CD {
//         CASH_RECEIPT_PERSONAL("00"),    //현금영수증 개인승인
//         CASH_RECEIPT_BUSINESS("01"),    //현금영수증 법인승인
//         CNCL_RECEIPT_PERSONAL("15"),    //현금영수증 개인승인취소
//         CNCL_RECEIPT_BUSINESS("11");    //현금영수증 법인승인취소
//         //"20" 개인오류발급
//         //"21" 법인오류발급
//         //"30" 개인기타취소
//         //"31" 법인기타취소
//
//         private String code;
//
//         CASH_RECPT_TP_CD(String code) {
//             this.code = code;
//         }
//
//         public String getCode() {
//             return code;
//         }
//     }
//
//     public enum CASH_RECPT_ID_TP_CD {
//         CASH("C"),    //현금(간이영수증)
//         CREDIT_CARD("CC"),    //신용카드
//         CREDIT_RECEIPT_CARD("CRC"),    //현금영수증카드
//         CASH_RECEIPT_ID("CRI"), //현금영수증 수기입력
//         GIFT_CARD("GC"),    //기프트카드
//         MOBILE_CARD("BC"),    //모바일카드
//         VOLUNTARILY_ISSUED("VI");   //자진발급(Default)
//
//         private String code;
//
//         CASH_RECPT_ID_TP_CD(String code) {
//             this.code = code;
//         }
//
//         public String getCode() {
//             return code;
//         }
//     }
//
//     public enum VAN{    //BA_BAS_DAT_ITM 참조
//         NONE("000","NONE"),
//         DUMMY(VANConstant.VAN_CODE_DUMMY,"DUMMY"),
//         NICE(VANConstant.VAN_CODE_NICE,"NICE"),
//         KSNET(VANConstant.VAN_CODE_KSNET, "KSNET"),
//         KICC_SAMIL(VANConstant.VAN_CODE_KICC, "KICC(SAMIL)"),
//         FDIK(VANConstant.VAN_CODE_FDIK, "FDIK"),
//         KCP_MP506(VANConstant.VAN_CODE_KCP, "KCP(MP506)"),
//         JTNET(VANConstant.VAN_CODE_JTNET, "JTNET"),
//         KOVAN_MP506(VANConstant.VAN_CODE_KOVAN, "KOVAN(MP506)"),
//         KOCES(VANConstant.VAN_CODE_KOCES, "KOCES"),
//         MOBILE("200", "MOBILE"),
//         MYD(VANConstant.VAN_CODE_MYD, "MYD"),
//         KIWIPG(VANConstant.VAN_CODE_KIWIPG, "KIWIPG"),
//         KAZCRM(VANConstant.VAN_CODE_KAZCRM, "KAZCRM"),
//         MANUAL_PAYMENT(VANConstant.VAN_CODE_MANUAL_PAYMENT, "MANUAL_PAYMENT"),
//         COUPON(VANConstant.VAN_CODE_COUPON, "COUPON"),
//         QPOS(VANConstant.VAN_CODE_QPOS, "QPOS");
//
//         private String code;
//         private String name;
//
//         VAN(String code, String name){
//             this.code = code;
//             this.name = name;
//         }
//
//         public String getCode() { return code; }
//         public String getName(){
//             return name;
//         }
//
//         static VAN getVAN(String code) {
//             switch (code) {
//                 case "000" : return NONE;
//                 case VANConstant.VAN_CODE_DUMMY : return DUMMY;
//                 case VANConstant.VAN_CODE_NICE : return NICE;
//                 case VANConstant.VAN_CODE_KSNET : return KSNET;
//                 case VANConstant.VAN_CODE_KICC : return KICC_SAMIL;
//                 case VANConstant.VAN_CODE_FDIK : return FDIK;
//                 case VANConstant.VAN_CODE_KCP : return KCP_MP506;
//                 case VANConstant.VAN_CODE_JTNET : return JTNET;
//                 case VANConstant.VAN_CODE_KOVAN : return KOVAN_MP506;
//                 case VANConstant.VAN_CODE_KOCES : return KOCES;
//                 case "200" : return MOBILE;
//                 case VANConstant.VAN_CODE_MYD : return MYD;
//                 case VANConstant.VAN_CODE_KIWIPG : return KIWIPG;
//                 case VANConstant.VAN_CODE_MANUAL_PAYMENT : return MANUAL_PAYMENT;
//                 case VANConstant.VAN_CODE_COUPON : return COUPON;
//                 case VANConstant.VAN_CODE_QPOS : return QPOS;
//                 default: return null;
//             }
//         }
//
//     }
//
//     public enum APRVL_POINT_CD{
//         ODR("1"),  //주문결제승인
//         ODR_CNCL("2"),  //주문결제승인취소
//         SLS("3"), //판매결제승인
//         SLS_CNCL("4");   //판매결제승인취소
//
//         private String code;
//
//         APRVL_POINT_CD(String code){
//             this.code = code;
//         }
//
//         public String getCode(){
//             return code;
//         }
//     }
//
//     public enum PAY_OPT{
//         MENU("01"),  //메뉴별결제 (결제시 메뉴별 계산을 통해 결제)
//         PARTIAL("02"),  //부분결제 (주문 내역을 분할하여 결제)
//         NORMAL("03"); //일반결제(주문 내역을 한번에 결제)
//
//         private String code;
//
//         PAY_OPT(String code){
//             this.code = code;
//         }
//
//         public String getCode(){
//             return code;
//         }
//     }
//
//     public enum PURCHASE_TYPE {
//         VOLUNTARILY_ISSUED("Voluntarily issued",LangCode.voluntarily_issued),
//         SIMPLE_RECEIPT("Обычный чек", LangCode.simple_receipt);
//
//         private String name;
//         private int langCode;
//
//         PURCHASE_TYPE(String name,int langCode) {
//             this.name = name;
//             this.langCode = langCode;
//         }
//
//         public String getName(){
//             return BaseBL.lang.get(langCode);
// //            return name;
//         }
//     }
//
//     public enum BIZ_SEC_CD {
//         HALL("BS101"), //홀서빙
//         TAKEOUT("BS102"), //테이크아웃
//         CAT("BS106"), //CAT
//         MANUAL_VOID("BS107"),   //수기승인취소
//         ONLINE_NEW("BS200"), // TOOK 신규 주문
//         ONLINE_ACCEPTED("BS201"), // TOOK 수락 주문
//         ONLINE_COMPLETE("BS202"); // TOOK 완료 주문
//
//         private String code;
//
//         BIZ_SEC_CD(String code) {
//             this.code = code;
//         }
//
//         public String getCode(){
//             return code;
//         }
//     }
//
//     public enum OperationTypeEnum
//     {
//         OPERATION_BUY(0, LangCode.operation_buy, 1, APRVL_TP_CD.BUY_APRVL_EXT),
//         OPERATION_BUY_RETURN(1, LangCode.operation_buy_return, 0, APRVL_TP_CD.BUY_CNCL_EXT),
//         OPERATION_SELL(2, LangCode.operation_sell, 3, APRVL_TP_CD.SELL_APRVL_EXT),
//         OPERATION_SELL_RETURN(3, LangCode.operation_sell_return, 2, APRVL_TP_CD.SELL_CNCL_EXT),
//         OPERATION_NONE(99, -1, -1, null);
//
//         private int value;
//         private int langCode;
//         private int returnType;
//         private APRVL_TP_CD approvalType;
//
//         OperationTypeEnum(int value, int langCode, int returnType, APRVL_TP_CD approvalType) {
//             this.value = value;
//             this.langCode = langCode;
//             this.returnType = returnType;
//             this.approvalType = approvalType;
//         }
//
//         public int getValue() {
//             return value;
//         }
//         public int getLangCode() {
//             return langCode;
//         }
//         public int getReturnType() {
//             return returnType;
//         }
//         public APRVL_TP_CD getApprovalType() {
//             return approvalType;
//         }
//
//         static OperationTypeEnum getType(int value) {
//             switch (value) {
//                 case 0: return OPERATION_BUY;
//                 case 1: return OPERATION_BUY_RETURN;
//                 case 2: return OPERATION_SELL;
//                 case 3: return OPERATION_SELL_RETURN;
//
//                 default: return null;
//             }
//         }
//
//         static OperationTypeEnum getOpType(APRVL_TP_CD value) {
//             switch (value) {
//                 case BUY_APRVL_EXT: return OPERATION_BUY;
//                 case BUY_CNCL_EXT: return OPERATION_BUY_RETURN;
//                 case SELL_APRVL_EXT: return OPERATION_SELL;
//                 case SELL_CNCL_EXT: return OPERATION_SELL_RETURN;
//
//                 default: return OPERATION_NONE;
//             }
//         }
//     }
//
//     public enum CrmOperationTypeEnum
//     {
//         OPERATION_BUY(0, LangCode.operation_buy, 1, APRVL_TP_CD.BUY_APRVL_EXT),
//         OPERATION_BUY_RETURN(1, LangCode.operation_buy_return, 0, APRVL_TP_CD.BUY_CNCL_EXT),
//         OPERATION_SELL(2, LangCode.operation_sell, 3, APRVL_TP_CD.SELL_APRVL_EXT),
//         OPERATION_SELL_RETURN(3, LangCode.operation_sell_return, 2, APRVL_TP_CD.SELL_CNCL_EXT),
//         OPERATION_NONE(99, -1, -1, null);
//
//         private int value;
//         private int langCode;
//         private int returnType;
//         private APRVL_TP_CD approvalType;
//
//         CrmOperationTypeEnum(int value, int langCode, int returnType, APRVL_TP_CD approvalType) {
//             this.value = value;
//             this.langCode = langCode;
//             this.returnType = returnType;
//             this.approvalType = approvalType;
//         }
//
//         public int getValue() {
//             return value;
//         }
//         public int getLangCode() {
//             return langCode;
//         }
//         public int getReturnType() {
//             return returnType;
//         }
//         public APRVL_TP_CD getApprovalType() {
//             return approvalType;
//         }
//
//         static CrmOperationTypeEnum getType(int value) {
//             switch (value) {
//                 case 0: return OPERATION_BUY;
//                 case 1: return OPERATION_BUY_RETURN;
//                 case 2: return OPERATION_SELL;
//                 case 3: return OPERATION_SELL_RETURN;
//
//                 default: return null;
//             }
//         }
//
//         static CrmOperationTypeEnum getOpType(String appTpCd) {
//             switch (appTpCd) {
//                 case "11": return OPERATION_BUY;
//                 case "12": return OPERATION_BUY_RETURN;
//                 case "1": return OPERATION_SELL;
//                 case "2": return OPERATION_SELL_RETURN;
//                 case "3": return OPERATION_SELL;
//                 case "4": return OPERATION_SELL_RETURN;
//
//                 default: return OPERATION_NONE;
//             }
//         }
//     }
//
//     public enum CrmItemTypeSpinEnum
//     {
//         ITEM_TYPE_COMMODITY(0, LangCode.commodity, CrmItemTypeEnum.ITEM_TYPE_COMMODITY),
//         ITEM_TYPE_MARKUP(1, LangCode.mark_up, CrmItemTypeEnum.ITEM_TYPE_MARKUP),
//         ITEM_TYPE_DISCOUNT(2, LangCode.a_discount, CrmItemTypeEnum.ITEM_TYPE_DISCOUNT);
//
//         private int value;
//         private int langCode;
//         private CrmItemTypeEnum itemTypeEnum;
//
//         CrmItemTypeSpinEnum(int value, int langCode, CrmItemTypeEnum itemTypeEnum) {
//             this.value = value;
//             this.langCode = langCode;
//             this.itemTypeEnum = itemTypeEnum;
//         }
//
//         public int getValue() {
//             return value;
//         }
//         public int getLangCode() {
//             return langCode;
//         }
//         public CrmItemTypeEnum getCrmItemTypeEnum() { return itemTypeEnum; }
//
//         static CrmItemTypeSpinEnum getType(int value) {
//             switch (value) {
//                 case 0: return ITEM_TYPE_COMMODITY;
//                 case 1: return ITEM_TYPE_MARKUP;
//                 case 2: return ITEM_TYPE_DISCOUNT;
//
//                 default: return null;
//             }
//         }
//     }
//
//     public enum CrmItemTypeEnum
//     {
//         ITEM_TYPE_COMMODITY(1, LangCode.commodity),
//         ITEM_TYPE_STORNO_COMMODITY(2, LangCode.reversal_of_commodities),
//         ITEM_TYPE_MARKUP(3, LangCode.mark_up),
//         ITEM_TYPE_STORNO_MARKUP(4, LangCode.reversal_of_margins),
//         ITEM_TYPE_DISCOUNT(5, LangCode.a_discount),
//         ITEM_TYPE_STORNO_DISCOUNT(6, LangCode.reversal_discounts);
//
//         private int value;
//         private int langCode;
//
//         CrmItemTypeEnum(int value, int langCode) {
//             this.value = value;
//             this.langCode = langCode;
//         }
//
//         public int getValue() {
//             return value;
//         }
//         public int getLangCode() {
//             return langCode;
//         }
//         static CrmItemTypeEnum getType(int value) {
//             switch (value) {
//                 case 1: return ITEM_TYPE_COMMODITY;
//                 case 2: return ITEM_TYPE_STORNO_COMMODITY;
//                 case 3: return ITEM_TYPE_MARKUP;
//                 case 4: return ITEM_TYPE_STORNO_MARKUP;
//                 case 5: return ITEM_TYPE_DISCOUNT;
//                 case 6: return ITEM_TYPE_STORNO_DISCOUNT;
//
//                 default: return null;
//             }
//         }
//     }
//
//     /// SalesAccountHistory getApprovalTypeCode() 승인타입이 취소/환불인지 확인
//     /// @param code
//     /// @return
  static bool isCanceled(String? code) {
    bool isCancel;
    isCancel = TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode() == (code) ||
        TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode() == (code) ||
        TenderConstants_APRVL_TP_CD.REF_CASH.getCode() == (code) ||
        TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode() == (code) ||
        TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode() == (code);
    return isCancel;
  }

  static bool isBuying(String? code) {
    return TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode() == (code) ||
        TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode() == (code);
  }

//
//     /**
//      * 매출보고서용 판매데이터에 포함해야 하는 salesAccountHistory 인지 여부결정과 취소 항목인지 확인
//      * @param salesAccountHistory
//      * @return
//      */
//     static bool isCanceledForReport(SalesAccountHistory salesAccountHistory){
//         bool isCancel;
//         String code = salesAccountHistory.getApprovalTypeCode();
//         OperationBL operationBL = OperationBL();
//
//         isCancel = APRVL_TP_CD.SELL_CNCL_EXT.getCode() ==(code) || APRVL_TP_CD.SELL_CNCL_INT.getCode() ==(code)
//                 || (APRVL_TP_CD.CNCL_SIM.getCode() ==(code) && operationBL.getIncludeSrSalesResult());
//
//         return isCancel;
//     }
//
//     static bool isRefund(SalesAccountHistory salesAccountHistory){
//         return TenderConstants_APRVL_TP_CD.REF_CASH.getCode().equalsIgnoreCase(salesAccountHistory.getApprovalTypeCode());
//     }
//

  static String? getCancelAppTypeCode(String? approvalTypeCode) {
    if (TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode();
    } else if (TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode();
    } else if (TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode();
    } else if (TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode();
    } else if (TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode();
    } else if (TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode();
    } else if (TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode();
    } else if (TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode() ==
        (approvalTypeCode)) {
      return TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode();
    } else
      return null;
  }

//
//     static String approvalTypeCodeToName(String typeCode) {
//         String name;
//         if (TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode() ==(typeCode) || TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode() ==(typeCode)
//                 || TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode() ==(typeCode)) {
//             name = BaseBL.receiptLang.get(LangCode.sales_approval);
//         }
//         else if(TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode() ==(typeCode)){
//             name = BaseBL.receiptLang.get(LangCode.purchase_approval);
//         }
//         else if(TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode() ==(typeCode) || TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode() ==(typeCode)){
//             name = BaseBL.receiptLang.get(LangCode.canceled_by);
//         }
//         else if(TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode() ==(typeCode)){
//             name = BaseBL.receiptLang.get(LangCode.cancel_purchase);
//         }
//         else {
//             name = BaseBL.receiptLang.get(LangCode.cancel_sales);
//         }
//         return name;
//     }
//
//     static String getCancelCrmItemType(String transactionTypeCode){
//         if(TRANS_TP_CD.CRM_COMMODITY.getCode() ==(transactionTypeCode)){
//             return TRANS_TP_CD.CRM_STORNO_COMMODITY.getCode();
//         }else if(TRANS_TP_CD.CRM_MARKUP.getCode() ==(transactionTypeCode)) {
//             return TRANS_TP_CD.CRM_STORNO_MARKUP.getCode();
//         }else if(TRANS_TP_CD.CRM_DISCOUNT.getCode() ==(transactionTypeCode)) {
//             return TRANS_TP_CD.CRM_STORNO_DISCOUNT.getCode();
//         }else if(TRANS_TP_CD.CRM_STORNO_COMMODITY.getCode() ==(transactionTypeCode)){
//             return TRANS_TP_CD.CRM_COMMODITY.getCode();
//         }else if(TRANS_TP_CD.CRM_STORNO_MARKUP.getCode() ==(transactionTypeCode)) {
//             return TRANS_TP_CD.CRM_MARKUP.getCode();
//         }else if(TRANS_TP_CD.CRM_STORNO_DISCOUNT.getCode() ==(transactionTypeCode)) {
//             return TRANS_TP_CD.CRM_DISCOUNT.getCode();
//         }else if(TRANS_TP_CD.CRM_COMMODITY.getCode() ==(transactionTypeCode)){
//             return TRANS_TP_CD.CRM_STORNO_COMMODITY.getCode();
//         }else
//             return null;
//     }
//
  /// 카드결제를 제외한 영수증 출력시 타이틀
  /// @param salesAccountHistory
  /// @return
  static String getReceiptTitle(SalesAccountHistory salesAccountHistory) {
    String? sectionCodeStr = salesAccountHistory.getPaymentSectionCode();
    String? transactionTypeCode = salesAccountHistory.getTransactionTypeCode();
    String? approvalTypeCode = salesAccountHistory.getApprovalTypeCode();

    String title = "";
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCodeStr);

    if (section.isCash()) {
      if (!CommonUtil.isNullEmpty(
          salesAccountHistory.getCashReceiptTypeCode())) {
        title += BaseBL.receiptLang[LangCode.cash_receipt]!;
        if (approvalTypeCode ==
                (TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode()) ||
            approvalTypeCode ==
                (TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode())) {
          title += BaseBL.receiptLang[LangCode.approval]!;
        } else if (approvalTypeCode ==
                (TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode()) ||
            approvalTypeCode ==
                (TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode())) {
          title += BaseBL.receiptLang[LangCode.cancel]!;
        }
      } else {
        if (approvalTypeCode ==
            (TenderConstants_APRVL_TP_CD.REF_CASH.getCode())) {
          title += BaseBL.receiptLang[LangCode.refund]!;
        } else if (approvalTypeCode ==
            (TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode())) {
          title += (BaseBL.receiptLang[LangCode.simple_receipt]! +
              "(" +
              BaseBL.receiptLang[LangCode.approval]! +
              ")");
        } else if (approvalTypeCode ==
            (TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode())) {
          title += (BaseBL.receiptLang[LangCode.simple_receipt]! +
              "(" +
              BaseBL.receiptLang[LangCode.cancel]! +
              ")");
        } else if (TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode() ==
                (approvalTypeCode) ||
            TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode() ==
                (approvalTypeCode)) {
          title += BaseBL.receiptLang[LangCode.canceled_by]!;
        } else
          title += BaseBL.receiptLang[LangCode.receipt]!;
      }
    } else {
      // switch (section) {
      //     case MYD:
      //         title.append(BaseBL.receiptLang.get(LangCode.my_d));
      //         if (approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode())
      //                 || approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode())) {
      //             title.append(BaseBL.receiptLang.get(LangCode.approval));
      //         } else if (approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode())
      //                 || approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode())) {
      //             title.append(BaseBL.receiptLang.get(LangCode.cancel));
      //         }
      //         break;
      //     case TOOK:
      //         title.append(BaseBL.receiptLang.get(LangCode.took_service));
      //         if (approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode())
      //                 || approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode())) {
      //             title.append(BaseBL.receiptLang.get(LangCode.approval));
      //         } else if (approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode())
      //                 || approvalTypeCode ==(TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode())) {
      //             title.append(BaseBL.receiptLang.get(LangCode.cancel));
      //         }
      //         break;
      //     case CRM_CASH:
      //     case CRM_BANK_CARD:
      //     case CRM_CREDIT_PAYMENT:
      //     case CRM_PAYMENT_PACKAGING:
      //         if (sectionCodeStr != null) {
      //             title.append(BaseBL.receiptLang.get(TenderConstants_Section.getSection(sectionCodeStr).getLangCode()));
      //             title.append("\n");
      //         }
      //
      //         if (transactionTypeCode != null) {
      //             title.append(BaseBL.receiptLang.get(TRANS_TP_CD.getType(transactionTypeCode).getLangCode()));
      //         }
      //
      //         if (approvalTypeCode != null) {
      //             if (approvalTypeCode.equalsIgnoreCase(APRVL_TP_CD.SELL_APRVL_EXT.getCode()) || approvalTypeCode.equalsIgnoreCase(APRVL_TP_CD.SELL_CNCL_EXT.getCode())) {
      //                 title.append("(" + BaseBL.receiptLang.get(LangCode.operation_sell) + ")");
      //             } else if (approvalTypeCode.equalsIgnoreCase(APRVL_TP_CD.BUY_APRVL_EXT.getCode()) || approvalTypeCode.equalsIgnoreCase(APRVL_TP_CD.BUY_CNCL_EXT.getCode())) {
      //                 title.append("(" + BaseBL.receiptLang.get(LangCode.operation_buy) + ")");
      //             }
      //         }
      //         break;
      // }
    }

    return title.toString();
  }

//     /// 매출보고서용 판매데이터에 포함해야 하는 salesAccountHistory 인지 여부결정
//
//     /// @param salesAccountHistory
//
//     /// @return

  static String? getPurchaseName(String? purchase_name) {
    String? result;

    if (TenderConstants_PURCHASE_TYPE.SIMPLE_RECEIPT.getName() ==
        (purchase_name))
      result = BaseBL.receiptLang[LangCode.simple_receipt];
    else if (TenderConstants_PURCHASE_TYPE.VOLUNTARILY_ISSUED.getName() ==
        (purchase_name))
      result = BaseBL.receiptLang[LangCode.cash];
    // else if(TenderConstants_Section.SMART_PAY.getName().equalsIgnoreCase(purchase_name))
    //     result = BaseBL.receiptLang.get(LangCode.smart_pay);
    else
      result = purchase_name;

    return result;
  }

//
  static bool isQRPay(String? sectionCode) {
    return ((TenderConstants_Section.QR_PAY.getCode() == sectionCode) ||
        (TenderConstants_Section.KASPI_QR_PAY.getCode() == sectionCode));
  }

  static bool isYolletPay(String? sectionCode) {
    return TenderConstants_Section.YOLLET_PAY.getCode() == sectionCode;
  }

  static Future<bool> includeSalesResult(
      SalesAccountHistory salesAccountHistory) async {
    OperationBL operationBL = OperationBL();
    String? code = salesAccountHistory.getApprovalTypeCode();
    bool includeSrSalesResult = await operationBL.getIncludeSrSalesResult();
    return !((TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode() == (code) ||
            TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode() == (code)) &&
        !includeSrSalesResult);
  }

  static Future<bool> isCanceledForReport(
      SalesAccountHistory salesAccountHistory) async {
    bool isCancel;
    String? code = salesAccountHistory.getApprovalTypeCode();
    OperationBL operationBL = OperationBL();
    bool includeSrSalesResult = await operationBL.getIncludeSrSalesResult();

    isCancel = TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode() == (code) ||
        TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode() == (code) ||
        (TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode() == (code) &&
            includeSrSalesResult);

    return isCancel;
  }

  static bool isRefund(SalesAccountHistory salesAccountHistory) {
    return TenderConstants_APRVL_TP_CD.REF_CASH.getCode() ==
        (salesAccountHistory.getApprovalTypeCode());
  }
}

// Dart enum 으로 구현이 어려운 경우 class 로 구현
// https://stackoverflow.com/questions/15854549/how-can-i-build-an-enum-with-dart/15854550#15854550
class TenderConstants_Section {
  // static const TENDER = const TenderConstants_Section._internal('000');
  // static const CASH = const TenderConstants_Section._internal('001');
  // static const CARD = const TenderConstants_Section._internal('002');
  // static const CHECK = const TenderConstants_Section._internal('003');
  // static const UNION_PAY = const TenderConstants_Section._internal('004');
  // static const SMART_PAY = const TenderConstants_Section._internal('005');
  // static const KIWI_PG = const TenderConstants_Section._internal('006');
  // static const AUTHORIZATION = const TenderConstants_Section._internal('007');
  // static const AUTHORIZATION_CONFIRMATION = const TenderConstants_Section._internal('008');
  // static const PURCHASE_RETURN = const TenderConstants_Section._internal('009');
  // static const CRM_CASH = const TenderConstants_Section._internal('050');
  // static const CRM_BANK_CARD = const TenderConstants_Section._internal('051');
  // static const CRM_CREDIT_PAYMENT = const TenderConstants_Section._internal('052');
  // static const CRM_PAYMENT_PACKAGING = const TenderConstants_Section._internal('053');
  // static const DUMMY = const TenderConstants_Section._internal('100');
  // static const NICE = const TenderConstants_Section._internal('101');
  // static const KSNET = const TenderConstants_Section._internal('102');
  // static const KICC = const TenderConstants_Section._internal('103');
  // static const FDIK = const TenderConstants_Section._internal('104');
  // static const KCP = const TenderConstants_Section._internal('105');
  // static const JTNET = const TenderConstants_Section._internal('106');
  // static const KOVAN = const TenderConstants_Section._internal('107');
  // static const KOCES = const TenderConstants_Section._internal('108');
  // static const MANUAL_PAYMENT = const TenderConstants_Section._internal('200');
  // static const COUPON = const TenderConstants_Section._internal('201');
  // static const KAZCRM = const TenderConstants_Section._internal('202');
  // static const KIWIPG = const TenderConstants_Section._internal('203');
  // static const EX_PAY = const TenderConstants_Section._internal('204');
  // static const EASY_CARD = const TenderConstants_Section._internal('205');
  // static const COMBINED_PAY = const TenderConstants_Section._internal('206');
  // static const OPEN_WAY = const TenderConstants_Section._internal('400');
  // static const OPEN_WAY_BCC = const TenderConstants_Section._internal('KZB402');
  // static const CASH_EX_PAY = const TenderConstants_Section._internal('KRC204');
  // static const QR_PAY = const TenderConstants_Section._internal('KZB201');

  static const TENDER = const TenderConstants_Section._internal(
      "000", LangCode.tender, "Tender", false);
  static const CASH = const TenderConstants_Section._internal(
      "001", LangCode.cash, "Cash", true);
  static const CARD = const TenderConstants_Section._internal(
      "002", LangCode.card, "Card", false);
  static const CHECK = const TenderConstants_Section._internal(
      "003", LangCode.check, "Check", false);
  static const UNION_PAY = const TenderConstants_Section._internal(
      "004", LangCode.unionpay, "Union Pay", false);
  static const SMART_PAY = const TenderConstants_Section._internal(
      "005", LangCode.smart_pay, "Mobile Pay", false);
  static const KIWI_PG = const TenderConstants_Section._internal(
      "006", LangCode.kiwipg, "KiwiPG", false);
  static const AUTHORIZATION = const TenderConstants_Section._internal(
      "007", LangCode.authorization, "Authorization", false);
  static const AUTHORIZATION_CONFIRMATION =
      const TenderConstants_Section._internal(
          "008", LangCode.authorization, "Authorization Confirmation", false);
  static const PURCHASE_RETURN = const TenderConstants_Section._internal(
      "009", LangCode.cancel_purchase, "Purchase Return", false);
  static const CRM_CASH = const TenderConstants_Section._internal(
      "050",
      LangCode.cash,
      "Cash = const TenderConstants_Section._internal(CRM)",
      true);
  static const CRM_BANK_CARD = const TenderConstants_Section._internal(
      "051", LangCode.bank_card, "Bank Card", false);
  static const CRM_CREDIT_PAYMENT = const TenderConstants_Section._internal(
      "052", LangCode.credit_payment, "Credit Payment", false);
  static const CRM_PAYMENT_PACKAGING = const TenderConstants_Section._internal(
      "053", LangCode.payment_packaging, "Payment Packaging", false);
  static const DUMMY = const TenderConstants_Section._internal(
      "100", LangCode.card, "DUMMY", false);
  static const NICE = const TenderConstants_Section._internal(
      "101", LangCode.card, "NICE", false);
  static const KSNET = const TenderConstants_Section._internal(
      "102", LangCode.card, "KSNET", false);
  static const KICC = const TenderConstants_Section._internal(
      "103", LangCode.card, "KICC", false);
  static const FDIK = const TenderConstants_Section._internal(
      "104", LangCode.card, "FDIK", false);
  static const KCP = const TenderConstants_Section._internal(
      "105", LangCode.card, "KCP", false);
  static const JTNET = const TenderConstants_Section._internal(
      "106", LangCode.card, "JTNET", false);
  static const KOVAN = const TenderConstants_Section._internal(
      "107", LangCode.card, "KOVAN", false);
  static const KOCES = const TenderConstants_Section._internal(
      "108", LangCode.card, "KOCES", false);
  static const TOOK = const TenderConstants_Section._internal(
      "150", LangCode.card, "Took", false);
  static const MYD = const TenderConstants_Section._internal(
      "151", LangCode.my_d, "MyD", false);
  static const MANUAL_PAYMENT = const TenderConstants_Section._internal(
      "200", LangCode.manual_payment, "Manual Payment", false);
  static const COUPON = const TenderConstants_Section._internal(
      "201", LangCode.coupon_giftcard, "Coupon", false);
  static const KAZCRM = const TenderConstants_Section._internal(
      "202", LangCode.card, "KAZCRM", false);
  static const KIWIPG = const TenderConstants_Section._internal(
      "203", LangCode.card, "KIWIPG", false);
  static const EX_PAY = const TenderConstants_Section._internal(
      "204", LangCode.card, "EX_PAY", false);
  static const EASY_CARD = const TenderConstants_Section._internal(
      "205", LangCode.card, "EASY_CARD", false);
  static const COMBINED_PAY = const TenderConstants_Section._internal(
      "206", LangCode.card, "COMBINED_PAY", false);
  static const OPEN_WAY = const TenderConstants_Section._internal(
      "400", LangCode.card, "OPEN_WAY", false);
  static const OPEN_WAY_BCC = const TenderConstants_Section._internal(
      "KZB402", LangCode.card, "OPEN_WAY_BCC", false);
  static const CASH_EX_PAY = const TenderConstants_Section._internal(
      "KRC204", LangCode.cash, "Cash", true);
  static const QR_PAY = const TenderConstants_Section._internal(
      "KZB201", LangCode.card, "QRPay", false);
  static const KASPI_QR_PAY = const TenderConstants_Section._internal(
      "KZB202", LangCode.card, "QRPay", false);
  static const YOLLET_PAY = const TenderConstants_Section._internal(
      "KRY201", LangCode.card, "YolletPay", false);

  static const values = [
    TENDER,
    CASH,
    CARD,
    CHECK,
    UNION_PAY,
    SMART_PAY,
    KIWI_PG,
    AUTHORIZATION,
    AUTHORIZATION_CONFIRMATION,
    PURCHASE_RETURN,
    CRM_CASH,
    CRM_BANK_CARD,
    CRM_CREDIT_PAYMENT,
    CRM_PAYMENT_PACKAGING,
    DUMMY,
    NICE,
    KSNET,
    KICC,
    FDIK,
    KCP,
    JTNET,
    KOVAN,
    KOCES,
    MANUAL_PAYMENT,
    COUPON,
    KAZCRM,
    KIWIPG,
    EX_PAY,
    EASY_CARD,
    COMBINED_PAY,
    OPEN_WAY,
    OPEN_WAY_BCC,
    CASH_EX_PAY,
    QR_PAY,
    YOLLET_PAY,
  ];

  final _code;
  final int langCode;
  final String name;
  final bool _isCash; //현금거래여부
  const TenderConstants_Section._internal(
      this._code, this.langCode, this.name, this._isCash);

  String getCode() => _code;

  int getLangCode() => langCode;

  String getName() => name;

  bool isCash() => getSection(_code) == CASH;

  bool isCard() {
    switch (this) {
      case CARD:
      case CRM_BANK_CARD:
      case DUMMY:
      case NICE:
      case KSNET:
      case KICC:
      case FDIK:
      case KCP:
      case JTNET:
      case KOVAN:
      case KOCES:
      case EX_PAY:
      case EASY_CARD:
      case OPEN_WAY:
      case OPEN_WAY_BCC:
        return true;
      default:
        return false;
    }
  }

  static List<TenderConstants_Section> allCash() =>
      values.where((i) => i.isCash()).toList();

  static List<TenderConstants_Section> allCard() =>
      values.where((i) => i.isCard()).toList();

  static TenderConstants_Section getSection(String? code) {
    if (code == null) {
      return CASH;
    }

    return values.firstWhere((i) => i.getCode() == code, orElse: () {
      if (code.length >= 3) {
        String ch = code.substring(2, 3);

        if (TenderConstants.PAYMENT_TYPE_CHARACTER_C == ch) {
          return CASH;
        } else if (TenderConstants.PAYMENT_TYPE_CHARACTER_B == ch) {
          return CARD;
        }
      }

      return code.startsWith(TenderConstants.PREFIX_CASH) ? CASH : CARD;
    });
  }
}

enum TenderConstants_CASH_RECPT_ID_TP_CD {
  CASH,
  CREDIT_CARD,
  CREDIT_RECEIPT_CARD,
  CASH_RECEIPT_ID,
  GIFT_CARD,
  MOBILE_CARD,
  VOLUNTARILY_ISSUED,
}

extension ExtTenderConstants_CASH_RECPT_ID_TP_CD
    on TenderConstants_CASH_RECPT_ID_TP_CD {
  static const CODES = ['C', 'CC', 'CRC', 'CRI', 'GC', 'BC', 'VI'];

  String getCode() => CODES[this.index];

  bool equals(String? value) => CODES[this.index] == value;
}

class TenderConstants_APRVL_TP_CD {
  // 판매외부승인 (+)
  static const SELL_APRVL_EXT =
      const TenderConstants_APRVL_TP_CD._internal('1', 1, 1);

  //판매외부승인취소 (-)
  static const SELL_CNCL_EXT =
      const TenderConstants_APRVL_TP_CD._internal('2', -1, -1);

  //판매내부승인 (+)
  static const SELL_APRVL_INT =
      const TenderConstants_APRVL_TP_CD._internal('3', 1, 1);

  //판매내부승인취소 (-)
  static const SELL_CNCL_INT =
      const TenderConstants_APRVL_TP_CD._internal('4', -1, -1);

  //현금환불(내부결제취소) (-)
  static const REF_CASH =
      const TenderConstants_APRVL_TP_CD._internal('5', -1, -1);

  //간이영수증(승인, 내부결제) (+)
  static const APRVL_SIM =
      const TenderConstants_APRVL_TP_CD._internal('6', 1, 1);

  //간이영수증(취소, 내부결제취소) (-)
  static const CNCL_SIM =
      const TenderConstants_APRVL_TP_CD._internal('7', -1, -1);

  //망취소, from Van
  static const VAN_CNCL =
      const TenderConstants_APRVL_TP_CD._internal('8', 0, 0);

  //망취소, from Reader
  static const RDR_CNCL =
      const TenderConstants_APRVL_TP_CD._internal('9', 0, 0);

  //구매외부승인 (+)
  static const BUY_APRVL_EXT =
      const TenderConstants_APRVL_TP_CD._internal('11', -1, 1);

  //구매외부승인취소 (-)
  static const BUY_CNCL_EXT =
      const TenderConstants_APRVL_TP_CD._internal('12', 1, -1);
  static const values = [
    SELL_APRVL_EXT,
    SELL_CNCL_EXT,
    SELL_APRVL_INT,
    SELL_CNCL_INT,
    REF_CASH,
    APRVL_SIM,
    CNCL_SIM,
    VAN_CNCL,
    RDR_CNCL,
    BUY_APRVL_EXT,
    BUY_CNCL_EXT,
  ];

  final _code;
  final _inOut; // 1: IN, -1: OUT
  final _arbitration; //입력데이터 부호에 따른 계산 부호를 조정하기 위함, inOut 부호 = 입력데이터 부호 * arbitration

  const TenderConstants_APRVL_TP_CD._internal(
      this._code, this._inOut, this._arbitration);

  String getCode() => _code;

  int? getMSign() => _inOut * _arbitration;

  static TenderConstants_APRVL_TP_CD? getType(String? value) {
    return values.firstWhereOrNull((i) => i._code == value);
  }
}

enum TenderConstants_PAY_OPT {
  MENU,
  PARTIAL,
  NORMAL,
}

extension ExtTenderConstants_PAY_OPT on TenderConstants_PAY_OPT {
  static const CODES = ['01', '02', '03'];

  String getCode() => CODES[this.index];
}

enum TenderConstants_PURCHASE_TYPE {
  VOLUNTARILY_ISSUED,
  SIMPLE_RECEIPT,
}

extension ExtTenderConstants_PURCHASE_TYPE on TenderConstants_PURCHASE_TYPE {
  static const NAMES = ['voluntarily_issued', 'simple_receipt'];

  String getName() => NAMES[this.index];
}

class TenderConstants_BIZ_SEC_CD {
  static const HALL = const TenderConstants_BIZ_SEC_CD._internal("BS101"); //홀서빙
  static const TAKEOUT =
      const TenderConstants_BIZ_SEC_CD._internal("BS102"); //테이크아웃
  static const CAT = const TenderConstants_BIZ_SEC_CD._internal("BS106"); //CAT
  static const MANUAL_VOID =
      const TenderConstants_BIZ_SEC_CD._internal("BS107"); //수기승인취소
  static const ONLINE_NEW =
      const TenderConstants_BIZ_SEC_CD._internal("BS200"); // Smart Order 신규 주문
  static const ONLINE_ACCEPTED =
      const TenderConstants_BIZ_SEC_CD._internal("BS201"); // Smart Order 수락 주문
  static const ONLINE_COMPLETE =
      const TenderConstants_BIZ_SEC_CD._internal("BS202"); // Smart Order 완료 주문
  static const ONLINE_REJECT = const TenderConstants_BIZ_SEC_CD._internal(
      "BS203"); // Smart Order 주문거절 주문

  static const values = [
    HALL,
    TAKEOUT,
    CAT,
    MANUAL_VOID,
    ONLINE_NEW,
    ONLINE_ACCEPTED,
    ONLINE_COMPLETE,
    ONLINE_REJECT,
  ];
  final _code;

  String getCode() => _code;

  const TenderConstants_BIZ_SEC_CD._internal(this._code);
}

class TenderConstants_CrmItemTypeEnum {
  static const ITEM_TYPE_COMMODITY =
      const TenderConstants_CrmItemTypeEnum._internal(1, LangCode.commodity);
  static const ITEM_TYPE_STORNO_COMMODITY =
      const TenderConstants_CrmItemTypeEnum._internal(
          2, LangCode.reversal_of_commodities);
  static const ITEM_TYPE_MARKUP =
      const TenderConstants_CrmItemTypeEnum._internal(3, LangCode.mark_up);
  static const ITEM_TYPE_STORNO_MARKUP =
      const TenderConstants_CrmItemTypeEnum._internal(
          4, LangCode.reversal_of_margins);
  static const ITEM_TYPE_DISCOUNT =
      const TenderConstants_CrmItemTypeEnum._internal(5, LangCode.a_discount);
  static const ITEM_TYPE_STORNO_DISCOUNT =
      const TenderConstants_CrmItemTypeEnum._internal(
          6, LangCode.reversal_discounts);

  static const values = [
    ITEM_TYPE_COMMODITY,
    ITEM_TYPE_STORNO_COMMODITY,
    ITEM_TYPE_MARKUP,
    ITEM_TYPE_STORNO_MARKUP,
    ITEM_TYPE_DISCOUNT,
    ITEM_TYPE_STORNO_DISCOUNT,
  ];

  final int value;
  final int langCode;

  const TenderConstants_CrmItemTypeEnum._internal(this.value, this.langCode);

  int getValue() {
    return value;
  }

  int getLangCode() {
    return langCode;
  }

  static TenderConstants_CrmItemTypeEnum? getType(int value) {
    switch (value) {
      case 1:
        return ITEM_TYPE_COMMODITY;
      case 2:
        return ITEM_TYPE_STORNO_COMMODITY;
      case 3:
        return ITEM_TYPE_MARKUP;
      case 4:
        return ITEM_TYPE_STORNO_MARKUP;
      case 5:
        return ITEM_TYPE_DISCOUNT;
      case 6:
        return ITEM_TYPE_STORNO_DISCOUNT;

      default:
        return null;
    }
  }
}

class TenderConstants_CrmItemTypeSpinEnum {
  static const ITEM_TYPE_COMMODITY =
      const TenderConstants_CrmItemTypeSpinEnum._internal(0, LangCode.commodity,
          TenderConstants_CrmItemTypeEnum.ITEM_TYPE_COMMODITY);
  static const ITEM_TYPE_MARKUP =
      const TenderConstants_CrmItemTypeSpinEnum._internal(1, LangCode.mark_up,
          TenderConstants_CrmItemTypeEnum.ITEM_TYPE_MARKUP);
  static const ITEM_TYPE_DISCOUNT =
      const TenderConstants_CrmItemTypeSpinEnum._internal(
          2,
          LangCode.a_discount,
          TenderConstants_CrmItemTypeEnum.ITEM_TYPE_DISCOUNT);

  static const values = [
    ITEM_TYPE_COMMODITY,
    ITEM_TYPE_MARKUP,
    ITEM_TYPE_DISCOUNT,
  ];

  final int value;
  final int langCode;
  final TenderConstants_CrmItemTypeEnum itemTypeEnum;

  const TenderConstants_CrmItemTypeSpinEnum._internal(
      this.value, this.langCode, this.itemTypeEnum);

  int getValue() {
    return value;
  }

  int getLangCode() {
    return langCode;
  }

  TenderConstants_CrmItemTypeEnum getCrmItemTypeEnum() {
    return itemTypeEnum;
  }

  static TenderConstants_CrmItemTypeSpinEnum? getType(int value) {
    switch (value) {
      case 0:
        return ITEM_TYPE_COMMODITY;
      case 1:
        return ITEM_TYPE_MARKUP;
      case 2:
        return ITEM_TYPE_DISCOUNT;

      default:
        return null;
    }
  }
}

class TenderConstants_CASH_RECPT_TP_CD {
  static const CASH_RECEIPT_PERSONAL =
      const TenderConstants_CASH_RECPT_TP_CD._internal("00"); //현금영수증 개인승인
  static const CASH_RECEIPT_BUSINESS =
      const TenderConstants_CASH_RECPT_TP_CD._internal("01"); //현금영수증 법인승인
  static const CNCL_RECEIPT_PERSONAL =
      const TenderConstants_CASH_RECPT_TP_CD._internal("15"); //현금영수증 개인승인취소
  static const CNCL_RECEIPT_BUSINESS =
      const TenderConstants_CASH_RECPT_TP_CD._internal("11"); //현금영수증 법인승인취소
  //"20" 개인오류발급
  //"21" 법인오류발급
  //"30" 개인기타취소
  //"31" 법인기타취소

  static const values = [
    CASH_RECEIPT_PERSONAL,
    CASH_RECEIPT_BUSINESS,
    CNCL_RECEIPT_PERSONAL,
    CNCL_RECEIPT_BUSINESS,
  ];

  final String code;

  const TenderConstants_CASH_RECPT_TP_CD._internal(this.code);

  String getCode() {
    return code;
  }
}

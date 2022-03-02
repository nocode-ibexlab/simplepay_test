import 'package:simple_pay_api/src/Database/Util/VANConstant.dart';

class ResVan {
  // static Bitmap signBMP = null;
  //!!!로그 메시지용이므로 거래에 사용하지 마세요
  static Map<String, Object>? preEmvSendData = null;
  static Map<String, Object>? preEmvRecvData = null;

  String vanCode = ""; //VAN사 코드
  String? approvalTransactionNo = ""; // 결제앱 연동하기 위한 식별자
  String? paymentMethodCode = ""; // 결제수단식별자
  String? appType = ""; // 승인구분 승인:1 취소:2 수기승인:3, 수기승인취소:4
  String? appNo = ""; // 승인코드
  String? appSeqNo = ""; // 승인고유번호 - 나이스, JTNET인경우 필요
  String? orderNo = ""; // ReqExPay 사용
  String? appDate = ""; // 승인일자
  String? appDatePriPtn = ""; // 승인일자 기본형식으로 변환, yyyyMMddHHmmss
  String? yyyymm = ""; // 유효기간
  String? inmm = ""; // 할부기간
  String? cardName = ""; // 카드명 (EVM TAG 9F12)
  String? cardNo = ""; // 카드 번호
  String? ctCode = ""; // 카드사 코드
  String? ctName = ""; // 카드사 명칭 (EVM TAG 50)
  String? aqCode = ""; // 매입사 코드
  String? aqName = ""; // 매입사 명칭
  String? companyNo = ""; // 가맹점 번호
  double requestedTotal =
      0.0; // 요청 금액 (결합 결제의 경우 amount+tax+... 와 requestedTotal 는 다름)
  double amount = 0.0; //공급가액(부가세 미포함)
  double taxExempt = 0.0; // 비과세
  double tax = 0.0; //세금(부가세)
  double gratuity = 0.0; //봉사료
  double gratuityTax = 0.0; //봉사료 세금
  String? trType = ""; //결제구분
  String? trCode = ""; //거래구분
  String? idStr =
      ""; //인증번호(인증에 사용한 번호), 주민번호/핸드폰/사업자번호, DB에 저장해야하는값, 단 현금영주증카드인경우 저장하지 않음.

  //현금영수증 정보
  int cardReadType = VANConstant.READ_TYPE_ID; //인증번호 입력 방식, 0: 카드리딩, 1: 수기입력
  String? issueType =
      ""; //00:개인승인, 01:법인승인, 10:개인취소, 11:법인취소 . 20: 개인오류발급, 21: 법인오류발급, 30:개인기타취소, 31:법인 기타취소

  //사원정보
  String empDepartment = ""; //소속
  String empNumber = ""; //사원번호
  String empPosition = ""; //직급
  String empName = ""; //직원명
  bool isReissueToken = false; //Token 갱신요청

  String? vanResMsg = "";
  String? vanPrintMsg = "";

  bool doOnlineProcessResult = false; //발급사인증(2nd Generation) 진행 여부
  Map<String, Object>? regInfo = null; //회계서버 등록정보 (For CRM)

  // OpenWay
  String? batchId;
  String? stan;
  String? rrn;
  String? currencyCode;
  String? secureReference;
  String? transactionFee;
  String? aid;
  String? resCode;
  String? authorizedAmount;

  // byte[] isoRequest; // universal reversal advice 가 필요할 때 사용됨
  // byte[] isoResponse;
  bool? isoError;

  // YolletPay
  String? transactionId;
  String? tokenId;
  String? userAddress;
  String? exchangeDateIndex;
  String? exchangeRate;
  String? exchangeAmount;
  String? tokenAmount;

  void reset() {
    // signBMP = null;
    vanCode = ""; //VAN사 코드
    approvalTransactionNo = null;
    paymentMethodCode = "";
    appType = ""; // 승인구분
    appNo = ""; // 승인코드
    appSeqNo = "";
    orderNo = "";
    appDate = ""; // 승인일자
    appDatePriPtn = ""; //승인일자기본형식, yyyyMMddHHmmss
    yyyymm = ""; // 유효기간
    inmm = ""; // 할부기간
    cardName = ""; // 카드명
    cardNo = ""; // 카드번호
    ctCode = ""; // 카드사 코드
    ctName = ""; // 카드사 명칭
    aqCode = ""; // 매입사 코드
    aqName = ""; // 메인사 명칭
    companyNo = ""; // 가맹점 번호
    requestedTotal = 0.0;
    amount = 0.0; //공급가액(부가세 미포함)
    taxExempt = 0.0; // 비과세
    tax = 0.0; //세금(부가세)
    gratuity = 0.0; //봉사료
    gratuityTax = 0.0; //봉사료 세금
    trType = ""; //결제구분
    trCode = ""; //거래구분

    idStr = ""; //인증번호
    cardReadType = VANConstant.READ_TYPE_ID;
    issueType = "99";

    empDepartment = ""; //소속
    empNumber = ""; //사원번호
    empPosition = ""; //직급
    empName = ""; //직원명
    isReissueToken = false; //Token 갱신요청

    vanResMsg = "";
    vanPrintMsg = "";

    preEmvSendData = Map<String, Object>();
    preEmvRecvData = Map<String, Object>();

    doOnlineProcessResult = false;
    regInfo = null;

    // OpenWay
    batchId = null;
    stan = null;
    rrn = null;
    currencyCode = null;
    secureReference = null;
    transactionFee = null;
    aid = null;
    resCode = null;
    authorizedAmount = null;
    // isoRequest = null;
    // isoResponse = null;
    isoError = false;

    // YolletPay
    transactionId = null;
    tokenId = null;
    userAddress = null;
    exchangeDateIndex = null;
    exchangeRate = null;
    exchangeAmount = null;
    tokenAmount = null;
  }

  static void resetEmvData() {
    preEmvSendData = Map<String, Object>();
    preEmvRecvData = Map<String, Object>();
  }

  void setVanResMsg() {
    String sb = "";

    if (batchId != null) {
      // sb.append("batchId=").append(batchId).append(";");
      sb += "batchId=$batchId;";
    }

    if (stan != null) {
      // sb.append("stan=").append(stan).append(";");

    }

    if (rrn != null) {
      // sb.append("rrn=").append(rrn).append(";");
      sb += "rrn=$rrn;";
    }

    if (currencyCode != null) {
      // sb.append("currencyCode=").append(currencyCode).append(";");
      sb += "currencyCode=$currencyCode;";
    }

    if (secureReference != null) {
      // sb.append("secureReference=").append(secureReference).append(";");
      sb += "secureReference=$secureReference;";
    }

    if (transactionFee != null) {
      // sb.append("transactionFee=").append(transactionFee).append(";");
      sb += "transactionFee=$transactionFee;";
    }

    if (aid != null) {
      // sb.append("aid=").append(aid).append(";");
      sb += "aid=$aid;";
    }

    if (resCode != null) {
      // sb.append("resCode=").append(resCode).append(";");
      sb += "resCode=$resCode;";
    }

    if (authorizedAmount != null) {
      // sb.append("authorizedAmount=").append(authorizedAmount).append(";");
      sb += "authorizedAmount=$authorizedAmount;";
    }

    vanResMsg = sb;
  }

  static String? parseVanResMsg(String? vanResMsg, String key) {
    if (vanResMsg == null) {
      return null;
    }

    for (String i in vanResMsg.split(";")) {
      int j = i.indexOf("=");

      if (j != -1) {
        String k = i.substring(0, j);
        String v = i.substring(j + 1);

        if (key == (k)) {
          return v;
        }
      }
    }

    return null;
  }

  static Map<String, String> parseVanResMsgToMap(String? vanResMsg) {
    Map<String, String> map = new Map<String, String>();

    if (vanResMsg == null) {
      return map;
    }

    for (String i in vanResMsg.split(";")) {
      int j = i.indexOf("=");

      if (j != -1) {
        String k = i.substring(0, j);
        String v = i.substring(j + 1);
        map[k] = v;
      }
    }

    return map;
  }

  void fromMap(Map map) {
    this.paymentMethodCode = map["paymentMethodCode"];
    this.appType = map["appType"];
    this.appNo = map["appNo"];
    this.appSeqNo = map["appSeqNo"];
    this.appDate = map["appDate"];
    this.appDatePriPtn = map["appDatePriPtn"];
    this.yyyymm = map["yyyymm"];
    this.inmm = map["inmm"];
    this.cardName = map["cardName"];
    this.cardNo = map["cardNo"];
    this.ctCode = map["ctCode"];
    this.ctName = map["ctName"];
    this.aqCode = map["aqCode"];
    this.aqName = map["aqName"];
    this.companyNo = map["companyNo"];
    this.amount = doubleValue(map, "amount");
    this.tax = doubleValue(map, "tax");
    this.gratuity = doubleValue(map, "gratuity");
    this.gratuityTax = doubleValue(map, "gratuityTax");
    this.trType = map["trType"];
    this.trCode = map["trCode"];
    this.idStr = map["idStr"];
    this.cardReadType = intValue(map, "cardReadType", VANConstant.READ_TYPE_ID);
    this.issueType = map["issueType"];
    this.vanResMsg = map["vanResMsg"];
    this.vanPrintMsg = map["vanPrintMsg"];
    this.batchId = map["batchId"];
    this.stan = map["stan"];
    this.rrn = map["rrn"];
    this.currencyCode = map["currencyCode"];
    this.secureReference = map["secureReference"];
    this.transactionFee = map["transactionFee"];
    this.aid = map["aid"];
    this.resCode = map["resCode"];
    this.authorizedAmount = map["authorizedAmount"];
    this.orderNo = map["orderNo"];
    this.transactionId = map["transactionId"];
    this.tokenId = map["tokenId"];
    this.userAddress = map["userAddress"];
    this.exchangeDateIndex = map["exchangeDateIndex"];
    this.exchangeRate = map["exchangeRate"];
    this.exchangeAmount = map["exchangeAmount"];
    this.tokenAmount = map["tokenAmount"];
    setVanResMsg();
  }

  double doubleValue(Map map, String key) {
    try {
      return map.containsKey(key) ? double.parse(map[key].toString()) : 0.0;
    } catch (ignored) {
      return 0.0;
    }
  }

  int intValue(Map map, String key, int defaultValue) {
    try {
      return map.containsKey(key)
          ? int.parse(map[key].toString())
          : defaultValue;
    } catch (ignored) {
      return defaultValue;
    }
  }
}

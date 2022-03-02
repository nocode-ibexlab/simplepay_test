class VANConstant {
  //에러코드
  static const String E_CANNOT_FIND_FUNC = "E0000";

  static const String E_NO_ERROR = "00000";
  static const String E_VAN_EXCEPTION = "E9999"; //
  static const String E_EXCEPTION = "E9998"; //
  static const String E_APPROVAL_FAIL = "E9998"; //Result Fail

  //응답관련 오류 5000 대
  static const String E_PARSING_ERR = "E5001"; //응답데이터 파싱 오류
  static const String E_ENCODING_ERR = "E5002"; //응답데이터 캐릭터 변환 오류

  //카드정보 관련 오류 1000 대
  static const String E_CARD_NOENCRYPT = "E1001"; //암호화되지 않은 카드//신용거래 불가

  //입력정보 관련 오류 2000 대
  static const String E_INPUT_CARDINFO = "E2001"; //카드정보 설정후 비밀번호를 설정해야 합니다.
  static const String E_LENGTH_UNIONPAYPWD = "E2002"; //은련카드 비밀번호는 6자리 입니다.
  static const String E_ENCRYPT_PADPASSWORD =
      "E2003"; //은련카드 은련카드 비밀번호 암호화에 실패했습니다.
  static const String E_INPUT_SIGNIMG = "E2004"; //서명파일 생성에 실패했습니다.

  //VAN코드
  static const String VAN_CODE_DUMMY = "100";
  static const String VAN_CODE_NICE = "101";
  static const String VAN_CODE_KSNET = "102";
  static const String VAN_CODE_KICC = "103";
  static const String VAN_CODE_FDIK = "104";
  static const String VAN_CODE_KCP = "105";
  static const String VAN_CODE_JTNET = "106";
  static const String VAN_CODE_KOVAN = "107";
  static const String VAN_CODE_KOCES = "108";
  static const String VAN_CODE_MYD = "201";
  static const String VAN_CODE_KAZCRM = "202";
  static const String VAN_CODE_KIWIPG = "203";
  static const String VAN_CODE_EX_PAY = "204";
  static const String VAN_CODE_EASY_CARD = "205";
  static const String VAN_CODE_MANUAL_PAYMENT = "300";
  static const String VAN_CODE_COUPON = "301";
  static const String VAN_CODE_OPEN_WAY = "400";
  static const String VAN_CODE_QPOS = "500";

  //현금영수증 발급 타입
  static const String ISSUETYPE_PER_ISSUE = "00"; //개인 승인
  static const String ISSUETYPE_CORP_ISSUE = "01"; //법인 승인
  static const String ISSUETYPE_PER_CANCEL = "10"; //개인 취소
  static const String ISSUETYPE_CORP_CANCEL = "11"; //법인 취소
  static const String ISSUETYPE_PER_ERRCANCEL = "20"; //개인 오류 취소
  static const String ISSUETYPE_CORP_ERRCANCEL = "21"; //법인 오류 취소
  static const String ISSUETYPE_PER_ETCCANCEL = "30"; //개인 기타 취소
  static const String ISSUETYPE_CORP_ETCCANCEL = "31"; //법인 기타 승인

  //현금영수증 cardReadType
  static const int READ_TYPE_CARD = 0; //현금영수증 카드 사용
  static const int READ_TYPE_ID = 1; //현금영수증 번호 수기입력

  //MAP Key String (EXT <-> APP)
  static const String CARD_READ_TYPE = "cardReadType"; //0: 카드리딩 , 1: 수기입력
  static const String IDENTITY_NUMBER = "identityNumber"; //영수증 또는 발급 식별번호
  static const String ISSUE_TYPE =
      "issueType"; //00:개인승인, 01:법인승인,  10:개인취소, 11:법인취소 . 20: 개인오류발급, 21: 법인오류발급, 30:개인기타취소, 31:법인 기타취소
  static const String CARD_READER_DATA = "cardReaderData"; //카드데이타
  static const String PAYMENTS = "payments"; //결제금액내역
  static const String AMOUNT = "amount"; //결제금액
  static const String TOT_AMT = "Tamt"; //총 결제금액 (공급가+세금)
  static const String TAX = "tax"; //결제금액에 대한 세금
  static const String TAXATION_AMOUNT = "taxationAmt"; //과세금액
  static const String EXEMPT_AMOUNT = "exemptAmt"; //면세금액
  static const String DC_AMT = "dcAmt"; //할인금액
  static const String RECEIVED_AMOUNT = "recvAmt"; //받은금액
  static const String CHANGE_AMOUNT = "changeAmt"; //거스름돈
  static const String TIP = "tip"; //봉사료
  static const String TIP_TAX = "tipTax"; //봉사료세금
  static const String ITEM_IS_INCLUDE_TAX = "itemIsIncludeTax"; //상품금액에 세금포함여부
  static const String INSTALLMENT = "installment"; //할부개월
  static const String IS_MSR = "isMSR"; //MSR, IC
  static const String IS_SIGN_DATA = "isSignData"; //서명데이터유무
  static const String APP_NO = "appNo"; //승인번호
  static const String APP_DATE = "appDate"; //승인일자
  static const String APP_SEQ_NO = "appSeqNo";
  static const String PASSWORD = "password"; //은련카드결제 패스워드
  static const String RETAIL_PRICE = "retailPrice"; //소비자가격
  static const String RECEIPT_NUMBER = "receiptNumber"; //영수증번호(POS 발급)
  static const String CURRENCY = "currency";
  static const String SECTION = "section";
  static const String MTI = "mti";
  static const String PROCESS_CODE = "processCode";
  static const String EMV_SR = "emvSr";
  static const String IS_PARTIAL = "isPartial";
  static const String SECURE_REFERNCE = "secureReference";

  static const String STORE_NAME = "storeName"; //상점 이름
  static const String STORE_PHONE_NUMBER = "storePhoneNumber"; //상점 전화번호
  static const String STORE_EMAIL = "storeEmail"; //상점 이메일
  static const String ORDER_NO = "orderNo";
  static const String ORDER_ITEM_NAME = "orderItemName"; //주문 상품정보
  static const String HEADER_TOKEN = "headerToken"; //Token
//MyD
  static const String DATA = "DATA"; //data
  static const String P_CODE = "P_CODE"; //P_CODE
  static const String TPRICE = "TPRICE"; //Total Price
  static const String COUNT = "COUNT"; //Menu Count
  static const String REPEAT_APPROVAL = "REPEAT_APPROVAL"; //REPEAT_APPROVAL
  static const String MCODE = "MCODE"; //Menu Code
  static const String MNAME = "MNAME"; //Menu Name
  static const String MCNT = "MCNT"; //Count
  static const String PRICE1 = "PRICE1"; //Price1
  static const String PRICE2 = "PRICE2"; //Price2
  static const String PRICE3 = "PRICE3"; //Price3
  static const String PRICE4 = "PRICE4"; //Price4
  static const String SERVER_URL = "SERVER_URL"; //Server URL

  static const String INVALIDITY = "invalidity"; //승인무효처리 여부
  static const String ITEM_INFO = "itemInfo"; //상품정보
  static const String ITEM_NAME = "itemName"; //상품명
  static const String ITEM_SECTION_CODE = "itemSectionCode"; //상품분류코드
  static const String ITEM_QTY = "itemQty"; //상품수량

  static const String TRANSACTION_RESULT = "TRANSACTION_RESULT";
  static const String TRANSACTION_RESULT_TXT = "TRANSACTION_RESULT_TXT";
  static const String ERR_CODE = "ERR_CODE";
  static const String ERR_MESSAGE = "ERR_MESSAGE";
  static const String ERR_VAN = "ERR_VAN";

  static const String TRANSACTION_CANCEL_READER = "READER_CANCEL";
  static const String TRANSACTION_CANCEL_VAN = "VAN_CANCEL";
  static const String TRANSACTION_CANCEL_TYPE = "TRANSACTION_CANCEL_TYPE";
}

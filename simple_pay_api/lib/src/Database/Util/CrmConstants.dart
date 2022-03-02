class CrmConstants {
  //Config
  static const String HOST_ADDRESS = "hostAddress";
  static const String HOST_PORT = "hostPort";
  static const String TOKEN = "token";

  //Request Type
  static const String OPERATOR = "operator";
  static const String OPERATOR_CODE = "operator_code";
  static const String OPERATOR_NAME = "operator_name";
  static const String OPERATOR_LINK = "operatorLink";

  static const String REQUEST_DATE_TIME = "requestDateTime";
  static const String TICKET_OPERATION =
      "ticketOperation"; //거래유형(0:구매, 1:구매취소, 2:판매, 3:판매취소)
  static const String TICKET_DOMAIN_TYPE = "ticketDomainType";
  static const String TICKET_ITEMS = "ticketItems"; //상품리스트
  static const String TICKET_PAYMENTS = "ticketPayments";
  static const String TICKET_TAXES = "ticketTaxes";
  static const String TICKET_AMOUNTS = "ticketAmounts";
  static const String TICKET_EXTENSION_OPTIONS = "ticketExtensionOptions";
  static const String TICKET_OFFLINE_TICKET_NUMBER =
      "ticketOfflineTicketNumber";
  static const String TICKET_PRINTED_DOCUMENT_NUMBER =
      "ticketPrintedDocumentNumber";
  static const String TICKET_PRINTED_TICKET = "ticketPrintedTicket";
  static const String TICKET_FR_SHIFT_NUMBER = "ticketFrShiftNumber";
  static const String TICKET_SHIFT_DOCUMENT_NUMBER = "shiftDocumentNumber";
  static const String CLOSE_SHIFT_CLOSE_TIME = "closeShiftCloseTime";
  static const String CLOSE_SHIFT_IS_OFFLINE = "closeShiftIsOffline";
  static const String CLOSE_SHIFT_FR_SHIFT_NUMBER = "closeShiftFrShiftNumber";
  static const String CLOSE_SHIFT_WITHDRAW_MONEY = "closeShiftWithdrawMoney";
  static const String CLOSE_SHIFT_SHIFT_DOCUMENT_NUMBER =
      "closeShiftShiftDocumentNumber";

  static const String REPORT_IS_OFFLINE = "reportIsOffline";
  static const String SERVICE_COMM_QUALITY = "serviceCommQuality";
  static const String SERVICE_SOFTWARE_INFORMATION =
      "serviceSoftwareInformation";
  static const String SERVICE_SECURITY_STATS = "serviceSecurityStats";
  static const String SERVICE_OFFLINE_PERIOD = "serviceOfflinePeriod";
  static const String SERVICE_NOMENCLATURE_VERSION =
      "serviceNomenclatureVersion";
  static const String SERVICE_TICKET_AD_INFOS = "serviceTicketAdInfos";
  static const String SERVICE_GET_REG_INFO = "serviceGetRegInfo";
  static const String SERVICE_GET_BINDED_TAXATION = "serviceGetBindedTaxation";

  static const String MONEY_PLACEMENT_DATETIME = "moneyPlacementDatetime";
  static const String MONEY_PLACEMENT_OPERATION =
      CrmConstants.TRANSACTION_OPERATION_TYPE_CODE; //현금 입출금 유형
  static const String MONEY_PLACEMENT_SUM = "moneyPlacementSum";
  static const String MONEY_PLACEMENT_FR_SHIFT_NUMBER =
      "moneyPlacementFrShiftNumber";
  static const String MONEY_PLACEMENT_SHIFT_DOCUMENT_NUMBER =
      "moneyPlacementShiftDocumentNumber";
  static const String AUTH_LOGIN = "authLogin";
  static const String AUTH_PASSWORD = "authPassword";

  //response type
  static const String RESULT_CODE = "resultCode"; //결과코드
  static const String RESULT_TEXT = "TRANSACTION_RESULT_TXT"; //결과내용
  static const String TICKET_NUMBER = "ticketNumber"; //영수증번호
  static const String QR_CODE = "qrCode"; //QR코드
  static const String ZX_REPORT = "zxReport";
  static const String NOMENCLATURE_VERSION = "nomenclatureVersion";
  static const String NOMENCLATURE_CREATED_TIME = "nomenclatureCreatedTime";
  static const String NOMENCLATURE_ELEMENTS = "nomenclatureElements";
  static const String NOMENCLATURE_RESULT = "nomenclatureResult";
  static const String SERVICE_TICKET_ADS = "serviceTicketAds";
  static const String SERVICE_BINDED_TAXATION = "serviceBindedTaxation";
  static const String AUTH_RRESULT = "authRresult";
  static const String AUTH_ROLES = "authRoles";
  static const String HASH_VAL = "hashValue";
  static const String INIT_REGISTER = "init_register";

  //Common_Type
  static const String COMMAND_TYPE = "commandType";
  static const String REPORT_TYPE = "reportType"; //보고서 유형(0:Z-보고서, 1:X-보고서)
  static const String SERVICE_AUXILIARY = "serviceAuxiliary";
  static const String SERVICE_REG_INFO = "serviceRegInfo";
  static const String ZXR_REPORT = "report"; //REPORT_Z, REPORT_X)
  static const String DATE_YEAR = "year";
  static const String DATE_MONTH = "month";
  static const String DATE_DAY = "day";
  static const String TIME_HOUR = "hour";
  static const String TIME_MINUTE = "minute";
  static const String TIME_SECOND = "second";
  static const String DATE_TIME_DATE = "date";
  static const String DATE_TIME_TIME = "time";
  static const String MONEY_BILLS = "bills";
  static const String MONEY_COINS = "coins";
  static const String TICKET_AD_INFO_TYPE = "ticketAdInfoType";
  static const String TICKET_AD_INFO_VERSION = "ticketAdInfoVersion";
  static const String TICKET_AD_TEXT = "ticketAdText";

//     static const String KKM_REG_INFO_POINT_OF_PAYMENT_NUMBER = "kkmRegInfoPointOfPaymentNumber"; //Registration number (code) of payment acceptance points
  static const String KKM_REG_INFO_TERMINAL_NUMBER =
      "kkmRegInfoTerminalNumber"; //Number of payment terminal
  static const String KKM_REG_INFO_FNS_KKM_ID =
      "kkmRegInfoFnsKkmId"; //ID, issued by the Federal Tax Service
  static const String KKM_REG_INFO_SERIAL_NUMBER =
      "kkmRegInfoSerialNumber"; //Serial number CRM
  static const String KKM_REG_INFO_KKM_ID =
      "kkmId"; // CRM identification number
  static const String KEY_VALUE_PAIR_KEY = "keyValuePairKey";
  static const String KEY_VALUE_PAIR_VALUE = "keyValuePairValue";
  static const String ORG_REG_INFO_TITLE =
      "orgRegInfoTitle"; //The name of the organization or the name of an individual entrepreneur
  static const String ORG_REG_INFO_ADDRESS =
      "orgRegInfoAddress"; //Legal address
  static const String ORG_REG_INFO_INN = "orgRegInfoInn";
  static const String POS_REG_INFO_TITLE =
      "posRegInfoTitle"; //The name of the outlet
  static const String POS_REG_INFO_ADDRESS =
      "posRegInfoAddress"; //Address of outlet
  static const String REG_INFO = "regInfo"; //KKM, ORG, POS info 취합

  //TicketRequest_Type
  static const String TR_DOMAIN_SERVICES = "TRDomainServices";
  static const String TR_DOMAIN_GASOIL = "TRDomainGasoil";
  static const String TR_DOMAIN_TAXI = "TRDomainTaxi";
  static const String TR_DOMAIN_PARKING = "TRDomainParking";
  static const String TR_ITEM_TYPE = "TRItemType"; //거래항목
  static const String TR_ITEM_COMMODITY = "TRItemCommodity";
  static const String TR_ITEM_STORNO_COMMODITY = "TRItemStornoCommodity";
  static const String TR_ITEM_MARKUP = "TRItemMarkup";
  static const String TR_ITEM_STORNO_MARKUP = "TRItemStornoMarkup";
  static const String TR_ITEM_DISCOUNT = "TRItem_Discount";
  static const String TR_ITEM_STORNO_DISCOUNT = "TRItemStornoDiscount";
  static const String TR_ITEM_MODIFIER = "TRItemModifier";
  static const String TR_COMMODITY_CODE = "TRCommodityCode";
  static const String TR_COMMODITY_NAME = "TRCommodityName";
  static const String TR_COMMODITY_SECTION_CODE = "TRCommoditySectionCode";
  static const String TR_COMMODITY_QUANTITY = "TRCommodityQuantity";
  static const String TR_COMMODITY_PRICE = "TRCommodityPrice";
  static const String TR_COMMODITY_SUM = "TRCommoditySum";
  static const String TR_COMMODITY_TAXES = "TRCommodityTaxes";
  static const String TR_COMMODITY_EXCISE_STAMP = "TRCommodityExciseStamp";
  static const String TR_STORNO_COMMODITY_CODE = "TRStornoCommodityCode";
  static const String TR_STORNO_COMMODITY_NAME = "TRStornoCommodityName";
  static const String TR_STORNO_COMMODITY_SECTION_CODE =
      "TRStornoCommoditySectionCode";
  static const String TR_STORNO_COMMODITY_QUANTITY =
      "TRStornoCommodityQuantity";
  static const String TR_STORNO_COMMODITY_PRICE = "TRStornoCommodityPrice";
  static const String TR_STORNO_COMMODITY_SUM = "TRStornoCommoditySum";
  static const String TR_STORNO_COMMODITY_TAXES = "TRStornoCommodityTaxes";
  static const String TR_STORNO_COMMODITY_EXCISE_STAMP =
      "TRCommodityExciseStamp";
  static const String TR_TAX_TYPE = "TRTaxType";
  static const String TR_TAX_TAXATION_TYPE = "TRTaxTaxationType";
  static const String TR_TAX_PERCENT = "TRTaxPercent";
  static const String TR_TAX_SUM = "TRTaxSum";
  static const String TR_TAX_IS_IN_TOTAL_SUM = "TRTaxIsInTotalSum";
  static const String TR_PAYMENT_TYPE =
      "TRPaymentType"; //결제수단유형(0:현금, 1:신용카드, 3:대출, 4:대물)
  static const String TR_PAID_SUM = "TRPaidSum";
  static const String TR_MODIFIER_CODE = "TRModifierCode";
  static const String TR_MODIFIER_SECTION_CODE = "TRModifierSectionCode";
  static const String TR_MODIFIER_NAME = "TRModifierName";
  static const String TR_MODIFIER_SUM = "TRModifierSum";
  static const String TR_MODIFIER_TAXES = "TRModifierTaxes";
  static const String TR_AMOUNTS_TOTAL = "TRAmountsTotal";
  static const String TR_AMOUNTS_TAKEN = "TRAmountsTaken";
  static const String TR_AMOUNTS_CHANGE = "TRAmountsChange";
  static const String TR_AMOUNTS_MARKUP = "TRAmountsMarkup";
  static const String TR_AMOUNTS_DISCOUNT = "TRAmountsDiscount";
  static const String TR_AMOUNTS_TAXES_MARKUP = "TRAmountsTaxesMarkup";
  static const String TR_AMOUNTS_TAXES_DISCOUNT = "TRAmountsTaxesDiscount";
  static const String TR_AMOUNTS_TAXES = "TRAmountsTaxes";
  static const String TR_TAX_TOTAL = "TRTaxTotal";
  static const String TR_EXTENSION_OPTIONS_CUSTOMER_EMAIL =
      "TRExtensionOptionsCustomerEmail";
  static const String TR_EXTENSION_OPTIONS_CUSTOMER_PHONE =
      "TRExtensionOptionsCustomerPhone";

  //ServiceRequest_Type
  static const String OFFLINE_PERIOD_BEGIN_TIME = "offlinePeriodBeginTime";
  static const String OFFLINE_PERIOD_END_TIME = "offlinePeriodEndTime";
  static const String REG_INFO_KKM = "regInfoKkm";
  static const String REG_INFO_ORG = "regInfoOrg";

  //ServiceResponse_Type
  static const String SR_REG_INFO_KKM = "SRRegInfoKkm";
  static const String SR_REG_INFO_POS = "SRRegInfoPos";
  static const String SR_REG_INFO_ORG = "SRRegInfoOrg";
  static const String SR_BINDED_TAXATION_TAX_TYPE = "SRBindedTaxationTaxType";
  static const String SR_BINDED_TAXATION_TAXES = "SRBindedTaxationTaxes";
  static const String SR_BINDED_TAXATION_BINDED_TAX_TYPE =
      "SRBindedTaxationBindedTaxType";
  static const String SR_BINDED_TAXATION_BINDED_TAX_PERCENT =
      "SRBindedTaxationBindedTaxPercent";

  //zreport type
  static const String ZXR_DATE_TIME = "date_time";
  static const String ZXR_SHIFT_NUMBER = "shift_number";
  static const String ZXR_SHIFT_ID = "shift_id";
  static const String ZXR_SECTIONS = "sections";
  static const String ZXR_OPERATIONS = "operations";
  static const String ZXR_DISCOUNTS = "discounts";
  static const String ZXR_MARKUPS = "markups";
  static const String ZXR_TOTAL_RESULT = "total_result";
  static const String ZXR_TAXES = "taxes";
  static const String ZXR_START_SHIFT_NON_NULLABLE_SUMS =
      "start_shift_non_nullable_sums";
  static const String ZXR_TICKET_OPERATIONS = "ticket_operations";
  static const String ZXR_MONEY_PLACEMENTS = "money_placements";
  static const String ZXR_ANNULLED_TICKETS = "annulled_tickets";
  static const String ZXR_CASH_SUM = "cash_sum";
  static const String ZXR_REVENUE = "revenue";
  static const String ZXR_NON_NULLABLE_SUMS = "non_nullable_sums";
  static const String ZXR_SECTION_CODE = "section_code";
  static const String ZXR_SECTION_OPERATIONS = "operations";
  static const String ZXR_OPERATION = "operation";
  static const String ZXR_TRANSACTION_OPERATION = "trans_operation";
  static const String ZXR_COUNT = "count";
  static const String ZXR_SUM = "sum";
  static const String ZXR_TAX_TYPE = "tax_type";
  static const String ZXR_TAX_PERCENT = "percent";
  static const String ZXR_TAX_OPERATIONS = "operations";
  static const String ZXR_TAX_OPERATION_TYPE = "operation";
  static const String ZXR_TAX_OPERATION_TURNOVER = "turnover";
  static const String ZXR_TAX_OPERATION_SUM = "sum";
  static const String ZXR_START_SHIFT_NON_NULLABLE_OPERATION_TYPE = "operation";
  static const String ZXR_START_SHIFT_NON_NULLABLE_SUM = "sum";
  static const String ZXR_NON_NULLABLE_OPERATION_TYPE = "operation";
  static const String ZXR_NON_NULLABLE_SUM = "sum";
  static const String ZXR_TICKET_OPERATION_TYPE = "operation";
  static const String ZXR_TICKET_OPERATION_TICKETS_TOTAL_COUNT =
      "tickets_total_count";
  static const String ZXR_TICKET_OPERATION_TICKETS_COUNT = "tickets_count";
  static const String ZXR_TICKET_OPERATION_TICKETS_SUM = "tickets_sum";
  static const String ZXR_TICKET_OPERATION_PAYMENTS = "payments";
  static const String ZXR_TICKET_OPERATION_PAYMENT_TYPE = "payment";
  static const String ZXR_TICKET_OPERATION_PAYMENT_SUM = "sum";
  static const String ZXR_TICKET_OPERATION_PAYMENT_COUNT = "payments_count";
  static const String ZXR_TICKET_OPERATION_OFFLINE_COUNT = "ticket_opr_off_cnt";
  static const String ZXR_TICKET_OPERATION_DISCOUNT_SUM =
      "ticket_opr_discount_sum";
  static const String ZXR_TICKET_OPERATION_CHANGE_SUM = "ticket_opr_change_sum";
  static const String ZXR_MONEY_PLACEMENT_OPERATION_TYPE = "operation";
  static const String ZXR_MONEY_PLACEMENT_OPERATIONS_TOTAL_COUNT =
      "operations_total_count";
  static const String ZXR_MONEY_PLACEMENT_OPERATIONS_COUNT = "operations_count";
  static const String ZXR_MONEY_PLACEMENT_OPERATIONS_SUM = "operations_sum";
  static const String ZXR_MONEY_PLACEMENT_OPERATION_OFFLINE_COUNT =
      "operations_off_cnt";
  static const String ZXR_ANNULLED_TICKETS_TOTAL_COUNT =
      "annulled_tickets_total_count";
  static const String ZXR_ANNULLED_TICKETS_COUNT = "annulled_tickets_count";
  static const String ZXR_ANNULLED_OPERATIONS = "annulled_operations";
  static const String ZXR_REVENUE_SUM = "sum";
  static const String ZXR_REVENUE_IS_NEGATIVE = "is_negative";

  //NomenclatureResponse_Type
  static const String NOMENCLATURE_RESPONSE_ELEMENT_TYPE =
      "nomenclatureResponseElementType";
  static const String NOMENCLATURE_RESPONSE_ELEMENT_TITLE =
      "nomenclatureResponseElementTitle";
  static const String NOMENCLATURE_RESPONSE_ELEMENT_PARENTGROUPID =
      "nomenclatureResponseElementParentGroupId";
  static const String NOMENCLATURE_RESPONSE_ELEMENT_ID =
      "nomenclatureResponseElementId";
  static const String NOMENCLATURE_RESPONSE_ELEMENT_ITEM =
      "nomenclatureResponseElementItem";
  static const String NOMENCLATURE_RESPONSE_ITEM_ARTICLE =
      "nomenclatureResponseItemArticle";
  static const String NOMENCLATURE_RESPONSE_ITEM_BARCODE =
      "nomenclatureResponseItemBarcode";
  static const String NOMENCLATURE_RESPONSE_ITEM_DESCRIPTION =
      "nomenclatureResponseItemDescription";
  static const String NOMENCLATURE_RESPONSE_ITEM_PURCHASEPRICE =
      "nomenclatureResponseItemPurchasePrice";
  static const String NOMENCLATURE_RESPONSE_ITEM_SELL_PRICE =
      "nomenclatureResponseItemSellPrice";
  static const String NOMENCLATURE_RESPONSEITEM_DISCOUNT_PERCENT =
      "nomenclatureResponseItemDiscountPercent";
  static const String NOMENCLATURE_RESPONSEITEM_DISCOUNT_SUM =
      "nomenclatureResponseItemDiscountSum";
  static const String NOMENCLATURE_RESPONSEITEM_MARKUP_PERCENT =
      "nomenclatureResponseItemMarkupPercent";
  static const String NOMENCLATURE_RESPONSEITEM_MARKUP_SUM =
      "nomenclatureResponseItemMarkupSum";
  static const String NOMENCLATURE_RESPONSEITEM_TAXES =
      "nomenclatureResponseItemTaxes";
  static const String NOMENCLATURE_RESPONSEITEM_MEASURE_COUNT =
      "nomenclatureResponseItemMeasureCount";
  static const String NOMENCLATURE_RESPONSEITEM_MEASURE_TITLE =
      "nomenclatureResponseItemMeasureTitle";
  static const String NOMENCLATURE_RESPONSEITEMMEASUREFRACTIONAL =
      "nomenclatureResponseItemMeasureFractional";
  static const String NOMENCLATURE_RESPONSE_TAXATION_TYPE =
      "nomenclatureResponseTaxationType";
  static const String NOMENCLATURE_RESPONSE_TAX_TYPE =
      "nomenclatureResponseTaxType";
  static const String NOMENCLATURE_RESPONSE_TAX_PERCENT =
      "nomenclatureResponseTaxPercent";

  static const String AUTO_WITHDRAW_MONEY = "autoWithdrawMoney";
  static const String TRANSACTION_OPERATION_TYPE_CODE =
      "crmTansOpTpCd"; //EX1_CRM_TRANS_HIS, OPR_TP_CD
  static const String TRANSACTION_HISTORY_ID =
      "transactionHistoryId"; //CrmTransactionHistory ID

  //Result Callback Response Type
  static const String RCRT_ERROR_CODE = "errCd"; //에러코드 , Integer
  static const String RCRT_ERROR_MESSAGE = "errMsg"; //에러메세지 , String
  static const String RCRT_PRINT_MESSAGE = "printMsg"; //출력메세지
  static const String RCRT_APPROVAL_DATE = "appDate"; //승인날짜
  static const String RCRT_TICKET_NUMBER = "ticketNum"; //승인번호
  static const String RCRT_REQUEST_OPERATION_TYPE =
      "reqOprTp"; //요청 Operation Type
  static const String RCRT_REQUEST_DATA = "reqData";
  static const String RCRT_RESPONSE_DATA = "resData";
  static const String MONEY_PLACEMENT_AMOUNT = "reqMoneyPlacementAmt"; //교체금액
  static const String IS_ONLINE_RESULT =
      "isOnlineResult"; //응답이 Online 상태에서 획득한 정보인지 여부, boolean

  static const String MESSAGE_HANDLER = "msgHandler";

  //Message
  static const int NORMAL_MESSAGE = 0;
  static const int UPDATE_REG_INFO = 1000;
  static const int DISPLAY_MESSAGE = 1;
  static const int CONNECT_STATE_CHANGE = 2;
  static const int BLOCK_STATE_CHANGE = 3;
  static const int DISPLAY_ERROR_MESSAGE = 4;
  static const int OFFLINE_PROCESS_STATE_CHANGE = 5;
  static const String CONNECT_STATE = "connectionState";
  static const String DISPLAY_CONTENTS = "displayContents";
  static const String ERROR_CODE = "errorCode";
  static const String ERROR_MESSAGE = "errorMessage";

  static const String BLOCK_STATE = "blockState";
  static const String BLOCK_MODE = "blockMode";
  static const String BLOCK_STATE_DETAIL = "blockStateDetail";
  static const String RESULT_MAP = "resultMap";
  static const String RESULT = "result"; //true/false

  static const String ISFRIST = "isFirst"; //shift 1 init store

  static const String OFFLINE_PROCESS_STATE = "offlineProcessing";

  static const String INVALIDITY = "invalidity"; //승인무효처리 여부
  static const String ITEM_INFO = "itemInfo"; //상품정보
  static const String ITEM_TYPE = "itemType";
  static const String ITEM_NAME = "itemName"; //상품명
  static const String ITEM_SECTION_CODE = "itemSectionCode"; //상품분류코드
  static const String ITEM_QTY = "itemQty"; //상품수량
  static const String ITEM_PRICE = "itemPrice"; //공급가
  static const String ITEM_SUM = "itemSum"; //합계

  static const String PAYMENT_LIST = "paymentList"; //결제금액내역리스트
  static const String ITEM_LIST = "itemList"; //상품리스트
  static const String TAX_LIST = "taxList"; //세금내역리스트
  static const String AMOUNTS = "amounts"; //결제금액내역

  static const String OPERATION_TYPE =
      "operationType"; //구매 0 , 구매취소 1, 판매 2, 판매취소 3

  static const String TICKET_COM_DT = "ticketCommDt"; //POS의 SL1_SLS_HIS 연결자
  static const String TICKET_COM_SNO = "ticketCommSno"; //POS의 SL1_SLS_HIS 연결자

  static const int INTEGRITY_CHECK_COMPLETE = 1;
  static const int INTEGRITY_CHECK_ERROR = 0;

  //Sale Item
  static const String SALE_ITEMS = "slItems"; //DB 저장용
  static const String SL_ITM_COMM_DT = "slItmComDt";
  static const String SL_ITM_SL_SNO = "slItmSlSno";
  static const String SL_ITM_SNO = "slItmSno";
  static const String SL_ITM_NM = "slItmNm";
  static const String SL_ITM_CD = "slItmCd";
  static const String SL_ITM_GRP_NM = "slItmGrpNm";
  static const String SL_ITM_QTY = "slItmQty";
  static const String SL_ITM_PRICE = "slItmPrice";
  static const String SL_ITM_SPLY_AMT = "slItmSplyAmt";
  static const String SL_ITM_TOT_DC_AMT = "slItmTotDcAmt"; //품목+주문 할인액
  static const String SL_ITM_DC_AMT = "slItmDcAmt"; //품목 할인액
  static const String SL_ITM_ODR_DC_AMT = "slItmOrdDcAmt"; //주문 할인액
  static const String SL_ITM_OP_TP = "slItmOpTp";
  static const String SL_ITM_TAX_TP = "slItmTaxTp";
  static const String SL_ITM_TAXATION_TP = "slItmTaxationTp";
  static const String SL_ITM_TAX_AMT_0 = "slItmTaxAmt0";
  static const String SL_ITM_TAX_AMT_1 = "slItmTaxAmt1";
  static const String SL_ITM_TAX_AMT_2 = "slItmTaxAmt2";
  static const String SL_ITM_TAX_RATE_0 = "slItmTaxRate0";
  static const String SL_ITM_TAX_RATE_1 = "slItmTaxRate1";
  static const String SL_ITM_TAX_RATE_2 = "slItmTaxRate2";
  static const String SL_ITM_DC_TAX_AMT_0 = "slItmDcTaxAmt0";
  static const String SL_ITM_DC_TAX_AMT_1 = "slItmDcTaxAmt1";
  static const String SL_ITM_DC_TAX_AMT_2 = "slItmDcTaxAmt2";

  //Sale Ac
  static const String SALE_ACCOUNTS = "slAcs"; //DB 저장용
  static const String SL_AC_SNO = "slAcSno";
  static const String SL_AC_APRVL_TP_CD = "slAcAprvlTpCd";
  static const String SL_AC_PAY_SEC_CD = "slAcPaySecCd";
  static const String SL_AC_PAY_AMT = "slAcPayAmt";
  static const String SL_AC_TAKEN_AMT = "slAcTakenAmt";
  static const String SL_AC_CHANGE_AMT = "slAcChangeAmt";

  //Report
  static const String SHIFT_NUMBER = "shift_no";
  static const String OPEN_SHIFT_DATE_TIME = "open_shift_date_time";
  static const String CLOSE_SHIFT_DATE_TIME = "close_shift_date_time";
  static const String S_DATE = "SDATE";
  static const String E_DATE = "EDATE";
  static const String SHIFT_TYPE = "shift_type";

  //TIWP
  static const String TWIP_SHIFT_COUNT = "twip_shift_count";
  static const String TWIP_SHIFT_LIST = "twip_shift_list";
  static const String TWIP_SUMMARY_LIST = "twip_summary_list";
  static const String TWIP_OPERATOR_CNT = "twip_op_cnt";
  static const String TWIP_OPERATOR_AMT = "twip_op_amt";
  static const String TWIP_CASH_AMT = "twip_cash_amt";
  static const String TWIP_CARD_AMT = "twip_card_amt";
  static const String TWIP_CREDIT_AMT = "twip_credit_amt";
  static const String TWIP_TARE_AMT = "twip_tare_amt";
  static const String TWIP_TAX_AMT = "twip_tax_amt";
  static const String TWIP_OPERATION_SUM = "twip_op_sum";

  //ETC
  static const String LANGUAGE = "language";
//
//    enum LANG{
//   ENG(0),
//   KOR(1),
//   RUS(2),
//   KAZ(3),
//   ;
//   private int code;
//
//   LANG(int code){
//     this.code = code;
//   }
//    int getCode(){
//     return code;
//   }
// }
//
//  enum TX_STAT_CD{
//   REGISTER("00"),  //등록
// TRANSMISSION_COMPLETE("11"),  //전송완료(성공)
// TRANSMISSION_FAIL("22"), //전송실패
// MANUAL_PROCESS("88"),   //수동조작
// EXPIRE("99");   //폐기
//
// private String code;
//
// TX_STAT_CD(String code){
//   this.code = code;
// }
//
//  String getCode(){
//   return code;
// }
// }
//
//  enum INTEG_YN{
//   ERROR(0),  //무결성점검오류
// COMPLETE(1),  //무결성점검완료
// ;
//
// private int code;
//
// INTEG_YN(int code){
//   this.code = code;
// }
//
//  int getCode(){
//   return code;
// }
// }
//
//  enum IS_SYNCED{
//   NOT_SYNCED(0),  //온라인미전송
// SYNCED(1),  //온라인 전송완료
// DROP(2),  //전송실패
// ;
//
// private int code;
//
// IS_SYNCED(int code){
//   this.code = code;
// }
//
//  int getCode(){
//   return code;
// }
// }
//
//  enum SYNC_STAT{
//   ONLINE(1),  //온라인처리
// OFFLINE(2),  //오프라인처리
// ERROR(3),  //에러발생
// ;
//
// private int syncStatus;
//
// SYNC_STAT(int syncStatus){
//   this.syncStatus = syncStatus;
// }
//
//  int getSyncStatus(){
//   return syncStatus;
// }
// }
//
//  enum IS_CREATE_OFFLINE{
//   ONLINE(0),
// OFFLINE(1),
// ;
//
// private int code;
//
// IS_CREATE_OFFLINE(int code){
//   this.code = code;
// }
//
//  int getCode(){
//   return code;
// }
// }
//
//  enum CMD_TP_CD{
//   SYSTEM(0),
// TICKET(1),
// CLOSE_SHIFT(2),
// REPORT(3),
// NOMENCLATURE(4),
// INFO(5),
// MONEY_PLACEMENT(6),
// CANCEL_TICKET(7),
// AUTH(8),
// RESERVED(127)
// ;
//
// private int code;
//
// CMD_TP_CD(int code){
//   this.code = code;
// }
//
//  int getCode(){
//   return code;
// }
// }
//
//  enum TRANS_OPR_TP_CD{
//   TICKET_BUY(10, 0, 11),  // 0 - OperationTypeEnum (OPERATION_BUY)
// TICKET_BUY_RETURN(11, 1, 10), // 1 - OperationTypeEnum (OPERATION_BUY_RETURN)
// TICKET_SELL(12, 2, 13), // 2 - OperationTypeEnum (OPERATION_SELL)
// TICKET_SELL_RETURN(13, 3, 12),  // 3 - OperationTypeEnum (OPERATION_SELL_RETURN)
// ZREPORT(30, 0, -1),  //Z-REPORT, 0 - ReportTypeEnum (REPORT_Z)
// XREPORT(31, 1, -1),  //X-REPORT, // 1 - ReportTypeEnum (REPORT_X)
// MONEY_PLACEMENT_DEPOSIT(60, 0, -1), //입금,  0 - MoneyPlacementEnum(MONEY_PLACEMENT_DEPOSIT)
// MONEY_PLACEMENT_WITHDRAWAL(61, 1, -1),   //출금,   1 -MoneyPlacementEnum(MONEY_PLACEMENT_WITHDRAWAL)
// CANEL_TICKET(90, -1, -1);   //CANCEL_TICKET
//
// private int code;
// private int typeEnum;
// private int returnType; //Ticket 인 경우에만 해당
//
// TRANS_OPR_TP_CD(int code, int typeEnum, int returnType){
//   this.code = code;
//   this.typeEnum = typeEnum;
//   this.returnType = returnType;
// }
//
//  int getCode(){
//   return code;
// }
//  int getTypeEnum(){
//   return typeEnum;
// }
//  int getReturnType() {
//   return returnType;
// }
//
//  static TRANS_OPR_TP_CD getType(int code) {
//   switch (code) {
//     case 10: return TICKET_BUY;
//     case 11: return TICKET_BUY_RETURN;
//     case 12: return TICKET_SELL;
//     case 13: return TICKET_SELL_RETURN;
//     case 30: return ZREPORT;
//     case 31: return XREPORT;
//     case 60: return MONEY_PLACEMENT_DEPOSIT;
//     case 61: return MONEY_PLACEMENT_WITHDRAWAL;
//     case 90: return CANEL_TICKET;
//     default: return null;
//   }
// }
// }
//
//  enum OPR_TP_CD
// {
//   OPERATION_BUY(0, TRANS_OPR_TP_CD.TICKET_BUY),
// OPERATION_BUY_RETURN(1, TRANS_OPR_TP_CD.TICKET_BUY_RETURN),
// OPERATION_SELL(2, TRANS_OPR_TP_CD.TICKET_SELL),
// OPERATION_SELL_RETURN(3, TRANS_OPR_TP_CD.TICKET_SELL_RETURN);
//
// private int value;
// private TRANS_OPR_TP_CD transOprTpCd;
//
// OPR_TP_CD(int value, TRANS_OPR_TP_CD transOprTpCd) {
//   this.value = value;
//   this.transOprTpCd = transOprTpCd;
// }
//
//  int getValue() {
//   return value;
// }
//  TRANS_OPR_TP_CD getTransOprTpCd() { return transOprTpCd; }
//
//  static OPR_TP_CD getType(int value) {
//   switch (value) {
//     case 0: return OPERATION_BUY;
//     case 1: return OPERATION_BUY_RETURN;
//     case 2: return OPERATION_SELL;
//     case 3: return OPERATION_SELL_RETURN;
//
//     default: return null;
//   }
// }
// }
//
//  enum PAY_TP_CD
// {
//   PAYMENT_CASH(0),
// PAYMENT_CARD(1),
// PAYMENT_CREDIT(2),
// PAYMENT_TARE(3);
//
// private int value;
//
// PAY_TP_CD(int value) {
//   this.value = value;
// }
//
//  int getValue() {
//   return value;
// }
//
//  static PAY_TP_CD getType(int value) {
//   switch (value) {
//     case 0: return PAYMENT_CASH;
//     case 1: return PAYMENT_CARD;
//     case 2: return PAYMENT_CREDIT;
//     case 3: return PAYMENT_TARE;
//
//     default: return null;
//   }
// }
// }
//
//  enum TAX_TP
// {
//   VAT(100);
//
// private int value;
//
// TAX_TP(int value) {
//   this.value = value;
// }
//
//  int getValue() {
//   return value;
// }
//
//  static TAX_TP getType(int value) {
//   switch (value) {
//     case 0:
//     case 100:
//       return VAT;
//     default:
//       return null;
//   }
// }
// }
//
//  enum TAXATION_TP
// {
//   STS(100),
// RTS(101),
// TRFF(102),
// TRBP(103),;
//
// private int value;
//
// TAXATION_TP(int value) {
//   this.value = value;
// }
//
//  int getValue() {
//   return value;
// }
//
//  static TAXATION_TP getType(int value) {
//   switch (value) {
//     case 0:
//     case 100:
//       return STS;
//     case 1:
//     case 101:
//       return RTS;
//     case 2:
//     case 102:
//       return TRFF;
//     case 3:
//     case 103:
//       return TRBP;
//
//     default:
//       return null;
//   }
// }
// }
//
//  enum SHIFT_STORE_TYPE {
//   OPEN(0),    //현재 사용중인 Shift
// CLOSE(1),   //Z리포트를 받아 마감된 상태
// BEFORE_OPEN(9), //Close Shift만 한 상태
// ;
//
// private int value;
//
// SHIFT_STORE_TYPE(int value) {
//   this.value = value;
// }
//
//  int getValue() {
//   return value;
// }
//
//  static SHIFT_STORE_TYPE getType(int value) {
//   switch (value) {
//     case 0: return OPEN;
//     case 1: return CLOSE;
//     case 9: return BEFORE_OPEN;
//
//     default: return null;
//   }
// }
// }
//
//  enum PAY_SEC_CD {
//   PAYMENT_CASH("050", 0),
// PAYMENT_CARD("051", 1),
// PAYMENT_CREDIT("052", 2),
// PAYMENT_TARE("053",3),
// ;
// private String code;
// private int value;
//
// PAY_SEC_CD(String code, int value) {
//   this.code = code;
//   this.value = value;
// }
//
//  String getCode() {
//   return code;
// }
//  int getValue() {
//   return value;
// }
//
//  static PAY_SEC_CD getType(String code) {
//   switch (code) {
//     case "001":
//     case "050": return PAYMENT_CASH;
//     case "002":
//     case "051": return PAYMENT_CARD;
//     case "052": return PAYMENT_CREDIT;
//     case "053": return PAYMENT_TARE;
//     default: return null;
//   }
// }
// }
}

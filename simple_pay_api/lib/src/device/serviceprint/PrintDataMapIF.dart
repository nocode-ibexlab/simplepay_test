class PrintDataMapIF {
  static const String START = "START";
  static const String CUT = "CUT";
  static const String END = "END";

  static const String PAYMENT_TYPE_CASH = "PAYMENT_TYPE_CASH";
  static const String PAYMENT_TYPE_CARD = "PAYMENT_TYPE_CARD";
  static const String PAYMENT_TYPE_MYD = "PAYMENT_TYPE_MYD";
  static const String PAYMENT_TYPE_ONLINE = "PAYMENT_TYPE_ONLINE";

  static const String LOGO = "LOGO";
  static const String RECEIPT_TITLE = "RECEIPT_TITLE";
  static const String RECEIPT_SUB_TITLE = "RECEIPT_SUB_TITLE";
  static const String RECEIPT_UPPER_TITLE = "RECEIPT_UPPER_TITLE";

  static const String STORE_NAME_SUBJECT = "STORE_NAME_SUBJECT";
  static const String STORE_NAME = "STORE_NAME";
  static const String OWNER_NAME_SUBJECT = "OWNER_NAME_SUBJECT";
  static const String OWNER_NAME = "OWNER_NAME";
  static const String BRN_NUMBER_SUBJECT = "BRN_NUMBER_SUBJECT";
  static const String BRN_NUMBER = "BRN_NUMBER";
  static const String TID_NUMBER_SUBJECT = "TID_NUMBER_SUBJECT";
  static const String TID_NUMBER = "TID_NUMBER";
  static const String ADDRESS_SUBJECT = "ADDRESS_SUBJECT";
  static const String ADDRESS = "ADDRESS";
  static const String TEL_NO = "TEL_NO";
  static const String STORE_TERMINAL_NAME_SUBJECT =
      "STORE_TERMINAL_NAME_SUBJECT";
  static const String STORE_TERMINAL_NAME = "STORE_TERMINAL_NAME";
  static const String IS_TAXFREE_STORE = "IS_TAXFREE_STORE";

  static const String RECEIPT_NUMBER_SUBJECT = "RECEIPT_NUMBER_SUBJECT";
  static const String RECEIPT_NUMBER = "RECEIPT_NUMBER";
  static const String TIME_OF_SALE_SUBJECT = "TIME_OF_SALE_SUBJECT";
  static const String TIME_OF_SALE = "TIME_OF_SALE";

  static const String CURRENCY = "CURRENCY";
  static const String OPEN_DATE_TIME = "OPEN_DATE_TIME";
  static const String CLOSE_DATE_TIME = "CLOSE_DATE_TIME";

  static const String IDENTITY_NUMBER_SUBJECT = "IDENTITY_NUMBER_SUBJECT";
  static const String IDENTITY_NUMBER = "IDENTITY_NUMBER";
  static const String APPROVAL_DATE_SUBJECT = "APPROVAL_DATE_SUBJECT";
  static const String APPROVAL_DATE = "APPROVAL_DATE";
  static const String ITEM_PRODUCT_NAME_SUBJECT = "ITEM_PRODUCT_NAME_SUBJECT";
  static const String ITEM_QTY_SUBJECT = "ITEM_QTY_SUBJECT";
  static const String ITEM_AMOUNT_SUBJECT = "ITEM_AMOUNT_SUBJECT";
  static const String ITEM_PRODUCT_NAME = "ITEM_PRODUCT_NAME";
  static const String ITEM_QTY = "ITEM_QTY";
  static const String ITEM_PRICE = "ITEM_PRICE";
  static const String ITEM_AMOUNT = "ITEM_AMOUNT";
  static const String ITEM_DISCOUNT = "ITEM_DISCOUNT";
  static const String ITEM_MARKUP = "ITEM_MARKUP";
  static const String ITEM_TOTAL_AMOUNT = "ITEM_TOTAL_AMOUNT";
  static const String ITEM_KITCHEN_PRINT_YN = "ITEM_KITCHEN_PRINT_YN";
  static const String ORDER_ITEM_LIST = "ORDER_ITEM_LIST";
  static const String KITCHEN_ORDER_ITEM_LIST = "KITCHEN_ORDER_ITEM_LIST";

  static const String ORDER_AMOUNT_SUBJECT = "ORDER_AMOUNT_SUBJECT";
  static const String ORDER_AMOUNT = "ORDER_AMOUNT";
  static const String MENU_DISCOUNT_SUBJECT = "MENU_DISCOUNT_SUBJECT";
  static const String MENU_DISCOUNT = "MENU_DISCOUNT";
  static const String ORDER_DISCOUNT_SUBJECT = "ORDER_DISCOUNT_SUBJECT";
  static const String ORDER_DISCOUNT = "ORDER_DISCOUNT";
  static const String ORDER_MARKUP_SUBJECT = "ORDER_MARKUP_SUBJECT";
  static const String ORDER_MARKUP = "ORDER_MARKUP";
  static const String ORDER_TOTAL_AMOUNT_SUBJECT = "ORDER_TOTAL_AMOUNT_SUBJECT";
  static const String ORDER_TOTAL_AMOUNT = "ORDER_TOTAL_AMOUNT";
  static const String TRANSACTION_AMOUNT_SUBJECT = "TRANSACTION_AMOUNT_SUBJECT";
  static const String TRANSACTION_AMOUNT = "TRANSACTION_AMOUNT";
  static const String TAX_SUBJECT = "TAX_SUBJECT";
  static const String TAX = "TAX";
  static const String TIP_SUBJECT = "TIP_SUBJECT";
  static const String TIP = "TIP";
  static const String TIP_TAX_SUBJECT = "TIP_TAX_SUBJECT";
  static const String TIP_TAX = "TIP_TAX";
  static const String TOTAL_AMOUNT_SUBJECT = "TOTAL_AMOUNT_SUBJECT";
  static const String TOTAL_AMOUNT = "TOTAL_AMOUNT";
  static const String RECEIVED_AMOUNT_SUBJECT = "RECEIVED_AMOUNT_SUBJECT";
  static const String RECEIVED_AMOUNT = "RECEIVED_AMOUNT";
  static const String CHANGED_AMOUNT_SUBJECT = "CHANGED_AMOUNT_SUBJECT";
  static const String CHANGED_AMOUNT = "CHANGED_AMOUNT";

//    static const String IDENTITY_NUMBER_SUBJECT = "IDENTITY_NUMBER_SUBJECT";
//    static const String IDENTITY_NUMBER = "IDENTITY_NUMBER";
  static const String INSTALLMENT_SUBJECT = "INSTALLMENT_SUBJECT";
  static const String INSTALLMENT = "INSTALLMENT";
  static const String CARD_NAME = "CARD_NAME";
  static const String CARD_COMPANY_NAME_SUBJECT = "CARD_COMPANY_NAME_SUBJECT";
  static const String CARD_COMPANY_NAME = "CARD_COMPANY_NAME";
  static const String COMPANY_NO = "COMPANY_NO";

//    static const String APPROVAL_DATE_SUBJECT = "APPROVAL_DATE_SUBJECT";
//    static const String APPROVAL_DATE = "APPROVAL_DATE";
  static const String EMP_NUMBER_SUBJECT = "EMP_NUMBER_SUBJECT";
  static const String EMP_NUMBER = "EMP_NUMBER";

//    static const String IDENTITY_NUMBER_SUBJECT = "IDENTITY_NUMBER_SUBJECT";
//    static const String IDENTITY_NUMBER = "IDENTITY_NUMBER";
  static const String EMP_NAME_SUBJECT = "EMP_NAME_SUBJECT";
  static const String EMP_NAME = "EMP_NAME";
  static const String PAYMENT_TYPE_SUBJECT = "PAYMENT_TYPE_SUBJECT";
  static const String PAYMENT_TYPE = "PAYMENT_TYPE";
  static const String CHECK_NUMBER_SUBJECT = "CHECK_NUMBER_SUBJECT";
  static const String CHECK_NUMBER = "CHECK_NUMBER";
  static const String APPROVAL_NUMBER_SUBJECT = "APPROVAL_NUMBER_SUBJECT";
  static const String APPROVAL_NUMBER = "APPROVAL_NUMBER";
  static const String VAN_MESSAGE_SUBJECT = "VAN_MESSAGE_SUBJECT";
  static const String VAN_MESSAGE = "VAN_MESSAGE";
  static const String BUYER_NAME_SUBJECT = "BUYER_NAME_SUBJECT";
  static const String BUYER_NAME = "BUYER_NAME";
  static const String VAN_PRINT_MESSAGE = "VAN_PRINT_MESSAGE";

  //--------- bill

  static const String ORDER_TIME_SUBJECT = "ORDER_TIME_SUBJECT";
  static const String ORDER_TIME = "ORDER_TIME";
  static const String TABLE_NAME_SUBJECT = "TABLE_NAME_SUBJECT";
  static const String TABLE_NAME = "TABLE_NAME";
  static const String EMPLOYEE_NAME_SUBJECT = "EMPLOYEE_NAME_SUBJECT";
  static const String EMPLOYEE_NAME = "EMPLOYEE_NAME";

//    static const String CHECK_NUMBER_SUBJECT = "CHECK_NUMBER_SUBJECT";
//    static const String CHECK_NUMBER = "CHECK_NUMBER";
  static const String PAGER_NUMBER_SUBJECT = "PAGER_NUMBER_SUBJECT";
  static const String PAGER_NUMBER = "PAGER_NUMBER";

//    static const String ORDER_AMOUNT_SUBJECT = "ORDER_AMOUNT_SUBJECT";
//    static const String ORDER_AMOUNT = "ORDER_AMOUNT";
  static const String TOTAL_DISCOUNT_SUBJECT = "TOTAL_DISCOUNT_SUBJECT";
  static const String TOTAL_DISCOUNT = "TOTAL_DISCOUNT";
  static const String TOTAL_MARKUP = "TOTAL_MARKUP";
  static const String SUB_TOTAL_SUBJECT = "SUB_TOTAL_SUBJECT";
  static const String SUB_TOTAL = "SUB_TOTAL";

//    static const String TAX_SUBJECT = "TAX_SUBJECT";
//    static const String TAX = "TAX";
//    static const String AMOUNT_DUE_SUBJECT = "AMOUNT_DUE_SUBJECT";
//    static const String AMOUNT_DUE = "AMOUNT_DUE";

  static const String RECEIPT_TOP_MSG = "RECEIPT_TOP_MSG"; //ALIGN_LEFT
  static const String RECEIPT_LOWER_MESSAGE =
      "RECEIPT_LOWER_MESSAGE"; //ALIGN_LEFT
  static const String BILL_TOP_MESSAGE = "BILL_TOP_MESSAGE"; //ALIGN_LEFT
  static const String BILL_LOWER_MESSAGE = "BILL_LOWER_MESSAGE"; //ALIGN_LEFT

//    static const String INFO_TABLE = "INFO_TABLE";
//    static const String ORDER_HEADER_TABLE = "ORDER_HEADER_TABLE";
//    static const String ORDER_TABLE = "ORDER_TABLE";
//    static const String KITCHEN_ORDER_TABLE = "KITCHEN_ORDER_TABLE";
//    static const String ORDER_AMOUNT_TABLE = "ORDER_AMOUNT_TABLE";
//    static const String SUPPLY_AMOUNT_TABLE = "SUPPLY_AMOUNT_TABLE";
//    static const String TOTAL_AMOUNT_TABLE = "TOTAL_AMOUNT_TABLE";
//    static const String CARD_INFO_TABLE = "CARD_INFO_TABLE";
//    static const String APPROVE_INFO_TABLE = "APPROVE_INFO_TABLE";
//    static const String ID_DATE_TABLE = "ID_DATE_TABLE";
//    static const String EMPLOYEE_INFO_TABLE = "EMPLOYEE_INFO_TABLE";
//    static const String VAN_PRINT_TABLE = "VAN_PRINT_TABLE";
  static const String MEMO = "MEMO";
  static const String ORDER_MEMO = "ORDER_MEMO";

//    static const String PAGER_NUMBER_TABLE = "PAGER_NUMBER_TABLE";
  static const String FOOTER = "FOOTER"; //ALIGN_CENTER

  static const String MULTI_LINE = "MULTI_LINE";

  static const String CASHIER_OUT_INFO_TABLE = "CASHIER_OUT_INFO_TABLE";
  static const String SALES_TOTAL_HEADER = "SALES_TOTAL_HEADER";
  static const String SALES_TOTAL_TABLE = "SALES_TOTAL_TABLE";
  static const String CASH_INOUT_REPORT_HEADER = "CASH_INOUT_REPORT_HEADER";
  static const String CASH_INOUT_REPORT_TABLE = "CASH_INOUT_REPORT_TABLE";
  static const String CASH_DRAWER_INFO_HEADER = "CASH_DRAWER_INFO_HEADER";
  static const String CASH_DRAWER_INFO_TABLE = "CASH_DRAWER_INFO_TABLE";

//
//    static const String LEFT = "LEFT";
//    static const String CENTER = "CENTER";
//    static const String RIGHT = "RIGHT";

  static const String COMPANY_NAME = "COMPANY_NAME";
  static const String COMPANY_ADDRESS = "COMPANY_ADDRESS";
  static const String PAYMENT_TIME = "PAYMENT_TIME";
  static const String PAYMENT_SECTION_CODE = "PAYMENT_SECTION_CODE";
  static const String APPROVAL_DATE_PRI_PTN = "APPROVAL_DATE_PRI_PTN";
  static const String TRANSACTION_TYPE = "TRANSACTION_TYPE";
  static const String TRANSACTION_CODE = "TRANSACTION_CODE";

//    static const String ORDER_ITEM_LIST ="ORDER_ITEM_LIST";
  //    static const String ORDER_KITCHEN_ITEM_LIST ="ORDER_KITCHEN_ITEM_LIST";
  static const String ITEM_LIST = "ITEM_LIST";

//    static const String KITCHEN_ITEM_LIST ="KITCHEN_ITEM_LIST";

  static const String ISSUE_DATE = "ISSUE_DATE";
  static const String CHECK_DATE = "CHECK_DATE";
  static const String ISSUE_AMOUNT = "ISSUE_AMOUNT";
  static const String SEARCH_RESULT = "SEARCH_RESULT";

//    static const String CARD_COMPANY_NAME ="CARD_COMPANY_NAME";
  static const String SIGN_IN_TIME = "SIGN_IN_TIME";
  static const String CLOSING_TIME = "CLOSING_TIME";
  static const String CASHIER = "CASHIER";
  static const String ITEM_SALES_COUNT = "ITEM_SALES_COUNT";
  static const String ITEM_SALES_AMOUNT = "ITEM_SALES_AMOUNT";
  static const String CASH_COUNT = "CASH_COUNT";
  static const String CASH_AMOUNT = "CASH_AMOUNT";
  static const String CARD_COUNT = "CARD_COUNT";
  static const String CARD_AMOUNT = "CARD_AMOUNT";
  static const String MYD_COUNT = "MYD_COUNT";
  static const String MYD_AMOUNT = "MYD_AMOUNT";
  static const String TOOK_COUNT = "TOOK_COUNT";
  static const String TOOK_AMOUNT = "TOOK_AMOUNT";
  static const String KIWIPG_COUNT = "KIWIPG_COUNT";
  static const String KIWIPG_AMOUNT = "KIWIPG_AMOUNT";
  static const String UNIONPAY_COUNT = "UNIONPAY_COUNT";
  static const String UNIONPAY_AMOUNT = "UNIONPAY_AMOUNT";
  static const String SMARTPAY_COUNT = "SMARTPAY_COUNT";
  static const String SMARTPAY_AMOUNT = "SMARTPAY_AMOUNT";
  static const String COUPON_COUNT = "COUPON_COUNT";
  static const String COUPON_AMOUNT = "COUPON_AMOUNT";
  static const String CASH_OUT_COUNT = "CASH_OUT_COUNT";
  static const String CASH_OUT_AMOUNT = "CASH_OUT_AMOUNT";
  static const String CASH_IN_COUNT = "CASH_IN_COUNT";
  static const String CASH_IN_AMOUNT = "CASH_IN_AMOUNT";
  static const String BEGINNING_BALANCE = "BEGINNING_BALANCE";
  static const String SETTLEMENT_AMOUNT = "SETTLEMENT_AMOUNT";
  static const String POS_NAME = "POS_NAME";
  static const String BUSINESS_DATE = "BUSINESS_DATE";
  static const String START_DATE = "START_DATE";
  static const String END_DATE = "END_DATE";
  static const String TERMINAL_ID = "TERMINAL_ID";

//    static const String STORE_NAME ="STORE_NAME";
  static const String SECTION_ALL_LIST = "SECTION_ALL_LIST";
  static const String MANG_CANCEL_LIST = "MANG_CANCEL_LIST";
  static const String TOTAL_SUM_LIST = "TOTAL_SUM_LIST";
  static const String PURCHASE_NAME = "PURCHASE_NAME";
  static const String APPROVAL_COUNT = "APPROVAL_COUNT";
  static const String APPROVAL_AMOUNT = "APPROVAL_AMOUNT";
  static const String CANCEL_COUNT = "CANCEL_COUNT";
  static const String CANCEL_AMOUNT = "CANCEL_AMOUNT";
  static const String SUM_COUNT = "SUM_COUNT";
  static const String SUM_AMOUNT = "SUM_AMOUNT";
  static const String SECTION_NAME = "SECTION_NAME";
  static const String TOTAL_COUNT = "TOTAL_COUNT";
  static const String REG_INFO = "REG_INFO";
  static const String EMP_DEPARTMENT = "EMP_DEPARTMENT";

//    static const String EMP_NUMBER ="EMP_NUMBER";
  static const String EMP_POSITION = "EMP_POSITION";

//    static const String EMP_NAME ="EMP_NAME";
//    static const String MEMO ="MEMO";
//    static const String PAGER_NUMBER ="PAGER_NUMBER";
//    static const String APPROVAL_DATE_PRI_PTN ="APPROVAL_DATE_PRI_PTN";
//    static const String LOGO ="LOGO";
  static const String IS_CANCEL = "IS_CANCEL";
  static const String IS_COPY = "IS_COPY";
  static const String IS_FAILED = "IS_FAILED";

  static const String IS_STORE_CARD_RECEIPT = "IS_STORE_CARD_RECEIPT";
  static const String IS_COMPANY_CARD_RECEIPT = "IS_COMPANY_CARD_RECEIPT";
  static const String IS_CUSTOMER_CARD_RECEIPT = "IS_CUSTOMER_CARD_RECEIPT";

  static const String SIGN_INFO = "SIGN_INFO";

  static const String SELF_ORDER_NUMBER = "SELF_ORDER_NUMBER";

  // CRM  only
  static const String INN_NO = "INN_NO";
  static const String CRM_SERIAL = "CRM_SERIAL";
  static const String KKM_ID = "KKM_ID";
  static const String KKM_REG_INFO_TERMINAL_NUMBER =
      "KKM_REG_INFO_TERMINAL_NUMBER";
  static const String ORG_REG_INFO_INN = "ORG_REG_INFO_INN";
  static const String KKM_REG_INFO_FNS_KKM_ID = "KKM_REG_INFO_FNS_KKM_ID";
  static const String KKM_REG_INFO_SERIAL_NUMBER = "KKM_REG_INFO_SERIAL_NUMBER";
  static const String KKM_DATE_TIME = "KKM_DATE_TIME";
  static const String PAYMENT_NAME = "PAYMENT_NAME";
  static const String TAX_NAME = "TAX_NAME";

//    static const String OPERATOR_NAME = "OPERATOR_NAME";
  static const String QR_CODE = "QR_CODE";
  static const String TICKET_NUMBER = "TICKET_NUMBER";

  static const String OPERATOR = "OPERATOR";
  static const String OPERATOR_CODE = "OPERATOR_CODE";
  static const String OPERATOR_NAME = "OPERATOR_NAME";
  static const String OPERATOR_LINK = "OPERATOR_LINK";
  static const String SHIFT_NO = "SHIFT_NO";

  static const String ZXR_SHIFT_NUMBER = "ZXR_SHIFT_NUMBER";
  static const String OPEN_SHIFT_DATE_TIME = "OPEN_SHIFT_DATE_TIME";
  static const String CLOSE_SHIFT_DATE_TIME = "CLOSE_SHIFT_DATE_TIME";

  static const String ZXR_SUM = "ZXR_SUM";
  static const String ZXR_OPERATION = "ZXR_OPERATION";
  static const String ZXR_COUNT = "ZXR_COUNT";
  static const String ZXR_TOTAL_COUNT = "ZXR_TOTAL_COUNT";

  static const String ZXR_SECTION_OPERATIONS = "ZXR_SECTION_OPERATIONS";
  static const String ZXR_SECTIONS = "ZXR_SECTIONS";
  static const String ZXR_OPERATIONS = "ZXR_OPERATIONS";
  static const String ZXR_DISCOUNTS = "ZXR_DISCOUNTS";
  static const String ZXR_MARKUPS = "ZXR_MARKUPS";
  static const String ZXR_TOTAL_RESULT = "ZXR_TOTAL_RESULT";
  static const String ZXR_START_SHIFT_NON_NULLABLE_SUMS =
      "ZXR_START_SHIFT_NON_NULLABLE_SUMS";
  static const String ZXR_TICKET_OPERATION_PAYMENTS =
      "ZXR_TICKET_OPERATION_PAYMENTS";
  static const String ZXR_TICKET_OPERATIONS = "ZXR_TICKET_OPERATIONS";
  static const String ZXR_MONEY_PLACEMENTS = "ZXR_MONEY_PLACEMENTS";
  static const String ZXR_CASH_SUM = "ZXR_CASH_SUM";
  static const String ZXR_REVENUE = "ZXR_REVENUE";
  static const String ZXR_NON_NULLABLE_SUMS = "ZXR_NON_NULLABLE_SUMS";
  static const String ZXR_TAX_OPERATIONS = "ZXR_TAX_OPERATIONS";
  static const String ZXR_TAXES = "ZXR_TAXES";

  static const String ZXR_TAX_TYPE = "ZXR_TAX_TYPE";
  static const String ZXR_TAX_PERCENT = "ZXR_TAX_PERCENT";
  static const String ZXR_SECTION_CODE = "ZXR_SECTION_CODE";

  //payinOut

  static const String CASH_DRAWER_BALANCE = "CASH_DRAWER_BALANCE";
  static const String ACCOUNT = "ACCOUNT";
  static const String ACCOUNT_GROUP = "ACCOUNT_GROUP";

  // OpenWay
  static const String AID = "AID";
  static const String BATCH_ID = "BATCH_ID";
  static const String RRN = "RRN";
  static const String AUTHORIZED_AMOUNT = "AUTHORIZED_AMOUNT";
  static const String TRANSACTION_FEE = "TRANSACTION_FEE";
  static const String STAN = "STAN";
  static const String SECURE_REF = "SECURE_REF";
  static const String RECONCILIATION = "RECONCILIATION";

  //cashier out
  static const String SALES_TOTAL_ITEM_LIST = "SALES_TOTAL_ITEM_LIST";
  static const String PAYMENT_TOTAL_ITEM_LIST = "PAYMENT_TOTAL_ITEM_LIST";
  static const String PAYMENT_TOTAL_ITEM_LIST_TOTAL =
      "PAYMENT_TOTAL_ITEM_LIST_TOTAL";
  static const String PAYMENT_TOTAL_ITEM_LIST_BY_PAYMENT =
      "PAYMENT_TOTAL_ITEM_LIST_BY_PAYMENT";
  static const String PAYMENT_TOTAL_ITEM_LIST_BY_CARD_COMPANY =
      "PAYMENT_TOTAL_ITEM_LIST_BY_CARD_COMPANY";

  // ExPay
  static const String ORDER_NO = "ORDER_NO";

  static const String PAY_METHOD_CD = "PAY_METHOD_CD";

  //crm
  static const String PAYMENT_CASH_AMOUNT = "PAYMENT_CASH_AMOUNT";
  static const String PAYMENT_CARD_AMOUNT = "PAYMENT_CARD_AMOUNT";
  static const String PAYMENT_CREDIT_AMOUNT = "PAYMENT_CREDIT_AMOUNT";
  static const String PAYMENT_TARE_AMOUNT = "PAYMENT_TARE_AMOUNT";

  static const String OFFLINE_MODE = "OFFLINE_MODE";
  static const String CASHBOX_OFFLINE_MODE = "CASHBOX_OFFLINE_MODE";
  static const String CASHBOX_UNIQUE_NUMBER = "CASHBOX_UNIQUE_NUMBER";
  static const String CASHBOX_REGISTRATION_NUMBER =
      "CASHBOX_REGISTRATION_NUMBER";
  static const String CASHBOX_IDENTITY_NUMBER = "CASHBOX_IDENTITY_NUMBER";
  static const String CASHBOX_ADDRESS = "CASHBOX_ADDRESS";
  static const String OFD_NAME = "OFD_NAME";
  static const String OFD_HOST = "OFD_HOST";
  static const String OFD_CODE = "OFD_CODE";
  static const String CHECK_ORDER_NUMBER = "CHECK_ORDER_NUMBER";
  static const String TICKET_URL = "TICKET_URL";

  static const String TAX_PERCENT = "TAX_PERCENT";

  //crm report

  static const String REPORT_NUMBER = "REPORT_NUMBER";
  static const String TAX_PAYER_NAME = "TAX_PAYER_NAME";
  static const String TAX_PAYER_IN = "TAX_PAYER_IN";
  static const String TAX_PAYER_VAT = "TAX_PAYER_VAT";
  static const String TAX_PAYER_VAT_SERIA = "TAX_PAYER_VAT_SERIA";
  static const String TAX_PAYER_VAT_NUMBER = "TAX_PAYER_VAT_NUMBER";
  static const String CASHBOX_SN = "CASHBOX_SN";
  static const String CASHBOX_IN = "CASHBOX_IN";
  static const String CASHBOX_RN = "CASHBOX_RN";
  static const String START_ON = "START_ON";
  static const String REPORT_ON = "REPORT_ON";
  static const String CLOSE_ON = "CLOSE_ON";
  static const String CASHIER_CODE = "CASHIER_CODE";

//    static const String SHIFTNUMBER = "SHIFTNUMBER";
  static const String DOCUMENT_COUNT = "DOCUMENT_COUNT";
  static const String PUT_MONEY_SUM = "PUT_MONEY_SUM";
  static const String TAKE_MONEY_SUM = "TAKE_MONEY_SUM";
  static const String CONTROL_SUM = "CONTROL_SUM";

//    static const String OFFLINE_MODE = "OFFLINEMODE";
//    static const String CASHBOXOFFLINEMODE = "CASHBOXOFFLINEMODE";
  static const String SUM_IN_CASHBOX = "SUM_IN_CASHBOX";

  static const String OPERATION_TYPE_SELL = "OPERATION_TYPE_SELL";
  static const String OPERATION_TYPE_BUY = "OPERATION_TYPE_BUY";
  static const String OPERATION_TYPE_RETURN_SELL = "OPERATION_TYPE_RETURN_SELL";
  static const String OPERATION_TYPE_RETURN_BUY = "OPERATION_TYPE_RETURN_BUY";

  static const String NON_NULLABLE_TYPE_START_SELL =
      "NON_NULLABLE_TYPE_START_SELL";
  static const String NON_NULLABLE_TYPE_START_BUY =
      "NON_NULLABLE_TYPE_START_BUY";
  static const String NON_NULLABLE_TYPE_START_RETURN_SELL =
      "NON_NULLABLE_TYPE_START_RETURN_SELL";
  static const String NON_NULLABLE_TYPE_START_RETURN_BUY =
      "NON_NULLABLE_TYPE_START_RETURN_BUY";
  static const String NON_NULLABLE_TYPE_END_SELL = "NON_NULLABLE_TYPE_END_SELL";
  static const String NON_NULLABLE_TYPE_END_BUY = "NON_NULLABLE_TYPE_END_BUY";
  static const String NON_NULLABLE_TYPE_END_RETURN_SELL =
      "NON_NULLABLE_TYPE_END_RETURN_SELL";
  static const String NON_NULLABLE_TYPE_END_RETURN_BUY =
      "NON_NULLABLE_TYPE_END_RETURN_BUY";

  static const String OPERATION_DISCOUNT = "OPERATION_DISCOUNT";
  static const String OPERATION_MARKUP = "OPERATION_MARKUP";
  static const String OPERATION_TAKEN = "OPERATION_TAKEN";
  static const String OPERATION_CHANGE = "OPERATION_CHANGE";
  static const String OPERATION_COUNT = "OPERATION_COUNT";
  static const String OPERATION_VAT = "OPERATION_VAT";
  static const String PAYMENT_SUM = "PAYMENT_SUM";

//    static const String PAYMENT_TYPE = "PAYMENT_TYPE";
  static const String PAYMENT_LIST = "PAYMENT_LIST";

  static const String TOKEN_ID = 'TOKEN_ID';
  static const String TOKEN_AMT = 'TOKEN_AMT';
  static const String REWARD_AMT = 'REWARD_AMT';
  static const String EXCHANGE_RATE = 'EXCHANGE_RATE';
  static const String EXCHANGE_DATE_INDEX = 'EXCHANGE_DATE_INDEX';
}

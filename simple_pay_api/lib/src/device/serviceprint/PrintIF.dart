class PrintIF {
  static const String PAYMENT_SECTION_CODE = "@paySecCd";
  static const String IDENTITY_NUMBER = "@identityNum";
  static const String APPROVAL_NUMBER = "@approvalNum";
  static const String APPROVAL_DATE = "@approvalDate";
  static const String VAN_MESSAGE = "@vanMsg";
  static const String BUYER_NAME = "@buyerName";
  static const String VAN_PRINT_MESSAGE = "@vanPrintMsg";
  static const String TRANSACTION_AMOUNT = "@transAmt";
  static const String TAX = "@tax";
  static const String TIP = "@tip";
  static const String TIP_TAX = "@tipTax";
  static const String TOTAL_AMOUNT = "@totAmt";
  static const String RECEIVED_AMOUNT = "@recvAmt";
  static const String CHANGED_AMOUNT = "@changedAmt";
  static const String RECEIPT_TITLE = "@receiptTitle";
  static const String RECEIPT_SUB_TITLE = "@receiptSubTitle";
  static const String RECEIPT_NUMBER = "@receiptNum";
  static const String TRANSACTION_TYPE = "@trType";
  static const String TRANSACTION_CODE = "@trCode";
  static const String INSTALLMENT = "@installment";
  static const String ITEM_LIST = "@itemList";
  static const String COMPANY_NAME = "@companyName";
  static const String COMPANY_ADDRESS = "@companyAddress";
  static const String CHECK_NUMBER = "@checkNumber";
  static const String TABLE_NAME = "@tableName";

//    static const String SERVER_NAME = "@serverName";
  static const String SUB_TOTAL = "@subTotal";
  static const String AMOUNT_DUE = "@amountDue";
  static const String ORDER_AMOUNT = "@orderAmt"; //주문금액
  static const String MENU_DISCOUNT = "@menuDiscount"; //메뉴할인금액
  static const String ORDER_DISCOUNT = "@orderDiscount"; //주문할인금액
  static const String ORDER_TOTAL_AMOUNT =
      "@orderTotAmt"; //주문합계금액 (ORDER_AMOUNT - TOTAL_DISCOUNT)
  static const String TOTAL_DISCOUNT =
      "@totDiscount"; //할인적용된 총 결제금액 (MENU_DISCOUNT + ORDER_DISCOUNT)
  static const String ORDER_TIME = "@orderTime";
  static const String PAYMENT_TIME = "@paymentTime";
  static const String EMPLOYEE_NAME = "@employeeName";
  static const String FOOTER = "@footer";
  static const String ISSUE_DATE = "@issueDate";
  static const String CHECK_DATE = "@checkDate";
  static const String ISSUE_AMOUNT = "@issueAmt";
  static const String SEARCH_RESULT = "@searchResult";
  static const String CARD_COMPANY_NAME = "@ctName";
  static const String SIGN_IN_TIME = "@signInTime";
  static const String CLOSING_TIME = "@closingTime";
  static const String CASHIER = "@cashier";
  static const String ITEM_SALES_COUNT = "@itemSalesCount";
  static const String ITEM_SALES_AMOUNT = "@itemSalesAmount";
  static const String CASH_COUNT = "@cashCount";
  static const String CASH_AMOUNT = "@cashAmt";
  static const String CARD_COUNT = "@cardCount";
  static const String CARD_AMOUNT = "@cardAmt";
  static const String MYD_COUNT = "@mydCount";
  static const String MYD_AMOUNT = "@mydAmt";
  static const String TOOK_COUNT = "@tookCount";
  static const String TOOK_AMOUNT = "@tookAmt";
  static const String KIWIPG_COUNT = "@kiwipgCount";
  static const String KIWIPG_AMOUNT = "@kiwipgAmt";
  static const String UNIONPAY_COUNT = "@unionpayCount";
  static const String UNIONPAY_AMOUNT = "@unionpayAmt";
  static const String SMARTPAY_COUNT = "@smartpayCount";
  static const String SMARTPAY_AMOUNT = "@smartpayAmt";
  static const String COUPON_COUNT = "@couponCount";
  static const String COUPON_AMOUNT = "@couponAmt";
  static const String CASH_OUT_COUNT = "@cashOutCount";
  static const String CASH_OUT_AMOUNT = "@cashOutAmt";
  static const String CASH_IN_COUNT = "@cashInCount";
  static const String CASH_IN_AMOUNT = "@cashInAmt";
  static const String SETTLEMENT_AMOUNT = "@settlementAmt";
  static const String POS_NAME = "@posName";
  static const String BUSINESS_DATE = "@businessDate";
  static const String START_DATE = "@sDate";
  static const String END_DATE = "@eDate";
  static const String TERMINAL_ID = "@tid";
  static const String KKM_ID = "@kkmId";
  static const String STORE_NAME = "@storeName";
  static const String SECTION_ALL_LIST = "@sectionAllList";
  static const String MANG_CANCEL_LIST = "@mangCancelList";
  static const String TOTAL_SUM_LIST = "@totalSumList";
  static const String PURCHASE_NAME = "@purchaseName";
  static const String APPROVAL_COUNT = "@approvalCnt";
  static const String APPROVAL_AMOUNT = "@approvalAmt";
  static const String CANCEL_COUNT = "@cancelCnt";
  static const String CANCEL_AMOUNT = "@cancelAmt";
  static const String SUM_COUNT = "@sumCnt";
  static const String SUM_AMOUNT = "@sumAmt";
  static const String SECTION_NAME = "@name";
  static const String TOTAL_COUNT = "@totalCnt";
  static const String REG_INFO = "@regInfo";
  static const String EMP_DEPARTMENT = "@empDepartment";
  static const String EMP_NUMBER = "@empNumber";
  static const String EMP_POSITION = "@empPosition";
  static const String EMP_NAME = "@empName";
  static const String MEMO = "@memo";
  static const String PAGER_NUMBER = "@pagerNumber";
  static const String APPROVAL_DATE_PRI_PTN = "@approvalDatePriPtn";
  static const String SELF_ORDER_NUMBER = "@selfOrderNumber";

  // CRM  only
  static const String INN_NO = "@innNo";
  static const String CRM_SERIAL = "@crmSerial";
  static const String PAYMENT_NAME = "@paymentName";
  static const String TAX_NAME = "@taxName";

  static const String MAX_CHARACTER_DEFAULT = "32";
}

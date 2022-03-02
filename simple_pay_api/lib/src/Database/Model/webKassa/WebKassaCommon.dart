class WebKassaCommon {
  static final WebKassaCommon _singleton = WebKassaCommon._internal();

  factory WebKassaCommon() => _singleton;

  WebKassaCommon._internal();
}

class WEB_KASSA_API {
  static const AUTHORIZATION = const WEB_KASSA_API._internal(
      0, "AuthCredentialsRequest", "TokenResponse", "Authorize");
  static const FDO_TOKEN_CHANGE = const WEB_KASSA_API._internal(
      1,
      "CashboxChangeToken",
      "CashboxChangeTokenResponse",
      "Cashbox/ChangeToken");
  static const CHECK_PROCESSING = const WEB_KASSA_API._internal(
      2, "CheckOperationRequest", "CheckOperationResponse", "Check");
  static const CASH_DEPOSIT_AND_WITHDRAWAL = const WEB_KASSA_API._internal(
      3, "MoneyOperationRequest", "MoneyOperationResponse", "MoneyOperation");
  static const END_OF_A_SHIFT = const WEB_KASSA_API._internal(
      4, "ZreportRequest", "ZXReportResponse", "ZReport");
  static const X_REPORT = const WEB_KASSA_API._internal(
      5, "XreportRequest", "ZXReportResponse", "XReport");
  static const CONTROL_TAPE_PER_SHIFT = const WEB_KASSA_API._internal(
      6, "ControlTapeRequest", "ControlTapeResponse", "Reports/ControlTape");
  static const GETTING_THE_LIST_OF_USERS_CASH_REGISTER =
      const WEB_KASSA_API._internal(
          7, "Cashboxes", "CashboxesResponse", "Cashboxes");
  static const GETTING_THE_LIST_OF_CASH_REGISTER_SHIFT =
      const WEB_KASSA_API._internal(8, "ShiftHistoryRequest",
          "ShiftHistoryResponse", "Cashbox/ShiftHistory");
  static const GETTING_THE_LIST_OF_CASHIERS = const WEB_KASSA_API._internal(
      9, "EmployeeListRequest", "EmployeeListResponse", "Employee/List");
  static const GETTING_A_CHECK_BY_NUMBER = const WEB_KASSA_API._internal(
      10,
      "HistoryByNumberRequest",
      "HistoryByNumberResponse",
      "Check/HistoryByNumber");
  static const GETTING_BOOK_OF_REFERENCE_UNITS_OF_MEASUREMENT =
      const WEB_KASSA_API._internal(
          11, "RefUnitsRequest", "RefUnitsResponse", "references/RefUnits");

  static const values = [
    AUTHORIZATION,
    FDO_TOKEN_CHANGE,
    CHECK_PROCESSING,
    CASH_DEPOSIT_AND_WITHDRAWAL,
    END_OF_A_SHIFT,
    X_REPORT,
    CONTROL_TAPE_PER_SHIFT,
    GETTING_THE_LIST_OF_USERS_CASH_REGISTER,
    GETTING_THE_LIST_OF_CASH_REGISTER_SHIFT,
    GETTING_THE_LIST_OF_CASHIERS,
    GETTING_A_CHECK_BY_NUMBER,
    GETTING_BOOK_OF_REFERENCE_UNITS_OF_MEASUREMENT,
  ];
  final int code;
  final String request;
  final String response;
  final String url;

  const WEB_KASSA_API._internal(
      this.code, this.request, this.response, this.url);

  int getCode() {
    return code;
  }

  String getRequest() {
    return request;
  }

  String getResponse() {
    return response;
  }

  String getUrl() {
    return url;
  }
}

class OPERATION_TYPE {
  static const PURCHASE = OPERATION_TYPE._internal(0);
  static const RETURN_OF_PURCHASE = OPERATION_TYPE._internal(1);
  static const SALE = OPERATION_TYPE._internal(2);
  static const RETURN_OF_SALE = OPERATION_TYPE._internal(3);

  static const values = [PURCHASE, RETURN_OF_PURCHASE, SALE, RETURN_OF_SALE];
  final int code;

  const OPERATION_TYPE._internal(this.code);

  int getCode() {
    return code;
  }
}

class WebKassaCommon_PAYMENT_TYPE {
  static const CASH = WebKassaCommon_PAYMENT_TYPE._internal(0);
  static const PAYMENT_CARD = WebKassaCommon_PAYMENT_TYPE._internal(1);
  static const CREDIT_PAYMENT = WebKassaCommon_PAYMENT_TYPE._internal(2);
  static const PAYMENT_BY_PACKAGING = WebKassaCommon_PAYMENT_TYPE._internal(3);
  static const values = [
    CASH,
    PAYMENT_CARD,
    CREDIT_PAYMENT,
    PAYMENT_BY_PACKAGING
  ];
  final int code;

  const WebKassaCommon_PAYMENT_TYPE._internal(this.code);

  int getCode() {
    return code;
  }

  static WebKassaCommon_PAYMENT_TYPE getType(int? code) {
    for (WebKassaCommon_PAYMENT_TYPE i in values) {
      if (i.getCode() == (code)) {
        return i;
      }
    }
    return PAYMENT_CARD;
  }
}

class CASH_TRANSACTION_TYPE {
  static const DEPOSIT = CASH_TRANSACTION_TYPE._internal(0);
  static const WITHDRAWAL = CASH_TRANSACTION_TYPE._internal(1);
  static const values = [DEPOSIT, WITHDRAWAL];
  final int code;

  const CASH_TRANSACTION_TYPE._internal(this.code);

  int getCode() {
    return code;
  }
}

class TAX_TYPE {
  static const WITHOUT_TAX = TAX_TYPE._internal(0);
  static const VAT = TAX_TYPE._internal(100);
  static const values = [WITHOUT_TAX, VAT];
  final _code;

  int getCode() => _code;

  const TAX_TYPE._internal(this._code);
}

class CASHBOX_CURRENT_STATUS {
  static const Created = CASHBOX_CURRENT_STATUS._internal(0);
  static const Active = CASHBOX_CURRENT_STATUS._internal(1);
  static const BLOCKED_BY_FDO = CASHBOX_CURRENT_STATUS._internal(2);
  static const DATA_INTEGRITY_VIOLATED = CASHBOX_CURRENT_STATUS._internal(3);
  static const BLOCKED_BY_TAX_INSPECTOR = CASHBOX_CURRENT_STATUS._internal(4);
  static const DEREGISTERED = CASHBOX_CURRENT_STATUS._internal(5);
  static const values = [
    Created,
    Active,
    BLOCKED_BY_FDO,
    DATA_INTEGRITY_VIOLATED,
    BLOCKED_BY_TAX_INSPECTOR,
    DEREGISTERED
  ];
  final _code;

  int getCode() => _code;

  const CASHBOX_CURRENT_STATUS._internal(this._code);
}

class ROUND_TYPE {
  static const WITHOUT_ROUNDING = ROUND_TYPE._internal(0);
  static const TOTAL_ROUNDING = ROUND_TYPE._internal(1);
  static const POSITION_ROUNDING = ROUND_TYPE._internal(2);
  static const values = [WITHOUT_ROUNDING, TOTAL_ROUNDING, POSITION_ROUNDING];
  final _code;

  int getCode() => _code;

  const ROUND_TYPE._internal(this._code);
}

class TICKET_MODIFIERS_TYPE {
  static const DISCOUNT = TICKET_MODIFIERS_TYPE._internal(1);
  static const MARKUP = TICKET_MODIFIERS_TYPE._internal(2);
  static const values = [DISCOUNT, MARKUP];
  final _code;

  int getCode() => _code;

  const TICKET_MODIFIERS_TYPE._internal(this._code);
}

class OFD_CODE {
  static const KAZAKHTELECOM = OFD_CODE._internal(1);
  static const TRANSTELECOM = OFD_CODE._internal(2);
  static const values = [KAZAKHTELECOM, TRANSTELECOM];
  final _code;

  int getCode() => _code;

  const OFD_CODE._internal(this._code);
}

class RETURN_ERROR_CODES {
  static const UNKNOWN_ERROR = RETURN_ERROR_CODES._internal(-1);
  static const INVALID_LOGIN_OR_PASSWORD = RETURN_ERROR_CODES._internal(1);
  static const SESSION_EXPIRED = RETURN_ERROR_CODES._internal(2);
  static const USER_NOT_AUTHORIZED = RETURN_ERROR_CODES._internal(3);
  static const NO_ACCESS_TO_OPERATION = RETURN_ERROR_CODES._internal(4);
  static const NO_ACCESS_TO_CASH_REGISTER = RETURN_ERROR_CODES._internal(5);
  static const CASH_REGISTER_NOT_FOUND = RETURN_ERROR_CODES._internal(6);
  static const CASH_REGISTER_IS_BLOCKED = RETURN_ERROR_CODES._internal(7);
  static const NOT_ENOUGH_AMOUNT_TO_WITHDRAW = RETURN_ERROR_CODES._internal(8);
  static const DATA_VALIDATION_ERROR = RETURN_ERROR_CODES._internal(9);
  static const CASH_REGISTER_NOT_ACTIVATED = RETURN_ERROR_CODES._internal(10);
  static const SHIFT_DURATION_EXCEEDS_24_HOURS =
      RETURN_ERROR_CODES._internal(11);
  static const SHIFT_IS_ALREADY_ENDED = RETURN_ERROR_CODES._internal(12);
  static const NO_OPEN_SHIFT_FOUND = RETURN_ERROR_CODES._internal(13);
  static const REPETITIVE_CODE_OF_SOURCE_SYSTEM =
      RETURN_ERROR_CODES._internal(14);
  static const SHIFT_NOT_FOUND = RETURN_ERROR_CODES._internal(15);
  static const CHECK_NO = RETURN_ERROR_CODES._internal(16);
  static const TIME_OF_OPERATION_IN_OFFLINE_MODE_EXCEEDS_72_HOURS =
      RETURN_ERROR_CODES._internal(18);
  static const THIS_SHIFT_IS_OPEN = RETURN_ERROR_CODES._internal(1014);

  static const values = [
    UNKNOWN_ERROR,
    INVALID_LOGIN_OR_PASSWORD,
    SESSION_EXPIRED,
    USER_NOT_AUTHORIZED,
    NO_ACCESS_TO_OPERATION,
    NO_ACCESS_TO_CASH_REGISTER,
    CASH_REGISTER_NOT_FOUND,
    CASH_REGISTER_IS_BLOCKED,
    NOT_ENOUGH_AMOUNT_TO_WITHDRAW,
    DATA_VALIDATION_ERROR,
    CASH_REGISTER_NOT_ACTIVATED,
    SHIFT_DURATION_EXCEEDS_24_HOURS,
    SHIFT_IS_ALREADY_ENDED,
    NO_OPEN_SHIFT_FOUND,
    REPETITIVE_CODE_OF_SOURCE_SYSTEM,
    SHIFT_NOT_FOUND,
    CHECK_NO,
    TIME_OF_OPERATION_IN_OFFLINE_MODE_EXCEEDS_72_HOURS,
    THIS_SHIFT_IS_OPEN
  ];
  final _code;

  int getCode() => _code;

  const RETURN_ERROR_CODES._internal(this._code);
}

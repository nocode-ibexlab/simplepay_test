import 'dart:collection';

import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Model/webKassa/WebKassaCommon.dart';
import 'package:simple_pay_api/src/Database/Util/LangCode.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';

import 'PrintDataMapIF.dart';

class MapUtils {
  static final MapUtils _singleton = MapUtils._internal();

  factory MapUtils() => _singleton;

  MapUtils._internal();

  static String? getString(final Map map, final Object key) {
    if (map != null) {
      Object? answer = map[key];
      if (answer != null) {
        return answer.toString();
      }
    }
    return null;
  }

  static bool? getbool(final Map map, final Object key) {
    if (map != null) {
      Object? answer = map[key];
      if (answer != null) {
        if (answer is bool) {
          return answer;
        } else if (answer is String) {
          String s = answer;
          return (s == "1") ? true : false;
        } else if (answer is num) {
          num n = answer;
          return (n.toInt() != 0) ? true : false;
        }
      }
    }
    return null;
  }

  static Object? getObject(Map map, Object key, [Object? defaultValue]) {
    if (map != null) {
      Object? answer = map[key];
      if (answer != null) {
        return answer;
      }
    }
    return defaultValue;
  }
}

class StringBuilder {
  late String str;
  static final StringBuilder _singleton = StringBuilder._internal();

  factory StringBuilder() => _singleton;

  StringBuilder._internal() {
    str = "";
  }

  StringBuilder append(String _str) {
    str += _str;
    return this;
  }

  String toString() {
    return str;
  }
}

class CrmPrintMap {
  static final CrmPrintMap _singleton = CrmPrintMap._internal();

  factory CrmPrintMap() => _singleton;

  CrmPrintMap._internal();

  static final String TAG = "CrmPrintMap";

  static String DOT_LINE_1 = "-------------------------\n";
  static String DOT_LINE_2 = "=========================\n"; //================
  static String TAB_1 = "   ";
  static String TAB_2 = "     ";

  static String parseTicketMap(Map<String, Object?>? report) {
    if (report == null) {
      return "";
    }
    StringBuilder contents = new StringBuilder();

    bool isCopy = MapUtils.getbool(report, PrintDataMapIF.IS_COPY)!;
    if (isCopy) {
      contents.append(BaseBL.receiptLang[LangCode.copy]!);
      contents.append("\n");
    }

    contents.append(MapUtils.getString(report, PrintDataMapIF.STORE_NAME)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.bin_inn]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.BRN_NUMBER)!);
    contents.append("\n");
    contents.append(DOT_LINE_2);

    contents
        .append(BaseBL.receiptLang[LangCode.shift]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.SHIFT_NO)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.check_order_number]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CHECK_ORDER_NUMBER)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.cashier]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.EMPLOYEE_NAME)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.check_no2]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CHECK_NUMBER)!);
    contents.append("\n");
    contents
        .append(MapUtils.getString(report, PrintDataMapIF.TRANSACTION_TYPE)!);
    contents.append("\n");
    contents.append(DOT_LINE_2);

    Object? orderItemList = report[PrintDataMapIF.ITEM_LIST];
    if (orderItemList != null) {
      for (HashMap<String, String?> item
          in orderItemList as List<HashMap<String, String?>>) {
        contents.append(
            MapUtils.getString(item, PrintDataMapIF.ITEM_PRODUCT_NAME)!);
        contents.append("\n");
        contents
            .append(TAB_1)
            .append(MapUtils.getString(item, PrintDataMapIF.ITEM_QTY)!);
        contents.append("  x  ");
        contents.append(MapUtils.getString(item, PrintDataMapIF.ITEM_PRICE)!);
//                contents.append("\n");
        contents.append(TAB_2);
        contents.append(MapUtils.getString(item, PrintDataMapIF.ITEM_AMOUNT)!);
        contents.append("\n");

        String? discount =
            MapUtils.getString(item, PrintDataMapIF.ITEM_DISCOUNT);

        String? markup = MapUtils.getString(item, PrintDataMapIF.ITEM_MARKUP);

        if (discount != null) {
          contents
              .append(TAB_1)
              .append(BaseBL.receiptLang[LangCode.discount]!)
              .append(" : ")
              .append(discount);
          contents.append("\n");
        }

        if (markup != null) {
          contents
              .append(TAB_1)
              .append(BaseBL.receiptLang[LangCode.mark_up]!)
              .append(" : ")
              .append(markup);
          contents.append("\n");
        }

        contents
            .append(TAB_1)
            .append(BaseBL.receiptLang[LangCode.cost]!)
            .append(" : ")
            .append(
                MapUtils.getString(item, PrintDataMapIF.ITEM_TOTAL_AMOUNT)!);
        contents.append("\n");
        contents.append(DOT_LINE_1);
      }

      String? ORDER_DISCOUNT =
          MapUtils.getString(report, PrintDataMapIF.ORDER_DISCOUNT);
      if (ORDER_DISCOUNT != null) {
        contents
            .append(MapUtils.getString(
                report, PrintDataMapIF.ORDER_DISCOUNT_SUBJECT)!)
            .append(" : ")
            .append(ORDER_DISCOUNT);
        contents.append("\n");
      }
      String? ORDER_MARKUP =
          MapUtils.getString(report, PrintDataMapIF.ORDER_MARKUP);
      if (ORDER_MARKUP != null) {
        contents
            .append(MapUtils.getString(
                report, PrintDataMapIF.ORDER_MARKUP_SUBJECT)!)
            .append(" : ")
            .append(ORDER_MARKUP);
        contents.append("\n");
      }
    }
    contents.append(DOT_LINE_2);

    String? PAYMENT_CARD =
        MapUtils.getString(report, PrintDataMapIF.PAYMENT_CARD_AMOUNT);
    if (PAYMENT_CARD != null) {
      contents
          .append(BaseBL.receiptLang[LangCode.bank_card]!)
          .append(" : ")
          .append(PAYMENT_CARD);
      contents.append("\n");
    }
    String? CREDIT_PAYMENT =
        MapUtils.getString(report, PrintDataMapIF.PAYMENT_CREDIT_AMOUNT);
    if (CREDIT_PAYMENT != null) {
      contents
          .append(BaseBL.receiptLang[LangCode.credit_payment]!)
          .append(" : ")
          .append(CREDIT_PAYMENT);
      contents.append("\n");
    }
    String? PAYMENT_BY_PACKAGING =
        MapUtils.getString(report, PrintDataMapIF.PAYMENT_TARE_AMOUNT);
    if (PAYMENT_BY_PACKAGING != null) {
      contents
          .append(BaseBL.receiptLang[LangCode.payment_packaging]!)
          .append(" : ")
          .append(PAYMENT_BY_PACKAGING);
      contents.append("\n");
    }
    String? CASH =
        MapUtils.getString(report, PrintDataMapIF.PAYMENT_CASH_AMOUNT);
    if (CASH != null) {
      contents
          .append(BaseBL.receiptLang[LangCode.cash]!)
          .append(" : ")
          .append(CASH);
      contents.append("\n");
      String? CHANGED_AMOUNT =
          MapUtils.getString(report, PrintDataMapIF.CHANGED_AMOUNT);

      if (CHANGED_AMOUNT != null) {
        contents
            .append(BaseBL.receiptLang[LangCode.change2]!)
            .append(" : ")
            .append(CHANGED_AMOUNT);
        contents.append("\n");
      }
    }

    String? TOTAL_DISCOUNT =
        MapUtils.getString(report, PrintDataMapIF.TOTAL_DISCOUNT);
    if (TOTAL_DISCOUNT != null) {
      contents
          .append(BaseBL.receiptLang[LangCode.discount]!)
          .append(" : ")
          .append(TOTAL_DISCOUNT);
      contents.append("\n");
    }

    String? TOTAL_MARKUP =
        MapUtils.getString(report, PrintDataMapIF.TOTAL_MARKUP);
    if (TOTAL_MARKUP != null) {
      contents
          .append(BaseBL.receiptLang[LangCode.mark_up]!)
          .append(" : ")
          .append(TOTAL_MARKUP);
      contents.append("\n");
    }

    contents
        .append(BaseBL.receiptLang[LangCode.total_amount]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.TOTAL_AMOUNT)!);
    contents.append("\n");

    if (MapUtils.getString(report, PrintDataMapIF.IS_TAXFREE_STORE) ==
        (false.toString())) {
      contents
          .append(BaseBL.receiptLang[LangCode.include_vat]!)
          .append(" ")
          .append(MapUtils.getString(report, PrintDataMapIF.TAX_PERCENT)!)
          .append("% : ")
          .append(MapUtils.getString(report, PrintDataMapIF.TAX)!);
      contents.append("\n");
    }

    contents.append(DOT_LINE_2);

    contents
        .append(BaseBL.receiptLang[LangCode.fiscal_sign]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CHECK_NUMBER)!);
    contents.append("\n");

    contents
        .append(BaseBL.receiptLang[LangCode.time]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.PAYMENT_TIME)!);
    contents.append("\n");

    contents
        .append(MapUtils.getString(report, PrintDataMapIF.CASHBOX_ADDRESS)!);
    contents.append("\n");

    contents
        .append(BaseBL.receiptLang[LangCode.fiscal_data_operator]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.OFD_NAME)!);
    contents.append("\n");

    contents
        .append(BaseBL.receiptLang[LangCode.check_receipt_go_website]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.OFD_HOST)!);
    contents.append("\n");

    if (MapUtils.getString(report, PrintDataMapIF.OFFLINE_MODE) ==
        (true.toString())) {
      contents.append(BaseBL.receiptLang[LangCode.receipt_printed_offline]!);
      contents.append("\n");
    }
    contents.append(DOT_LINE_2);
    contents.append(BaseBL.receiptLang[LangCode.fiscal_check_fp]!);
    contents.append("\n");
    contents
        .append("TicketUrl")
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.TICKET_URL)!);
    contents.append("\n");
    contents.append(BaseBL.receiptLang[LangCode.ink_ofd]!).append(" : ").append(
        MapUtils.getString(report, PrintDataMapIF.CASHBOX_IDENTITY_NUMBER)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.kkm_code_kgd]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.CASHBOX_REGISTRATION_NUMBER)!);
    contents.append("\n");
    contents.append(BaseBL.receiptLang[LangCode.znm]!).append(" : ").append(
        MapUtils.getString(report, PrintDataMapIF.CASHBOX_UNIQUE_NUMBER)!);
    contents.append("\n");
    contents.append("WEBKASSA.KZ");
    contents.append("\n");

//
//        MapUtils.getString(sum, CrmConstants.MONEY_BILLS)
//
//
//        contents.append(BaseBL.lang[LangCode.bin_inn]).append(" : ")
//            .append(MapUtils.getString(report, CrmConstants.ORG_REG_INFO_INN)).append("\n");

    Log.d(TAG, "Receipt = \n" + contents.toString());
    return contents.toString();
  }

  static String parseReportMap(Map<String, Object?>? report) {
    if (report == null) {
      return "";
    }
    StringBuilder contents = new StringBuilder();

    contents.append(MapUtils.getString(report, PrintDataMapIF.TAX_PAYER_NAME)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.bin_inn]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.BRN_NUMBER)!);
    contents.append("\n");
    contents.append(DOT_LINE_2);

    contents.append(BaseBL.receiptLang[LangCode.z_report]!);
    contents.append("\n");

    contents
        .append("Report No.")
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.REPORT_NUMBER)!);
    contents.append("\n");
    contents
        .append("Cashier code")
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CASHIER_CODE)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.shift_number]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.SHIFT_NO)!);
    contents.append("\n");
    contents.append(MapUtils.getString(report, PrintDataMapIF.START_ON)!);
    contents.append("~");
    contents.append(MapUtils.getString(report, PrintDataMapIF.CLOSE_ON)!);
    contents.append("\n");
    contents.append("\n");
    contents.append("НЕОБНУЛЯЕМАЯ СУММА НА НАЧАЛО СМЕНЫ");
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_sell]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_START_SELL)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_buy]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_START_BUY)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_sell_return]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_START_RETURN_SELL)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_buy_return]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_START_RETURN_BUY)!);
    contents.append("\n");
    contents.append("\n");
    contents.append("Количество");
    contents.append("\n");
    HashMap<String, Object?>? sell =
        report[PrintDataMapIF.OPERATION_TYPE_SELL] as HashMap<String, Object?>?;
    makeXZReportPayment(
        contents, sell, BaseBL.receiptLang[LangCode.operation_sell]);
    HashMap<String, Object?>? buy =
        report[PrintDataMapIF.OPERATION_TYPE_BUY] as HashMap<String, Object?>?;
    makeXZReportPayment(
        contents, buy, BaseBL.receiptLang[LangCode.operation_buy]);
    HashMap<String, Object?>? sell_return =
        report[PrintDataMapIF.OPERATION_TYPE_RETURN_SELL]
            as HashMap<String, Object?>?;
    makeXZReportPayment(contents, sell_return,
        BaseBL.receiptLang[LangCode.operation_sell_return]);
    HashMap<String, Object?>? buy_return =
        report[PrintDataMapIF.OPERATION_TYPE_RETURN_BUY]
            as HashMap<String, Object?>?;
    makeXZReportPayment(contents, buy_return,
        BaseBL.receiptLang[LangCode.operation_buy_return]);

    contents
        .append(BaseBL.receiptLang[LangCode.deposit]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.PUT_MONEY_SUM)!);
    contents.append("\n");

    contents
        .append(BaseBL.receiptLang[LangCode.withdrawal]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.TAKE_MONEY_SUM)!);
    contents.append("\n");
    contents
        .append(BaseBL.receiptLang[LangCode.cash_drawer_balance]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.SUM_IN_CASHBOX)!);
    contents.append("\n");

    contents.append("НЕОБНУЛЯЕМАЯ СУММА НА КОНЕЦ СМЕНЫ");
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_sell]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_END_SELL)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_buy]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_END_BUY)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_sell_return]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_END_RETURN_SELL)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(BaseBL.receiptLang[LangCode.operation_buy_return]!)
        .append(" : ")
        .append(MapUtils.getString(
            report, PrintDataMapIF.NON_NULLABLE_TYPE_END_RETURN_BUY)!);
    contents.append("\n");

    contents
        .append("Контрольное значение")
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CONTROL_SUM)!);
    contents.append("\n");

    contents
        .append("Количество документов сформированных за смену")
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.REPORT_NUMBER)!);
    contents.append("\n");
    contents
        .append("Сформировано оператором фискальных данных")
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.OFD_NAME)!);
    contents.append("\n");

    contents.append(DOT_LINE_2);
    contents
        .append(TAB_1)
        .append(TAB_2)
        .append(BaseBL.receiptLang[LangCode.ink_ofd]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CASHBOX_IN)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(TAB_2)
        .append(BaseBL.receiptLang[LangCode.kkm_code_kgd]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CASHBOX_RN)!);
    contents.append("\n");
    contents
        .append(TAB_1)
        .append(TAB_2)
        .append(BaseBL.receiptLang[LangCode.znm]!)
        .append(" : ")
        .append(MapUtils.getString(report, PrintDataMapIF.CASHBOX_SN)!);
    contents.append("\n");
    contents.append(DOT_LINE_2);

    contents.append(TAB_1).append(TAB_2).append("*** Конец отчета ***");
    contents.append("\n");

    Log.d(TAG, "Report = \n" + contents.toString());
    return contents.toString();
  }

  static void makeXZReportPayment(StringBuilder contents,
      HashMap<String, Object?>? data, String? operationType) {
    if (data != null) {
      contents
          .append(operationType!)
          .append(TAB_1)
          .append(TAB_2)
          .append(MapUtils.getString(data, PrintDataMapIF.OPERATION_COUNT)!)
          .append(TAB_1)
          .append(TAB_2)
          .append(MapUtils.getString(data, PrintDataMapIF.OPERATION_TAKEN)!);
      contents.append("\n");
      String? change =
          MapUtils.getString(data, PrintDataMapIF.OPERATION_CHANGE);
      String? discount =
          MapUtils.getString(data, PrintDataMapIF.OPERATION_DISCOUNT);
      String? markup =
          MapUtils.getString(data, PrintDataMapIF.OPERATION_MARKUP);
      String? vat = MapUtils.getString(data, PrintDataMapIF.OPERATION_VAT);
      String? taken = MapUtils.getString(data, PrintDataMapIF.OPERATION_TAKEN);
      List<HashMap<String, String>> list =
          MapUtils.getObject(data, PrintDataMapIF.PAYMENT_LIST)
              as List<HashMap<String, String>>;
      for (HashMap<String, String> item in list) {
        String type = MapUtils.getString(item, PrintDataMapIF.PAYMENT_TYPE)!;
        String? sum = MapUtils.getString(item, PrintDataMapIF.PAYMENT_SUM);

        switch (WebKassaCommon_PAYMENT_TYPE.getType(int.parse(type))) {
          case WebKassaCommon_PAYMENT_TYPE.CASH:
            contents
                .append(TAB_1)
                .append(BaseBL.receiptLang[LangCode.cash]!)
                .append(" : ")
                .append(sum!);
            contents.append("\n");
            break;
          case WebKassaCommon_PAYMENT_TYPE.PAYMENT_CARD:
            contents
                .append(TAB_1)
                .append(BaseBL.receiptLang[LangCode.bank_card]!)
                .append(" : ")
                .append(sum!);
            contents.append("\n");
            break;
          case WebKassaCommon_PAYMENT_TYPE.CREDIT_PAYMENT:
            contents
                .append(TAB_1)
                .append(BaseBL.receiptLang[LangCode.credit_payment]!)
                .append(" : ")
                .append(sum!);
            contents.append("\n");
            break;
          case WebKassaCommon_PAYMENT_TYPE.PAYMENT_BY_PACKAGING:
            contents
                .append(TAB_1)
                .append(BaseBL.receiptLang[LangCode.payment_packaging]!)
                .append(" : ")
                .append(sum!);
            break;
        }
      }
      if (taken != ("0")) {
        contents
            .append(TAB_1)
            .append(BaseBL.receiptLang[LangCode.received]!)
            .append(" : ")
            .append(MapUtils.getString(data, PrintDataMapIF.OPERATION_TAKEN)!);
        contents.append("\n");
      }

      if (change != ("0")) {
        contents
            .append(TAB_1)
            .append(BaseBL.receiptLang[LangCode.change2]!)
            .append(" : ")
            .append(change!);
        contents.append("\n");
      }

      if (discount != ("0")) {
        contents
            .append(TAB_1)
            .append(BaseBL.receiptLang[LangCode.discount]!)
            .append(" : ")
            .append(discount!);
        contents.append("\n");
      }

      if (markup != ("0")) {
        contents
            .append(TAB_1)
            .append(BaseBL.receiptLang[LangCode.mark_up]!)
            .append(" : ")
            .append(markup!);
        contents.append("\n");
      }

      if (vat != ("0")) {
        contents
            .append(TAB_1)
            .append(BaseBL.receiptLang[LangCode.vat]!)
            .append(" : ")
            .append(vat!);
        contents.append("\n");
      }
    } else {
      contents
          .append(operationType!)
          .append(TAB_1)
          .append(TAB_2)
          .append(0.toString())
          .append(TAB_1)
          .append(TAB_2)
          .append(0.toString());
      contents.append("\n");
    }
  }
}

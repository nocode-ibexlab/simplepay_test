import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'SaleBL.dart';

class CashierOutReportBL extends BaseBL {
  static final CashierOutReportBL _singleton = CashierOutReportBL._internal();

  factory CashierOutReportBL() => _singleton;

  CashierOutReportBL._internal() {
    _basBL = BasBL();
    _saleBL = SaleBL();
  }

  late BasBL _basBL;
  late SaleBL _saleBL;

  //////////////////////////////////////////////////
  // subview A
  //////////////////////////////////////////////////

  Future<double> subview_a_SUM_ByPaymentSection(String paymentSection) async {
    List<SalesAccountHistory> saleACList;
    try {
      saleACList = await _saleBL.getSaleACListByPaymentSection(paymentSection);

      if ((saleACList != null) && (saleACList.length > 0)) {
        MonetaryCalculator cal = MonetaryCalculator();
        for (SalesAccountHistory saleAC in saleACList) {
          bool include = await TenderConstants.includeSalesResult(saleAC);
          if (include)
            cal.add(saleAC.getTotalAmount() *
                TenderConstants_APRVL_TP_CD.getType(
                        saleAC.getApprovalTypeCode())!
                    .getMSign()!);
        }
        return cal.getValue();
      }
    } catch (e) {
      print('Exception: $e');
    } // cash

    return MonetaryCalculator(0).getValue();
  }

  Future<String> subview_a_Count_ByPaymentSection(String paymentSection) async {
    List<SalesAccountHistory> saleACList;
    try {
      saleACList = await _saleBL.getSaleACListByPaymentSection(paymentSection);

      if ((saleACList != null) && (saleACList.length > 0)) {
        String count = saleACList.length.toString();
        return count;
      }
    } catch (e) {
      print('Exception: $e');
    }

    return "0";
  }

  Future<String> subview_a_getCash() async {
    MonetaryCalculator amount = MonetaryCalculator();

    for (TenderConstants_Section section in TenderConstants_Section.allCash()) {
      double sum = await subview_a_SUM_ByPaymentSection(section.getCode());
      amount.add(sum);
    }

    return amount.format();
  }

  Future<String> subview_a_getCashCount() async {
    int count = 0;

    for (TenderConstants_Section section in TenderConstants_Section.allCash()) {
      try {
        String cntString =
            await subview_a_Count_ByPaymentSection(section.getCode());
        count += int.parse(cntString);
      } catch (e) {
        print('Exception: $e');
      }
    }

    return count.toString();
  }

  Future<double> subview_a_getCheck() async {
    return await subview_a_SUM_ByPaymentSection(
        TenderConstants_Section.CHECK.getCode());
  }

  Future<String> subview_a_getCheckCount() async {
    return await subview_a_Count_ByPaymentSection(
        TenderConstants_Section.CHECK.getCode());
  }

  Future<String> subview_a_getCard() async {
    MonetaryCalculator amount = MonetaryCalculator();

    for (TenderConstants_Section section in TenderConstants_Section.allCard()) {
      double sum = await subview_a_SUM_ByPaymentSection(section.getCode());
      amount.add(sum);
    }

    return amount.format();
  }

  Future<String> subview_a_getCardCount() async {
    int count = 0;

    for (TenderConstants_Section section in TenderConstants_Section.allCard()) {
      try {
        String cntString =
            await subview_a_Count_ByPaymentSection(section.getCode());
        count += int.parse(cntString);
      } catch (e) {
        print('Exception: $e');
      }
    }

    return count.toString();
  }

  Future<String> subview_a_getItemSalesAmount() async {
    String commonDate;
    try {
      commonDate = await _basBL.getCommonDate();
      List<SalesHistoryItem>? saleItemList =
          await _saleBL.getSaleItemListByHDate(commonDate);
      if ((saleItemList != null) && (saleItemList.length > 0)) {
        MonetaryCalculator cal = MonetaryCalculator();
        for (SalesHistoryItem saleItem in saleItemList) {
          cal.add(saleItem.getSupplyValue());
        }
        return cal.getValue().toString();
      }
    } catch (e) {
      print('Exception: $e');
    }

    return MonetaryCalculator(0).getValue().toString();
  }
}

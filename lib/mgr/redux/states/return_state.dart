import 'package:simple_pay_flutter/mgr/models/simple_tender_get_sales_history/tender_get_sales_history_res.dart';

class ReturnState {
  final String startDate;
  final String endDate;
  final String receiptNo;
  final SimpleTenderGetSalesHistoryRes simpleTenderGetSalesHistoryRes;

  ReturnState({
    required this.startDate,
    required this.endDate,
    required this.receiptNo,
    required this.simpleTenderGetSalesHistoryRes,
  });

  factory ReturnState.initial() {
    return ReturnState(
      startDate: "",
      endDate: "",
      receiptNo: "",
      simpleTenderGetSalesHistoryRes: SimpleTenderGetSalesHistoryRes(
        salesHistoryId: "",
        totalAmount: 0,
        salesDate: "",
        salesAccountHistory: [],
        items: [],
      ),
    );
  }

  ReturnState copyWith({
    String? startDate,
    String? endDate,
    String? receiptNo,
    SimpleTenderGetSalesHistoryRes? simpleTenderGetSalesHistoryRes,
  }) {
    return ReturnState(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      receiptNo: receiptNo ?? this.receiptNo,
      simpleTenderGetSalesHistoryRes:
          simpleTenderGetSalesHistoryRes ?? this.simpleTenderGetSalesHistoryRes,
    );
  }
}

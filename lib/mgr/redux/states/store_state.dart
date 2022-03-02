import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/models/store/get_cash_in_out_history_res.dart';
import 'package:simple_pay_flutter/mgr/models/store/get_current_shift_res.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

@immutable
class StoreState {
  final double cashBalance;
  final String cashierName;
  final int salesCount;
  final String businessDay; //yyyyMMdd
  final List<StoreCashInOutHistoryRes> cashInOutHistoryRes;
  final StoreGetCurrentShiftRes currentShiftRes;
  final String inOutType;
  final String amount;
  final TextEditingController memoContr;

  StoreState({
    required this.businessDay,
    required this.amount,
    required this.inOutType,
    required this.memoContr,
    required this.cashInOutHistoryRes,
    required this.cashBalance,
    required this.cashierName,
    required this.currentShiftRes,
    required this.salesCount,
  });
  factory StoreState.initial() {
    return StoreState(
        cashInOutHistoryRes: [],
        amount: '0',
        inOutType: "I",
        memoContr: TextEditingController(),
        businessDay: '',
        cashBalance: 0,
        cashierName: "",
        currentShiftRes:
            StoreGetCurrentShiftRes(shiftId: '', shiftStartTime: ''),
        salesCount: 0);
  }

  StoreState copyWith({
    double? cashBalance,
    String? cashierName,
    int? salesCount,
    String? businessDay, //yyyyMMd,
    List<StoreCashInOutHistoryRes>? cashInOutHistoryRes,
    StoreGetCurrentShiftRes? currentShiftRes,
    String? inOutType,
    String? amount,
  }) {
    return StoreState(
      cashBalance: cashBalance ?? this.cashBalance,
      cashierName: cashierName ?? this.cashierName,
      salesCount: salesCount ?? this.salesCount,
      businessDay: businessDay ?? this.businessDay,
      cashInOutHistoryRes: cashInOutHistoryRes ?? this.cashInOutHistoryRes,
      currentShiftRes: currentShiftRes ?? this.currentShiftRes,
      inOutType: inOutType ?? this.inOutType,
      amount: amount ?? this.amount,
      memoContr: memoContr,
    );
  }
}

import 'package:intl/intl.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class EntryWithdrawalState {
  final String startDate;
  final String endDate;
  final String inOutType;
  final double amount;
  final TextEditingController memoContr;

  EntryWithdrawalState({
    required this.startDate,
    required this.endDate,
    required this.inOutType,
    required this.amount,
    required this.memoContr,
  });

  factory EntryWithdrawalState.initial() {
    return EntryWithdrawalState(
      startDate: "",
      endDate: "",
      amount: 0.0,
      inOutType: "",
      memoContr: TextEditingController(),
    );
  }

  EntryWithdrawalState copyWith({
    double? amount,
    String? inOutType,
    String? startDate,
    String? endDate,
  }) {
    return EntryWithdrawalState(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      memoContr: memoContr,
      inOutType: inOutType ?? this.inOutType,
      amount: amount ?? this.amount,
    );
  }
}

import 'package:simple_pay_flutter/presentation/template/base/template.dart';

extension DoubleHelper on double {
  ModelFormatter get getPriceMap =>
      ModelFormatter(currencyFormatter(this), this);
}

extension StringHelper on String {
  String get getDateAndTimeFormat => formatDateTime(this);
  String get getDateOnlyFormat => formatDateTime(this, withTime: false);
}

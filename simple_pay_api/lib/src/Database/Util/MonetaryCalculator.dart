import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:simple_pay_api/src/Util/Format/NumberFormatUtil.dart';

/// Monetary calculation
class MonetaryCalculator {
  /// ROUND_UP : 무조건 올림(0을 제외한 값)
  static const int ROUND_UP = 0;

  /// ROUND_DOWN : 무조건 내림
  static const int ROUND_DOWN = 1;

  /// ROUND_CEILING : 양수인 경우 올림(ROUND_UP), 음수인 경우 내림(ROUND_DOWN)
  static const int ROUND_CEILING = 2;

  /// ROUND_FLOOR : 무조건 내림 (음수일 경우에 무조건 올림)
  static const int ROUND_FLOOR = 3;

  /// ROUND_HALF_UP : 반올림 ( >= 5보다 크거나 같으면 올림/ROUND_UP, 아니면 ROUND_DOWN)
  static const int ROUND_HALF_UP = 4;

  /// ROUND_HALF_DOWN : 반올림 ( >  5보다 크면 올림/ROUND_UP, 아니면 ROUND_DOWN)
  static const int ROUND_HALF_DOWN = 5;

  /// ROUND_HALF_EVEN : 반올림 (버릴 부분의 왼쪽 숫자가 홀수인 경우 ROUND_HALF_UP, 짝수인 경우 ROUND_HALF_DOWN)
  static const int ROUND_HALF_EVEN = 6;
  static const int ROUND_UNNECESSARY = 7;

  static int scale = 2;
  static int roundingMode = ROUND_HALF_UP;

  late Decimal _value;

  MonetaryCalculator([dynamic value]) {
    _value = Decimal.parse(value?.toString() ?? '0');
  }

  MonetaryCalculator setValue([dynamic value]) {
    _value = Decimal.parse(value?.toString() ?? '0');
    return this;
  }

  /// base Value 에서 값을 더한다
  MonetaryCalculator add(dynamic addend) {
    _value += Decimal.parse(addend?.toString() ?? '0');
    return this;
  }

  /// base Value 에서 값을 뺀다
  MonetaryCalculator subtract(dynamic subtrahend) {
    _value -= Decimal.parse(subtrahend?.toString() ?? '0');
    return this;
  }

  /// base Value 에서 값을 곱한다
  MonetaryCalculator multiply(dynamic multiplier) {
    _value *= Decimal.parse(multiplier?.toString() ?? '0');
    return this;
  }

  /// base Value 에서 값을 나눈다
  MonetaryCalculator divide(dynamic divisor) {
    if (divisor == null || divisor == 0) {
      divisor = 1.0;
    }
    _value = (_value / Decimal.parse(divisor?.toString() ?? '1'))
        .toDecimal(scaleOnInfinitePrecision: 10);
    return this;
  }

  /// 저장된 값 반환
  double getValue() {
    var pow = Decimal.parse('10').pow(scale);
    var value = _value * pow;
    var integer = value.truncate();
    var fraction = ((value - integer) * Decimal.fromInt(10)).truncate();
    value = integer +
        _roundingBehavior(integer.toBigInt().toInt() % 2,
            fraction.toBigInt().toInt(), roundingMode);
    _value = (value / pow).toDecimal(scaleOnInfinitePrecision: scale);
    return _value.toDouble();
  }

  Decimal _roundingBehavior(int parityBit, int fraction, int roundingMode) {
    int increment = 0;

    switch (roundingMode) {
      case MonetaryCalculator.ROUND_UNNECESSARY:
        if (fraction != 0) {
          throw FormatException("Rounding necessary");
        }
        break;
      case MonetaryCalculator.ROUND_UP:
        increment = fraction.sign;
        break;
      case MonetaryCalculator.ROUND_DOWN:
        break;
      case MonetaryCalculator.ROUND_CEILING:
        increment = max(fraction.sign, 0);
        break;
      case MonetaryCalculator.ROUND_FLOOR:
        increment = min(fraction.sign, 0);
        break;
      case MonetaryCalculator.ROUND_HALF_UP:
        if (fraction.abs() >= 5) {
          increment = fraction.sign;
        }
        break;
      case MonetaryCalculator.ROUND_HALF_DOWN:
        if (fraction.abs() > 5) {
          increment = fraction.sign;
        }
        break;
      case MonetaryCalculator.ROUND_HALF_EVEN:
        if (fraction.abs() + parityBit > 5) {
          increment = fraction.sign;
        }
        break;
    }

    return Decimal.fromInt(increment);
  }

  double amount() => getValue();

  static double value([double? value]) => MonetaryCalculator(value).getValue();

  /// 문화권의 통화단위 반환
  double getValueCulture() => getValue();

  String format({bool symbol = true}) {
    if (symbol) {
      return CurrencyFormatter.simpleCurrency.format(_value.toDouble());
    } else {
      return CurrencyFormatter.noSymbolCurrency.format(_value.toDouble());
    }
  }

  @override
  String toString() => _value.toString();

  bool isNotZero() => _value != Decimal.zero;
}

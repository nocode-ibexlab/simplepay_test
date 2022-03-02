import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class DefaultNumpad extends StatelessWidget {
  String totalTextNumber;
  ValueChanged onTap;
  double? verticalSpace;

  DefaultNumpad({
    required this.totalTextNumber,
    required this.onTap,
    this.verticalSpace = 24,
  });

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      verticalSpace: verticalSpace,
      children: [
        _customSpacedRowCalculator(
          first: '1',
          second: '2',
          third: '3',
        ),
        _customSpacedRowCalculator(
          first: '4',
          second: '5',
          third: '6',
        ),
        _customSpacedRowCalculator(
          first: '7',
          second: '8',
          third: '9',
        ),
        _customSpacedRowCalculator(
          first: 'C',
          second: '0',
          third: '.',
        ),
      ],
    );
  }

  Widget _customSpacedRowCalculator({
    required String first,
    required String second,
    required String third,
  }) {
    return SpacedRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SecondaryButton(
            onPressed: () {
              _changeTotalNumber(first);
            },
            buttonText: first,
          ),
          SecondaryButton(
            onPressed: () {
              _changeTotalNumber(second);
            },
            buttonText: second,
          ),
          SecondaryButton(
            onPressed: () {
              _changeTotalNumber(third);
            },
            buttonText: third,
          ),
        ]);
  }

  void _changeTotalNumber(String symbol) {
    RegExp regex = RegExp(r'^(?=.*?[0-9])');
    RegExp regex2 = RegExp(r'^(?=.*?[.])');
    String value = totalTextNumber;
    // if(totalTextNumber.length) max length
    if (regex.hasMatch(symbol)) {
      var list = totalTextNumber.split('.');
      if (list.length > 1) {
        if (list[1].length == 2) {
          return;
        }
      }
      if (value.length < 12) {
        if (totalTextNumber != '0') {
          value = '$totalTextNumber$symbol';
        } else if (totalTextNumber == '0') {
          value = symbol;
        }
      }
    } else {
      if (symbol == 'C' && totalTextNumber != '0') {
        value = '0';

        // var list = totalTextNumber.split('');
        // list.removeLast();
        // if (list.isNotEmpty) {
        //   value = list.join('');
        // } else {
        //   value = '0';
        // }
      } else if (symbol == '.') {
        if (!regex2.hasMatch(totalTextNumber)) {
          value = '$totalTextNumber$symbol';
        }
      }
    }
    onTap(value);
  }
}

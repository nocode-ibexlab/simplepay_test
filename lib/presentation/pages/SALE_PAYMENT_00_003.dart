import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

// ? ///////////////////////////////////
// ? This page is duplicate of CALC_00_001 same .
// ! Except it's FOOTER State has to be transferred to CALC_00_001 page.
// ? ///////////////////////////////////

class SALE_PAYMENT_00_003 extends StatefulWidget {
  SALE_PAYMENT_00_003({Key? key}) : super(key: key);

  @override
  State<SALE_PAYMENT_00_003> createState() => _SALE_PAYMENT_00_003State();
}

class _SALE_PAYMENT_00_003State extends State<SALE_PAYMENT_00_003> {
  String totalTextNumber = '10';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showLeadingBack: true,
              titleText: title,
              paddingTop: 47,
              paddingHorizontal: 32,
              paddingBottom: 56,
              child: SpacedColumn(
                verticalSpace: 32,
                children: [
                  CustomInputComponent(
                    totalTextNumber: totalTextNumber,
                  ),
                  DefaultNumpad(
                      totalTextNumber: totalTextNumber, onTap: _onNumTap),
                ],
              ),
              footerHeight: 296,
              footer: _buildFooter(),
            ));
  }

  _onNumTap(value) {
    setState(() {
      totalTextNumber = value;
    });
  }

//footer
  Widget _buildFooter() => SpacedColumn(verticalSpace: 24, children: [
        _customRow(
          textLeft: total,
          textRight: currencyFormatter(double.parse(totalTextNumber),
              decimalPoints: int.tryParse(totalTextNumber) != null ? 0 : 2),
        ),
        _customRow(
            textLeft: change,
            textRight: currencyFormatter(0,
                decimalPoints: int.tryParse(totalTextNumber) != null ? 0 : 2),
            leftTextStyle: ThemeTextRegular.xl),
        PrimaryButton(
            buttonText:
                '$pay ${currencyFormatter(double.parse(totalTextNumber), decimalPoints: int.tryParse(totalTextNumber) != null ? 0 : 2, withSymbol: false)}',
            onPressed: () {
              print(totalTextNumber.toString());
            })
      ]);

  Widget _customRow({
    required String textLeft,
    required String textRight,
    TextStyle? leftTextStyle,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedText(
            text: textLeft,
            textStyle: leftTextStyle ?? ThemeTextSemibold.xl3,
          ),
          SizedText(
            text: textRight,
            textStyle: ThemeTextBold.xl.copyWith(color: ThemeColors.orange500),
          ),
        ],
      );
}

const change = 'Сдача';
const title = 'Оплата наличными';

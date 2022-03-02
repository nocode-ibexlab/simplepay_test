import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class SALE_06_001 extends StatefulWidget {
  const SALE_06_001({Key? key}) : super(key: key);

  @override
  SALE_PAYMENT_MULTIPLE_State006 createState() =>
      SALE_PAYMENT_MULTIPLE_State006();
}

class SALE_PAYMENT_MULTIPLE_State006 extends State<SALE_06_001> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  String? selectedValue;

  bool refundMade = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => WillPopScope(
        onWillPop: _onWillPop,
        child: DefaultBody(
          showLeadingBack: true,
          paddingTop: 0,
          paddingHorizontal: 16,
          titleText: mixedPayment,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.h),
                SpacedColumn(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalSpace: 24,
                  children: [
                    RectangleFrame39(
                        bgColor: refundMade
                            ? ThemeColors.orange100
                            : ThemeColors.coolgray100,
                        child: _buildContainerChild(refundMade)),
                    RectangleFrame39(
                        bgColor: !refundMade
                            ? ThemeColors.orange100
                            : ThemeColors.coolgray100,
                        child: _buildContainerChild(!refundMade)),
                    _buildOpenFields(),
                    SizedBox(height: 24.h)
                  ],
                ),
              ],
            ),
          ),
          footer: _buildFooter(),
          footerHeight: 292,
        ),
      ),
    );
  }

  Widget _buildOpenFields() {
    return SpacedColumn(
      verticalSpace: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedText(
          text: '$payment №1',
          textStyle: ThemeTextSemibold.xl,
        ),
        InputFieldYolletAppLabel(
          label: 'Введите сумму',
        ),
        InputFieldYolletApp(
          inputSize: InputSize.L,
          controller: TextEditingController(text: '0'),
          keyboardType: TextInputType.number,
        ),
        InputFieldYolletappDropdown3(
          hint: selectedValue != null
              ? selectedValue as String
              : 'Выберите способ оплаты',
          listValues: items,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return SpacedColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedText(
              text: '$total:',
              textStyle: ThemeTextBold.xl3,
            ),
            SizedText(
              text: currencyFormatter(1300),
              textStyle:
                  ThemeTextBold.xl3.copyWith(color: ThemeColors.orange500),
            )
          ],
        ),
        SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedText(
              text: '$reminderToPay:',
              textStyle: ThemeTextRegular.xl2,
            ),
            SizedText(
              text: currencyFormatter(1100),
              textStyle:
                  ThemeTextSemibold.xl3.copyWith(color: ThemeColors.orange500),
            )
          ],
        ),
        PrimaryButton(buttonText: pay + '\t\$0', onPressed: () {}),
      ],
    );
  }

  Widget _buildContainerChild(bool isRefundMade) {
    return SpacedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SpacedRow(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpacedRow(
              children: [
                const SizedText(
                  text: '$payment №1',
                  textStyle: ThemeTextRegular.xl4,
                ),
                SizedBox(width: 10.w),
                SimplePayIcon(
                  isRefundMade ? PayIcons.xCircle : PayIcons.minusCircle,
                  solid: true,
                  color:
                      isRefundMade ? ThemeColors.red500 : ThemeColors.lime500,
                  size: 35.h,
                ),
              ],
            ),
            isRefundMade
                ? SpacedColumn(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    verticalSpace: 11,
                    children: [
                      SizedText(
                        text: returnOfGoods,
                        textStyle: ThemeTextRegular.lg4
                            .copyWith(color: ThemeColors.red500),
                      ),
                      SizedText(
                        text: '13:56:38',
                        textStyle: ThemeTextRegular.lg4
                            .copyWith(color: ThemeColors.coolgray400),
                      ),
                    ],
                  )
                : PrimaryButton(
                    linkTypeBtnColor: ThemeColors.red500,
                    icon: PayIcons.minusCircle,
                    buttonText: refund,
                    onPressed: _onMakeRefund,
                    buttonType: ButtonType.Secondary,
                    buttonSize: ButtonSize.S,
                  )
          ],
        ),
        SpacedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedText(
              text: sum,
              textStyle:
                  ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray400),
            ),
            const SizedText(
              text: '200',
              textStyle: ThemeTextSemibold.xl,
            )
          ],
        ),
        SpacedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedText(
              text: paymentMethod,
              textStyle:
                  ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray400),
            ),
            const SizedText(
              text: bankCard,
              textStyle: ThemeTextSemibold.xl,
            )
          ],
        )
      ],
    );
  }

  _onMakeRefund() {}
}

Future<bool> _onWillPop() {
  //Fsm.applyEvent(OnEvent());
  return Future.value(true);
}

const mixedPayment = 'Смешанная оплата';
const reminderToPay = 'Остаток к оплате';
const ready = 'ГОТОВО';
const paymentMethod = 'Способ оплаты';
const sum = 'Сумма';
const bankCard = 'Банковская карта';
const returnOfGoods = 'Возврат произведен';

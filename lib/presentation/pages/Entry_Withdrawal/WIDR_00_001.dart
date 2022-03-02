import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class WIDR_00_001 extends StatefulWidget {
  WIDR_00_001({Key? key}) : super(key: key);

  @override
  State<WIDR_00_001> createState() => _WIDR_00_001State();
}

class _WIDR_00_001State extends State<WIDR_00_001> {
  String totalTextNumber = '10';
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
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showLeadingBack: true,
              titleText: simplePaymentTitle,
              paddingTop: 24,
              showActionClock: () {},
              child: SpacedColumn(
                children: [
                  InputFieldYolletappDropdown3(
                    inputType: InputType.Disabled,
                    hint: selectedValue != null
                        ? selectedValue as String
                        : 'Внесение/изъятие',
                    listValues: items,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomInputComponent(
                    totalTextNumber: totalTextNumber,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  DefaultNumpad(
                      totalTextNumber: totalTextNumber, onTap: _onNumTap),
                ],
              ),
              footerHeight: 268,
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
        PrimaryButton(
            buttonText: '$withdraw ${currencyFormatter(
              double.parse(totalTextNumber),
              decimalPoints: 2,
            )}',
            onPressed: () {
              appStore
                  .dispatch(NavigateToAction(to: AppRoutes.RouteToENRY_02_001));
            }),
        PrimaryButton(
          buttonText: cancel,
          buttonType: ButtonType.Ghost,
          linkTypeBtnColor: ThemeColors.white,
          onPressed: () {},
        )
      ]);
}

const withdraw = 'Изъять';

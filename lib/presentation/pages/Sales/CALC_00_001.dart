import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

// [TODO]: it's FOOTER State has to be changed like SALE_PAYMENT_00_003.

class CALC_00_001 extends StatefulWidget {
  const CALC_00_001({Key? key}) : super(key: key);

  @override
  State<CALC_00_001> createState() => _CALC_00_001State();
}

class _CALC_00_001State extends State<CALC_00_001> {
  String? selectedValue;
  String totalVal = '0';

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

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      onInit: (store) async {
        // await appStore.dispatch(GetSalesRecentlyUsedItemsAction);
      },
      builder: (context, state) => DefaultBody(
        showLeadingBack: true,
        titleText: simplePaymentTitle,
        paddingTop: 26,
        paddingHorizontal: 32,
        child: Column(
          children: [
            InputFieldYolletappDropdown3(
              hint:
                  selectedValue != null ? selectedValue as String : 'Доставка',
              listValues: items,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
            SizedBox(height: 16.h),
            CustomInputComponent(totalTextNumber: totalVal),
            SizedBox(height: 23.h),
            DefaultNumpad(
              totalTextNumber: totalVal,
              onTap: _onNumTap,
              verticalSpace: 20,
            ),
          ],
        ),
        footerHeight: 246,
        footer: _CalcFooterWidget(totalVal: totalVal),
      ),
    );
  }

  _onNumTap(value) {
    setState(() {
      totalVal = value;
    });
    // appStore.dispatch(UpdateSalesAction(simplePayAmount: value));
  }
}

class _CalcFooterWidget extends StatelessWidget {
  String totalVal;
  _CalcFooterWidget({required this.totalVal});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                buttonText: '${pay.tr} $totalVal',
                onPressed: () async {
                  appStore.dispatch(
                      NavigateToAction(to: AppRoutes.RouteToSALE_05_001));
                },
              ),
              PrimaryButton(
                buttonText: cancel,
                buttonType: ButtonType.Link,
                buttonSize: ButtonSize.M,
                onPressed: () {
                  appStore.dispatch(NavigateToAction(to: 'up'));
                },
              ),
            ],
          );
        });
  }
}

const simplePaymentTitle = 'Простая оплата';
const String _pay = 'ОПЛАТИТЬ';

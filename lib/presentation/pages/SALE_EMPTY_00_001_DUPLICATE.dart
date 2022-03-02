import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

// ? ///////////////////////////////////
// ? This page is Extra of SALE_00_001 same
// ? ///////////////////////////////////

class SALE_EMPTY_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showActionAdd: () {
                showAlertDialog(
                    subTitleText: 'Текущая корзина сохранится в отложке',
                    rightBtnText: 'Создать',
                    rightBtnPress: () {
                      appStore.dispatch(DismissPopupAction());
                    },
                    titleText: 'Создать новую продажу?');
              },
              showLeadingMenuBtn: true,
              showActionQr: () {},
              showActionSearch: () {},
              paddingHorizontal: 32,
              titleText: sale,
              paddingTop: 11,
              bgColor: ThemeColors.coolgray50,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 21.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SecondaryButton(
                          onPressed: _onSimplePaymentTap,
                          buttonSize: ButtonSize.S,
                          labelText: simplePay,
                          icon: PayIcons.calculator,
                        ),
                        SecondaryButton(
                          onPressed: () {},
                          buttonSize: ButtonSize.S,
                          labelText: favoriteItems,
                          icon: PayIcons.carbonStarReviewSp,
                        ),
                        SecondaryButton(
                          onPressed: () {},
                          buttonSize: ButtonSize.S,
                          labelText: salesInQue,
                          icon: PayIcons.basketSp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.h),
                ],
              ),
            ));
  }

  _onSimplePaymentTap() {
    appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToCALC_00_001));
  }
}

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SALE_05_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      onInit: (store) async {
        if (store.state.tenderState.listPaymentMethodsRes.isEmpty) {
          await appStore.dispatch(GetListPaymentMethodsAction);
        }
      },
      builder: (context, state) => DefaultBody(
        showLeadingBack: true,
        paddingTop: 32,
        paddingHorizontal: 32,
        titleText: payment,
        child: SpacedColumn(
          verticalSpace: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedText(
                text: selectPaymentMethod,
                textStyle: ThemeTextSemibold.xl
                    .copyWith(color: ThemeColors.coolgray400)),
            Padding(
                padding: EdgeInsets.only(right: 28.h),
                child: SpacedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalSpace: 16,
                    children: state.tenderState.listPaymentMethodsRes
                        .map<Widget>(
                          (e) => RectangleFrame24(
                              onTap: () async {
                                // appStore.dispatch(NavigateToAction(
                                //     to: AppRoutes.RouteToSALE_06_001));
                                // appStore.dispatch(UpdateTenderAction(
                                //     selectedPaymentMethod: e));
                                await appStore
                                    .dispatch(GetGetPartialPaymentAction);
                              },
                              child: _buildContainerChild(e.paymentMethodName,
                                  PayIcons.multiPaymentSp)),
                        )
                        .toList()))
          ],
        ),
        footer: SalesFooterWidget(
          hasInnButton: false,
          hasDiscountBtn: true,
          hasDefaultButton: false,
        ),
        footerHeight: 175,
      ),
    );
  }

  Widget _buildContainerChild(String text, PayIcons icon) {
    return SpacedRow(
      horizontalSpace: 24,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SimplePayIcon(
          icon,
          color: ThemeColors.orange500,
          size: 62.h,
        ),
        SizedText(
          text: text,
          textStyle: ThemeTextRegular.xl4,
        ),
      ],
    );
  }

  Widget _buildContainerChildV2(String text, String icon) {
    return GestureDetector(
      onTap: () {},
      child: SpacedRow(
        horizontalSpace: 32,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIcon(
            imagePath: icon,
            height: 62.h,
          ),
          SizedText(
            text: text,
            textStyle: ThemeTextRegular.xl4,
          ),
        ],
      ),
    );
  }
}

const payment = "Оплата";
const selectPaymentMethod = "Выберите способ оплаты";
const cashPayment = "Наличный расчет";
const bankPayment = "Банковская карта";
const multiPayment = "Смешанная оплата";
const kaspiQr = "Kaspi QR";
const halykQr = "Halyk QR";
const jusanQr = "Jusan Qr";

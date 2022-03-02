import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class ReserveBottomSheetWidget extends StatelessWidget {
  const ReserveBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 767.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ThemeColors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 16.h),
      child: SpacedColumn(verticalSpace: 38, children: [
        GestureDetector(
          onTap: () => appStore.dispatch(DismissPopupAction()),
          child: Container(
            width: 86.w,
            height: 10.h,
            decoration: BoxDecoration(
                color: ThemeColors.coolgray300,
                borderRadius: BorderRadius.circular(4.r)),
          ),
        ),
        const SizedText(text: 'Otlojka', textStyle: ThemeTextSemibold.xl2),
        const _SheetBodyWidget(),
      ]),
    );
  }
}

class _SheetBodyWidget extends StatelessWidget {
  const _SheetBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (_, state) => Flexible(
              child: SingleChildScrollView(
                child: _buildChild(state.basketState.reservedItems),
              ),
            ));
  }

  _buildChild(OrderListOrdersRes reservedList) {
    return SpacedColumn(
        children: reservedList.list
            .map<Widget>((e) => Material(
                  color: ThemeColors.transparent,
                  child: InkWell(
                    onTap: () async {
                      showAlertDialog(
                          rightBtnText: 'Load',
                          rightBtnPress: () async {
                            appStore.dispatch(
                                UpdateBasketAction(selectedReservedItem: e));
                            await appStore.dispatch(GetLoadReservedItemAction);
                            appStore.dispatch(DismissPopupAction());
                          },
                          titleText:
                              'Your cart will be cleared and loaded from reserved list!');
                    },
                    child: SpacedColumn(
                      verticalSpace: 16,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedText(
                            text: '${sale.tr}: #${e.orderId}',
                            textStyle: ThemeTextSemibold.xl),
                        SpacedRow(
                          horizontalSpace: 56,
                          children: [
                            SizedText(
                                text: '${quantity.tr}: ${e.totalQty.toInt()}',
                                textStyle: ThemeTextRegular.lg4),
                            SizedText(
                                text:
                                    '${price.tr}: ${e.totalAmount.getPriceMap.formattedVer}',
                                textStyle: ThemeTextRegular.lg4),
                          ],
                        ),
                        Divider(thickness: 1.w, color: ThemeColors.coolgray200)
                      ],
                    ),
                  ),
                ))
            .toList());
  }
}

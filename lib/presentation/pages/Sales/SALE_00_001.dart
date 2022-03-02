import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

import '../../widgets/modals/add_id_number_popup.dart';

class SALE_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return DefaultBody(
            showActionAdd: () {
              final cartList = state.basketState.cartList;
              if (cartList.isNotEmpty) {
                showAlertDialog(
                    subTitleText: 'Текущая корзина сохранится в отложке',
                    rightBtnText: 'Создать',
                    horizontalPadding: 30,
                    rightBtnPress: () async {
                      await appStore.dispatch(GetOrderSaveOrderAction);
                      appStore.dispatch(GetClearCartAction);
                      appStore.dispatch(DismissPopupAction());
                    },
                    titleText: 'Создать новую продажу?');
              } else {
                showAlertDialog(titleText: 'Add items to basket first!');
              }
            },
            showLeadingMenuBtn: true,
            showActionQr: () {},
            showActionSearch: () {},
            titleText: sale,
            paddingHorizontal: 24,
            paddingTop: 0,
            bgColor: ThemeColors.coolgray50,
            child: SingleChildScrollView(
              child: SpacedColumn(
                children: [
                  const _SalesHeaderWidget(),
                  if (state.basketState.cartList.isEmpty)
                    const _EmptySalesPageBodyWidget()
                  else
                    const _SalesBodyWidget()
                ],
              ),
            ),
            footerHeight: 297,
            footer: state.basketState.cartList.isNotEmpty
                ? SalesFooterWidget()
                : null,
          );
        });
  }
}

class _SalesHeaderWidget extends StatelessWidget {
  const _SalesHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 23.h),
                  child: SpacedRow(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SecondaryButton(
                        onPressed: _onSimplePaymentTap,
                        buttonSize: ButtonSize.S,
                        labelText: simplePayment,
                        icon: PayIcons.calculator,
                      ),
                      SecondaryButton(
                        onPressed: _onFrequentGoodsTap,
                        buttonSize: ButtonSize.S,
                        labelText: commonGoods,
                        icon: PayIcons.carbonStarReviewSp,
                      ),
                      SecondaryButton(
                        onPressed: _onQueueSalesTap,
                        buttonSize: ButtonSize.S,
                        labelText: queueSales,
                        icon: PayIcons.basketSp,
                      ),
                    ],
                  ),
                ),
                SpacedRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedText(
                      text: sale,
                      textStyle: ThemeTextRegular.xl
                          .copyWith(color: ThemeColors.coolgray400),
                    ),
                    if (state.basketState.cartList.isNotEmpty)
                      PrimaryButton(
                        onPressed: () {
                          showAlertDialog(
                              rightBtnText: 'Очистить',
                              rightBtnColor: ThemeColors.red500,
                              rightBtnPress: () {
                                appStore.dispatch(GetClearCartAction);
                                appStore.dispatch(DismissPopupAction());
                              },
                              titleText: 'Вы хотите очистить всю корзину');
                        },
                        buttonText: clear,
                        linkTypeBtnColor: ThemeColors.red500,
                        buttonType: ButtonType.Link,
                        buttonSize: ButtonSize.XS,
                      ),
                  ],
                ),
              ],
            ));
  }

  _onSimplePaymentTap() {
    appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToCALC_00_001));
  }

  _onFrequentGoodsTap() {
    appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToSALE_02_001));
  }

  _onQueueSalesTap() async {
    await appStore.dispatch(GetReservedOrderListAction);
  }
}

class _SalesBodyWidget extends StatelessWidget {
  const _SalesBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          final _cartList = state.basketState.cartList;
          list = _cartList
              .map<Widget>((e) => Padding(
                    padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
                    child: Column(
                      children: [
                        ItemCartPageWidget(product: e),
                        const Divider()
                      ],
                    ),
                  ))
              .toList();
          return Column(children: list);
        });
  }
}

class _EmptySalesPageBodyWidget extends StatelessWidget {
  const _EmptySalesPageBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 68.h),
        Column(
          children: [
            SimplePayIcon(
              PayIcons.shoppingCart,
              size: 294.h,
              color: ThemeColors.coolgray200,
            ),
            SizedBox(height: 24.h),
            SizedText(
              text: cartIsEmpty,
              textStyle:
                  ThemeTextRegular.xl4.copyWith(color: ThemeColors.coolgray400),
            ),
            SizedBox(height: 32.h),
            PrimaryButton(
              buttonText: selectProduct,
              onPressed: () async {
                await appStore.dispatch(GetItemSearchListGroupsAction);
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToSALE_02_001));
              },
              buttonSize: ButtonSize.M,
            )
          ],
        ),
      ],
    );
  }
}

class SalesFooterWidget extends StatelessWidget {
  bool hasDiscountBtn;
  bool hasInnButton;
  bool hasDefaultButton;
  Widget? button;
  SalesFooterWidget(
      {Key? key,
      this.hasDiscountBtn = false,
      this.hasInnButton = true,
      this.hasDefaultButton = true,
      this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (hasDiscountBtn)
                SpacedRow(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedText(
                        text: discount,
                        textStyle: ThemeTextSemibold.xl,
                      ),
                      PrimaryButton(
                        buttonType: ButtonType.Ghost,
                        buttonSize: ButtonSize.S2,
                        buttonText: add,
                        onPressed: () {},
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween),
              if (hasInnButton)
                SpacedRow(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedText(
                        text: idNumber,
                        textStyle: ThemeTextRegular.xl,
                      ),
                      if (state.basketState.innBinNumber == -1)
                        PrimaryButton(
                          buttonType: ButtonType.Ghost,
                          buttonSize: ButtonSize.S2,
                          buttonText: add,
                          onPressed: () {
                            showSimpleDialog(body: const AddIdNumberPopup());
                          },
                        ),
                      if (state.basketState.innBinNumber != -1)
                        SizedText(
                          text:
                              state.basketState.innBinNumber.toInt().toString(),
                          textStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.coolgray500),
                        ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween),
              SpacedRow(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedText(
                    text: '${total.tr}:',
                    textStyle: ThemeTextBold.xl3,
                  ),
                  SizedText(
                    text: state.basketState.totalDue.getPriceMap.formattedVer,
                    textStyle: ThemeTextBold.xl3
                        .copyWith(color: ThemeColors.orange500),
                  ),
                ],
              ),
              if (button != null)
                button!
              else if (hasDefaultButton)
                PrimaryButton(
                  linkTypeBtnColor: ThemeColors.coolgray500,
                  buttonText:
                      '${pay.tr} ${state.basketState.totalDue.getPriceMap.formattedVer}',
                  onPressed: () async {
                    appStore.dispatch(
                        NavigateToAction(to: AppRoutes.RouteToSALE_05_001));
                    // await appStore.dispatch(GetCalculateTotalDueAction);
                  },
                ),
            ],
          );
        });
  }
}

const discount = 'Скидка';
const idNumber = 'ИИН/БИН';
const add = 'Добавить';
const saleNoOne = 'Продажа: №1';
const simplePay = 'Простая оплата';
const favoriteItems = 'Частые товары';
const salesInQue = 'Продажи Продажи в очереди';
const cartIsEmpty = 'В корзине пусто';
const selectProduct = 'Выберите товар';

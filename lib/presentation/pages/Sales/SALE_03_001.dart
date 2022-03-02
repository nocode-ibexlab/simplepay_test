import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SALE_03_001 extends StatelessWidget {
  const SALE_03_001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            footer: state.basketState.cartList.isNotEmpty
                ? SalesFooterWidget(
                    hasInnButton: false,
                    hasDiscountBtn: false,
                    button: PrimaryButton(
                      buttonText: viewCart,
                      icon: PayIcons.shoppingCart,
                      linkTypeBtnColor: ThemeColors.white,
                      onPressed: () {
                        appStore.dispatch(
                            NavigateToAction(to: AppRoutes.RouteToSALE_00_001));
                      },
                    ))
                : null,
            footerHeight: 221,
            titleText: state.itemState.currentCategory.name,
            showActionSearch: () {},
            showLeadingBack: true,
            showActionQr: () {},
            paddingTop: 0,
            paddingHorizontal: 0,
            paddingBottom: 0,
            child: SpacedColumn(
              children: [
                const _SALE03HeaderWidget(),
                if (state.itemState.listItems.isNotEmpty)
                  const _SALE03BodyWidget()
                else
                  const _SALE03EmptyBodyWidget()
              ],
            )));
  }
}

class _SALE03HeaderWidget extends StatelessWidget {
  const _SALE03HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => SizedBox(
              height: 103.h,
              child: _horizontalMenu(
                  state.itemState.listGroups, state.itemState.currentCategory),
            ));
  }

  Widget _horizontalMenu(List<ItemListGroupsRes> bestSellingCategoryList,
      ItemListGroupsRes currentCat) {
    List<Widget> widgets = [];
    widgets.add(SizedBox(width: 16.w));
    for (int i = 0; i < 6; i++) {
      bool isActive = currentCat.id == bestSellingCategoryList[i].id;
      widgets.add(
        TabsYollet(
            onTap: () async {
              appStore.dispatch(UpdateItemAction(
                  currentCategory: bestSellingCategoryList[i]));
              await appStore.dispatch(GetItemSearchListItemsAction);
            },
            isActive: isActive,
            bgColor: isActive ? ThemeColors.orange500 : null,
            text: bestSellingCategoryList[i].name),
      );
      widgets.add(SizedBox(width: 24.w));
    }
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 26.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: widgets),
      ),
    );
  }
}

class _SALE03BodyWidget extends StatelessWidget {
  const _SALE03BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: SpacedColumn(
                    verticalSpace: 16.h,
                    children: _buildCartItem(state.itemState.listItems),
                  ),
                ),
              ),
            ));
  }

  List<Widget> _buildCartItem(List<ProductItemRes> bestSellingItemList) {
    List<Widget> widgets = bestSellingItemList
        .map<Widget>((e) => Padding(
              padding: EdgeInsets.only(bottom: 14.h),
              child: ItemProductsPageWidget(
                  product: OrderItemRes(
                      price: e.price,
                      qty: 0,
                      itemId: e.itemId,
                      id: '',
                      name: e.name)),
            ))
        .toList();
    return widgets;
  }
}

class _SALE03EmptyBodyWidget extends StatelessWidget {
  const _SALE03EmptyBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _SALE03FooterWidget extends StatelessWidget {
  const _SALE03FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpacedRow(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedText(
                    text: '${total.tr}:',
                    textStyle: ThemeTextBold.xl3,
                  ),
                  SizedText(
                    text: state.basketState.totalDue.toString(),
                    textStyle: ThemeTextBold.xl3
                        .copyWith(color: ThemeColors.orange500),
                  ),
                ],
              ),
              PrimaryButton(
                linkTypeBtnColor: ThemeColors.coolgray500,
                buttonText:
                    '${pay.tr} ${state.basketState.totalDue.toString()}',
                onPressed: () async {
                  await appStore.dispatch(GetOrderSaveOrderAction);
                },
              ),
            ],
          );
        });
  }
}

const confectioneryProducts = 'Кондитерские изделия';
const viewCart = 'Перейти в корзину';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import '../../../mgr/models/model_exporter.dart';
import '../../../mgr/redux/action.dart';

class ItemProductsPageWidget extends StatelessWidget {
  OrderItemRes product;

  ItemProductsPageWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          final cartItem = state.basketState.cartList
              .firstWhereOrNull((element) => element.itemId == product.itemId);
          return SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpacedRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  horizontalSpace: 24,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: SimpleImage()),
                    SpacedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SpacedColumn(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedText(
                                  width: 250.w,
                                  text: product.name,
                                  softWrap: true,
                                  maxLines: 2,
                                  textStyle: ThemeTextRegular.lg5,
                                ),
                                SizedText(
                                  text: product.price!.getPriceMap.formattedVer,
                                  textStyle: ThemeTextSemibold.xl
                                      .apply(color: ThemeColors.orange500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
              if (cartItem != null)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: AddRemoveEditButton(
                    qty: cartItem.qty.toInt(),
                    onAdd: () {
                      appStore
                          .dispatch(UpdateBasketAction(selectedItem: cartItem));
                      //ChangeAbleAction
                      appStore.dispatch(GetIncrementItemQtyFromCartAction);
                    },
                    onRemove: () {
                      appStore
                          .dispatch(UpdateBasketAction(selectedItem: cartItem));
                      //ChangeAbleAction
                      appStore.dispatch(GetDecrementItemQtyFromCartAction);
                    },
                  ),
                )
              else
                SecondaryButton(
                    onPressed: () {
                      appStore
                          .dispatch(UpdateBasketAction(selectedItem: product));
                      //ChangeAbleAction
                      appStore.dispatch(GetAddToCartAction);
                    },
                    buttonSize: ButtonSize.XS,
                    icon: PayIcons.shoppingCart),
            ],
          );
        });
  }
}

class ItemCartPageWidget extends StatefulWidget {
  OrderItemRes product;
  ItemCartPageWidget({required this.product});

  @override
  State<ItemCartPageWidget> createState() => _ItemCartPageWidgetState();
}

class _ItemCartPageWidgetState extends State<ItemCartPageWidget> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          bool hasDiscount =
              widget.product.discount != null && widget.product.discount != 0;
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: _opacity,
            child: Container(
              decoration: BoxDecoration(
                color: _opacity == 1
                    ? ThemeColors.transparent
                    : ThemeColors.red200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SpacedColumn(
                children: [
                  SpacedRow(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpacedRow(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          horizontalSpace: 24,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.r),
                              child: SimpleImage(),
                            ),
                            SpacedColumn(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedText(
                                      width: 250.w,
                                      text: widget.product.name,
                                      softWrap: true,
                                      maxLines: 2,
                                      textStyle: ThemeTextRegular.lg5,
                                    ),
                                  ],
                                ),
                                SpacedRow(
                                  horizontalSpace: 20,
                                  children: [
                                    SizedText(
                                        text: (widget.product.price! *
                                                widget.product.qty)
                                            .getPriceMap
                                            .formattedVer,
                                        textStyle: ThemeTextSemibold.xl.apply(
                                            decoration: hasDiscount
                                                ? TextDecoration.lineThrough
                                                : TextDecoration.none,
                                            color: ThemeColors.orange500)),
                                    if (hasDiscount)
                                      SizedText(
                                          text: ((widget.product.price! *
                                                      widget.product.qty) -
                                                  widget.product.discount!)
                                              .getPriceMap
                                              .formattedVer,
                                          textStyle: ThemeTextSemibold.xl.apply(
                                              color: ThemeColors.amber500))
                                  ],
                                ),
                              ],
                            ),
                          ]),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: AddRemoveEditButton(
                          qty: widget.product.qty.toInt(),
                          onAdd: () {
                            appStore.dispatch(UpdateBasketAction(
                                selectedItem: widget.product));
                            //ChangeAbleAction
                            appStore
                                .dispatch(GetIncrementItemQtyFromCartAction);
                          },
                          onRemove: () async {
                            if (widget.product.qty == 1) {
                              setState(() {
                                _opacity = 0;
                              });
                              await Future.delayed(
                                  const Duration(milliseconds: 400));
                            }
                            appStore.dispatch(UpdateBasketAction(
                                selectedItem: widget.product));
                            //ChangeAbleAction
                            appStore
                                .dispatch(GetDecrementItemQtyFromCartAction);
                            setState(() {
                              _opacity = 1;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SpacedRow(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          setState(() {
                            _opacity = 0;
                          });
                          await Future.delayed(
                              const Duration(milliseconds: 400));
                          appStore.dispatch(
                              UpdateBasketAction(selectedItem: widget.product));
                          appStore.dispatch(GetDeleteItemFromCartAction);
                          setState(() {
                            _opacity = 1;
                          });
                        },
                        icon: SimplePayIcon(
                          PayIcons.trash,
                          size: 45.h,
                          color: ThemeColors.coolgray500,
                        ),
                      ),
                      PrimaryButton(
                        buttonType: ButtonType.Sale,
                        linkTypeBtnColor: ThemeColors.amber500,
                        buttonSize: ButtonSize.S,
                        buttonText: 'Add Discount',
                        onPressed: () {
                          appStore.dispatch(
                              UpdateBasketAction(selectedItem: widget.product));
                          //TODO : SHOH // DOING
                          showSimpleDialog(
                            body: AddDiscountPopupWidget(widget.product),
                            horizontalPadding: 32,
                            paddingTop: 32,
                            paddingBottom: 32,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

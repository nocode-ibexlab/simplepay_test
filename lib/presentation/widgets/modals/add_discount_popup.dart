import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';

class AddDiscountPopupWidget extends StatefulWidget {
  OrderItemRes cartItem;

  AddDiscountPopupWidget(this.cartItem);

  @override
  State<AddDiscountPopupWidget> createState() => _AddDiscountPopupWidgetState();
}

class _AddDiscountPopupWidgetState extends State<AddDiscountPopupWidget> {
  late TextEditingController priceContoller;
  late TextEditingController percentContoller;
  double discountPrice = 0.0;
  double discountPercent = 0.0;
  @override
  void initState() {
    super.initState();
    priceContoller = TextEditingController(text: discountPrice.toString());
    percentContoller = TextEditingController(text: discountPercent.toString());
    percentContoller.addListener(() {
      setState(() {
        discountPercent = _calcPercent();
        discountPrice = _calcPrice();
      });
      appStore
          .dispatch(UpdateBasketAction(selectedItemDiscount: discountPrice));
    });
    priceContoller.addListener(() {
      setState(() {
        discountPercent = _calcPercent();
        discountPrice = _calcPrice();
      });
      appStore
          .dispatch(UpdateBasketAction(selectedItemDiscount: discountPrice));
    });
  }

  @override
  void dispose() {
    percentContoller.dispose();
    priceContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedText(
                    text: addDiscount,
                    textStyle: ThemeTextSemibold.xl2
                        .apply(color: ThemeColors.coolgray400),
                  ),
                  GestureDetector(
                    onTap: () {
                      appStore.dispatch(DismissPopupAction());
                    },
                    child: SimplePayIcon(
                      PayIcons.x,
                      size: 50.h,
                      color: ThemeColors.coolgray900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              SpacedRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                horizontalSpace: 64,
                children: [
                  SizedText(
                    width: 300.w,
                    text: widget.cartItem.name,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textStyle: ThemeTextSemibold.xl,
                  ),
                  SizedText(
                    text: widget.cartItem.price!.getPriceMap.formattedVer,
                    textStyle: ThemeTextSemibold.xl,
                  ),
                ],
              ),
              SizedBox(height: 48.h),
              _buttonsContainer(),
              SizedBox(height: 32.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputFieldYolletAppLabel(
                    label: discountLabel,
                    labelSize: LabelSize.M,
                  ),
                  InputFieldYolletApp(
                    enableBorder: true,
                    controller: percentContoller,
                    keyboardType: TextInputType.number,
                    suffixText: '%',
                    onChanged: (val) => _onChangedDiscountInput(),
                  ),
                  SizedBox(height: 18.h),
                  InputFieldYolletAppLabel(
                    label: discountAmountLabel,
                    labelSize: LabelSize.M,
                  ),
                  InputFieldYolletApp(
                    enableBorder: true,
                    controller: priceContoller,
                    keyboardType: TextInputType.number,
                    suffixText: '\u20B8',
                    onChanged: (val) => _onChangedAmountInput(),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              PrimaryButton(
                buttonText: confirm,
                buttonSize: ButtonSize.M,
                onPressed: () {
                  appStore.dispatch(
                      UpdateBasketAction(selectedItem: widget.cartItem));
                  appStore.dispatch(GetAddDiscountToCartItemAction);
                  appStore.dispatch(DismissPopupAction());
                },
              ),
            ],
          );
        });
  }

  Widget _buttonsContainer() {
    return SpacedColumn(
      verticalSpace: 24,
      children: [
        SpacedRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          horizontalSpace: 30,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0;
                i < Constants.availableDisocuntPrices.length - 4;
                ++i)
              _primaryPercentButton(i),
          ],
        ),
        SpacedRow(
          horizontalSpace: 30,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 4; i < Constants.availableDisocuntPrices.length; ++i)
              _primaryPercentButton(i),
          ],
        ),
      ],
    );
  }

  Widget _primaryPercentButton(int index) => SizedBox(
        width: 108.w,
        height: 66.h,
        child: PrimaryButton(
          buttonText: '${Constants.availableDisocuntPrices[index]} %',
          onPressed: () => _onPercentBtnTap(index),
          buttonType:
              Constants.availableDisocuntPrices[index] == discountPercent
                  ? ButtonType.Main
                  : ButtonType.Secondary,
          buttonSize: ButtonSize.S,
        ),
      );

  _onChangedDiscountInput() {
    priceContoller.text = discountPrice.toString();
  }

  _onChangedAmountInput() {
    percentContoller.text = discountPercent.toString();
  }

  _onPercentBtnTap(int index) {
    setState(() {
      discountPercent = Constants.availableDisocuntPrices[index].toDouble();
      percentContoller.text = discountPercent.toString();
      priceContoller.text = _calcPrice().toString();
    });
  }

  _calcPercent() {
    final value =
        priceContoller.text.isNotEmpty ? double.parse(priceContoller.text) : 0;
    final orgPrice = widget.cartItem.price!;
    double totalPercent = 0.0;
    totalPercent = (value / orgPrice) * 100;
    return totalPercent;
  }

  _calcPrice() {
    final percent = percentContoller.text.isNotEmpty
        ? double.parse(percentContoller.text)
        : 0;
    final orgPrice = (widget.cartItem.price! * widget.cartItem.qty);
    double totalPrice = 0.0;
    totalPrice = (percent / 100) * orgPrice;
    return totalPrice;
  }
}

const addDiscount = 'Добавить скидку';
const discountLabel = 'Скидка';
const discountAmountLabel = 'Сумма скидки';

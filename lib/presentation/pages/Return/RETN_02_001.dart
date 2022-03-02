import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class RETN_02_001 extends StatefulWidget {
  @override
  State<RETN_02_001> createState() => _RETN_02_001State();
}

class _RETN_02_001State extends State<RETN_02_001> {
  bool isPartialPaymentOn = true;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              titleText: "№199",
              showLeadingBack: true,
              child: SingleChildScrollView(
                child: SpacedColumn(
                  children: [
                    Container(
                      color: ThemeColors.white,
                      child: SpacedColumn(
                        verticalSpace: 16.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, top: 16.h),
                            child: const SizedText(
                              text: 'Товары',
                              textStyle: ThemeTextSemibold.xl,
                            ),
                          ),
                          _buildItem(
                              productName: "Twix",
                              productDiscount: 90,
                              productVat: 10,
                              productPrice: 150,
                              productQty: 4),
                          _buildItem(
                            productName: "Chocolate",
                            productDiscount: 90,
                            productVat: 10,
                            productPrice: 150,
                            productQty: 7,
                            returnMade: true,
                            returnMadeDate: '16.11.2021',
                            returnMadeTime: '13:56:38',
                          ),
                          SizedBox(
                            height: 100.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    DottedBorder(),
                  ],
                ),
              ),
              footerHeight: 295,
              footer: _buildFooter(),
            ));
  }

  Widget _buildItem(
      {required String productName,
      required num productQty,
      required num productPrice,
      required num productVat,
      required num productDiscount,
      bool returnMade = false,
      String? returnMadeDate,
      String? returnMadeTime}) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        boxShadow: ThemeShadows.shadowSm,
        color: ThemeColors.white,
      ),
      width: 672.w,
      child: SpacedRow(horizontalSpace: 24, children: [
        if (isPartialPaymentOn)
          Padding(
            padding: EdgeInsets.only(top: 34.h),
            child: DefaultCheckbox(
              value: false,
              onChanged: (p0) {},
            ),
          ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4.r),
          child:
              CustomIcon(height: 116.h, imagePath: 'assets/icons/png/twix.png'),
        ),
        Expanded(
          child: SpacedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalSpace: 8,
              children: [
                SizedText(
                    text: productName,
                    textStyle: ThemeTextSemibold.lg5
                        .copyWith(color: ThemeColors.coolgray900)),
                _buildItemDetail('$productQty x $productPrice',
                    currencyFormatter(productQty * productPrice)),
                _buildItemDetail(
                    'НДС $productVat %',
                    currencyFormatter(
                        (productQty * productPrice) * productVat / 100),
                    isGrayKey: true),
                _buildItemDetail('Скидка', currencyFormatter(-90)),
                if (returnMade)
                  _buildItemDetail('', 'Возврат произведен',
                      textStyle: ThemeTextRegular.lg4,
                      fontColor: ThemeColors.red300),
                if (returnMade)
                  _buildItemDetail('', '$returnMadeDate, $returnMadeTime',
                      textStyle: ThemeTextRegular.lg4,
                      fontColor: ThemeColors.coolgray400)
              ]),
        ),
      ]),
    );
  }

  Widget _buildItemDetail(String key, String value,
      {bool isGrayKey = false,
      TextStyle textStyle = ThemeTextSemibold.lg4,
      Color fontColor = ThemeColors.coolgray900}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedText(
            text: key,
            textStyle: ThemeTextSemibold.lg4.copyWith(
                color: !isGrayKey
                    ? ThemeColors.coolgray900
                    : ThemeColors.coolgray400)),
        SizedText(text: value, textStyle: textStyle.copyWith(color: fontColor)),
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
            const SizedText(text: total, textStyle: ThemeTextBold.xl3),
            SizedText(
              text: currencyFormatter(400),
              textStyle:
                  ThemeTextBold.xl3.copyWith(color: ThemeColors.orange500),
            ),
          ],
        ),
        SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedText(
              text: partialReturn,
              textStyle: ThemeTextSemibold.xl3,
            ),
            DefaultToggle(
              value: isPartialPaymentOn,
              onToggle: (value) {
                setState(() {
                  isPartialPaymentOn = value;
                });
              },
            ),
          ],
        ),
        PrimaryButton(
            buttonType: ButtonType.Disabled,
            buttonText: '$refund ${currencyFormatter(400)}',
            onPressed: () {
              showAlertDialog(
                  buttonType: ButtonType.Secondary,
                  horizontalPadding: 0,
                  rightBtnPress: () {},
                  rightBtnText: "Сделать возврат",
                  titleText: 'Возврат на сумму 600 ₸ ?',
                  subTitleText: 'Вы собираетесь сделатьчастичный возврат',
                  rightBtnColor: ThemeColors.red500);
            })
      ],
    );
  }
}

const partialReturn = 'Частичный возврат';

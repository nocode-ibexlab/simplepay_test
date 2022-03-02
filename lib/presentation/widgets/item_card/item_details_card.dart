import 'package:simple_pay_flutter/mgr/navigation/routes.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class ItemDetailsCard extends StatelessWidget {
  int productIndex;
  String? productImg;
  String productDetails;
  String? productBarCode;
  double? productPurchasePrice;
  double productSellingPrice;
  bool productMarking;
  double? productQty;
  bool showMenu;

  ItemDetailsCard(
      {this.productImg,
      required this.productDetails,
      required this.productIndex,
      this.productBarCode,
      this.productPurchasePrice,
      required this.productSellingPrice,
      required this.productMarking,
      this.productQty,
      this.showMenu = true});

  @override
  Widget build(BuildContext context) {
    return RectangleFrame16(
      child: SpacedColumn(
        verticalSpace: 24,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedText(
                text: "$productIndex.",
                textStyle: ThemeTextSemibold.lg5
                    .copyWith(color: ThemeColors.coolgray900),
              ),
              if (productImg != null)
                Container(
                  decoration: BoxDecoration(
                      color: ThemeColors.transparent,
                      borderRadius: BorderRadius.circular(4.r)),
                  width: 146.w,
                  height: 97.h,
                  child: CustomIcon(
                    imagePath: productImg!,
                  ),
                )
              else
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 37.w, vertical: 13.h),
                  width: 132.w,
                  height: 84.h,
                  decoration: BoxDecoration(
                      color: ThemeColors.coolgray200,
                      borderRadius: BorderRadius.circular(4.r)),
                  child: SimplePayIcon(
                    PayIcons.camera,
                    size: 57.h,
                  ),
                ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: SizedText(
                  text: productDetails,
                  softWrap: true,
                  textStyle: ThemeTextSemibold.lg4,
                ),
              ),
              if (showMenu) _buildMenuPopup(),
              // GestureDetector(
              //   child: SimplePayIcon(
              //     PayIcons.dotsVertical,
              //     size: 32.h,
              //     color: ThemeColors.coolgray400,
              //   ),
              // )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SpacedColumn(
              verticalSpace: 16,
              children: [
                if (productBarCode != null)
                  _customTextRow(
                    leftText: barcode,
                    rightWidget: SizedText(
                        text: productBarCode!, textStyle: ThemeTextRegular.lg4),
                  ),
                if (productPurchasePrice != null)
                  _customTextRow(
                    leftText: purchasePrice,
                    rightWidget: SizedText(
                        text:
                            currencyFormatter(productPurchasePrice!.toDouble()),
                        textStyle: ThemeTextRegular.lg4),
                  ),
                _customTextRow(
                  leftText: sellingPrice,
                  rightWidget: SizedText(
                      text: currencyFormatter(productSellingPrice),
                      textStyle: ThemeTextRegular.lg4),
                ),
                _customTextRow(
                    leftText: labelling,
                    rightWidget: SimplePayIcon(
                      productMarking ? PayIcons.badgeCheck : PayIcons.xCircle,
                      solid: true,
                      size: 36.h,
                      color: productMarking
                          ? ThemeColors.lime500
                          : ThemeColors.red500,
                    )),
                if (productQty != null)
                  _buildQuantityText(leftText: quantity, qty: productQty!),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _customTextRow({
    required String leftText,
    required Widget rightWidget,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedText(
          text: leftText,
          textStyle: ThemeTextRegular.lg3.copyWith(
            color: ThemeColors.coolgray400,
          ),
        ),
        rightWidget
      ],
    );
  }

  Widget _buildQuantityText({required String leftText, required double qty}) {
    return SpacedRow(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedText(
            text: quantity,
            textStyle:
                ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray400)),
        RectangleFrame32(
          bgColor: qty < 11 ? ThemeColors.orange200 : ThemeColors.green100,
          child: SizedText(
              text: qty.toString(),
              textStyle: ThemeTextRegular.lg4.copyWith(
                color: ThemeColors.coolgray900,
              )),
        )
      ],
    );
  }

  Widget _buildMenuPopup() {
    return PopupMenuButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        icon: SimplePayIcon(
          PayIcons.dotsVertical,
          size: 32.h,
          color: ThemeColors.coolgray400,
        ),
        itemBuilder: (context) => popMenuWidget(context));
  }

  List<PopupMenuEntry> popMenuWidget(BuildContext context) {
    List<PopupMenuEntry> _list = [];
    _list.add(PopupMenuItem(
      child: _buildMenuItem(
        text: 'Редактировать',
        onTap: () {
          appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToWARE_04_001));
        },
      ),
    ));
    _list.add(const PopupMenuDivider());
    _list.add(PopupMenuItem(
      child: _buildMenuItem(
        text: 'Удалить',
        onTap: () {
          _buildDeletePopup();
        },
      ),
    ));
    return _list;
  }

  Widget _buildMenuItem({
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: () {
        appStore.dispatch(DismissPopupAction());
        onTap();
      },
      child: Container(
        width: 270.w,
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 10.w),
        child: SizedText(text: text, textStyle: ThemeTextRegular.lg4),
      ),
    );
  }

  _buildDeletePopup() {
    return showAlertDialog(
      titleText: "Вы точно хотите удалить  товар Шоколад Казахстан",
      rightBtnText: "Удалить",
      rightBtnPress: () {},
    );
  }
}

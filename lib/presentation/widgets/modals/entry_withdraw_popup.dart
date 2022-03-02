import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class EntryWithdrawPopup extends StatelessWidget {
  double amount;
  bool withDraw;

  EntryWithdrawPopup({this.amount = 0.0, this.withDraw = true});
  Widget build(BuildContext context) {
    return SizedBox(
      height: 512.h,
      width: 616.w,
      child: SpacedColumn(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalSpace: 32.h,
        children: [
          SimplePayIcon(
            withDraw ? PayIcons.minusCircle : PayIcons.checkCircle,
            size: 98.h,
            solid: true,
            color: withDraw ? ThemeColors.red500 : ThemeColors.lime500,
          ),
          SizedText(
            text: withDraw ? withDrawn : entry,
            textStyle:
                ThemeTextSemibold.xl3.apply(color: ThemeColors.coolgray900),
          ),
          SizedBox(height: 8.h),
          SizedText(
            text: currencyFormatter(amount),
            textStyle: ThemeTextBold.xl6.apply(color: ThemeColors.coolgray900),
            softWrap: true,
          ),
          SizedBox(height: 8.h),
          SizedText(
            width: 540.w,
            textAlign: TextAlign.center,
            text: "Повторно можете посмотреть в разделе История",
            maxLines: 2,
            textStyle:
                ThemeTextRegular.lg5.apply(color: ThemeColors.coolgray400),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}

const String withDrawn = 'Изъято';
const String entry = 'Внесено';

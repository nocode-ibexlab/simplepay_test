import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class CustomInputComponent extends StatelessWidget {
  String totalTextNumber;
  CustomInputComponent({
    Key? key,
    required this.totalTextNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      width: double.infinity,
      height: 98.h,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
          color: ThemeColors.white,
          boxShadow: ThemeShadows.shadowSm,
          borderRadius: BorderRadius.circular(24.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            currencyFormatter(double.parse(totalTextNumber),
                decimalPoints: int.tryParse(totalTextNumber) != null ? 0 : 2,
                withSymbol: false),
            style: ThemeTextSemibold.xl6,
          ),
          IconButton(
            splashRadius: 1,
            onPressed: () {
              if (totalTextNumber.length == 1) {
                appStore.dispatch(UpdateStoreAction(amount: '0'));
              } else {
                appStore.dispatch(UpdateStoreAction(
                    amount: totalTextNumber.substring(
                        0, totalTextNumber.length - 1)));
              }
            },
            icon: SimplePayIcon(
              PayIcons.backspace,
              color: ThemeColors.coolgray300,
              solid: true,
              size: 70.h,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class AlertOrigin extends StatelessWidget {
  String text;
  bool isError;
  AlertOrigin({
    required this.text,
    this.isError = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: BoxDecoration(
        color: isError ? ThemeColors.red50 : ThemeColors.green50,
        borderRadius: BorderRadius.circular(6.r),
      ),
      padding: EdgeInsets.all(16.h),
      child: SpacedRow(
        horizontalSpace: 20.w,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SimplePayIcon(
            isError ? PayIcons.xCircle : PayIcons.checkCircle,
            size: 40.h,
            color: isError ? ThemeColors.red400 : ThemeColors.emerald500,
            solid: true,
          ),
          SizedText(
            softWrap: true,
            width: 420.w,
            maxLines: 2,
            text: text,
            textStyle: ThemeTextRegular.lg2.apply(
                color: isError ? ThemeColors.red600 : ThemeColors.emerald800),
          ),
        ],
      ),
    );
  }
}

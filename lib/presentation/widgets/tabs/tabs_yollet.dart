import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class TabsYollet extends StatelessWidget {
  String text;
  PayIcons? icon;
  Color? bgColor;
  Color? textColor;
  VoidCallback? onTap;
  bool isActive;
  double radius;

  TabsYollet(
      {required this.text,
      this.icon,
      this.bgColor,
      this.onTap,
      this.textColor,
      this.isActive = false,
      this.radius = 12});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 63.h,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
              color: bgColor ?? ThemeColors.transparent,
              borderRadius: BorderRadius.circular(radius.r)),
          child: SpacedRow(
            mainAxisAlignment: MainAxisAlignment.center,
            horizontalSpace: 13.w,
            children: [
              if (icon != null)
                SimplePayIcon(
                  icon!,
                  color: bgColor != null
                      ? ThemeColors.white
                      : ThemeColors.coolgray400,
                  size: 30.h,
                  solid: true,
                ),
              SizedText(
                text: text,
                textAlign: TextAlign.center,
                textStyle: ThemeTextRegular.lg5.copyWith(
                  color: isActive
                      ? bgColor == null
                          ? ThemeColors.orange500
                          : ThemeColors.white
                      : bgColor != null
                          ? ThemeColors.white
                          : ThemeColors.coolgray700,
                ),
              )
            ],
          )),
    );
  }
}

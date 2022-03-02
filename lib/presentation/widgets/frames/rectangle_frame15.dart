import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame15 extends StatelessWidget {
  VoidCallback? onTap;
  Color bgColor;
  Widget child;
  int borderRadius;
  bool withBottomBorder;

  RectangleFrame15({
    this.onTap,
    required this.child,
    this.bgColor = ThemeColors.white,
    this.borderRadius = 5,
    this.withBottomBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
            height: 132.h,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius.r))),
            child: child,
          ),
        ),
        if (withBottomBorder)
          Divider(
            height: 8.h,
            color: ThemeColors.transparent,
          ),
      ],
    );
  }
}

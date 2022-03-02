import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame39 extends StatelessWidget {
  VoidCallback? onTap;
  Color? bgColor;
  Widget child;

  RectangleFrame39({
    this.onTap,
    this.bgColor = ThemeColors.white,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(32.w),
        height: 320.h,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: child,
      ),
    );
  }
}

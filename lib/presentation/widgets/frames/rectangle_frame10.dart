import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame10 extends StatelessWidget {
  VoidCallback? onTap;
  Color? bgColor;
  Widget child;

  RectangleFrame10({
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
        height: 188.h,
        width: 656.w,
        decoration: BoxDecoration(
          color: ThemeColors.white,
          boxShadow: ThemeShadows.shadowMd,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: child,
      ),
    );
  }
}

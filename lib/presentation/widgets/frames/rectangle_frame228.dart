import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame228 extends StatelessWidget {
  VoidCallback? onTap;
  Color? bgColor;
  Widget child;
  double height;

  RectangleFrame228(
      {this.onTap,
      this.bgColor = ThemeColors.white,
      required this.child,
      this.height = 131});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 40.h),
        width: 720.w,
        height: height.h,
        decoration: const BoxDecoration(
          color: ThemeColors.white,
        ),
        child: child,
      ),
    );
  }
}

import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame20 extends StatelessWidget {
  VoidCallback? onTap;
  Color? bgColor;
  Widget child;

  RectangleFrame20({
    this.onTap,
    this.bgColor = ThemeColors.white,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        height: 132.h,
        decoration: BoxDecoration(
            color: ThemeColors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.r))),
        child: child,
      ),
    );
  }
}

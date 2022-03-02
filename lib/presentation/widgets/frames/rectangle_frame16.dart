import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame16 extends StatelessWidget {
  VoidCallback? onTap;
  Color? bgColor;
  Widget child;

  RectangleFrame16({
    this.onTap,
    this.bgColor = ThemeColors.white,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        decoration: const BoxDecoration(
          color: ThemeColors.white,
        ),
        child: child,
      ),
    );
  }
}

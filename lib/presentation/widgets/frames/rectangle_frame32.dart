import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame32 extends StatelessWidget {
  Color? bgColor;
  Widget child;

  RectangleFrame32({
    this.bgColor = ThemeColors.green100,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.all(Radius.circular(8.r))),
      child: child,
    );
  }
}

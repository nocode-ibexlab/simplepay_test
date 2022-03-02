import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class RectangleFrame24 extends StatelessWidget {
  VoidCallback? onTap;
  Color? bgColor;
  Widget child;

  RectangleFrame24({
    this.onTap,
    this.bgColor = ThemeColors.white,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: .5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.fromLTRB(43.w, 0.h, 43.w, 0.h),
          height: 110.h,
          decoration: BoxDecoration(
              // color: ThemeColors.white,
              // boxShadow: ThemeShadows.shadowSm,
              // borderRadius: BorderRadius.circular(16.r),
              ),
          child: child,
        ),
      ),
    );
  }
}

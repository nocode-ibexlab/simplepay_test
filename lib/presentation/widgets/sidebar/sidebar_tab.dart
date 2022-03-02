import '../../template/base/template.dart';

import 'dart:math' as math;

class SidebarTab extends StatefulWidget {
  PayIcons? icon;
  double width;
  double height;
  String text;
  VoidCallback? onTap;
  bool isActive;

  SidebarTab({
    Key? key,
    required this.text,
    this.icon,
    this.isActive = false,
    this.width = double.infinity,
    this.height = 91,
    this.onTap,
  }) : super(key: key);

  @override
  State<SidebarTab> createState() => _SidebarTabState();
}

class _SidebarTabState extends State<SidebarTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: sidebarTabButtonTheme(widget.isActive),
      onPressed: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: _buildMain(),
    );
  }

  Widget _buildMain() {
    return Container(
      // width: widget.width.w,
      height: widget.height.h,
      // color: widget.isActive ? ThemeColors.coolgray100 : ThemeColors.white,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.icon != null)
            SimplePayIcon(widget.icon!,
                size: 40.h, color: ThemeColors.coolgray600),
          if (widget.icon != null) SizedBox(width: 21.w),
          SizedText(
            text: widget.text,
            textStyle:
                ThemeTextRegular.xl.apply(color: ThemeColors.coolgray900),
          ),
        ],
      ),
    );
  }
}

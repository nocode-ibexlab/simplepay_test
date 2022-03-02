import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'dart:math' as math;

class LoadingWidget extends StatefulWidget {
  Color iconColor;
  double iconSize;
  LoadingWidget({this.iconColor = ThemeColors.white, this.iconSize = 56});
  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Transform.rotate(
        angle: _controller.value * 2 * math.pi,
        child: child,
      ),
      child: SimplePayIcon(
        PayIcons.iconParkOutlineLoadingOneSp,
        size: widget.iconSize.h,
        color: widget.iconColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;
import 'package:simple_pay_flutter/presentation/template/base/theme_color.dart';

import 'icons.dart';

class SimplePayIcon extends StatelessWidget {
  const SimplePayIcon(
    this.icon, {
    this.color,
    this.size,
    this.solid = false,
    this.useDefaultColor = false,
  });

  final PayIcons icon;
  final Color? color;
  final double? size;
  final bool solid;
  final bool useDefaultColor;

  @override
  Widget build(BuildContext context) {
    final path = p.join(
      'assets/icons/${solid ? 'solid' : 'outline'}/',
      icon.name,
    );
    return SvgPicture.asset(
      '$path.svg',
      color: color == null
          ? useDefaultColor
              ? null
              : ThemeColors.white
          : color,
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}

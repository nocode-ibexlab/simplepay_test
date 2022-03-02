import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SecondaryButton extends StatelessWidget {
  ButtonSize buttonSize;
  PayIcons? icon;
  bool? isCircle;
  String? labelText;
  String? buttonText;
  VoidCallback onPressed;
  bool? isGrayIcon;

  SecondaryButton({
    this.buttonSize = ButtonSize.L,
    this.isCircle = false,
    this.icon,
    this.labelText,
    this.buttonText,
    required this.onPressed,
    this.isGrayIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      verticalSpace: 8,
      children: [
        Container(
          decoration: BoxDecoration(
              color: ThemeColors.transparent,
              shape: isCircle! ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: !isCircle! ? BorderRadius.circular(24.r) : null),
          child: ElevatedButton(
              style: _getButtonTheme(),
              onPressed: _getOnPressed(),
              child: _getChild()),
        ),
        if (labelText != null && icon != null)
          SizedText(
            width: (_getButtonSize().width +
                    (buttonSize == ButtonSize.XS || buttonSize == ButtonSize.S
                        ? 34
                        : 0))
                .w,
            maxLines: 2,
            textAlign: TextAlign.center,
            text: labelText!,
            softWrap: true,
            textStyle:
                ThemeTextRegular.lg3.copyWith(color: ThemeColors.coolgray600),
          )
      ],
    );
  }

  _getButtonTheme() {
    return secondaryButtonTheme(
        onlyIcon: _checkingOnlyIcon(),
        isCircle: isCircle!,
        elevation: 0.7,
        height: _getButtonSize().height,
        width: _getButtonSize().width,
        textStyle: _getTextStyle());
  }

  _getTextStyle() {
    return ThemeTextSemibold.xl6;
  }

  VoidCallback? _getOnPressed() {
    return onPressed;
  }

  Widget _getChild() {
    if (isCircle!) {
      return SimplePayIcon(PayIcons.plusSm,
          color: ThemeColors.white, size: _getButtonIconSize());
    } else if (icon != null) {
      return SimplePayIcon(icon!,
          color: _checkingOnlyIcon()
              ? ThemeColors.white
              : isGrayIcon!
                  ? ThemeColors.bluegray500
                  : ThemeColors.orange500,
          size: _getButtonIconSize());
    }
    return SizedText(
      text: buttonText ?? '1',
    );
  }

  bool _checkingOnlyIcon() {
    if (icon != null && labelText == null) {
      return true;
    }
    return false;
  }

  double _getButtonIconSize() {
    double height = 44.h;
    switch (buttonSize) {
      case ButtonSize.M:
        break;
      case ButtonSize.XS:
        height = 44.h;
        break;
      case ButtonSize.S:
        height = !isCircle! ? 72.h : 54.h;
        break;
      case ButtonSize.L:
        height = !isCircle! ? 90.h : 80.h;

        break;
    }

    return height;
  }

  Size _getButtonSize() {
    Size size = const Size(double.infinity, 98);
    switch (buttonSize) {
      case ButtonSize.M:
        break;
      case ButtonSize.XS:
        size = const Size(72, 72);
        break;
      case ButtonSize.S:
        size = !isCircle! ? const Size(108, 108) : const Size(86, 86);
        break;
      case ButtonSize.L:
        size = !isCircle! ? const Size(198, 142) : const Size(124, 124);
        break;
    }

    return size;
  }
}

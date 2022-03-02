import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class PrimaryButton extends StatelessWidget {
  ButtonType buttonType;
  ButtonSize buttonSize;
  PayIcons? icon;
  String buttonText;
  bool isLoading;
  VoidCallback onPressed;
  Color linkTypeBtnColor;
  PrimaryButton({
    this.buttonType = ButtonType.Main,
    this.buttonSize = ButtonSize.L,
    this.icon,
    this.isLoading = false,
    required this.buttonText,
    required this.onPressed,
    this.linkTypeBtnColor = ThemeColors.coolgray600,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: _getButtonTheme(),
        onPressed: _getOnPressed(),
        child: _getChild());
  }

  VoidCallback? _getOnPressed() {
    if (isLoading) {
      return null;
    }
    if (buttonType == ButtonType.Disabled) {
      return null;
    }
    return onPressed;
  }

  Widget _getChild() {
    if (isLoading) {
      return LoadingWidget(
          iconColor: _getForegroundColor(),
          iconSize: buttonSize == ButtonSize.S ? 36 : 56);
    }
    if (icon != null) {
      return SpacedRow(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        horizontalSpace: 8,
        children: [
          SimplePayIcon(icon!,
              size: buttonSize == ButtonSize.S ? 36.h : 56.h,
              color: linkTypeBtnColor),
          SizedText(
            text: buttonText,
          )
        ],
      );
    }
    return SizedText(
      softWrap: false,
      text: buttonText,
    );
  }

  Color _getForegroundColor() {
    switch (buttonType) {
      case ButtonType.Secondary:
        return ThemeColors.red500;
      case ButtonType.Ghost:
      case ButtonType.Disabled:
        return ThemeColors.coolgray500;
      case ButtonType.Sale:
        return ThemeColors.amber500;
      default:
        return ThemeColors.white;
    }
  }

  _getButtonTheme() {
    switch (buttonType) {
      case ButtonType.Main:
        return mainTypeButtonTheme(
            height: _getButtonSize().height,
            width: _getButtonSize().width,
            textStyle: _getTextStyle());
      case ButtonType.Secondary:
        return secondaryTypeButtonTheme(
            height: _getButtonSize().height,
            width: _getButtonSize().width,
            textStyle: _getTextStyle());
      case ButtonType.Ghost:
        return ghostTypeButtonTheme(
            height: _getButtonSize().height,
            width: _getButtonSize().width,
            textStyle: _getTextStyle());
      case ButtonType.Disabled:
        return disabledTypeButtonTheme(
            height: _getButtonSize().height,
            width: _getButtonSize().width,
            textStyle: _getTextStyle());
      case ButtonType.Link:
        return linkTypeButtonTheme(
            textColor: linkTypeBtnColor,
            height: _getButtonSize().height,
            width: _getButtonSize().width,
            textStyle: _getTextStyle());
      case ButtonType.Sale:
        return saleTypeButtonTheme(
            textColor: ThemeColors.white,
            height: 56,
            width: 281,
            textStyle: _getTextStyle());
      case ButtonType.Extra:
        // TODO: Handle this case.
        break;
    }
  }

  Size _getButtonSize() {
    Size size = const Size(double.infinity, 98);
    switch (buttonSize) {
      case ButtonSize.S2:
        size = const Size(164, 52);
        break;
      case ButtonSize.XS:
        size = const Size(152, 52);
        break;
      case ButtonSize.M:
        size = const Size(386, 84);
        break;
      case ButtonSize.S:
        size = const Size(199, 66);
        break;
      case ButtonSize.L2:
        size = const Size(576, 84);
        break;
      case ButtonSize.L:
        break;
    }

    return size;
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle =
        ThemeTextSemibold.xl2.copyWith(color: linkTypeBtnColor);
    switch (buttonSize) {
      case ButtonSize.S2:
        textStyle = ThemeTextSemibold.lg2.copyWith(color: linkTypeBtnColor);
        break;
      case ButtonSize.XS:
        textStyle = ThemeTextRegular.lg4.copyWith(color: linkTypeBtnColor);
        break;
      case ButtonSize.M:
      case ButtonSize.L2:
        textStyle = ThemeTextSemibold.xl.copyWith(color: linkTypeBtnColor);
        break;
      case ButtonSize.S:
        textStyle = ThemeTextSemibold.lg4.copyWith(color: linkTypeBtnColor);
        break;
      case ButtonSize.L:
        break;
    }

    return textStyle;
  }
}

enum ButtonType { Main, Secondary, Ghost, Disabled, Link, Extra, Sale }
enum ButtonSize { L, M, S, XS, L2, S2 }

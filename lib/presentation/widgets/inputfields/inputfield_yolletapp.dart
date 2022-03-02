import 'package:flutter/services.dart';

import '../../template/base/template.dart';

class InputFieldYolletApp extends StatelessWidget {
  InputType inputType;
  String placeholder;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  TextEditingController? controller;
  VoidCallback? onTap;
  VoidCallback? onEditingComplete;
  TextInputAction? textInputAction;
  bool enableBorder;
  int? maxlines;
  InputSize inputSize;
  ValueChanged? onChanged;
  String suffixText;
  String prefixText;
  bool isOrange;
  List<TextInputFormatter>? inputFormatters;
  bool obscureText;
  double borderRadius;
  bool enableShadow;

  InputFieldYolletApp(
      {Key? key,
      this.onEditingComplete,
      this.inputType = InputType.Main,
      this.placeholder = '',
      this.validator,
      this.keyboardType = TextInputType.text,
      this.controller,
      this.onTap,
      this.maxlines,
      this.textInputAction,
      this.enableBorder = false,
      this.onChanged,
      this.inputSize = InputSize.M,
      this.suffixText = '',
      this.prefixText = '',
      this.isOrange = false,
      this.inputFormatters,
      this.obscureText = false,
      this.borderRadius = 24,
      this.enableShadow = false});

  @override
  Widget build(BuildContext context) {
    Size size = _getSize();
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
      shadowColor: ThemeColors.black.withOpacity(0.07),
      child: Container(
        // height: size.height.h,
        decoration: enableShadow
            ? BoxDecoration(
                border: Border.all(width: 1, color: ThemeColors.coolgray100),
                boxShadow: ThemeShadows.shadowSm,
                borderRadius: BorderRadius.circular(24.r),
              )
            : null,
        width: size.width.w,
        child: TextFormField(
          inputFormatters: inputFormatters,
          obscureText: obscureText,
          onChanged: onChanged,
          textAlign:
              inputType == InputType.Number ? TextAlign.right : TextAlign.start,
          cursorColor: ThemeColors.coolgray900,
          style: inputType == InputType.Number
              ? ThemeTextSemibold.xl6
              : ThemeTextRegular.xl3.copyWith(
                  color: inputType == InputType.Disabled
                      ? ThemeColors.coolgray300
                      : ThemeColors.coolgray900),
          validator: validator,
          controller: controller,
          onTap: onTap,
          onEditingComplete: onEditingComplete,
          maxLines: maxlines,
          keyboardType: keyboardType,
          readOnly: inputType == InputType.Disabled,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            isDense: true,
            prefix: SizedText(
              text: prefixText,
              textStyle:
                  ThemeTextBold.xl3.apply(color: ThemeColors.coolgray900),
            ),
            filled: true,
            fillColor: ThemeColors.white,
            hintText: placeholder.tr,
            hintStyle:
                ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray300),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
              borderSide: enableBorder
                  ? BorderSide(color: ThemeColors.coolgray100, width: 1.w)
                  : const BorderSide(color: ThemeColors.transparent, width: 0),
            ),
            errorStyle: ThemeTextRegular.lg2,
            errorMaxLines: 2,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius.r),
              borderSide: enableBorder
                  ? BorderSide(
                      color: isOrange
                          ? ThemeColors.orange500
                          : ThemeColors.coolgray100,
                      width: 1.5.w)
                  : const BorderSide(color: ThemeColors.transparent, width: 0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
              borderSide: enableBorder
                  ? BorderSide(color: ThemeColors.red200, width: 2.w)
                  : const BorderSide(color: ThemeColors.transparent, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius.r),
              borderSide: enableBorder
                  ? BorderSide(
                      color: isOrange
                          ? ThemeColors.orange500
                          : ThemeColors.coolgray100,
                      width: 1.5.w)
                  : const BorderSide(color: ThemeColors.transparent, width: 0),
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: inputSize == InputSize.L ? 30.h : 20.h),
            suffix: SizedText(
              text: suffixText,
              textStyle:
                  ThemeTextSemibold.xl3.apply(color: ThemeColors.coolgray900),
            ),
          ),
        ),
      ),
    );
  }

  Size _getSize() {
    Size size = const Size(522, 80);
    switch (inputSize) {
      case InputSize.L:
        size = const Size(656, 97);
        break;
      case InputSize.L2:
        size = const Size(576, 84);
        break;
      case InputSize.M:
        size = const Size(522, 80);
        break;
      case InputSize.S:
        size = const Size(262, 80);
        break;
    }
    return size;
  }
}

enum InputType { Main, Disabled, Number }
enum InputSize { L, M, S, L2 }

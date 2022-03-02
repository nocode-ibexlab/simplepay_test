import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class InputFieldYolletappDropdown3 extends StatefulWidget {
  List<String> listValues;
  dynamic value;
  ValueChanged onChanged;
  InputType inputType;
  DropdownSize dropdownSize;
  String hint;
  bool addDivider;
  VoidCallback? onLastItemExistFunction;
  String? onLastItemExistMsg;
  double borderRadius;
  bool isOrange;
  double buttonHorizontalPadding;
  double buttonVerticalPadding;

  InputFieldYolletappDropdown3({
    Key? key,
    required this.listValues,
    required this.onChanged,
    this.value,
    this.onLastItemExistFunction,
    this.inputType = InputType.Main,
    this.dropdownSize = DropdownSize.SIZE1,
    this.hint = 'Select a menu',
    this.addDivider = false,
    this.onLastItemExistMsg,
    this.borderRadius = 24,
    this.isOrange = false,
    this.buttonHorizontalPadding = 24,
    this.buttonVerticalPadding = 14,
  }) : super(key: key);

  @override
  State<InputFieldYolletappDropdown3> createState() =>
      _InputFieldYolletappDropdown3State();
}

class _InputFieldYolletappDropdown3State
    extends State<InputFieldYolletappDropdown3> {
  bool activeDropDown = true;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode(debugLabel: 'Button');
    focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (focusNode.hasFocus != activeDropDown) {
      setState(() {
        activeDropDown = focusNode.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.white,
          border: _borderController(),
          borderRadius: BorderRadius.circular(widget.borderRadius.r),
          boxShadow: _shadowController(),
        ),
        child: IgnorePointer(
          ignoring: widget.inputType == InputType.Disabled,
          child: DropdownButton2(
            focusNode: focusNode,
            isExpanded: true,
            hint:
                SizedText(text: widget.hint, textStyle: _textSizeController()),
            icon: RotatedBox(
              quarterTurns: !activeDropDown ? 2 : 0,
              child: SimplePayIcon(
                PayIcons.chevronDown,
                color: widget.isOrange
                    ? ThemeColors.orange500
                    : _colorController(),
                solid: true,
                size: widget.dropdownSize == DropdownSize.SIZE1
                    ? 42.h
                    : widget.dropdownSize == DropdownSize.SIZE5
                        ? 43.h
                        : 32.h,
              ),
            ),
            items: _addDividersAfterItems(widget.listValues),
            value: widget.value,
            onChanged: widget.onChanged,
            buttonHeight: _buttonHeightController(),
            buttonWidth: _buttonWidthController(),
            itemHeight: 70.h,
            dropdownWidth: _dropDownWidthController(),
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
            ),
            buttonPadding: EdgeInsets.symmetric(
                vertical: widget.buttonVerticalPadding.h,
                horizontal: widget.buttonHorizontalPadding.w),
            dropdownPadding:
                EdgeInsets.symmetric(horizontal: 0.w, vertical: 14.h),
            dropdownElevation: 3,
          ),
        ),
      ),
    );
  }

  // disabling & icon & text color
  _colorController() {
    if (widget.inputType == InputType.Disabled) {
      return ThemeColors.coolgray300;
    } else {
      return ThemeColors.coolgray700;
    }
  }

  _borderController() {
    if (widget.dropdownSize == DropdownSize.SIZE4) {
      return Border.all(width: 2.w, color: ThemeColors.coolgray400);
    } else if (widget.dropdownSize != DropdownSize.SIZE1) {
      return Border.all(width: 1.w, color: ThemeColors.coolgray300);
    } else {
      return null;
    }
  }

  _buttonWidthController() {
    switch (widget.dropdownSize) {
      case DropdownSize.SIZE1:
        return 656.w;
      case DropdownSize.SIZE2:
        return 240.w;
      case DropdownSize.SIZE3:
        return 240.w;
      case DropdownSize.SIZE4:
        return 116.w;
      case DropdownSize.SIZE5:
        return 576.w;
    }
  }

  _buttonHeightController() {
    switch (widget.dropdownSize) {
      case DropdownSize.SIZE1:
        return 98.h;
      case DropdownSize.SIZE2:
        return 64.h;
      case DropdownSize.SIZE3:
        return 64.h;
      case DropdownSize.SIZE4:
        return 54.h;
      case DropdownSize.SIZE5:
        return 84.h;
    }
  }

  // _radiusController() {
  //   if (widget.dropdownSize == DropdownSize.SIZE4) {
  //     return BorderRadius.circular(12.r);
  //   } else {
  //     return BorderRadius.circular(24.r);
  //   }
  // }

  _shadowController() {
    if (widget.dropdownSize == DropdownSize.SIZE1) {
      return ThemeShadows.shadowSm;
    } else {
      return null;
    }
  }

  _textSizeController() {
    if (widget.dropdownSize == DropdownSize.SIZE1) {
      return ThemeTextRegular.lg5.copyWith(color: _colorController());
    }
    if (widget.dropdownSize == DropdownSize.SIZE4) {
      return ThemeTextRegular.lg4.copyWith(color: _colorController());
    } else {
      return ThemeTextRegular.lg3.copyWith(color: _colorController());
    }
  }

  _dropDownWidthController() {
    if (widget.dropdownSize != DropdownSize.SIZE1) {
      return 400.w;
    } else {
      return null;
    }
  }

  List<DropdownMenuItem<String>> _addDividersAfterItems(
      List<String> listValues) {
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in listValues) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: SizedText(
              text: item,
              textStyle: ThemeTextRegular.lg3.copyWith(
                  color: widget.isOrange
                      ? ThemeColors.orange500
                      : ThemeColors.coolgray600),
            ),
          ),
          if (widget.addDivider)
            if (item != listValues.last)
              DropdownMenuItem<String>(
                enabled: false,
                child: Divider(
                  height: .5.h,
                ),
              ),
        ],
      );
    }
    if (widget.onLastItemExistFunction != null) {
      _menuItems.add(
        DropdownMenuItem<String>(
          enabled: false,
          child: Divider(
            height: .5.h,
          ),
        ),
      );
      _menuItems.add(
        DropdownMenuItem<String>(
          value: widget.onLastItemExistMsg!,
          enabled: false,
          child: SpacedRow(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            horizontalSpace: 10,
            children: [
              SimplePayIcon(
                PayIcons.plusCircle,
                size: 40.w,
                color: ThemeColors.coolgray600,
              ),
              GestureDetector(
                onTap: widget.onLastItemExistFunction,
                child: SizedText(
                    text: 'Добавить поставщика',
                    textStyle: ThemeTextRegular.lg3
                        .copyWith(color: ThemeColors.coolgray600)),
              ),
            ],
          ),
        ),
      );
    }
    return _menuItems;
  }
}

/// SIZE is not clear in the design

enum DropdownSize { SIZE1, SIZE2, SIZE3, SIZE4, SIZE5 }

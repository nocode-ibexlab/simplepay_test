import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class InputFieldYolletappDropdown2 extends StatefulWidget {
  List<String> listValues;
  dynamic value;
  ValueChanged onChanged;
  InputType dropdownInputType;
  double width;
  double height;
  double borderSize;
  Color borderColor;
  double verticalPadding;
  double horizontalPadding;
  String hint;
  double radius;
  TextStyle hintStyle;
  Color iconColor;
  bool isSolid;
  double iconSize;
  List<BoxShadow>? boxShadow;
  bool addDivider;
  double? dropDownWidth;
  PayIcons icon;
  VoidCallback? onLastItemExistFunction;
  String? onLastItemExistMsg;
  double itemHeight;

  InputFieldYolletappDropdown2(
      {Key? key,
      required this.listValues,
      required this.onChanged,
      this.value,
      this.onLastItemExistFunction,
      this.dropdownInputType = InputType.Main,
      this.width = 210,
      this.height = 54,
      this.borderSize = 1,
      this.borderColor = ThemeColors.coolgray300,
      this.verticalPadding = 9,
      this.horizontalPadding = 16,
      this.hint = 'Select a menu',
      this.radius = 12,
      this.hintStyle = ThemeTextRegular.lg3,
      this.iconColor = ThemeColors.coolgray900,
      this.isSolid = true,
      this.iconSize = 26,
      this.boxShadow,
      this.addDivider = false,
      this.dropDownWidth,
      this.icon = PayIcons.chevronDown,
      this.onLastItemExistMsg,
      this.itemHeight = 40})
      : super(key: key);

  @override
  State<InputFieldYolletappDropdown2> createState() =>
      _InputFieldYolletappDropdown2State();
}

class _InputFieldYolletappDropdown2State
    extends State<InputFieldYolletappDropdown2> {
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
            borderRadius: BorderRadius.circular(widget.radius.r),
            boxShadow: ThemeShadows.shadowSm),
        child: IgnorePointer(
          ignoring: widget.dropdownInputType == InputType.Disabled,
          child: DropdownButton2(
            focusNode: focusNode,
            isExpanded: true,
            hint: SizedText(
                text: widget.hint, textStyle: _disabledTextColorController()),
            icon: RotatedBox(
              quarterTurns: !activeDropDown ? 2 : 0,
              child: SimplePayIcon(
                PayIcons.chevronDown,
                color: _disabledIconColorController(),
                solid: widget.isSolid,
                size: widget.iconSize.h,
              ),
            ),
            items: _addDividersAfterItems(widget.listValues),
            value: widget.value,
            onChanged: widget.onChanged,
            buttonHeight: widget.height.h,
            buttonWidth: widget.width.w,
            itemHeight: widget.itemHeight.h,
            dropdownWidth: widget.dropDownWidth,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.radius.r),
            ),
            buttonDecoration: BoxDecoration(
              color: ThemeColors.white,
              borderRadius: BorderRadius.circular(widget.radius.r),
              border: Border.all(
                  width: widget.borderSize.w, color: widget.borderColor),
            ),
            buttonPadding: EdgeInsets.symmetric(
                vertical: widget.verticalPadding.h,
                horizontal: widget.horizontalPadding.w),
          ),
        ),
      ),
    );
  }

  _disabledTextColorController() {
    if (widget.dropdownInputType == InputType.Disabled) {
      return widget.hintStyle.copyWith(color: ThemeColors.coolgray300);
    } else {
      return widget.hintStyle;
    }
  }

  _disabledIconColorController() {
    if (widget.dropdownInputType == InputType.Disabled) {
      return ThemeColors.coolgray300;
    } else {
      return widget.iconColor;
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
              textStyle:
                  ThemeTextRegular.lg3.copyWith(color: ThemeColors.coolgray600),
            ),
          ),
          if (widget.addDivider)
            if (item != listValues.last)
              const DropdownMenuItem<String>(
                enabled: false,
                child: Divider(
                  height: .5,
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
            mainAxisAlignment: MainAxisAlignment.center,
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

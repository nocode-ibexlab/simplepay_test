// //TODO Use InputFieldDropDown2 instead of this

// import 'package:simple_pay_flutter/presentation/template/base/template.dart';
//
// class InputFieldYolletappDropdown extends StatelessWidget {
//   String? hintText;
//   List<String> listValues;
//   dynamic value;
//   InputType dropdownInputType;
//   double height;
//   double width;
//   double iconSize;
//   double verticalPadding;
//   double horizontalPadding;
//   double radius;
//   BoxBorder? border;
//   bool solidIcon;
//   TextStyle hintStyle;
//
//   ValueChanged onChanged;
//   InputFieldYolletappDropdown(
//       {Key? key,
//       this.border,
//       this.hintText,
//       required this.onChanged,
//       required this.listValues,
//       this.value,
//       this.dropdownInputType = InputType.Main,
//       this.height = 98,
//       this.width = double.infinity,
//       this.verticalPadding = 26,
//       this.iconSize = 43,
//       this.horizontalPadding = 16,
//       this.solidIcon = false,
//       this.hintStyle = ThemeTextRegular.lg5,
//       this.radius = 24})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: Container(
//         height: height.h,
//         padding: EdgeInsets.symmetric(
//             horizontal: horizontalPadding.w, vertical: verticalPadding.h),
//         width: width.w,
//         decoration: BoxDecoration(
//           border: border,
//           color: ThemeColors.white,
//           borderRadius: BorderRadius.circular(radius.r),
//           boxShadow: ThemeShadows.shadowSm,
//         ),
//         child: IgnorePointer(
//           ignoring: dropdownInputType == InputType.Disabled,
//           child: DropdownButton(
//             icon: SimplePayIcon(
//               PayIcons.chevronDown,
//               color: _disabledIconColorController(),
//               size: iconSize.h,
//               solid: solidIcon,
//             ),
//             focusColor: ThemeColors.transparent,
//             hint: hintText != null
//                 ? SizedText(
//                     text: hintText!,
//                     textStyle:
//                         hintStyle.apply(color: _disabledTextColorController()),
//                   )
//                 : Container(),
//             items: listValues
//                 .map((item) => DropdownMenuItem<String>(
//                       value: item,
//                       child: SizedText(
//                         text: item,
//                         textStyle: ThemeTextRegular.xl3.copyWith(
//                             color: dropdownInputType == InputType.Disabled
//                                 ? ThemeColors.coolgray300
//                                 : ThemeColors.coolgray900),
//                       ),
//                     ))
//                 .toList(),
//             value: value,
//             onChanged: onChanged,
//           ),
//         ),
//       ),
//     );
//   }
//
//   _disabledTextColorController() {
//     if (dropdownInputType == InputType.Disabled) {
//       return ThemeColors.coolgray300;
//     } else {
//       return ThemeColors.coolgray600;
//     }
//   }
//
//   _disabledIconColorController() {
//     if (dropdownInputType == InputType.Disabled) {
//       return ThemeColors.coolgray300;
//     } else {
//       return ThemeColors.coolgray900;
//     }
//   }
// }

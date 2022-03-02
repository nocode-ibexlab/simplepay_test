import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class InputFieldYolletAppLabel extends StatelessWidget {
  String label;
  LabelSize labelSize;
  bool isDisabled;
  bool isOrange;
  bool isSemibold; //after push will edit or delete GGalymzhan

  InputFieldYolletAppLabel({
    required this.label,
    this.isDisabled = false,
    this.labelSize = LabelSize.L,
    this.isOrange = false,
    this.isSemibold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: SizedText(
        text: label,
        textAlign: TextAlign.start,
        textStyle: _getTextStyle().copyWith(
          color: isDisabled
              ? ThemeColors.coolgray300
              : isOrange
                  ? ThemeColors.orange500
                  : ThemeColors.coolgray400,
        ),
      ),
    );
  }

  TextStyle _getTextStyle() {
    switch (labelSize) {
      case LabelSize.S:
      case LabelSize.M:
        return !isSemibold ? ThemeTextRegular.lg2 : ThemeTextSemibold.lg2;
      case LabelSize.L:
        return ThemeTextRegular.lg4;
    }
  }
}

// X & M size are same in the design
enum LabelSize { S, M, L }

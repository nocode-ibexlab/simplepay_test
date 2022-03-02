import 'package:simple_pay_flutter/presentation/template/base/template.dart';

showSimpleDialog(
    {String? buttonText,
    required Widget body,
    double? horizontalPadding = 0.0,
    AlignmentGeometry? alignment,
    double paddingTop = 0.0,
    double paddingBottom = 0.0,
    double borderRadius = 16,
    bool barrierDismissible = true}) {
  Future<bool> _onWillPop() {
    if (barrierDismissible) {
      return Future.value(true);
    }
    return Future.value(false);
  }

  return showDialog(
    context: Get.context!,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return WillPopScope(
        onWillPop: _onWillPop,
        child: PopupLayout(
          alignment: alignment,
          borderRadius: borderRadius,
          paddingTop: paddingTop,
          paddingBottom: paddingBottom,
          horizontalPadding: horizontalPadding,
          children: [body],
        ),
      );
    },
  );
}

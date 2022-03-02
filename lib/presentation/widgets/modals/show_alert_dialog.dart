import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

showAlertDialog(
    {VoidCallback? rightBtnPress,
    String? rightBtnText,
    required String titleText,
    String? subTitleText,
    double paddingTop = 32,
    double paddingBottom = 32,
    Color rightBtnColor = ThemeColors.orange500,
    double? horizontalPadding = 0.0,
    ButtonType buttonType = ButtonType.Link,
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
    routeSettings: const RouteSettings(name: "showAlertDialog"),
    builder: (context) {
      return WillPopScope(
        onWillPop: _onWillPop,
        child: PopupLayout(
          borderRadius: 16,
          paddingBottom: paddingBottom,
          paddingTop: paddingTop,
          horizontalPadding: horizontalPadding,
          children: [
            SizedText(
              softWrap: true,
              textAlign: TextAlign.center,
              text: titleText,
              textStyle: ThemeTextSemibold.xl,
            ),
            if (subTitleText != null) SizedBox(height: 8.h),
            if (subTitleText != null)
              SizedText(
                text: subTitleText,
                textAlign: TextAlign.center,
                textStyle: ThemeTextRegular.lg2
                    .copyWith(color: ThemeColors.coolgray500),
              ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(
                  onPressed: () {
                    appStore.dispatch(DismissPopupAction());
                  },
                  buttonText: 'Отменить',
                  buttonType: ButtonType.Link,
                  buttonSize: ButtonSize.S,
                ),
                if (rightBtnPress != null && rightBtnText != null)
                  PrimaryButton(
                    linkTypeBtnColor: rightBtnColor,
                    onPressed: rightBtnPress,
                    buttonText: rightBtnText,
                    buttonType: buttonType,
                    buttonSize: ButtonSize.S,
                  ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

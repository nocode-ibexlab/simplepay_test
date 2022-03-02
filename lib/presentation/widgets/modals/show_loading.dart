import 'package:simple_pay_flutter/presentation/template/base/template.dart';

Future showLoadingDialog({bool? barrierDismissible = false}) {
  return showDialog(
    barrierDismissible: barrierDismissible!,
    context: Get.context!,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}

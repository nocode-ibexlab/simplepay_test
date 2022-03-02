import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class AddNewComment extends StatelessWidget {
  TextEditingController? controller;
  VoidCallback onConfirm;
  VoidCallback onSkip;

  AddNewComment(
      {Key? key,
      this.controller,
      required this.onConfirm,
      required this.onSkip})
      : super(key: key);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedText(
              text: comment,
              textStyle:
                  ThemeTextSemibold.xl2.apply(color: ThemeColors.coolgray600),
            ),
            SizedBox(height: 8.h),
            SizedText(
              text: reasonItemDifference,
              textStyle:
                  ThemeTextRegular.lg5.apply(color: ThemeColors.coolgray400),
              softWrap: true,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 291.h,
          child: InputFieldYolletApp(
            enableShadow: true,
            enableBorder: true,
            controller: controller,
            inputSize: InputSize.L,
            maxlines: 10,
          ),
        ),
        SizedBox(height: 32.h),
        PrimaryButton(
          buttonText: confirm,
          onPressed: onConfirm,
          buttonSize: ButtonSize.M,
        ),
        SizedBox(height: 16.h),
        PrimaryButton(
          buttonText: skip,
          onPressed: onSkip,
          buttonType: ButtonType.Ghost,
          buttonSize: ButtonSize.M,
        ),
      ],
    );
  }
}

const String comment = 'Комментарий';
const String reasonItemDifference =
    'Укажите причину разницы в количестве выбраного товара';
const String skip = 'Пропустить';

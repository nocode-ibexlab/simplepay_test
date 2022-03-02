import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class AddNewItemPopup extends StatelessWidget {
  AddNewItemPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpacedColumn(
              verticalSpace: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedText(
                  text: 'Шоколад Казахстан',
                  textStyle: ThemeTextSemibold.xl2,
                ),
                SizedText(
                  text: '4820020518016',
                  textStyle: ThemeTextRegular.lg5,
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                appStore.dispatch(DismissPopupAction());
              },
              child: SimplePayIcon(
                PayIcons.x,
                color: ThemeColors.coolgray900,
                size: 50.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 48.h),
        SpacedColumn(
          verticalSpace: 16,
          children: [
            _columnOfItemInfo(label: purchasePrice, textController: '190'),
            _columnOfItemInfo(label: salePrice, textController: '350'),
            _columnOfItemInfo(label: productNumber, textController: '40'),
          ],
        ),
        SizedBox(height: 48.h),
        PrimaryButton(
          buttonText: confirm,
          onPressed: () {},
          buttonSize: ButtonSize.M,
        ),
        SizedBox(height: 16.h),
        PrimaryButton(
          buttonText: cancel,
          onPressed: () {
            appStore.dispatch(DismissPopupAction());
          },
          buttonType: ButtonType.Ghost,
          buttonSize: ButtonSize.M,
        ),
      ],
    );
  }

  Widget _columnOfItemInfo({required String label, String? textController}) {
    return SpacedColumn(
      verticalSpace: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputFieldYolletAppLabel(
          label: label,
          labelSize: LabelSize.M,
        ),
        InputFieldYolletApp(
            enableBorder: true,
            controller: TextEditingController(text: textController)),
      ],
    );
  }
}

const String salePrice = 'Продаж. цена';
const String productNumber = 'Количество';
const String confirm = 'Потвердить';

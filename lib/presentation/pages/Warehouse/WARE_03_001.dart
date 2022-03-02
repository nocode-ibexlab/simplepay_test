import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';

class WARE_03_001 extends StatefulWidget {
  const WARE_03_001({Key? key}) : super(key: key);

  @override
  State<WARE_03_001> createState() => _WARE_03_001State();
}

class _WARE_03_001State extends State<WARE_03_001> {
  List<String> items = ['Рахат', 'Efes', 'Аксай Нан'];

  String? selectedValue;

  bool activeDropDown = false;
  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      showLeadingX: () {
        appStore.dispatch(NavigateToAction(to: 'up'));
      },
      titleText: reception,
      showActionAdd: () {},
      showActionSearch: () {},
      showActionQr: () {},
      paddingHorizontal: 24,
      paddingTop: 24,
      child: Stack(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedText(
                    text: dateStr,
                    textStyle: ThemeTextRegular.xl,
                  ),
                  SizedBox(height: 30.h),
                  const SizedText(
                    text: supplier,
                    textStyle: ThemeTextRegular.xl,
                  ),
                  SizedBox(height: 32.h),
                  SizedText(
                    text: receptionNo12,
                    textStyle: ThemeTextRegular.xl
                        .apply(color: ThemeColors.coolgray400),
                  ),
                ],
              ),
              SizedBox(width: 72.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedText(
                    text: dateVal,
                    textStyle: ThemeTextRegular.xl,
                  ),
                  SizedBox(height: 24.h),
                  InputFieldYolletappDropdown3(
                    dropdownSize: DropdownSize.SIZE3,
                    value: selectedValue,
                    hint: supplier,
                    listValues: items,
                    onLastItemExistFunction: () {},
                    onLastItemExistMsg: 'Добавить поставщика',
                    addDivider: true,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SimplePayIcon(
                  PayIcons.shoppingCart,
                  size: 294.h,
                  color: ThemeColors.coolgray200,
                ),
                SizedText(
                  text: toStartReception,
                  textStyle: ThemeTextRegular.xl2
                      .apply(color: ThemeColors.coolgray400),
                ),
                SizedBox(height: 36.h),
                PrimaryButton(
                  buttonText: selectProduct,
                  onPressed: () {},
                  buttonSize: ButtonSize.M,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String dateStr = 'Дата';
const String receptionNo12 = 'Приемка #12';
const String dateVal = '30.11.2021, 10:15';
const String toStartReception = 'Чтобы начать приемку';

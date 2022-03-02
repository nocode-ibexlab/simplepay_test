import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class AddIdNumberPopup extends StatefulWidget {
  const AddIdNumberPopup({Key? key}) : super(key: key);

  @override
  State<AddIdNumberPopup> createState() => _AddIdNumberPopupState();
}

class _AddIdNumberPopupState extends State<AddIdNumberPopup> {
  final binContr = TextEditingController();

  @override
  void dispose() {
    binContr.clear();
    binContr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(
              right: 32.w,
              left: 32.w,
              top: 29.h,
              bottom: 24.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: ThemeColors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedText(
                      text: addIdNumber,
                      textStyle: ThemeTextSemibold.xl2.copyWith(
                        color: ThemeColors.coolgray900,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          appStore.dispatch(DismissPopupAction());
                        },
                        icon: const SimplePayIcon(
                          PayIcons.x,
                          color: ThemeColors.coolgray900,
                          size: 50,
                        )),
                  ],
                ),
                SizedBox(height: 38.h),
                InputFieldYolletApp(
                  controller: binContr,
                  enableBorder: true,
                  placeholder: '000-000-000-000',
                  inputType: InputType.Main,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 24.h),
                PrimaryButton(
                  onPressed: () {
                    if (binContr.text.isNotEmpty) {
                      appStore.dispatch(UpdateBasketAction(
                          innBinNumber: double.parse(binContr.text)));
                      appStore.dispatch(DismissPopupAction());
                    }
                  },
                  buttonText: confirm,
                  buttonSize: ButtonSize.M,
                ),
                SizedBox(height: 16.h),
                PrimaryButton(
                  onPressed: () {
                    appStore.dispatch(DismissPopupAction());
                  },
                  buttonType: ButtonType.Ghost,
                  buttonText: cancel,
                  buttonSize: ButtonSize.M,
                ),
              ],
            ),
          );
        });
  }
}

const addIdNumber = 'Добавить ИИН/БИН';

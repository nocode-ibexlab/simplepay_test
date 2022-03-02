import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class REGISTER_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Scaffold(
        body: Center(
          child: SafeArea(
            child: Form(
              child: Padding(
                padding: EdgeInsets.only(left: 72.w, right: 72.w),
                child: ScrollConfiguration(
                  behavior: NoInkScrollBehavior(),
                  child: SingleChildScrollView(
                    child: Form(
                      key: state.loginState.loginFormKey,
                      child: Column(
                        children: [
                          SizedText(
                            text: simplePayEn,
                            textStyle: ThemeTextSemibold.xl7
                                .apply(color: ThemeColors.orange500),
                          ),
                          SizedBox(height: 44.h),
                          SizedText(
                            text: registration,
                            textStyle: ThemeTextSemibold.xl5
                                .apply(color: ThemeColors.orange500),
                          ),
                          SizedBox(height: 44.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputFieldYolletAppLabel(
                                isSemibold: true,
                                label: cloudServerUrlEn,
                                labelSize: LabelSize.M,
                                isOrange: true,
                              ),
                              InputFieldYolletappDropdown3(
                                inputType: state.loginState.loginIsLoading
                                    ? InputType.Disabled
                                    : InputType.Main,
                                listValues: state
                                    .loginState.serverList['labels']
                                    .map<String>((e) => e as String)
                                    .toList(),
                                onChanged: (label) {
                                  String selectedUrl =
                                      state.loginState.serverList['urls'][state
                                          .loginState.serverList['labels']
                                          .indexOf(state
                                              .loginState.serverList['labels']
                                              .firstWhere((e) => e == label))];
                                  appStore.dispatch(UpdateLoginAction(
                                      selectedDomain: {
                                        'label': label,
                                        "url": selectedUrl
                                      }));
                                },
                                dropdownSize: DropdownSize.SIZE5,
                                borderRadius: 12,
                                isOrange: true,
                                value: state.loginState.selectedDomain['label'],
                                buttonHorizontalPadding: 10,
                                buttonVerticalPadding: 24,
                              ),
                              SizedBox(height: 23.h),
                              InputFieldYolletAppLabel(
                                isSemibold: true,
                                label: storeId,
                                labelSize: LabelSize.M,
                                isOrange: true,
                              ),
                              InputFieldYolletApp(
                                borderRadius: 12,
                                inputSize: InputSize.L2,
                                inputType: state.loginState.loginIsLoading
                                    ? InputType.Disabled
                                    : InputType.Main,
                                controller: state.loginState.loginIDContr,
                                placeholder: storeIdEn,
                                enableBorder: true,
                                isOrange: true,
                              ),
                              SizedBox(height: 44.h),
                              InputFieldYolletAppLabel(
                                isSemibold: true,
                                label: storePassword,
                                labelSize: LabelSize.M,
                                isOrange: true,
                              ),
                              InputFieldYolletApp(
                                borderRadius: 12,
                                inputSize: InputSize.L2,
                                inputType: state.loginState.loginIsLoading
                                    ? InputType.Disabled
                                    : InputType.Main,
                                controller: state.loginState.loginPwdContr,
                                placeholder: storePassword,
                                enableBorder: true,
                                isOrange: true,
                                obscureText: true,
                                maxlines: 1,
                              ),
                            ],
                          ),
                          if (state.loginState.loginMsg.isNotEmpty)
                            Column(
                              children: [
                                SizedBox(height: 24.h),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    child: AlertOrigin(
                                        text: state.loginState.loginMsg)),
                                SizedBox(height: 48.h),
                              ],
                            )
                          else
                            SizedBox(height: 184.h),
                          PrimaryButton(
                            buttonText: enter,
                            buttonSize: ButtonSize.L2,
                            isLoading: state.loginState.loginIsLoading,
                            onPressed: () {
                              appStore.dispatch(GetCallLoginSetAuthAction);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const registration = 'Регистрация';
const cloudServerUrlEn = 'Cloud Server URL';
const storeId = 'ID магазина';
const storeIdEn = 'Store ID';
const storePassword = 'Store Password';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/validators.dart';

class LOGIN_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Scaffold(
        body: Center(
          child: SafeArea(
            child: Form(
              key: state.loginState.loginFormKey,
              child: Padding(
                padding: EdgeInsets.only(left: 72.w, right: 72.w),
                child: ScrollConfiguration(
                  behavior: NoInkScrollBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedText(
                          text: simplePayEn,
                          textStyle: ThemeTextSemibold.xl7
                              .apply(color: ThemeColors.orange500),
                        ),
                        SizedBox(height: 86.h),
                        SizedText(
                          text: entrance,
                          textStyle: ThemeTextSemibold.xl5
                              .apply(color: ThemeColors.orange500),
                        ),
                        SizedBox(height: 70.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InputFieldYolletAppLabel(
                              isSemibold: true,
                              label: loginId,
                              labelSize: LabelSize.M,
                              isOrange: true,
                            ),
                            InputFieldYolletApp(
                              borderRadius: 12,
                              inputSize: InputSize.L2,
                              placeholder: '- - - -',
                              validator: Validator.validateId,
                              enableBorder: true,
                              isOrange: true,
                              inputType: state.loginState.loginIsLoading
                                  ? InputType.Disabled
                                  : InputType.Main,
                              controller: state.loginState.loginIDContr,
                            ),
                            SizedBox(height: 70.h),
                            InputFieldYolletAppLabel(
                              isSemibold: true,
                              label: password,
                              labelSize: LabelSize.M,
                              isOrange: true,
                            ),
                            InputFieldYolletApp(
                              inputType: state.loginState.loginIsLoading
                                  ? InputType.Disabled
                                  : InputType.Main,
                              borderRadius: 12,
                              validator: Validator.validatePassword,
                              inputSize: InputSize.L2,
                              placeholder: '****',
                              enableBorder: true,
                              isOrange: true,
                              controller: state.loginState.loginPwdContr,
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
                            isLoading: state.loginState.loginIsLoading,
                            buttonText: enter,
                            buttonSize: ButtonSize.L2,
                            onPressed: () async => await appStore
                                .dispatch(GetCallLoginSetAuthAction)),
                      ],
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

const simplePayEn = 'SimplePay';
const entrance = 'Вход';
const loginId = 'ID';
const password = 'Пароль';
const enterPassword = 'Введите пароль';
const wrongCredentials = 'Неверный ID или пароль1';
const enter = 'Enter';

class NoInkScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:flutter_html/flutter_html.dart';

class REGISTER_00_002 extends StatelessWidget {
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
                              label: inforPos,
                              labelSize: LabelSize.M,
                              isOrange: true,
                            ),
                            InputFieldYolletappDropdown3(
                              listValues: state
                                      .loginState
                                      .simpleSyncGetRegistrationInfoRes
                                      .storeTerminals
                                      .isNotEmpty
                                  ? state
                                      .loginState
                                      .simpleSyncGetRegistrationInfoRes
                                      .storeTerminals
                                      .map<String>((e) => e.name)
                                      .toList()
                                  : ['PG-APP'],
                              onChanged: (e) {
                                StoreTerminal terminal = state
                                    .loginState
                                    .simpleSyncGetRegistrationInfoRes
                                    .storeTerminals
                                    .firstWhere((element) => element.name == e);
                                appStore.dispatch(
                                    UpdateLoginAction(storeTerminal: terminal));
                              },
                              dropdownSize: DropdownSize.SIZE5,
                              borderRadius: 12,
                              value:
                                  state.loginState.storeTerminal.name.isNotEmpty
                                      ? state.loginState.storeTerminal.name
                                      : null,
                              isOrange: true,
                              inputType: state.loginState.loginIsLoading
                                  ? InputType.Disabled
                                  : InputType.Main,
                              buttonHorizontalPadding: 10,
                              buttonVerticalPadding: 24,
                            ),
                            SizedBox(height: 55.h),
                            const SizedText(
                              text: privacyPolicy,
                              textStyle: ThemeTextSemibold.lg5,
                            ),
                            SizedBox(height: 24.h),
                            SizedBox(
                              height: 456.h,
                              child: SingleChildScrollView(
                                  child: Html(
                                      style: {
                                    'p': Style(fontSize: const FontSize(30)),
                                    'h3': Style(fontSize: const FontSize(33)),
                                  },
                                      data: state
                                          .loginState
                                          .simpleSyncGetRegistrationInfoRes
                                          .serviceTerms)),
                            ),
                          ],
                        ),
                        SizedBox(height: 42.h),
                        PrimaryButton(
                          buttonText: enter,
                          isLoading: state.loginState.loginIsLoading,
                          buttonSize: ButtonSize.L2,
                          onPressed: () {
                            loginFsm.applyEvent(OnRegisterAppEvent());
                          },
                        ),
                        SizedBox(height: 24.h),
                        Visibility(
                          visible:
                              false, //state.navigationState.history.length > 1,
                          child: PrimaryButton(
                            buttonText: back,
                            buttonType: ButtonType.Link,
                            buttonSize: ButtonSize.L2,
                            onPressed: () {
                              if (!state.loginState.loginIsLoading) {
                                appStore.dispatch(NavigateToAction(to: 'up'));
                              }
                            },
                          ),
                        )
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

const inforPos = 'Infor POS';
const privacyPolicy = 'Политика конфиденциальности';
const privacyPolicyText =
    '1.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.1.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.1.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.1.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.1.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.1.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.';
const back = 'Назад';

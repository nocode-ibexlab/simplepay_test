import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/validators.dart';

class SPLASH_SCREEN_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      onInitialBuild: (store) async =>
          await appStore.dispatch(GetDeviceInitDeviceAction),
      builder: (context, state) => Scaffold(
          body: Center(
              child: SizedText(
                  text: simplePayEn,
                  textStyle: ThemeTextSemibold.xl8
                      .apply(color: ThemeColors.orange500)))),
    );
  }
}

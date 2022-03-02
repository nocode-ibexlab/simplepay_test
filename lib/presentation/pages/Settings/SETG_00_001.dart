import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SETG_00_001 extends StatelessWidget {
  const SETG_00_001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            titleText: settings,
            paddingHorizontal: 0,
            paddingTop: 0,
            child: SpacedColumn(
              verticalSpace: 12,
              children: [
                _buildSettingsTile(language, () {
                  appStore.dispatch(
                      NavigateToAction(to: AppRoutes.RouteToSETG_00_002));
                }),
                _buildSettingsTile(synchronization, () {
                  appStore.dispatch(
                      NavigateToAction(to: AppRoutes.RouteToSETG_00_003));
                }),
                _buildSettingsTile(appendix, () {}),
              ],
            )));
  }

  Widget _buildSettingsTile(String option, VoidCallback onTap) {
    return RectangleFrame228(
        onTap: onTap,
        child: SizedText(
          text: option,
          textStyle:
              ThemeTextRegular.xl2.copyWith(color: ThemeColors.coolgray900),
        ));
  }
}

const language = 'Язык';
const synchronization = 'Синхронизация';
const appendix = 'Приложение Yoshop Remote';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SETG_00_002 extends StatelessWidget {
  const SETG_00_002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            titleText: language,
            paddingHorizontal: 0,
            paddingTop: 0,
            child: SpacedColumn(
              verticalSpace: 12,
              children: [
                _buildSettingsTile('Қазақша', 'Казахский', () {}),
                _buildSettingsTile('Русский', 'Русский', () {}),
                _buildSettingsTile('한국인', 'Корейский', () {}),
              ],
            )));
  }

  Widget _buildSettingsTile(
      String language, String shortLang, VoidCallback onTap) {
    return InkWell(
      child: RectangleFrame228(
          height: 170,
          onTap: onTap,
          child: SpacedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedText(
                text: language,
                textStyle: ThemeTextRegular.xl2
                    .copyWith(color: ThemeColors.coolgray900),
              ),
              SizedText(
                  text: shortLang,
                  textStyle: ThemeTextRegular.lg4
                      .copyWith(color: ThemeColors.coolgray900))
            ],
          )),
    );
  }
}

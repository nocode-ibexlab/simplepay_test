import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/presentation/widgets/frames/rectangle_frame228.dart';

class SETG_00_003 extends StatelessWidget {
  const SETG_00_003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            titleText: synchronization,
            paddingTop: 0,
            paddingHorizontal: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: ThemeColors.white,
              child: SpacedRow(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SpacedColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedText(
                          text: 'Посл.синх:',
                          textStyle: ThemeTextRegular.xl2
                              .copyWith(color: ThemeColors.coolgray900),
                        ),
                        SizedText(
                          text: '11 Окт. 2021, 09:10',
                          textStyle: ThemeTextRegular.xl2
                              .copyWith(color: ThemeColors.coolgray600),
                        )
                      ]),
                  SimplePayIcon(
                    PayIcons.sync,
                    color: ThemeColors.lime500,
                    size: 46.h,
                  )
                ],
              ),
            )));
  }
}

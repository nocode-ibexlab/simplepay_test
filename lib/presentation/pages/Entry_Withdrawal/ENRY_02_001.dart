import 'package:flutter_redux/flutter_redux.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/presentation/widgets/frames/rectangle_frame20.dart';

class ENRY_02_001 extends StatefulWidget {
  @override
  State<ENRY_02_001> createState() => _ENRY_02_001State();
}

class _ENRY_02_001State extends State<ENRY_02_001>
    with LifecycleAware, LifecycleMixin {
  @override
  void onLifecycleEvent(LifecycleEvent event) async {
    if (event == LifecycleEvent.active) {
      await appStore.dispatch(GetCashInOutHistoryAction);
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onDispose: (store) {
          _resetDate();
        },
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            titleText: history,
            paddingTop: 0,
            paddingHorizontal: 0,
            showActionCalendar: () {
              appStore
                  .dispatch(NavigateToAction(to: AppRoutes.RouteToDATE_00_001));
            },
            child: SpacedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 24.h, horizontal: 32.w),
                  child: SizedText(
                    text: recentActivities,
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray600),
                  ),
                ),
                if (state.storeState.cashInOutHistoryRes.isNotEmpty)
                  Flexible(
                    child: SingleChildScrollView(
                      child: SpacedColumn(
                          verticalSpace: 9,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: state.storeState.cashInOutHistoryRes
                              .map<Widget>(
                                (e) => _buildSingleListTile(
                                    e.inOutTime.toString(),
                                    e.amount,
                                    e.inOutTypeCode,
                                    status: e.memo),
                              )
                              .toList()),
                    ),
                  )
                else
                  Center(
                    child: SizedText(
                      text: 'History is empty',
                      textStyle: ThemeTextRegular.xl
                          .copyWith(color: ThemeColors.coolgray600),
                    ),
                  )
              ],
            )));
  }

  Widget _buildSingleListTile(String date, double price, String inOutType,
      {String? status}) {
    return RectangleFrame20(
        child: SpacedRow(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SpacedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedText(
              text: date.getDateAndTimeFormat,
              textStyle: ThemeTextRegular.xl,
            ),
            if (status != null && status.isNotEmpty)
              SpacedRow(
                horizontalSpace: 16,
                children: [
                  SimplePayIcon(PayIcons.chat,
                      size: 40.h, color: ThemeColors.coolgray500),
                  SizedText(
                      text: status,
                      textStyle: ThemeTextRegular.lg5
                          .copyWith(color: ThemeColors.coolgray500)),
                ],
              )
          ],
        ),
        SizedText(
            text:
                '${inOutType != "I" ? "-" : "+"} ${price.getPriceMap.formattedVer}',
            textStyle: ThemeTextRegular.lg4.copyWith(
                color: inOutType != "I"
                    ? ThemeColors.red500
                    : ThemeColors.green500))
      ],
    ));
  }
}

_resetDate() {
  appStore.dispatch(UpdateCalenderAction(startDate: '', endDate: ''));
}

const history = 'История';
const recentActivities = 'Последние операций';

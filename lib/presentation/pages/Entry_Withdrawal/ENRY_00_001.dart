import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class ENRY_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onInit: (store) {},
        onDispose: (store) {
          _resetDate();
        },
        builder: (context, state) => DefaultBody(
              showLeadingBack: true,
              titleText: entryWithdrawalTitle,
              paddingTop: 24,
              showActionClock: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToENRY_02_001));
              },
              child: SpacedColumn(
                children: [
                  InputFieldYolletappDropdown3(
                    hint: _hint(state),
                    listValues: const ['I', 'O'],
                    value: state.storeState.inOutType,
                    onChanged: (value) {
                      appStore.dispatch(UpdateStoreAction(inOutType: value));
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomInputComponent(
                    totalTextNumber: state.storeState.amount,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  DefaultNumpad(
                      totalTextNumber: state.storeState.amount,
                      onTap: _onNumTap),
                ],
              ),
              footerHeight: 268,
              footer: _buildFooter(state.storeState.amount, state),
            ));
  }

  _onNumTap(value) {
    appStore.dispatch(UpdateStoreAction(amount: value));
  }

  //hint

  _hint(AppState state) {
    if (state.entryWithdrawalState.inOutType == "I") {
      return "I (Внесение)";
    } else if (state.entryWithdrawalState.inOutType == "O") {
      return "O (изъятие)";
    }
    return "Внесение/изъятие";
  }

//footer
  Widget _buildFooter(totalValue, AppState state) =>
      SpacedColumn(verticalSpace: 24, children: [
        PrimaryButton(
            buttonText: '${submit.tr} ${double.parse(state.storeState.amount)}',
            onPressed: () async {
              _buildPopup(state);
            }),
        PrimaryButton(
          buttonText: cancel,
          buttonType: ButtonType.Ghost,
          linkTypeBtnColor: ThemeColors.white,
          onPressed: () {
            Get.back();
          },
        )
      ]);

  _resetDate() {
    appStore.dispatch(
      UpdateCalenderAction(
          startDate: DateFormat('yyyyMMdd').format(DateTime.now()),
          endDate: DateFormat('yyyyMMdd')
              .format(DateTime.now().subtract(const Duration(days: 1)))),
    );
  }
}

_buildPopup(AppState state) {
  showSimpleDialog(
    body: AddNewComment(
      controller: state.storeState.memoContr,
      onConfirm: _onConfirm,
      onSkip: () {
        state.storeState.memoContr.clear();
        _onConfirm();
      },
    ),
    horizontalPadding: 32,
    paddingTop: 32,
    paddingBottom: 32,
  );
}

_onConfirm() async {
  await appStore.dispatch(GetCashInOutAction);
}

const entryWithdrawalTitle = 'Внесение/изъятие';
const submit = 'Внести';

import 'package:lottie/lottie.dart';
import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

import '../../models/model_exporter.dart';
import '../../rest/api_service_client.dart';
import '../action.dart';

class TenderMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetListPaymentMethodsAction:
        return _getListPaymentMethodsAction(store.state, next);
      case GetApprovePaymentAction:
        return _getApprovePaymentAction(store.state, next);
      case GetCancelPaymentAction:
        return _getCancelPaymentAction(store.state, next);
      case GetGetPartialPaymentAction:
        return _getPartialPaymentAction(store.state, next);
      default:
        return next(action);
    }
  }
}

_getListPaymentMethodsAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    next(UpdateTenderAction(
        listPaymentMethodsRes: ApiResult.value
            .map<TenderListPaymentMethodsRes>(
                (e) => TenderListPaymentMethodsRes.fromJson(e))
            .toList()));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(
      ApiInvokes.invokeListPaymentMethods,
      onSuccess: _onSuccess,
      onFail: _onFail));
}

_getApprovePaymentAction(AppState state, NextDispatcher next) async {
  final _params = TenderApprovePaymentReq(
          paymentMethodCode:
              state.tenderState.selectedPaymentMethod.paymentMethodCode,
          amount: state.basketState.totalDue)
      .toJson();
  _onSuccess() {
    showSimpleDialog(
        body: SpacedColumn(
      verticalSpace: 12,
      children: [
        SimplePayIcon(PayIcons.checkCircle,
            color: ThemeColors.lime500, solid: true, size: 138.w),
        const Padding(
          padding: EdgeInsets.only(bottom: 24.0),
          child: SizedText(
              text: 'Оплата прошла успешно!', textStyle: ThemeTextSemibold.xl),
        )
      ],
    ));
  }

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeApprovePayment,
      onSuccess: _onSuccess, onFail: _onFail, params: _params));
}

_getCancelPaymentAction(AppState state, NextDispatcher next) async {
  final _params = TenderCancelPaymentReq(
          receiptNo: '2022022507562410601', //TODO:SHOH
          paymentMethodCode:
              state.tenderState.selectedPaymentMethod.paymentMethodCode,
          amount: state.basketState.totalDue)
      .toJson();
  _onSuccess() {}

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeCancelPayment,
      onSuccess: _onSuccess, onFail: _onFail, params: _params));
}

_getPartialPaymentAction(AppState state, NextDispatcher next) async {
  final _params = {"orderId": "20220224_75937103"}; //TODO:SHOH
  _onSuccess() {}

  _onFail() {}
  await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokePartialPayment,
      onSuccess: _onSuccess, onFail: _onFail, params: _params));
}

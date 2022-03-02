import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';
import 'package:simple_pay_flutter/presentation/pages/Report/CHCK_00_001.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';

class ReportMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetListSalesByShiftAction:
        return _getListSalesByShiftAction(store.state, next);
      case GetSalesDetailsAction:
        return _getSalesDetailsAction(store.state, next);
      case GetSummarizeAmountsAction:
        return _getSummarizeAmountsAction(store.state, next);
      case GetSummarizeByItemGroupsAction:
        return _getSummarizeByItemGroupsAction(store.state, next);
      case GetSummarizeByItemsAction:
        return _getSummarizeByItemsAction(store.state, next);
      default:
        return next(action);
    }
  }
}

// GetListSalesByShiftAction
_getListSalesByShiftAction(AppState state, NextDispatcher next) async {
  final _params = {"shiftId": state.storeState.currentShiftRes.shiftId};

  _onSuccess() {
    logger(state.reportState.tenderListSalesByShiftResList, hint: "LIST");

    next(UpdateReportAction(
        tenderListSalesByShiftResList: ApiResult.value
            .map<TenderListSalesByShiftRes>(
                (e) => TenderListSalesByShiftRes.fromJson(e))
            .toList()));
  }

  _onFail() {}

  await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeListSalesByShift,
    params: _params,
    onSuccess: _onSuccess,
    onFail: _onFail,
  ));
}

// GetSalesDetailsAction
_getSalesDetailsAction(AppState state, NextDispatcher next) async {
  final salesHistoryId = "";
  final _params = {"salesHistoryId": salesHistoryId};

  bool success = await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeTenderGetSalesDetails,
    params: _params,
  ));
  switch (success) {
    case false:
      logger(ApiResult.error.msg, hint: 'ERRORLOG_invokeTenderGetSalesDetails');
      break;
    default:
      SimpleTenderGetSalesDetailsRes simpleTenderGetSalesDetailsRes =
          SimpleTenderGetSalesDetailsRes.fromJson(ApiResult.value);

      next(UpdateReportAction(
          simpleTenderGetSalesDetailsRes: simpleTenderGetSalesDetailsRes));
  }
}

// GetSummarizeAmountsAction
_getSummarizeAmountsAction(AppState state, NextDispatcher next) async {
  final _params = {
    "endDate": state.calenderState.endDate,
    "startDate": state.calenderState.startDate
  };
  bool success = await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeReportSummarizeAmounts,
    params: _params,
  ));
  switch (success) {
    case false:
      logger(ApiResult.error.msg,
          hint: 'ERRORLOG_invokeReportSummarizeAmounts');
      break;
    default:
      SimpleReportSummarizeAmountsRes simpleReportSummarizeAmountsRes =
          SimpleReportSummarizeAmountsRes.fromJson(ApiResult.value);

      next(UpdateReportAction(
          simpleReportSummarizeAmountsRes: simpleReportSummarizeAmountsRes));
  }
}

// GetSummarizeByItemGroupsAction
_getSummarizeByItemGroupsAction(AppState state, NextDispatcher next) async {
  final _params = {
    "isSales": state.reportState.isSales,
    "startDate": state.calenderState.startDate,
    "endDate": state.calenderState.endDate
  };

  _onSuccess() {
    logger(state.reportState.simpleReportSummarizeByItemsResList,
        hint: "SummarizeByItem");

    next(UpdateReportAction(
        simpleReportSummarizeByItemGroupsResList: ApiResult.value
            .map<SimpleReportSummarizeByItemGroupsRes>(
                (e) => SimpleReportSummarizeByItemGroupsRes.fromJson(e))
            .toList()));
  }

  _onFail() {
    logger(state.reportState.simpleReportSummarizeByItemsResList, hint: "LIST");
  }

  await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeReportSummarizeByItemGroups,
    params: _params,
    onSuccess: _onSuccess,
    onFail: _onFail,
  ));
}

// GetSummarizeByItemsAction
_getSummarizeByItemsAction(AppState state, NextDispatcher next) async {
  final _params = {
    "isSales": state.reportState.isSales,
    "itemGroupId": state.reportState.itemGroupId,
    "startDate": state.calenderState.startDate,
    "endDate": state.calenderState.endDate
  };

  _onSuccess() {
    next(UpdateReportAction(
        simpleReportSummarizeByItemsResList: ApiResult.value
            .map<SimpleReportSummarizeByItemsRes>(
                (e) => SimpleReportSummarizeAmountsRes.fromJson(e))
            .toList()));
  }

  _onFail() {}

  await appStore.dispatch(GetRunApiFetchAction(
    ApiInvokes.invokeReportSummarizeByItems,
    params: _params,
    onSuccess: _onSuccess,
    onFail: _onFail,
  ));
}

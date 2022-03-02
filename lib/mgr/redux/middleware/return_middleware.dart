import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/api_fsm.dart';
import 'package:simple_pay_flutter/mgr/models/simple_tender_get_sales_details/tender_get_sales_details_res.dart';
import 'package:simple_pay_flutter/mgr/models/simple_tender_get_sales_history/tender_get_sales_history_req.dart';
import 'package:simple_pay_flutter/mgr/models/simple_tender_get_sales_history/tender_get_sales_history_res.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/mgr/rest/api_service_client.dart';

class ReturnMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetSalesHistoryAction:
        return _getSalesHistoryAction(store.state, next);
      default:
        return next(action);
    }
  }
}

_getSalesHistoryAction(AppState state, NextDispatcher next) async {
  // final _params = SimpleTenderGetSalesHistoryReq(
  //   startDate: '1',
  //   endDate: '1',
  //   receiptNo: '1',
  // ).toJson();
  // bool success = await appStore.dispatch(GetRunApiFetchAction(
  //     ApiInvokes.invokeTenderGetSalesHistory,
  //     params: _params));
  // switch (success) {
  //   case false:
  //     // Failed
  //     break;
  //   default:
  //     // Success
  //     next(UpdateReturnAction(
  //         simpleTenderGetSalesHistoryRes:
  //             SimpleTenderGetSalesHistoryRes.fromJson(ApiResult.value)));
  // }
}

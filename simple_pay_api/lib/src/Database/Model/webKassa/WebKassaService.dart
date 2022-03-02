import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import 'model/AuthCredentialsRequest.dart';
import 'model/CashboxChangeToken.dart';
import 'model/CashboxChangeTokenResponse.dart';
import 'model/CashboxesRequest.dart';
import 'model/CashboxesResponse.dart';
import 'model/CheckOperationRequest.dart';
import 'model/CheckOperationResponse.dart';
import 'model/ControlTapeRequest.dart';
import 'model/ControlTapeResponse.dart';
import 'model/EmployeeListRequest.dart';
import 'model/EmployeeListResponse.dart';
import 'model/HistoryByNumberRequest.dart';
import 'model/HistoryByNumberResponse.dart';
import 'model/MoneyOperationRequest.dart';
import 'model/MoneyOperationResponse.dart';
import 'model/RefUnitsRequest.dart';
import 'model/RefUnitsResponse.dart';
import 'model/ShiftHistoryRequest.dart';
import 'model/ShiftHistoryResponse.dart';
import 'model/TokenResponse.dart';
import 'model/XreportRequest.dart';
import 'model/ZXReportResponse.dart';
import 'model/ZreportRequest.dart';

part 'WebKassaService.g.dart';

@RestApi()
abstract class WebKassaService {
  factory WebKassaService(Dio dio, {String? baseUrl}) = _WebKassaService;

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Authorize")
  Future<TokenResponse> Authorize(@Body() AuthCredentialsRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Cashbox/ChangeToken")
  Future<CashboxChangeTokenResponse> ChangeToken(
      @Body() CashboxChangeToken param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Check")
  Future<CheckOperationResponse> Check(@Body() CheckOperationRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("MoneyOperation")
  Future<MoneyOperationResponse> MoneyOperation(
      @Body() MoneyOperationRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("ZReport")
  Future<ZXReportResponse> ZReport(@Body() ZreportRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("XReport")
  Future<ZXReportResponse> XReport(@Body() XreportRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Reports/ControlTape")
  Future<ControlTapeResponse> ControlTape(@Body() ControlTapeRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Cashboxes")
  Future<CashboxesResponse> Cashboxes(@Body() CashboxesRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Cashbox/ShiftHistory")
  Future<ShiftHistoryResponse> ShiftHistory(@Body() ShiftHistoryRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Employee/List")
  Future<EmployeeListResponse> EmployeeList(@Body() EmployeeListRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("Check/HistoryByNumber")
  Future<HistoryByNumberResponse> HistoryByNumber(
      @Body() HistoryByNumberRequest param);

  @Headers(<String, String>{"Accept": "application/json"})
  @POST("references/RefUnits")
  Future<RefUnitsResponse> RefUnits(@Body() RefUnitsRequest param);
}

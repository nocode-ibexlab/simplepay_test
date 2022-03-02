import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/material.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';

import 'WebKassaService.dart';
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

class WebKassaRestClient {
  static final String TAG = "WebKassaRestClient";

  static final bool LOGGING = true;

  static String? getToken() {
    return token;
  }

  static void setToken(String? token) {
    WebKassaRestClient.token = token;
  }

  static String? token;

  static String? URL;

  static String? getURL() {
    return URL;
  }

  static void setURL(String URL) {
    WebKassaRestClient.URL = URL;
  }

  static bool isNullEmpty(String s) {
    return s == null || s.isEmpty;
  }

//
//      static void request(T req, final Function callback){
// //        if (shouldHaveToken && isNullEmpty(token)) {
// //            return;
// //        }
//
//         req.enqueue(new Callback<T>() {
//             @Override
//              void onResponse(Call<T> call, Response<T> response) {
//                 if (callback != null) {
//                     if (response.isSuccessful()) {
//                         callback.succeed(response.body());
//                     } else {
//                         ResponseBody body = response.errorBody();
//
//                         if (body != null) {
// //                            Gson gson = new Gson();
// //
// //                            try {
// //                                ApiError e = gson.fromJson(body.string(), ApiError.class);
// //                                callback.fail(e.getErrors().getUserMessage());
// //                                return;
// //                            } catch (IOException | JsonSyntaxException ignored) {
// //                            }
//                             callback.fail("Fail", response.body());
//                         }
//
//                         callback.fail(null, null);
//                     }
//                 }
//             }
//
//             @Override
//              void onFailure(Call call, Throwable t) {
//                 if (callback != null) {
//                     callback.fail(t.getMessage(), null);
//                 }
//             }
//         });
//     }

  // private static Map<String, Object> fieldMap(Object obj) {
  //     Gson gson = new Gson();
  //     String json = gson.toJson(obj);
  //     return gson.fromJson(json, new TypeToken<HashMap<String, Object>>() {
  //     }.getType());
  // }

  // private static String Url() {
  //     String url = getURL();
  //     return url.endsWith("/") ? url : url + "/";
  // }
  //
  // private static HttpLoggingInterceptor httpLoggingInterceptor(){
  //
  //     HttpLoggingInterceptor interceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() {
  //         @Override
  //          void log(String message) {
  //             Log.e("WebKassaService :", message + "");
  //         }
  //     });
  //
  //     return interceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
  // }

  static WebKassaService webKassaService() {
    // Retrofit.Builder b = new Retrofit.Builder()
    //     .baseUrl(Url())
    //     .addConverterFactory(GsonConverterFactory.create());
    //
    // if (LOGGING) {
    //     b.client(new OkHttpClient.Builder()
    //         .addNetworkInterceptor(httpLoggingInterceptor())
    //         .build());
    // }
    //
    // return b.build().create(WebKassaService.class);
    final dio = Dio(); // Provide a dio instance
    // dio.options.headers["Demo-Header"] = "demo header";   // config your dio headers globally
    dio.interceptors.add(LogInterceptor(
        // requestBody:true,
        responseBody: true,
        logPrint: (object) => debugPrint(object as String?)));
    // dio.interceptors.add(DateTimeInterceptor());
    final client = WebKassaService(dio, baseUrl: URL);
    return client;
  }

//    protected static Object retrofit(String serverAddress, Class<?> classname) {
//        Retrofit retrofit = new Retrofit.Builder().baseUrl(serverAddress).addConverterFactory(GsonConverterFactory.create()).build();
//        return retrofit.create(classname);
//    }
//
//    private static WebKassaService webKassaService() {
//        return (WebKassaService) retrofit(Url(), WebKassaService.class);
//    }

  static Future<void> Authorize(
      AuthCredentialsRequest model, Function callback) async {
//        token = null;
//          TokenResponse req = await
    webKassaService().Authorize(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(TokenResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(TokenResponse(), -1, "fail");
      }
    });
    // request(req, callback, false);
  }

  static Future<void> ChangeToken(
      CashboxChangeToken model, Function callback) async {
    // CashboxChangeTokenResponse req =
    webKassaService().ChangeToken(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());

      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(
              CashboxChangeTokenResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(CashboxChangeTokenResponse(), -1, "fail");
      }
    });
    // request(req, callback, true);
  }

  static Future<void> Check(
      CheckOperationRequest model, Function callback) async {
    //CheckOperationResponse req =
    webKassaService().Check(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(CheckOperationResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(CheckOperationResponse(), -1, "fail");
      }
    });
    // request(req, callback, true);
  }

  static Future<void> MoneyOperation(
      MoneyOperationRequest model, Function callback) async {
    //MoneyOperationResponse req = await
    webKassaService().MoneyOperation(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(MoneyOperationResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(MoneyOperationResponse(), -1, "fail");
      }
    });
    // request(req, callback, true);
  }

  static Future<void> ZReport(ZreportRequest model, Function callback) async {
    //ZXReportResponse req = await
    webKassaService().ZReport(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(ZXReportResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(ZXReportResponse(), -1, "fail");
      }
    });
    // request(req, callback, true);
  }

  static Future<void> XReport(XreportRequest model, Function callback) async {
    //ZXReportResponse req = await
    webKassaService().XReport(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(ZXReportResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(ZXReportResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }

  static Future<void> ControlTape(
      ControlTapeRequest model, Function callback) async {
    //ControlTapeResponse req = await
    webKassaService().ControlTape(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(ControlTapeResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(ControlTapeResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }

  static Future<void> Cashboxes(
      CashboxesRequest model, Function callback) async {
    //CashboxesResponse req = await
    webKassaService().Cashboxes(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(CashboxesResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(CashboxesResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }

  static Future<void> ShiftHistory(
      ShiftHistoryRequest model, Function callback) async {
    //ShiftHistoryResponse req =await
    webKassaService().ShiftHistory(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(ShiftHistoryResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(ShiftHistoryResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }

  static Future<void> EmployeeList(
      EmployeeListRequest model, Function callback) async {
    //EmployeeListResponse req = await
    webKassaService().EmployeeList(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(EmployeeListResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(EmployeeListResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }

  static Future<void> HistoryByNumber(
      HistoryByNumberRequest model, Function callback) async {
    //HistoryByNumberResponse req = await
    webKassaService().HistoryByNumber(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(
              HistoryByNumberResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(HistoryByNumberResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }

  static Future<void> RefUnits(RefUnitsRequest model, Function callback) async {
    //RefUnitsResponse req =await
    webKassaService().RefUnits(model).then((it) {
      // logger.i(it);
      callback(it);
    }).catchError((Object obj) {
      Log.e(TAG, obj.toString());
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response!;
          // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          callback(RefUnitsResponse(), res.statusCode, res.statusMessage);
          break;
        default:
          callback(RefUnitsResponse(), -1, "fail");
      }
    });
    //  request(req, callback, true);
  }
}
//
// class DateTimeInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     options.queryParameters = options.queryParameters.map((key, value) {
//       if (value is DateTime) {
//         //may be change to string from any you use object
//         return MapEntry(key, value.toString());
//       } else {
//         return MapEntry(key, value);
//       }
//     });
//     handler.next(options);
//   }
// }

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/exception.dart';
import 'package:uuid/uuid.dart' as uuid;

import 'Database/Model/intent.dart';
import 'Database/Util/BuildConfig.dart';
import 'Database/Util/MyPrefs.dart';
import 'utils.dart';

typedef IntentCallback = void Function(
  String transactionNo,
  int resCode,
  String? message,
  IntentContentResponse? response,
);

class ExtSend with Utils {
  static const _tag = 'ExtSend';
  static const String _payAppUrl = 'http://localhost:6500/';
  static const int codeBusy = -123456;

  final Map<String, IntentCallback> _resultMap = <String, IntentCallback>{};
  final MyPrefs _prefs = MyPrefs();
  int _requestIndex = 0;
  int _requestTotal = 0;

  static final ExtSend _singleton = ExtSend._internal();

  factory ExtSend() => _singleton;

  ExtSend._internal();

  void setRequestTotal(int total) {
    _requestTotal = total;
    _requestIndex = 1;
  }

  Future<Map> sendIntent(
    String command,
    IntentContentRequest request, [
    IntentCallback? callback,
  ]) async {
    String tranNo = const uuid.Uuid().v4();
    IntentRequest req = await _createRequest(command, tranNo, request);

    if (BuildConfig.USE_PAY_APP) {
      _sendDataToPayApp(command, tranNo, req.toJson());
    } else {
      throw ApiException(500, 'Internal payments are not supported');
    }

    if (callback != null) {
      _resultMap[tranNo] = callback;
      return {};
    } else {
      Completer<Map> completer = Completer();

      _resultMap[tranNo] = (tranNo, code, message, response) {
        completer.complete({
          'tranNo': tranNo,
          'code': code,
          'message': message,
          'response': response,
        });
      };

      return completer.future;
    }
  }

  Future<Map> sendTransactionIntent(
    String command,
    String source,
    IntentContentRequest content, [
    IntentCallback? callback,
  ]) async {
    String tranNo = const uuid.Uuid().v4();
    _prefs.transactionNo()!.put(tranNo);
    _prefs.transactionData()!.put(source);
    IntentRequest request = await _createRequest(command, tranNo, content);

    if (_requestTotal > 0) {
      request.content!.reqTotal = _requestTotal.toString();
      request.content!.reqIdx = (_requestIndex++).toString();

      if (_requestIndex > _requestTotal) {
        _requestTotal = 0;
        _requestIndex = 0;
      }
    }

    if (BuildConfig.USE_PAY_APP) {
      _sendDataToPayApp(command, tranNo, request.toJson());
    } else {
      throw ApiException(500, 'Internal payments are not supported');
    }

    if (callback != null) {
      _resultMap[tranNo] = (tranNo, code, message, response) {
        _prefs.transactionNo()!.put('');
        _prefs.transactionData()!.put('');
        callback(tranNo, code, message, response);
      };
      return {};
    } else {
      Completer<Map> completer = Completer();

      _resultMap[tranNo] = (tranNo, code, message, response) {
        _prefs.transactionNo()!.put('');
        _prefs.transactionData()!.put('');

        completer.complete({
          'tranNo': tranNo,
          'code': code,
          'message': message,
          'response': response,
        });
      };

      return completer.future;
    }
  }

  Future<IntentRequest> _createRequest(
    String command,
    String tranNo,
    IntentContentRequest? content,
  ) async {
    final opBL = OperationBL();
    return IntentRequest()
      ..common = (IntentCommon()
        ..targetPackage = 'V1'
        ..targetName = 'yoshopPayment'
        ..targetSvc = 'payment_app.yoshop.net'
        ..targetApi = command
        ..authorization = ''
        ..sourceSvc = 'pos_app.yoshop.net'
        ..sourceVer = 'V1'
        ..sourceAddr = await opBL.getStoreTerminalId()
        ..reqTimestamp = DateTime.now().millisecondsSinceEpoch.toString()
        ..tranNo = tranNo)
      ..content = content ?? IntentContentRequest();
  }

  void _sendDataToPayApp(
    String command,
    String tranNo,
    Map<String, dynamic> request,
  ) {
    print('=== POS => PAY ===\n$request');
    post(
      Uri.parse(_payAppUrl + command),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      encoding: Encoding.getByName('utf-8'),
      body: json.encode(request),
    ).then((rsp) {
      IntentResponse response = IntentResponse.fromJson(json.decode(rsp.body));
      String? tranNo = response.common?.tranNo;

      if (tranNo != null) {
        int resCode = int.tryParse(response.common?.resCode ?? '-1') ?? -1;
        String message = response.common?.resMessage ?? '';
        onPayAppResponse(tranNo, resCode, message, response.content);
      }
    }).catchError((error) {
      onPayAppResponse(tranNo, -1, '$error');
    });
  }

  void onPayAppResponse(
    String tranNo,
    int resCode,
    String message, [
    IntentContentResponse? content,
  ]) {
    IntentCallback? callback = _resultMap[tranNo];
    _resultMap.remove(tranNo);

    if (callback != null) {
      print('=== POS <= PAY ===\n[$resCode][$message]${content?.toJson()}');
      callback(tranNo, resCode, message, content);
    } else {
      TLog.w(_tag, 'Cannot find responding callback: $tranNo');
    }
  }
}

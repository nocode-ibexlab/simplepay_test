import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:simple_pay_api/src/exception.dart';

import 'device.dart';
import 'device/printer.dart';
import 'inventory.dart';
import 'item.dart';
import 'order.dart';
import 'report.dart';
import 'settings.dart';
import 'store.dart';
import 'sync.dart';
import 'tender.dart';

class Simple {
  /// Event name constants
  static const evtDownload = 'DOWNLOAD';

  /// Table code constants
  static const tableTakeout = '9000';
  static const tableCat = '9999';

  /// Error code
  static const errOK = 200;
  static const errNoAuth = 550;
  static const errInvalidAuth = 551;
  static const errRegistrationRequired = 552;
  static const errNoLicense = 553;

  /// If true, print logs beautifully
  static bool prettyLogging = false;
  static bool isFlutterTest = Platform.environment.containsKey('FLUTTER_TEST');

  /// Called when trying to print a next page.
  /// The [pageNo] page in the [total] pages will be printed.
  /// If the response is true, the next page is printed, and if false, printing is canceled.
  static set onPrintNext(
          Future<bool?> Function(int total, int pageNo)? handler) =>
      Printer().onNext = handler;

  /// Called when the printer does not respond.
  /// If the response is true, keep waiting, and if false, printing is canceled.
  static set onPrintTimeout(Future<bool?> Function()? handler) =>
      Printer().onTimeout = handler;

  /// Called when a printer error occurs.
  static set onPrintError(
          Future<void> Function(int code, String message)? handler) =>
      Printer().onError = handler;

  /// Is printing?
  static bool get isPrinting => Printer().isPrinting;

  /// Is printing or waiting?
  static Future<bool> get isPrintingOrWaiting => Printer().isPrintingOrWaiting;

  /// Is printing complete?
  static bool get isPrintComplete => Printer().isComplete;

  static const MethodChannel _channel = MethodChannel('simple_pay_api');
  static const EventChannel _events = EventChannel('simple_pay_events');
  static final Map<String, StreamController> _channels =
      <String, StreamController>{};

  /// Call API [method] with [params]
  ///
  /// If [json] is true, [params] and the result value should be json.
  static Future invoke(String method,
      {dynamic params, bool json = false}) async {
    _log('>> $method', params);
    dynamic result;

    try {
      List<String> parts = method.split('.');

      if (parts.length != 2) {
        throw ApiException(501, 'Bad method');
      }

      if (params != null) {
        params = json ? jsonDecode(params) : params;
      }

      switch (parts[0]) {
        case 'device':
          result = await Device().invoke(parts[1], params);
          break;
        case 'inventory':
          result = await Inventory().invoke(parts[1], params);
          break;
        case 'item':
          result = await Item().invoke(parts[1], params);
          break;
        case 'order':
          result = await Order().invoke(parts[1], params);
          break;
        case 'report':
          result = await Report().invoke(parts[1], params);
          break;
        case 'settings':
          result = await Settings().invoke(parts[1], params);
          break;
        case 'store':
          result = await Store().invoke(parts[1], params);
          break;
        case 'sync':
          result = await Sync().invoke(parts[1], params);
          break;
        case 'tender':
          result = await Tender().invoke(parts[1], params);
          break;
        default:
          throw ApiException(501, 'Bad domain');
      }
    } on ApiException catch (e, stack) {
      print('$e\n$stack');
      result = {
        'common': {
          'resCode': e.code,
          'resMessage': e.message,
        },
        'content': e.rawData
      };
    } catch (e, stack) {
      print('$e\n$stack');
      result = {
        'common': {
          'resCode': 500,
          'resMessage': e.toString(),
        }
      };
    }

    _log('<< $method', result);
    return json ? jsonEncode(result) : result;
  }

  /// Check if [value] is the successful result
  static bool successful(dynamic value) {
    Map? r = _jsonDecode(value);
    return r != null && r['common'] != null
        ? r['common']['resCode'] ~/ 100 == 2
        : false;
  }

  /// Retrieve the result code from [value].
  /// The result code follows the HTTP status code system.
  /// See [HTTP Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#server_error_responses)
  ///
  /// * 200 OK
  /// * 400 Bad request
  /// * 401 Unauthorized
  /// * 403 Forbidden
  /// * 404 Not found
  /// * 429 Too many requests
  /// * 500 Internal error
  /// * 501 Not implemented
  /// * 550~ App defined
  static int resCode(dynamic value) {
    Map? r = _jsonDecode(value);
    return r != null && r['common'] != null ? r['common']['resCode'] : 500;
  }

  /// Retrieve the result message from [value]
  static String resMessage(dynamic value) {
    Map? r = _jsonDecode(value);
    return r != null && r['common'] != null ? r['common']['resMessage'] : '';
  }

  /// Retrieve the result map, or the result value if [key] is specified
  static dynamic result(dynamic value, [String? key]) {
    Map? r = _jsonDecode(value);
    return key != null ? (r?['content']?[key]) : r?['content'];
  }

  static Map? _jsonDecode(dynamic value) {
    if (value == null) {
      return null;
    }

    return value is String ? jsonDecode(value) : value;
  }

  static Future platformInvoke(String method, [dynamic params]) async {
    if (Simple.isFlutterTest) {
      return;
    }

    _log('>> platform:$method', params);
    dynamic result;

    if (params != null) {
      params = jsonEncode(params);
    }

    try {
      String? rsp = await _channel.invokeMethod(method, params);

      if (rsp != null) {
        result = jsonDecode(rsp);
      } else {
        result = {
          'common': {
            'resCode': 200,
            'resMessage': 'success (void)',
          }
        };
      }
    } catch (e, stack) {
      print('$e\n$stack');
      result = {
        'common': {
          'resCode': 500,
          'resMessage': e.toString(),
        }
      };
    }

    _log('<< platform:$method', result);
    return result;
  }

  static void dispose() {
    for (var i in _channels.values) {
      i.close();
    }
  }

  /// Called during device.initDevice
  static void initPrintEvents() {
    _events.receiveBroadcastStream().listen((event) {
      Printer().handleEvent(Simple.resCode(event), Simple.result(event));
    });
  }

  /// Register an event [listener] with event [name]
  static StreamSubscription listenEvent(
      String name, void Function(dynamic event) listener) {
    if (!_channels.containsKey(name)) {
      _channels[name] = StreamController();
    }

    return _channels[name]!.stream.listen(listener);
  }

  /// Unregister an event listener with event [name]
  static void closeEvent(String name) {
    if (_channels.containsKey(name)) {
      _channels[name]?.close();
      _channels.remove(name);
    }
  }

  /// Send an event [value] with event [name]
  static void sendEvent(String name, dynamic value) {
    if (_channels.containsKey(name)) {
      _channels[name]!.add(value);
    }
  }

  static void _log(String tag, [dynamic msg]) {
    if (prettyLogging && msg != null) {
      JsonEncoder encoder = const JsonEncoder.withIndent('  ');
      msg = encoder.convert(msg);
    }

    print('SIMPLE $tag ${msg ?? ''}');
  }
}

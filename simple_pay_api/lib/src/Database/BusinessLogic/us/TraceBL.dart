import 'dart:async';
import 'dart:math';

import 'package:floor/floor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_pay_api/src/Database/Entity/TraceLog.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';

import '../BaseBL.dart';

class TraceBL extends BaseBL {
  static const _TAG = 'TraceBL';
  static const DB_PATH = 'trace.db';
  static const _MAX_LOG_SIZE = 1024;
  static const _MAX_LOG_LINES = 1000;
  static const _USE_DEFAULT = true;

  static final TraceBL _singleton = TraceBL._internal();

  factory TraceBL() => _singleton;

  TraceBL._internal();

  String? _storeId;
  String? _storeTerminalId;
  Timer? _timer;
  List<TraceLog> _logs = <TraceLog>[];

  ///
  /// 로깅 시 상점 및 상점터미널 설정
  ///
  Future<void> setPosInfo(String? storeId, String? storeTerminalId) async {
    _storeId = storeId;
    _storeTerminalId = storeTerminalId;

    if (await use()) {
      _startTimer();
    }
  }

  ///
  /// DB 로깅 사용
  ///
  Future<bool> use({bool? useLog}) async {
    var pref = await SharedPreferences.getInstance();

    if (useLog == null) {
      return pref.getBool('useDebug') ?? _USE_DEFAULT;
    }

    Log.d(_TAG, 'Trace logging enabled: $useLog');

    if (!useLog) {
      _stopTimer();
      _logs.clear();
      await _deleteAll();
    } else {
      _startTimer();
    }

    pref.setBool('useDebug', useLog);
    return useLog;
  }

  void _startTimer() {
    if (_timer != null) {
      return;
    }

    _timer = Timer.periodic(Duration(seconds: 30), (_) => _saveLogs());
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @transaction
  Future<void> _saveLogs() async {
    if (!(await use()) || _logs.isEmpty) {
      return;
    }

    await traceLogDao!.insertAll(_logs);
    _logs.clear();
    await _deleteOld();
  }

  ///
  /// DB에 로깅
  ///
  Future<void> log(String log1,
      [String? log2, String? log3, String? log4]) async {
    if (!(await use())) {
      return;
    }

    if (traceLogDao == null) {
      Log.e(_TAG, 'Need to init trace database before adding');
      return;
    }

    // 장치를 구분할 수 있을 경우에만 로그를 기록
    if (_storeTerminalId == null || _storeTerminalId!.isEmpty) {
      return;
    }

    // 가능한 try/catch 사용하여 예상치 못한 exception 처리하도록 함
    // 문제를 찾기보다는 기존 POS 에 영향을 주지 않기 위해서임
    //
    // 동시에 많은 로그를 바로 DB에 쓸 경우 lock 이 걸렸다는 경고 로그가 발생
    // 주기적으로 _saveLogs()에서 한번에 저장하도록 함
    try {
      String now = CommonUtil.convertDateForm1(new DateTime.now());
      TraceLog trace = new TraceLog();
      var sb = StringBuffer();
      sb.write(log2 != null ? '[$log1]' : _filter(log1));

      if (log2 != null) {
        sb.write(log3 != null ? '[$log2]' : _filter(log2));
      }

      if (log3 != null) {
        sb.write(log4 != null ? '[$log3]' : _filter(log3));
      }

      if (log4 != null) {
        sb.write(_filter(log4));
      }

      trace.log = sb.toString().substring(0, min(_MAX_LOG_SIZE, sb.length));
      trace.storeId = _storeId;
      trace.storeTerminalId = _storeTerminalId;
      trace.lastRevisionDatetime = now;
      trace.synchronizedYn = false;
      _logs.add(trace);
    } catch (e) {
      Log.e(_TAG, e.toString());
    }
  }

  String _filter(String text) {
    if (text == null) {
      return 'null';
    }

    if (text.contains('store.checkPassword') ||
        text.contains('store.checkTaxOfficerPassword')) {
      return _maskPassword(text, 'password');
    } else if (text.contains('sync.setLogin')) {
      return _maskPassword(text, 'loginPassword');
    } else {
      return text;
    }
  }

  String _maskPassword(String text, String key) {
    return text =
        text.replaceAll(RegExp('"$key"\\s*:\\s*".*?"'), '"$key":"********"');
  }

  Future<void> _deleteOld() async {
    TraceLogCount? count = await traceLogDao!.count();

    if ((count?.count ?? 0) > _MAX_LOG_LINES) {
      var size = (count?.count ?? 0) - _MAX_LOG_LINES + _MAX_LOG_LINES ~/ 10;
      Log.d(_TAG, 'Delete old trace logs: $size');
      await traceLogDao!.deleteAll(await traceLogDao!.findAllOld(size));
    }
  }

  Future<void> _deleteAll() async {
    await traceLogDao!.deleteAll(await traceLogDao!.findAll());
  }

  ///
  /// 동기화 되지 않은 로그 구함
  ///
  Future<List<TraceLog>> getNotSynced() async {
    return await traceLogDao!.findNotSynced();
  }

  ///
  /// 동기화 완료
  ///
  Future<void> setSynced(int id) async {
    TraceLog? log = await traceLogDao!.findById(id);
    if (log != null) {
      log.synchronizedYn = true;
      await traceLogDao!.updateOne(log);
    }
  }
}

class TLog {
  static const String _tag = 'TLog';
  static bool _enable = false;
  static bool _pingEnable = false;

  static void enable(bool enable) {
    Log.d(_tag, enable ? 'TLog enable' : 'TLog disable');
    _enable = enable;
  }

  static void pingEnable(bool enable) {
    Log.d(_tag, enable ? 'TLog Ping enable' : 'TLog Ping disable');
    TLog._pingEnable = enable;
  }

  static void d(String tag, String message) {
    Log.d(tag, message);

    if (_enable) {
      TraceBL().log(tag, 'DEBUG', message);
    }
  }

  static void dd(String tag, String message) {
    Log.d(tag, message);
    TraceBL().log(tag, 'DEBUG', message);
  }

  static void ii(tag, message) {
    TraceBL().log(tag, 'INFO', message);
  }

  static void w(String tag, String message) {
    Log.w(tag, message);

    if (_enable) {
      TraceBL().log(tag, 'WARN', message);
    }
  }

  static void ww(String tag, String message) {
    Log.w(tag, message);
    TraceBL().log(tag, 'WARN', message);
  }

  /// [value]에는 String 이나 Exception 이 올 수 있음
  static void e(String tag, dynamic value, [StackTrace? stacktrace]) {
    Log.e(tag, value.toString());
    TraceBL().log(tag, 'ERR', value.toString());

    if (stacktrace != null) {
      Log.e(tag, stacktrace.toString());
      TraceBL().log(tag, 'EXCEPTION', stacktrace.toString());
    }
  }

  static void ping(String tag, String message) {
    Log.d(tag, message);

    if (_pingEnable) {
      TraceBL().log(tag, 'DEBUG', message);
    }
  }
}

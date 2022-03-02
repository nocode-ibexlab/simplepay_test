import 'dart:async';

import 'package:simple_pay_api/src/Util/Common/Common.dart';

import 'serviceprint/PrintService.dart';

class Printer {
  static const _startEvent = 3000;
  static const _endEvent = 3001;
  static const _timeoutSeconds = 60;

  final PrintService _printService = PrintService();

  // Event handlers
  Future<bool?> Function(int total, int pageNo)? onNext;
  Future<bool?> Function()? onTimeout;
  Future<void> Function(int code, String message)? onError;

  // 동시에 여러번 출력할 수 있기에 출력 시작과 마지막을 판단하기 위해 _lastPrintTime 이용
  int? _lastPrintTime;
  bool _isPrinting = false;
  bool _isComplete = true;
  Timer? _timeoutTimer;

  static final Printer _singleton = Printer._internal();

  factory Printer() => _singleton;

  Printer._internal();

  bool get isPrinting => _isPrinting;

  Future<bool> get isPrintingOrWaiting async {
    var remain = await _printService.getPrintJobStatus('remain');
    return remain > 0 || _isPrinting;
  }

  bool get isComplete => _isComplete;

  Future<void> handleEvent(int what, Map data) async {
    switch (what) {
      case _startEvent:
        if (_lastPrintTime == null) {
          _isPrinting = true;
        }

        _lastPrintTime = data['time'];
        _startTimeout();
        break;
      case _endEvent:
        if (_lastPrintTime == data['time']) {
          _stopTimeout();
          int errCode = data['errCode'];
          await _inform(errCode);
          _lastPrintTime = null;
          _isPrinting = false;
          _isComplete = errCode == 0;
        }

        int remain = data['remain'] ?? 0; // 프린터 에러인 경우 null

        if (remain > 0) {
          int total = data['total'] ?? 0;
          int pageNo = total - remain + 1;
          showNextPrintPopup(total, pageNo);
        }

        break;
    }
  }

  void _startTimeout() {
    _timeoutTimer?.cancel();
    _timeoutTimer = Timer(const Duration(seconds: _timeoutSeconds), () async {
      print('[printer]Not responding');
      bool wait = false;

      if (onTimeout != null) {
        wait = await onTimeout!() ?? wait;
      }

      if (wait) {
        _startTimeout();
      } else {
        _lastPrintTime = null;
        _isPrinting = false;
        _isComplete = false;
        _printService.nextPrint(next: false);
      }
    });
  }

  void _stopTimeout() {
    _timeoutTimer?.cancel();
  }

  Future<void> _inform(int? errCode) async {
    if (errCode == null || errCode == 0) {
      return;
    }

    List error = Common.printerError(errCode);
    print('[printer]Error: ${error[1]} (${error[0]})');

    if (onError != null) {
      await onError!(error[0], error[1]);
    }
  }

  Future<void> showNextPrintPopup(total, pageNo) async {
    print('[printer]Print next page ($pageNo/$total)');
    bool next = true;

    if (onNext != null) {
      next = await onNext!(total, pageNo) ?? next;
    }

    _printService.nextPrint(next: next);
  }
}

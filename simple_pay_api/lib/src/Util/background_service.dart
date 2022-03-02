import 'dart:async';

import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/MyPrefs.dart';
import 'package:simple_pay_api/src/grpc/exception.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';

class BackgroundService {
  static final BackgroundService _instance = BackgroundService._internal();

  factory BackgroundService() => _instance;

  BackgroundService._internal();

  List<Timer>? _timers;

  Future<void> start(String posDbPath, String logDbPath) async {
    print('Background service starts.');
    await _init(posDbPath, logDbPath);
  }

  void stop() {
    _timers?.forEach((timer) => timer.cancel());
  }

  Future<void> _init(String posDbPath, String logDbPath) async {
    _timers = [
      Timer.periodic(const Duration(seconds: 60), (_) => uploadData()),
    ];
  }

  Future<void> uploadData() async {
    final opBL = OperationBL();
    final prefs = MyPrefs();

    try {
      await gRpcClient.uploadSales();
      await gRpcClient.uploadReports();
      await gRpcClient.uploadSettings();
      await gRpcClient.uploadCashierData();
      await gRpcClient.uploadTraceLog();

      if (opBL.useOrderSync()) {
        await gRpcClient.putOrder();
        await gRpcClient.deleteOrder();
      }

      prefs.isSync().put(true);
      prefs
          .lastSyncTime()
          .put(DateFormat('yyyyMMddHHmmss').format(DateTime.now()));
    } on GRpcException {
      prefs.isSync().put(false);
    }
  }
}

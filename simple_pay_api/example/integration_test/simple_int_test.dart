import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_pay_api/simple_pay_api.dart';

import 'simple_match.dart';

const invoke = Simple.invoke;
const result = Simple.result;
const listenEvent = Simple.listenEvent;
const closeEvent = Simple.closeEvent;

void main() {
  Simple.prettyLogging = true;

  group('login', () {
    test('get device id', () async {
      expect(
        await invoke('device.getDeviceId'),
        hasResult('deviceId', isNotEmpty),
      );
    });

    test('get device path', () async {
      expect(
        await invoke('device.getDevicePath'),
        hasResult('external', isNotEmpty),
      );
    });

    test('update app', () async {
      listenEvent(Simple.evtDownload, (p) => debugPrint('Downloading... $p%'));
      Map r = await invoke('sync.updateApp', params: {
        'packageName': 'com.yoshop.handheldpos',
        'versionName': '1.4.3',
      });
      expect(r, isSuccess);
      closeEvent(Simple.evtDownload);
    });
  });

  group('main', () {
    test('get status', () async {
      expect(await invoke('sync.getStatus'), isSuccess);
    });
  });

  group('sale/reserve', () {
    test('print bill', () async {
      await _login();
      Map r = await invoke('order.saveOrder', params: {
        'items': [
          {
            'itemId': '1E005F03E282016A', // 고구마라떼 4500원
            'qty': 2,
          },
        ],
      });
      String orderId = result(r, 'orderId');
      await invoke('device.printBill', params: {'orderId': orderId});
    });
  });

  group('payment', () {
    test('approve card payment', () async {
      _login();
      Map r = await invoke('order.saveOrder', params: {
        'items': [
          {
            'itemId': '1E005F03E282016A', // 고구마라떼 4500원
            'qty': 2,
          },
          {
            'itemId': '1E005F03E28000F2', // 녹차라떼 4000원
            'qty': 1,
          }
        ],
      });
      r = await invoke('tender.approvePayment', params: {
        'paymentMethodCode': '04005EBC9F3501EF', // DUMMY
        'orderId': result(r, 'orderId'),
        'amount': result(r, 'totalDue'),
      });
      expect(r, hasResult('balance', equals(0)));
    });
  });
}

Future<void> _login() async {
  await invoke('device.initDevice');
  await invoke('sync.setAuth', params: {
    'loginId': 'test111',
    'password': '1111',
  });
  await invoke('sync.registerApp', params: {
    'storeTerminalId': '2F005EE9A13101ED',
  });
  await invoke('sync.login');
}

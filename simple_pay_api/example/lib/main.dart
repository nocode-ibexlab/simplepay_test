import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_pay_api/simple_pay_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple API Plugin Example',
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CircularProgressIndicator(
                strokeWidth: 10,
              ),
            ),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }

  Future<void> _init(BuildContext context) async {
    await Simple.invoke('device.initDevice');
    _login(context);
  }

  Future<void> _login(BuildContext context) async {
    Map r = await Simple.invoke('sync.login');

    switch (Simple.resCode(r)) {
      case Simple.errOK:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
        break;
      case Simple.errNoAuth:
      case Simple.errInvalidAuth:
        await _popup(context, Simple.resMessage(r), 'Next');
        await Simple.invoke('sync.setAuth', params: {
          'loginId': 'test111',
          'password': '1111',
        });
        _login(context);
        break;
      case Simple.errRegistrationRequired:
        await _popup(context, Simple.resMessage(r), 'Next');
        await Simple.invoke('sync.getRegistrationInfo');
        await _popup(context, 'Registering...', 'Next');
        await Simple.invoke('sync.registerApp', params: {
          'storeTerminalId': '2F005EE9A13101ED',
        });
        _login(context);
        break;
      default:
        await _popup(context, Simple.resMessage(r), 'Exit');
        SystemNavigator.pop();
        break;
    }
  }

  Future _popup(BuildContext context, String message, String button) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(button),
            ),
          ],
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _deviceId = 'Unknown';
  String? _imageUri = 'Unknown';
  String? _orderId;
  double? _amount;

  @override
  void initState() {
    super.initState();
    _initPrintHandlers();
  }

  void _initPrintHandlers() {
    Simple.onPrintNext = (int total, int pageNo) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Information'),
            content: Text('Print the next page? ($pageNo/$total)'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Next'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancel'),
              ),
            ],
          );
        },
      );
    };

    Simple.onPrintTimeout = () {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('The printer is not responding. Keep waiting?'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Wait'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancel'),
              ),
            ],
          );
        },
      );
    };

    Simple.onPrintError = (int code, String message) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text('$message ($code)'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Device ID: $_deviceId'),
              ElevatedButton(
                child: const Text('Device ID'),
                onPressed: _getDeviceId,
              ),
              S3Image(_imageUri, width: 100, height: 100),
              ElevatedButton(
                child: const Text('Item Image'),
                onPressed: _getItemImage,
              ),
              Row(
                children: [
                  ElevatedButton(
                    child: const Text('Order'),
                    onPressed: _newOrder,
                  ),
                  const SizedBox(width: 4),
                  ElevatedButton(
                    child: const Text('Print'),
                    onPressed: _printBill,
                  ),
                  const SizedBox(width: 4),
                  ElevatedButton(
                    child: const Text('Cash'),
                    onPressed: () => _payOrder('04005EBC9F350207'),
                  ),
                  const SizedBox(width: 4),
                  ElevatedButton(
                    child: const Text('Card'),
                    onPressed: () => _payOrder('04005EBC9F3501EF'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _getDeviceId() async {
    Map r = await Simple.invoke('device.getDeviceId');

    if (Simple.successful(r)) {
      setState(() {
        _deviceId = Simple.result(r, 'deviceId');
      });
    }
  }

  Future<void> _getItemImage() async {
    setState(() {
      _imageUri = 'Unknown';
    });

    Map r = await Simple.invoke('item.getItem', params: {
      'barcode': '12345',
    });

    if (Simple.successful(r)) {
      setState(() {
        _imageUri = Simple.result(r, 'imageUri');
      });
    }
  }

  Future<void> _newOrder() async {
    Map r = await Simple.invoke('order.saveOrder', params: {
      'items': [
        {
          'itemId': '1E005F03E282016A', // 고구마라떼 4500원
          'qty': 2,
        },
      ],
    });

    if (Simple.successful(r)) {
      _orderId = Simple.result(r, 'orderId');
      _amount = Simple.result(r, 'totalDue');
    }
  }

  void _printBill() {
    if (_orderId != null) {
      Simple.invoke('device.printBill', params: {
        'orderId': _orderId,
      });
    }
  }

  void _payOrder(String paymentMethodCode) {
    if (_orderId != null) {
      Simple.invoke('tender.approvePayment', params: {
        'paymentMethodCode': paymentMethodCode,
        'amount': _amount,
        'orderId': _orderId,
      });
    }
  }
}

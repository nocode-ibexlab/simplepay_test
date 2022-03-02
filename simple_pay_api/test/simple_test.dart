import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_pay_api/simple_pay_api.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

import 'simple_match.dart';

const invoke = Simple.invoke;
const result = Simple.result;
const sweetPotatoLatte = _Item('1E005F03E282016A'); // 4500원
const greenTeeLatte = _Item('1E005F03E28000F2'); // 4000원
const citrusTea = _Item('1E005F03E2800103'); //  5000원

void main() {
  Simple.prettyLogging = true;

  setUp(() async {
    CommonUtil.mock['packageName'] = 'com.yoshop.handheldpos';
    CommonUtil.mock['versionName'] = '1.4.6';
    CommonUtil.mock['versionCode'] = 47;
    await invoke('device.initDevice');
  });

  group('login', () {
    test('list cloud servers', () async {
      expect(
        await invoke('sync.listServers'),
        hasResult('urls', isNotEmpty),
      );
    });

    test('login, download data, and verify license', () async {
      print('---------------------------------------');
      print('Clear authentication');
      print('---------------------------------------');

      expect(await invoke('sync.clearAuth'), isSuccess);
      expect(
        await invoke('sync.registerApp', params: {
          'storeTerminalId': '',
        }),
        isSuccess,
      );

      print('---------------------------------------');
      print('Login failed - no login data');
      print('---------------------------------------');

      expect(await invoke('sync.login'), isFail);

      print('---------------------------------------');
      print('Login failed - id or password invalid');
      print('---------------------------------------');

      expect(
        await invoke('sync.setAuth', params: {
          'loginId': 'test111',
          'password': '2222',
        }),
        isSuccess,
      );
      expect(await invoke('sync.login'), isFail);

      print('---------------------------------------');
      print('Login failed - not registered');
      print('---------------------------------------');

      expect(
        await invoke('sync.setAuth', params: {
          'loginId': 'test111',
          'password': '1111',
        }),
        isSuccess,
      );
      expect(await invoke('sync.login'), isFail);

      print('---------------------------------------');
      print('Login');
      print('---------------------------------------');

      expect(
        await invoke('sync.registerApp', params: {
          'storeTerminalId': '2F005EE9A13101ED',
        }),
        isSuccess,
      );
      expect(await invoke('sync.login'), isSuccess);

      print('---------------------------------------');
      print('Verify license');
      print('---------------------------------------');

      expect(await invoke('sync.verifyLicense'), isSuccess);
    });

    test('get registration info', () async {
      expect(
        await invoke('sync.setAuth', params: {
          'loginId': 'test111',
          'password': '1111',
        }),
        isSuccess,
      );
      expect(
        await invoke('sync.getRegistrationInfo'),
        hasResult('storeTerminals', isNotEmpty),
      );
    });
  });

  group('main', () {
    test('get cashier info and sales count', () async {
      expect(
        await invoke('store.getCashBalance'),
        hasResult('balance', isNotNull),
      );
      expect(
        await invoke('store.getCashierName'),
        hasResult('name', isNotNull),
      );
      expect(
        await invoke('store.getSalesCount'),
        hasResult('count', isNotNull),
      );
    });
  });

  group('sale/reserve', () {
    test('verify total due', () async {
      Map order = {
        'discount': 500,
        'items': [
          {
            'itemId': '1E005F03E282016A', // 고구마라떼 4500원
            'qty': 2,
            'discount': 100,
          },
          {
            'itemId': '1E005F03E28000F2', // 녹차라떼 4000원
            'qty': 1,
            'discount': 200,
          }
        ],
      };
      Map r = await invoke('order.calculateTotal', params: order);
      expect(r,
          hasResult('totalDue', equals(4500 * 2 - 100 + 4000 * 1 - 200 - 500)));
      expect(r, hasResult('totalDiscount', equals(100 + 200 + 500)));

      order['totalDue'] = 13000;
      expect(await invoke('order.saveOrder', params: order), isFail);

      order['totalDue'] = 12200;
      expect(await invoke('order.saveOrder', params: order), isSuccess);
    });

    test('save order with items', () async {
      print('---------------------------------------');
      print('Create new order');
      print('---------------------------------------');

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
      expect(r, isSuccess);
      String orderId = result(r, 'orderId');
      expect(
        await invoke('order.getOrder', params: {
          'orderId': orderId,
        }),
        hasResult('totalDue', equals(4500 * 2 + 4000)),
      );

      print('---------------------------------------');
      print('Add order discount');
      print('---------------------------------------');

      r = await invoke('order.saveOrder', params: {
        'orderId': orderId,
        'discount': 500,
        'markup': 100,
      });
      expect(r, hasResult('totalDue', equals(4500 * 2 + 4000 - 500 + 100)));

      print('---------------------------------------');
      print('Delete first item and reset order discount');
      print('---------------------------------------');

      List items = result(r, 'items'); // Can use either resSave or resGet
      items[0]['isStorno'] = true;
      r = await invoke('order.saveOrder', params: {
        'orderId': orderId,
        'items': items,
      });
      expect(r, hasResult('totalDue', equals(4000)));

      print('---------------------------------------');
      print('Delete all items and add a new item');
      print('---------------------------------------');

      r = await invoke('order.saveOrder', params: {
        'orderId': orderId,
        'items': [
          {
            'itemId': '1E005F03E28000EF', // 더치커피 5000원
            'qty': 1,
            'discount': 1000,
          },
        ]
      });
      expect(r, hasResult('totalDue', equals(5000 - 1000)));

      print('---------------------------------------');
      print('Increase qty');
      print('---------------------------------------');

      items = result(r, 'items');
      // items[0] are items[1] are storno (deleted) items
      items[2]['qty'] = 3;
      r = await invoke('order.saveOrder', params: {
        'orderId': orderId,
        'items': items,
      });
      expect(r, hasResult('totalDue', equals(5000 * 3 - 1000)));

      print('---------------------------------------');
      print('Remove item discount');
      print('---------------------------------------');

      items = result(r, 'items');
      items[2]['isDiscountStorno'] = true;
      r = await invoke('order.saveOrder', params: {
        'orderId': orderId,
        'items': items,
      });
      expect(r, hasResult('totalDue', equals(5000 * 3)));

      print('---------------------------------------');
      print('Add a new item');
      print('---------------------------------------');

      items = result(r, 'items');
      r = await invoke('order.saveOrder', params: {
        'orderId': orderId,
        'items': items
          ..add(<String, Object?>{
            'itemId': '1E005F03E282016A', // 고구마라떼 4500원
            'qty': 1,
          })
      });
      expect(r, hasResult('totalDue', equals(5000 * 3 + 4500)));
    });

    test('save order with different item amount', () async {
      Map r = await invoke('order.saveOrder', params: {
        'items': [
          {
            'itemId': '1E005F03E282016A', // 고구마라떼 4500원
            'price': 100,
            'qty': 2,
          },
          {
            'itemId': '1E005F03E28000F2', // 녹차라떼 4000원
            'price': 200,
            'qty': 1,
          }
        ],
      });
      expect(r, hasResult('totalDue', equals(100 * 2 + 200)));
    });

    test('save order without items', () async {
      Map r = await invoke('order.saveOrder', params: {
        'amount': 1000,
        'discount': 100,
      });
      expect(r, hasResult('totalDue', equals(1000 - 100)));
    });

    test('delete order', () async {
      Map r = await _order(sweetPotatoLatte);
      expect(
        await invoke('order.deleteOrder', params: {
          'orderId': r['orderId'],
        }),
        isSuccess,
      );
    });

    test('list orders', () async {
      await _order(sweetPotatoLatte, greenTeeLatte * 2);
      expect(await invoke('order.listOrders'), hasResult(null, isNotEmpty));
    });
  });

  group('search/best selling goods/pos/catalog', () {
    test('list item groups', () async {
      expect(
        await invoke('item.listGroups', params: {
          'isRecommended': true,
        }),
        hasResult(null, isEmpty),
      );
      expect(
        await invoke('item.listGroups', params: {
          'isRecommended': false,
        }),
        hasResult(null, isNotEmpty),
      );
    });

    test('list best selling items in the item group', () async {
      expect(
        await invoke('item.listItems', params: {
          'groupId': '1F005F03E28000DC',
          'isRecommended': true,
        }),
        hasResult(null, isEmpty),
      );
    });

    test('list items in the item group', () async {
      expect(
        await invoke('item.listItems', params: {
          'groupId': '1F005F03E28000DC',
          'isRecommended': false,
        }),
        hasResult(null, isNotEmpty),
      );
    });

    test('find items', () async {
      expect(
          await invoke('item.listItems', params: {
            'name': '라떼',
          }),
          hasResult(null, isNotEmpty));
      expect(
        await invoke('item.getItem', params: {
          'itemId': '1E005F03E28000F1',
        }),
        isSuccess,
      );
      expect(
        await invoke('item.getItem', params: {
          'itemId': '0000000000000000',
        }),
        isFail,
      );
      expect(
        await invoke('item.getItem', params: {
          'barcode': '12345',
        }),
        isSuccess,
      );
    });

    test('list recently used items', () async {
      expect(await invoke('item.listRecentlyUsedItems'), isSuccess);
    });

    test('download image', () async {
      await invoke('sync.login'); // To use S3 client, login is required
      expect(
        await invoke('item.downloadImage', params: {
          'key': '2E005EBC9F3301B2/1E005F03E2810125.jpg',
        }),
        hasResult('path', isNotNull),
      );
    });
  });

  group('shift', () {
    test('cashier in', () async {
      expect(
        await invoke('store.checkPassword', params: {
          'password': '1111',
        }),
        isSuccess,
      );
      expect(await invoke('store.cashierIn'), isSuccess);
      expect(await invoke('store.businessDay'), isSuccess);
      expect(await invoke('store.getCashierName'), isSuccess);
      expect(
        await invoke('store.getCashBalance'),
        hasResult('balance', equals(0)),
      );
    });

    test('cashier out', () async {
      expect(await invoke('store.getSalesCount'), isSuccess);
      double balance = result(await invoke('store.getCashBalance'), 'balance');
      expect(
        await invoke('store.cashierOut', params: {
          'amount': balance + 100,
        }),
        isFail,
      );
      expect(
        await invoke('store.cashierOut', params: {
          'amount': balance,
        }),
        isSuccess,
      );
    });
  });

  group('entry/withdrawal', () {
    test('cash in/out', () async {
      double balance = result(await invoke('store.getCashBalance'), 'balance');
      expect(
        await invoke('store.cashInOut', params: {
          'inOutType': "I",
          'memo': 'test1',
          'amount': 350.0,
        }),
        isSuccess,
      );
      expect(
        await invoke('store.cashInOut', params: {
          'inOutType': "O",
          'memo': 'test2',
          'amount': 300.0,
        }),
        isSuccess,
      );
      expect(await invoke('store.getCashInOutHistory'), isSuccess);
      expect(
        await invoke('store.getCashBalance'),
        hasResult('balance', equals(balance + 350 - 300)),
      );
    });
  });

  group('inventory balance', () {
    test('list revision items', () async {
      expect(
        await invoke('inventory.balanceItems', params: {
          // itemGroupId
          // name
          // barcode
          // pageIndex
          // pageSize
        }),
        isSuccess,
      );
    });

    // test('item.add', () async {
    //   expect(
    //     await invoke('item.add', params: {
    //     }),
    //     isSuccess,
    //   );
    // });
    // test('item.update', () async {
    //   expect(
    //     await invoke('item.update', params: {
    //     }),
    //     isSuccess,
    //   );
    // });
    // test('item.delete', () async {
    //   expect(
    //     await invoke('item.delete', params: {
    //     }),
    //     isSuccess,
    //   );
    // });
  });

  group('inventory acceptance', () {
    test('list acceptance items', () async {
      expect(
        await invoke('inventory.listAcceptanceItems', params: {
          // startDate
          // endDate
          // type
          // pageIndex
          // pageSize
        }),
        isSuccess,
      );
    });

    test('add acceptance item', () async {
      expect(
        await invoke('inventory.addAcceptanceItem', params: {
          /*
          date
          name
          items
          <Items>
          itemId
          name
          purchasePrice
          qty
          */
        }),
        isSuccess,
      );
    });

    test('update acceptance item', () async {
      expect(
        await invoke('inventory.updateAcceptanceItem', params: {
          // acceptanceItemsId
          // date
          // name
          // items
        }),
        isSuccess,
      );
    });

    test('delete acceptance item', () async {
      expect(
        await invoke('inventory.deleteAcceptanceItem', params: {
          // acceptanceItemsId
        }),
        isSuccess,
      );
    });

    test('detail acceptance item', () async {
      expect(
        await invoke('inventory.detailAcceptanceItem', params: {
          // acceptanceItemsId
        }),
        isSuccess,
      );
    });

    test('list supplier', () async {
      expect(
        await invoke('inventory.listSupplier', params: {}),
        isSuccess,
      );
    });

    test('add supplier', () async {
      expect(
        await invoke('inventory.addSupplier', params: {
          /*
          name
          */
        }),
        isSuccess,
      );
    });

    test('update supplier', () async {
      expect(
        await invoke('inventory.updateSupplier', params: {
          // supplierId
          // name
        }),
        isSuccess,
      );
    });

    test('delete supplier', () async {
      expect(
        await invoke('inventory.deleteSupplier', params: {
          // supplierId
        }),
        isSuccess,
      );
    });
  });

  group('revision', () {
    test('list revision items', () async {
      expect(
        await invoke('inventory.listRevisionItems', params: {
          // 'startDate': '1111',
          // 'endDate': '1111',
          // 'pageIndex': '1111',
          // 'pageSize': '1111',
        }),
        isSuccess,
      );
    });

    test('add revision items', () async {
      expect(
        await invoke('inventory.addRevisionItems', params: {
          /*
          date
          name
          items
          <Items>
          itemId
          name
          purchasePrice
          realQty
          */
        }),
        isSuccess,
      );
    });

    test('detail revision items', () async {
      expect(
        await invoke('inventory.detailRevisionItems', params: {
          /*
        revisionItemsId
        */
        }),
        isSuccess,
      );
    });
  });

  group('settings', () {
    test('get settings', () async {
      expect(
        await invoke('settings.get', params: {'group': 'all'}),
        isSuccess,
      );
      Map r = await invoke('settings.get', params: {
        'keys': [
          'store.loginId',
          'system.storage-dir',
        ]
      });
      expect(r, hasResult(null, contains('store.loginId')));
      expect(r, hasResult(null, contains('system.storage-dir')));
      expect(
        await invoke('settings.get', params: {
          'key': 'store.loginId',
        }),
        hasResult('store.loginId', equals('test111')),
      );
    });

    test('set settings', () async {
      expect(
        await invoke('settings.set', params: {
          'store.telNumber': '010-1111-2222',
        }),
        isSuccess,
      );
      expect(
        await invoke('settings.get', params: {
          'key': 'store.telNumber',
        }),
        hasResult('store.telNumber', equals('010-1111-2222')),
      );
    });

    test('sync settings', () async {
      int digit = Random().nextInt(9000) + 1000;
      expect(
        await invoke('settings.set', params: {
          'store.telNumber': '010-1111-$digit',
        }),
        isSuccess,
      );

      bool sync = false;
      int start = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      int now = start;

      while (!sync && now - start <= 100) {
        await Future.delayed(const Duration(seconds: 5));
        now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
        sync = (await BasBL().getStore())?.synchronizedYn ?? false;
        print('Sync(${now - start} sec)? $sync');
      }

      expect(sync, equals(true));
      expect(await invoke('sync.getStatus'), isSuccess);

      digit = Random().nextInt(9000) + 1000;
      await invoke('settings.set', params: {
        'store.telNumber': '010-1111-$digit',
      });
      expect(await invoke('sync.uploadData'), isSuccess);
    });
  });

  group('payment', () {
    test('list payment methods', () async {
      expect(
        await invoke('tender.listPaymentMethods'),
        hasResult(null, isNotEmpty),
      );
    });

    test('approve cash payment', () async {
      Map r = await _order(sweetPotatoLatte * 2, greenTeeLatte);
      String orderId = r['orderId'];
      double totalDue = r['totalDue'];

      r = await invoke('tender.approvePayment', params: {
        'paymentMethodCode': '04005EBC9F350207', // 현금
        'orderId': orderId,
        'amount': 1000,
      });
      expect(r, hasResult('receiptNo', isNotEmpty));
      expect(r, hasResult('balance', equals(totalDue - 1000)));

      r = await invoke('tender.getPartialPayments',
          params: {'orderId': orderId});
      expect(r, hasResult('list', hasLength(1)));

      r = await invoke('tender.approvePayment', params: {
        'paymentMethodCode': '04005EBC9F350207', // 현금
        'orderId': orderId,
        'amount': totalDue - 1000,
      });
      expect(r, hasResult('receiptNo', isNotEmpty));
      expect(r, hasResult('balance', equals(0)));
    });

    test('cancel cash payment', () async {
      Map r = await _payInCash(sweetPotatoLatte * 2, greenTeeLatte);
      r = await invoke('tender.cancelPayment', params: {
        'paymentMethodCode': r['paymentMethodCode'],
        'receiptNo': r['receiptNo'],
        'amount': r['amount'],
      });
      expect(r, hasResult('receiptNo', isNotEmpty));
    });
  });

  group('report', () {
    test('get current cashier info', () async {
      expect(
        await invoke('store.getCashierName'),
        hasResult('name', isNotEmpty),
      );
      expect(
        await invoke('store.getCurrentShift'),
        hasResult('shiftId', isNotEmpty),
      );
    });

    test('list shifts', () async {
      expect(await invoke('store.listShifts'), isSuccess);
    });

    test('list sales by shift id', () async {
      await _payInCash(sweetPotatoLatte);
      Map r = await _payInCash(sweetPotatoLatte * 5);
      await _cancelInCash(r['receiptNo'], r['amount']);

      expect(
        await invoke('tender.listSalesByShift'),
        hasResult(null, isNotEmpty),
      );
      expect(
        await invoke('tender.getSaleDetails', params: {
          'salesId': r['salesId'],
        }),
        isSuccess,
      );
    });

    test('summarize amounts and items', () async {
      await _payInCash(sweetPotatoLatte * 3);
      Map r = await _payInCash(greenTeeLatte * 2);
      await _cancelInCash(r['receiptNo'], r['amount']);
      r = await _payInCash(citrusTea);
      await _refund(r['salesId'], r['amount']);

      expect(
        await invoke('report.summarizeAmounts'),
        hasResult('salesCount', isNotNull),
      );

      expect(
        await invoke('report.summarizeByItemGroups', params: {
          'isSales': true,
        }),
        isSuccess,
      );
      expect(
        await invoke('report.summarizeByItemGroups', params: {
          'isSales': false,
        }),
        isSuccess,
      );

      expect(
        await invoke('report.summarizeByItems', params: {
          'isSales': true,
          'itemGroupId': '1F005F03E28000DC',
        }),
        isSuccess,
      );
      expect(
        await invoke('report.summarizeByItems', params: {
          'isSales': true,
        }),
        isSuccess,
      );
      expect(
        await invoke('report.summarizeByItems', params: {
          'isSales': false,
        }),
        hasResult(null, isNotNull),
      );
      expect(
        await invoke('report.summarizeByItems', params: {
          'isSales': false,
        }),
        isSuccess,
      );
    });
  });

  group('returns', () {
    test('list sales', () async {
      expect(await invoke('tender.listSales'), isSuccess);
      expect(await invoke('tender.listSalesAccounts'), isSuccess);
    });

    test('cancel by receipt no', () async {
      Map r = await _payInCash(sweetPotatoLatte, greenTeeLatte);
      expect(
        await invoke('tender.cancelPayment', params: {
          'receiptNo': r['receiptNo'],
          'amount': 1000,
        }),
        isFail,
      );
      expect(
        await invoke('tender.cancelPayment', params: {
          'receiptNo': r['receiptNo'],
          'amount': 8500,
        }),
        isSuccess,
      );
    });

    test('cancel by sales id', () async {
      Map r = await _payInCash(sweetPotatoLatte, greenTeeLatte);
      expect(
        await invoke('tender.cancelPayment', params: {
          'salesId': r['salesId'],
          'amount': 8500,
        }),
        isSuccess,
      );

      r = await _order(sweetPotatoLatte, greenTeeLatte);
      String orderId = r['orderId'];
      await _paySomeInCash(orderId, 1000);
      r = await _paySomeInCash(orderId, 7500);
      expect(
        await invoke('tender.cancelPayment', params: {
          'salesId': r['salesId'],
          'amount': 8500,
        }),
        isSuccess,
      );
      expect(
        await invoke('tender.cancelPayment', params: {
          'salesId': r['salesId'],
          'amount': 8500,
        }),
        isFail,
      );
    });

    test('refund by sales items', () async {
      Map r = await _payInCash(sweetPotatoLatte, greenTeeLatte);
      r = Simple.result(await invoke('tender.getSaleDetails', params: {
        'salesId': r['salesId'],
      }));
      expect(r['salesItems'][0]['isRefund'], equals(false));
      expect(
        await invoke('tender.refund', params: {
          'salesId': r['salesId'],
          'items': [
            r['salesItems'][0]['salesItemId'],
          ],
          'amount': 4500,
        }),
        isSuccess,
      );
      r = Simple.result(await invoke('tender.getSaleDetails', params: {
        'salesId': r['salesId'],
      }));
      expect(r['salesItems'][0]['isRefund'], equals(true));
      expect(r['salesItems'][1]['isRefund'], equals(false));
      // 환불을 했기에 결제 취소가 안 되어야 함
      expect(
        await invoke('tender.cancelPayment', params: {
          'salesId': r['salesId'],
          'amount': 8500,
        }),
        isFail,
      );
      expect(
        await invoke('tender.refund', params: {
          'salesId': r['salesId'],
          'items': [
            r['salesItems'][1]['salesItemId'],
          ],
          'amount': 4000,
        }),
        isSuccess,
      );
      r = Simple.result(await invoke('tender.getSaleDetails', params: {
        'salesId': r['salesId'],
      }));
      expect(r['salesItems'][0]['isRefund'], equals(true));
      expect(r['salesItems'][1]['isRefund'], equals(true));
      expect(
        await invoke('tender.refund', params: {
          'salesId': r['salesId'],
          'items': [
            r['salesItems'][1]['salesItemId'],
          ],
          'amount': 4000,
        }),
        isFail,
      );
    });
  });
}

class _Item {
  final String _itemId;
  final int _qty;

  const _Item(this._itemId, [this._qty = 1]);

  _Item operator *(int qty) {
    return _Item(_itemId, qty);
  }

  Map toMap() => {
        'itemId': _itemId,
        'qty': _qty,
      };
}

Future<Map> _order(_Item a, [_Item? b, _Item? c, _Item? d]) async {
  return result(await invoke('order.saveOrder', params: {
    'items':
        [a, b, c, d].where((i) => i != null).map((i) => i!.toMap()).toList(),
  }));
}

Future<Map> _paySomeInCash(String orderId, double amount) async {
  return result(await invoke('tender.approvePayment', params: {
    'paymentMethodCode': '04005EBC9F350207',
    'orderId': orderId,
    'amount': amount,
  }));
}

Future<Map> _payInCash(_Item a, [_Item? b, _Item? c, _Item? d]) async {
  Map r = await _order(a, b, c, d);
  return result(await invoke('tender.approvePayment', params: {
    'paymentMethodCode': '04005EBC9F350207',
    'orderId': r['orderId'],
    'amount': r['totalDue'],
  }));
}

Future<Map> _cancelInCash(String receiptNo, double amount) async {
  return result(await invoke('tender.cancelPayment', params: {
    'paymentMethodCode': '04005EBC9F350207',
    'receiptNo': receiptNo,
    'amount': amount,
  }));
}

Future<Map> _refund(String salesId, double amount) async {
  return result(await invoke('tender.refund', params: {
    'salesId': salesId,
    'amount': amount,
  }));
}

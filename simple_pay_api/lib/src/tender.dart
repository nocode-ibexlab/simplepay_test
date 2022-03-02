import 'dart:async';
import 'dart:math';

import 'package:intl/intl.dart';

import 'Database/BusinessLogic/bl.dart';
import 'Database/Model/intent.dart';
import 'Database/Util/CommonUtil.dart';
import 'Database/Util/CultureManager.dart';
import 'Database/Util/Log.dart';
import 'Database/Util/MonetaryCalculator.dart';
import 'Database/Util/MyPrefs.dart';
import 'Database/Util/OrderCheck.dart';
import 'Database/Util/TenderConstants.dart';
import 'Database/Util/VANConstant.dart';
import 'Database/db.dart' as db;
import 'device.dart';
import 'device/serviceprint/PrintMapData.dart';
import 'exception.dart';
import 'ext.dart';
import 'grpc/grpc.dart';
import 'order.dart';
import 'simple.dart';
import 'store.dart';
import 'utils.dart';

typedef InvokeCallback = void Function(
  int resCode,
  String? message,
  Map<String, Object?>? result,
);

class Tender with Utils {
  static const _tag = 'Tender';

  String paymentMethodCode = '';

  static final Tender _singleton = Tender._internal();

  factory Tender() => _singleton;

  Tender._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'listPaymentMethods':
        return listPaymentMethods();
      case 'approvePayment':
        return approvePayment(data);
      case 'getPartialPayments':
        return getPartialPayments(data?['orderId']);
      case 'cancelPayment':
        return cancelPayment(data);
      case 'listSales':
        return listSales(data);
      case 'getSaleDetails':
        return getSaleDetails(data);
      case 'listSalesAccounts':
        return listSalesAccounts(data);
      case 'listSalesByShift':
        return listSalesByShift(data?['shiftId']);
      case 'refund':
        return refund(data);
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> listPaymentMethods() async {
    return bizResponse(200, 'success', await getPaymentMethods());
  }

  Future<List<Map>> getPaymentMethods() async {
    final basBL = BasBL();
    List<Map> methods = [];

    for (String i in await basBL.getPaymentList()) {
      db.BasicDataItem? storeMethod = await basBL.getStorePayment(i);
      db.StoreTerminalBasicDataItem? posMethod =
          await basBL.getStoreTerminalPayment(i);
      methods.add({
        'paymentMethodCode': i,
        'paymentMethodName': posMethod?.getStoreTerminalBasicDataItemName(),
        'paymentSectionCode': storeMethod?.getBasicDataItemCodeName(),
        'paymentSectionName': storeMethod?.getBasicDataItemName(),
        'properties': await _getPaymentProperties(i)
      });
    }

    return methods;
  }

  Future<Map> _getPaymentProperties(String? pid) async {
    final basBL = BasBL();
    final itemBL = ItemBL();
    Map properties = await basBL.getPaymentProperties(pid);

    for (String key in properties.keys) {
      if (key == 'TEMPLATE') {
        db.TemplateItem? item = await itemBL.getTemplateItem(properties[key]!);
        properties[key] = item?.getName();
      }
    }

    return properties;
  }

  /// 결제
  ///
  /// * paymentMethodCode: 결제 수단,
  /// * amount: 비과세 포함 결제 금액
  /// * taxExempt: 비과세 금액
  /// * received: 받은 금액 (없을 시 amount)
  /// * currency: 통화코드 (US, KR, RU, KZ), 없을 시 상점단말기 설정 값 사용)
  /// * receiptNo: Authorization Confirmation 시 사용
  /// * qrCode: QR 결제 시 사용
  /// * orderId: 주문 ID
  Future<Map> approvePayment(Map? data) async {
    final basBL = BasBL();
    final order = Order();
    final device = Device();
    final store = Store();

    if (data == null) {
      throw ApiException(400, 'No parameters');
    }

    String? pid = data['paymentMethodCode'];
    double amount = CommonUtil.toDouble(data['amount']);
    double received = CommonUtil.toDouble(data['received']);
    double taxExempt = CommonUtil.toDouble(data['taxExempt']);
    String currency = data['currency'] ?? (await _defaultCurrency());
    String? receiptNo = data['receiptNo'];
    String? qrCode = data['qrCode'];

    if (received == 0) {
      received = amount;
    }

    if (pid == null || selectVan(pid)) {
      throw ApiException(400, 'Invalid paymentMethodCode');
    }

    String? sectionCode = await basBL.getPaymentType(pid);
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);
    OrderCheck? check = await order.getOrderCheckFromJson(data);

    if (check == null) {
      TLog.e(_tag, 'OrderCheck cannot be created');
      throw ApiException(400, 'OrderCheck cannot be created');
    }

    if (amount <= 0) {
      TLog.d(_tag, 'Invalid amount');
      throw ApiException(400, 'invalid_amount');
    }

    if (!section.isCash() && amount > await check.getBalance()) {
      TLog.d(_tag, 'Invalid amount');
      throw ApiException(500, 'invalid_amount');
    }

    if (await device.isSystemTimeInvalid()) {
      TLog.e(_tag, 'System time invalid');
      throw ApiException(500, 'System time invalid');
    }

    String? result = await device.getPrinter().getPrinterStatus();

    if (result != null) {
      throw ApiException(500, result);
    }

    if (!(await store.isCashierIn())) {
      print('Now cashier out. So cashier in first.');
      await store.cashierIn();
    }

    Completer<Map> completer = Completer();

    if (section == TenderConstants_Section.COMBINED_PAY) {
      _combinePayments(check, amount, taxExempt, currency,
          (int resCode, String? message, Map<String, Object?>? result) {
        message ??= '';
        return completer.complete(bizResponse(resCode, message, result));
      });
    } else {
      await _approvePaymentContinue(
          check,
          amount,
          amount,
          received,
          taxExempt,
          currency,
          sectionCode,
          receiptNo,
          qrCode, (int resCode, String? message, Map<String, Object?>? result) {
        return completer.complete(bizResponse(resCode, message, result));
      });
    }

    return completer.future;
  }

  void _combinePayments(
    OrderCheck check,
    double amount,
    double taxExempt,
    String currency,
    InvokeCallback callback,
  ) async {
    final basBL = BasBL();
    Map properties = await basBL.getPaymentProperties(paymentMethodCode);
    String? pid1 = properties['METHOD1'];
    String? pid2 = properties['METHOD2'];
    String? ratio1 = properties['RATIO1'];
    String? ratio2 = properties['RATIO2'];
    String? type = properties['COMBINING_TYPE'];
    int r1 = 1, r2 = 1;

    if (ratio1 != null) {
      r1 = int.tryParse(ratio1) ?? 1;
    }

    if (ratio2 != null) {
      r2 = int.tryParse(ratio2) ?? 1;
    }

    if ('random' == (type)) {
      Random random = Random();
      bool first = (random.nextInt(100) * (r1 + r2)) / 100 < r1;
      String? pid = first ? pid1 : pid2;
      TLog.d(_tag, 'first selected? $first selected pid: $pid');

      if (selectVan(pid)) {
        throw ApiException(500, 'Fail to select VAN');
      }

      String? sectionCode = await basBL.getPaymentType(pid);
      await _approvePaymentContinue(check, amount, amount, 0, taxExempt,
          currency, sectionCode, null, null, callback);
    } else {
      CultureManager cm = CultureManager();
      final ext = ExtSend();
      double amount1 =
          cm.currencyFormatToDouble(cm.currencyFormat(r1 / (r1 + r2) * amount));
      double taxExempt1 = cm.currencyFormatToDouble(
          cm.currencyFormat(r1 / (r1 + r2) * taxExempt));

      if (selectVan(pid1)) {
        throw ApiException(500, 'Fail to select VAN1');
      }

      ext.setRequestTotal(2);
      String? sectionCode = await basBL.getPaymentType(pid1);

      await _approvePaymentContinue(check, amount, amount1, 0, taxExempt1,
          currency, sectionCode, null, null,
          (int resCode, String? message, Map<String, Object?>? result) async {
        if (isHttpError(resCode)) {
          ext.setRequestTotal(0);
          throw ApiException(resCode, message, result);
        }

        if (selectVan(pid2)) {
          ext.setRequestTotal(0);
          throw ApiException(500, 'Fail to select VAN2');
        }

        String? sectionCode = await basBL.getPaymentType(pid2);

        await _approvePaymentContinue(check, amount, amount - amount1, 0,
            taxExempt - taxExempt1, currency, sectionCode, null, null,
            (int resCode, String? message, Map<String, Object?>? result2) {
          if (isHttpOK(resCode)) {
            if (result2!['amount'] != null) {
              result!['amount2'] = result2['amount'];
            }

            if (result2['receiptNo'] != null) {
              result!['receiptNo2'] = result2['receiptNo'];
            }

            if (result2['approvalNo'] != null) {
              result!['approvalNo2'] = result2['approvalNo'];
            }
          }

          // 554: PaymentSend.dart 내 sendPayment()와 맞춤
          if (isHttpError(resCode)) {
            throw ApiException(554, message);
          }

          return callback(resCode, message, result);
        });
      });
    }
  }

  Future<void> _approvePaymentContinue(
    OrderCheck check,
    double requestedTotal,
    double amount,
    double received,
    double taxExempt,
    String currency,
    String? sectionCode,
    String? receiptNo,
    String? qrCode,
    InvokeCallback callback,
  ) async {
    final saleBL = SaleBL();
    final ext = ExtSend();
    final device = Device();
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);
    Map<String, double> payments =
        await check.calcAmtTaxTipToPay(amount - taxExempt, taxExempt);
    ResVan resVan = ResVan();
    resVan.requestedTotal = requestedTotal;
    resVan.appType = '1'; // 승인/숭인취소인지 구분
    resVan.taxExempt = taxExempt;

    IntentContentRequest request = IntentContentRequest()
      ..apprType = paymentMethodCode
      ..currency = currency
      ..totalAmount = _getPaymentValue(payments, VANConstant.TOT_AMT)
      ..price = _getPaymentValue(payments, VANConstant.AMOUNT)
      ..tax = _getPaymentValue(payments, VANConstant.TAX)
      ..tip = _getPaymentValue(payments, VANConstant.TIP)
      ..taxExempt = taxExempt.toString();

    if (section == TenderConstants_Section.AUTHORIZATION_CONFIRMATION) {
      if (receiptNo == null) {
        throw ApiException(400, 'no receipt number');
      }

      List<db.SalesAccountHistory>? list =
          await saleBL.getSaleAccountHistoryWithReceiptNo(receiptNo);

      if (list?.length != 1) {
        throw ApiException(400, 'no receipt or ambiguous: $receiptNo');
      }

      request.tranType =
          IntentContentRequest.TRAN_TYPE_AUTHORIZATION_CONFIRMATION;
    } else {
      request.tranType = IntentContentRequest.TRAN_TYPE_APPROVAL;
    }

    if (section.isCash()) {
      if (sectionCode!.startsWith(TenderConstants.PREFIX_CASH)) {
        Map<String, Object> param = <String, Object>{};
        param['orderNo'] = await saleBL.createReceiptNo(check);
        param['received'] = received;
        request.param = param;

        ext.sendTransactionIntent(
            'cashReceipt/approve', check.getOrderHistory()!.getId()!, request,
            (String transactionNo, int resCode, String? message,
                IntentContentResponse? response) async {
          if (response == null) {
            _getVanData(
              transactionNo,
              resVan,
              (int resCode, String? message,
                  Map<String, Object?>? result) async {
                if (isHttpError(resCode)) {
                  throw ApiException(resCode, message);
                }

                await _doCashPayment(resVan, check, amount, received, taxExempt,
                    true, resVan.issueType, sectionCode, callback);
              },
              (int resCode, String? message, Map<String, Object?>? result) {
                return callback(resCode, message, null);
              },
            );
          }

          if (resCode < 0) {
            throw ApiException(httpStatusCode(resCode), message);
          }

          _convertResponseToResVan(resVan, response, transactionNo, taxExempt);
          await _doCashPayment(resVan, check, amount, received, taxExempt, true,
              resVan.issueType, sectionCode, callback);
        });
      } else {
        await _doCashPayment(resVan, check, amount, received, taxExempt, false,
            TenderConstants.ISSUE_TYPE_VOLUNTARILY, sectionCode, callback);
      }
    } else if (TenderConstants.isQRPay(sectionCode)) {
      await _doCashPayment(resVan, check, amount, amount, taxExempt, false,
          TenderConstants.ISSUE_TYPE_VOLUNTARILY, sectionCode, callback);
    } else {
      if (qrCode != null) {
        Map<String, Object> param = <String, Object>{};
        param['qrCode'] = qrCode;
        request.param = param;
      }

      ext.sendTransactionIntent(
        'payment/approve',
        check.getOrderHistory()!.getId()!,
        request,
        (String transactionNo, int resCode, String? msg,
            IntentContentResponse? response) async {
          Map<String, Object?> result = <String, Object?>{};

          if (response == null) {
            _getVanData(transactionNo, resVan, (int resCode, String? message,
                Map<String, Object?>? result) async {
              if (isHttpError(resCode)) {
                if (resVan.resCode != null) {
                  String receiptNo = await saleBL.createReceiptNo(check);
                  device.printCardFailReceipt(resVan, receiptNo);
                  throw ApiException(500, resVan.vanPrintMsg);
                }

                return callback(resCode, message, null);
              }

              await _doPayment(resVan, check, resVan.amount, resVan.cardNo,
                  sectionCode, resVan.vanPrintMsg, result, callback);
            }, (int resCode, String? message, Map<String, Object?>? result) {
              return callback(resCode, message, null);
            });

            return;
          }

          _convertResponseToResVan(resVan, response, transactionNo, taxExempt);

          if (resCode < 0) {
            if (resVan.resCode != null) {
              String receiptNo = await saleBL.createReceiptNo(check);
              device.printCardFailReceipt(resVan, receiptNo);
            }

            return callback(httpStatusCode(resCode), msg, null);
          }

          await _doPayment(resVan, check, resVan.amount, response.deviceCode,
              sectionCode, response.resultMsg, result, callback);
        },
      );
    }
  }

  Future<void> _doPayment(
    ResVan resVan,
    OrderCheck check,
    double amount,
    String? cardNo,
    String? sectionCode,
    String? message,
    Map<String, Object?>? rsp,
    InvokeCallback callback,
  ) async {
    final saleBL = SaleBL();
    final cashierBL = CashierBL();
    final finalizerBL = OrderFinalizerBL();
    final orderBL = OrderBL();
    final opBL = OperationBL();
    final device = Device();

    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);
    double change = 0;

    if (await check.getBalance() < amount) {
      double amount2 = await check.getBalance();
      change = MonetaryCalculator(amount).subtract(amount2).getValue();
    }

    try {
      db.SalesAccountHistory? ac =
          await saleBL.insertNewSaleACAll(resVan, check);

      if (ac == null) {
        Log.e(_tag, '_doPayment, salesAccountHistory is null');
        throw ApiException(500, 'salesAccountHistory is null');
      }

      ac.setPaymentSectionCode(sectionCode);

      if (check.getOperationTypeCode() ==
          BaseBL_OPR_TP_CD.OPERATION_TYPE_BUY.getCode()) {
        if (resVan.cardNo != null && resVan.cardNo!.isNotEmpty) {
          ac.setApprovalTypeCode(
              TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode());
        } else {
          ac.setApprovalTypeCode(
              TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode());
        }
      } else {
        ac.setApprovalTypeCode(
            TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode());
      }

      ac.setReceiptNumber(await saleBL.createReceiptNo(check));

      if (section.isCash()) {
        ac.setTakenAmount(amount);
        ac.setChangeAmount(change);
      } else {
        ac.setCashReceiptIdentifyNumber(cardNo);
      }

      ac.setTransactionTypeCode(TenderConstants_CrmItemTypeEnum
          .ITEM_TYPE_COMMODITY
          .getValue()
          .toString());
      await saleBL.updateSaleAC(ac);

      if (section.isCash()) {
        await cashierBL.addCashDrawLog(ac);
        await device.getPrinter().openDrawer();
      }

      if (!section.isCash()) {
        await device.printCardReceipt(check, ac);
      }

      // 어떤 이유로 화면 상으로는 getBalance()가 0이지만 결제 완료가 되지 않는 경우에 대한 방어코드
      MonetaryCalculator balance =
          MonetaryCalculator((await check.getBalance()).toString());
      print('Remaining balance = ${balance.amount()}');

      if (balance.amount() <= 0) {
        db.OrderHistory order = check.getOrderHistory()!;
        await device.printOrder(order.getId()!);
        Map<String, Object?>? result = await finalizerBL.finalize(
            order.getCommonDate(),
            order.getCommonSerialNumber(),
            await opBL.isAutoClearTable());

        if (result == null) {
          Log.e(_tag, '_doPayment, finalizerBL.finalize fail');
          throw ApiException(500, 'finalizerBL.finalize fail');
        }

        String? commonDate = result[TenderConstants.SALE_COM_DATE] as String?;
        int? saleNum = result[TenderConstants.SALE_SERIAL_NO] as int?;
        db.SalesHistory? sa = await saleBL.getSaleH(commonDate, saleNum);
        List<db.SalesHistoryItem> saleItems = (await sa?.getSaleItems()) ?? [];

        for (db.SalesHistoryItem i in saleItems) {
          String? orderOptionCode = i.getOrderOptionCode();
          orderOptionCode ??= OrderCheck.ORDER_OPTION_NORMAL_ORDER;

          if (orderOptionCode == OrderCheck.ORDER_OPTION_STORNO_ORDER) {
            i.setStateCode(BaseBL.STATIC_STATE_DELETE);
          }

          await saleBL.updateSaleItem(i);
        }

        if (rsp != null && sa != null) {
          rsp['salesId'] = sa.getId();
        }
      }

      await _donePayment(resVan, ac.getReceiptNumber(), amount, change,
          balance.amount(), message, rsp, callback);
      orderBL.updatePaymentInitiator(check.getOrderHistory()!.getCommonDate()!,
          check.getOrderHistory()!.getCommonSerialNumber()!);
    } catch (e) {
      print('_doPayment: $e');
      TLog.e(_tag, e);
      throw ApiException(500, '$e');
    }
  }

  Future<void> _donePayment(
    ResVan resVan,
    String? receiptNo,
    double amount,
    double change,
    double balance,
    String? message,
    Map<String, Object?>? rsp,
    InvokeCallback callback,
  ) async {
    final basBL = BasBL();
    TenderConstants_Section section = TenderConstants_Section.getSection(
        await basBL.getPaymentType(resVan.paymentMethodCode));
    rsp!['balance'] = balance;

    // 현금은 resVan 을 사용하지 않기 때문에 DB 에서 정보를 추출
    // 카드인 경우 resVan 데이터 모두가 DB에 저장되지 않을 수 있기 때문에 resVan 에서 정보 추출
    // 이전에는 DB 에 저장하면서 resVan 초기화 하였지만 지금은 makeCardApprovalResult() 이후에 초기화 하게 함
    if (section.isCash()) {
      rsp['change'] = change;
      rsp['received'] = amount;

      if (receiptNo != null) {
        await _makeCashApprovalResult(receiptNo, rsp);
      }
    } else {
      _makeCardApprovalResult(resVan, receiptNo, rsp);
    }

    resVan.reset();
    callback(200, '$message;receipt no=$receiptNo', rsp);
    _uploadSales();
  }

  Future<void> _doCashPayment(
    ResVan resVan,
    final OrderCheck check,
    final double amount,
    final double received,
    double taxExempt,
    bool cashReceipt,
    String? issueType,
    String? sectionCode,
    final InvokeCallback callback,
  ) async {
    final basBL = BasBL();
    final saleBL = SaleBL();
    final cashierBL = CashierBL();
    final finalizerBL = OrderFinalizerBL();
    final orderBL = OrderBL();
    final device = Device();
    Map<String, Object?> rsp = <String, Object?>{};
    double change = MonetaryCalculator(received).subtract(amount).getValue();
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);

    try {
      resVan.paymentMethodCode = paymentMethodCode;
      db.SalesAccountHistory? ac = await saleBL.insertNewSaleAC(resVan, check,
          amount - taxExempt, taxExempt, cashReceipt, issueType, sectionCode);
      if (ac == null) {
        Log.e(_tag, '_doCashPayment, salesAccountHistory is null');
        throw ApiException(500, 'salesAccountHistory is null');
      }

      ac.setPaymentSectionCode(await basBL.getPaymentType(paymentMethodCode));

      if (BaseBL_OPR_TP_CD.OPERATION_TYPE_BUY.getCode() ==
          check.getOperationTypeCode()) {
        if (cashReceipt) {
          ac.setApprovalTypeCode(
              TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode());
        } else {
          ac.setApprovalTypeCode(
              TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode());
        }
      } else {
        ac.setApprovalTypeCode(
            TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode());
      }

      ac.setReceiptNumber(await saleBL.createReceiptNo(check));

      if (section.isCash()) {
        ac.setTakenAmount(received);
        ac.setChangeAmount(change);
      }

      ac.setTransactionTypeCode(TenderConstants_CrmItemTypeEnum
          .ITEM_TYPE_COMMODITY
          .getValue()
          .toString());
      await saleBL.updateSaleAC(ac);

      if (section.isCash()) {
        await cashierBL.addCashDrawLog(ac);
        await device.getPrinter().openDrawer();
      }

      MonetaryCalculator balance = MonetaryCalculator(await check.getBalance());
      print('Remaining balance = ${balance.amount()}');

      if (balance.amount() <= 0) {
        db.OrderHistory order = check.getOrderHistory()!;
        await device.printOrder(order.getId()!);
        Map<String, Object?>? result = await finalizerBL.finalize(
            order.getCommonDate(),
            order.getCommonSerialNumber(),
            await OperationBL().isAutoClearTable());

        if (result == null) {
          Log.e(_tag, '_doCashPayment, finalizerBL.finalize fail');
          throw ApiException(500, 'finalizerBL.finalize fail');
        }

        String? commonDate = result[TenderConstants.SALE_COM_DATE] as String?;
        int? sno = result[TenderConstants.SALE_SERIAL_NO] as int?;
        db.SalesHistory? sa = await saleBL.getSaleH(commonDate, sno);
        List<db.SalesHistoryItem> saleItems = (await sa?.getSaleItems()) ?? [];

        for (db.SalesHistoryItem i in saleItems) {
          String orderOptionCode =
              i.getOrderOptionCode() ?? OrderCheck.ORDER_OPTION_NORMAL_ORDER;

          if (orderOptionCode == OrderCheck.ORDER_OPTION_STORNO_ORDER) {
            i.setStateCode(BaseBL.STATIC_STATE_DELETE);
          }

          await saleBL.updateSaleItem(i);
        }

        if (sa != null) {
          rsp['salesId'] = sa.getId();
        }
      }

      await _doneCashPayment(ac.getReceiptNumber(), received, change,
          balance.amount(), rsp, callback);
      orderBL.updatePaymentInitiator(check.getOrderHistory()!.getCommonDate()!,
          check.getOrderHistory()!.getCommonSerialNumber()!);
    } catch (e) {
      print('_doCashPayment: $e');
      TLog.e(_tag, e);
      throw ApiException(500, '$e');
    }
  }

  Future<void> _doneCashPayment(
    String? receiptNo,
    double received,
    double change,
    double balance,
    Map<String, Object?> rsp,
    InvokeCallback callback,
  ) async {
    rsp['change'] = change;
    rsp['received'] = received;
    rsp['balance'] = balance;

    if (receiptNo != null) {
      await _makeCashApprovalResult(receiptNo, rsp);
    }

    _uploadSales();
    return callback(200, 'Approved; receipt no=$receiptNo', rsp);
  }

  // 실패 시 true 돌려줌
  bool selectVan(String? pid) {
    if (pid == null) {
      TLog.w(_tag, 'Payment method not specified');
      return true;
    }

    paymentMethodCode = pid;
    return false;
  }

  Future<String> _defaultCurrency() async {
    final opBL = OperationBL();
    return await opBL.getCurrency();
  }

  String _getPaymentValue(Map<String, double> payments, String key) {
    return payments[key]?.toString() ?? '0';
  }

  void _getVanData(
    String? transactionNo,
    ResVan resVan,
    InvokeCallback success,
    InvokeCallback fail,
  ) {
    final ext = ExtSend();
    IntentContentRequest request = IntentContentRequest()
      ..approTrNo = transactionNo;
    resVan.approvalTransactionNo = transactionNo;

    ext.sendIntent('payment/get_van_data', request, (String tranNo, int resCode,
        String? message, IntentContentResponse? response) async {
      if (resCode == ExtSend.codeBusy || response == null) {
        fail.call(429, message, null);
        return;
      }

      if (response.approvalRes != null) {
        resVan.fromMap(response.approvalRes!);
      }

      if (resCode < 0 && (message == null || message.isEmpty)) {
        message = 'user_canceled';
      }

      success.call(httpStatusCode(resCode), message, null);
      MyPrefs prefs = MyPrefs();

      if (transactionNo == (await prefs.transactionNo()!.get())) {
        prefs.transactionNo()!.put('');
        prefs.transactionData()!.put('');
      }
    });
  }

  void _convertResponseToResVan(
    ResVan resVan,
    IntentContentResponse? response,
    String transactionNo, [
    double? taxExempt,
  ]) {
    resVan.paymentMethodCode = paymentMethodCode;

    if (response == null) {
      return;
    }

    resVan.approvalTransactionNo = transactionNo;
    resVan.appDate = response.approDate;
    resVan.appDatePriPtn = DateFormat('yyyyMMddHHmmss')
        .format(CommonUtil.convertDateForm2(response.approDate));
    resVan.appNo = response.approNo;
    resVan.cardNo = response.deviceCode;
    resVan.cardName = response.deviceName;
    resVan.ctCode = response.issuerCode;
    resVan.ctName = response.issuerName;
    resVan.aqCode = response.acquirerCode;
    resVan.aqName = response.acquirerName;
    // price 는 과세금액 (세금 미포함) , amount 는 총 금액
    double price = CommonUtil.stringToDouble(response.price);
    double totalAmount = CommonUtil.stringToDouble(response.approAmount);
    resVan.amount = price != 0 ? price : totalAmount;
    resVan.tax = CommonUtil.stringToDouble(response.tax);
    resVan.gratuity = CommonUtil.stringToDouble(response.tip);
    resVan.taxExempt =
        taxExempt ?? CommonUtil.stringToDouble(response.taxExempt);
    Map? result = response.approvalRes;

    if (result != null) {
      resVan.batchId = result['batchId'];
      resVan.stan = result['stan'];
      resVan.rrn = result['rrn'];
      resVan.currencyCode = result['currencyCode'];
      resVan.secureReference = result['secureReference'];
      resVan.transactionFee = result['transactionFee'];
      resVan.aid = result['aid'];
      resVan.resCode = result['resCode'];
      resVan.authorizedAmount = result['authorizedAmount'];
      resVan.inmm = result['installment'];
      resVan.idStr = result['idStr'];
      resVan.issueType = result['issueType'];
      String? cardReadType = result['cardReadType'];

      if (cardReadType != null) {
        try {
          resVan.cardReadType = int.parse(cardReadType);
        } catch (e) {
          TLog.e(_tag, e);
        }
      }

      resVan.orderNo = result['orderNo'];
      resVan.companyNo = result['companyNo'];
      resVan.transactionId = result['transactionId'];
      resVan.tokenId = result['tokenId'];
      resVan.userAddress = result['userAddress'];
      resVan.exchangeDateIndex = result['exchangeDateIndex'];
      resVan.exchangeRate = result['exchangeRate'];
      resVan.exchangeAmount = result['exchangeAmount'];
      resVan.tokenAmount = result['tokenAmount'];
      resVan.setVanResMsg();
    }
  }

  void _makeCardApprovalResult(
    ResVan resVan,
    String? receiptNo,
    Map<String, Object?> result,
  ) {
    result['receiptNo'] = receiptNo;
    result['approvalNo'] = resVan.appNo; //승인번호
    result['approvalDate'] = CommonUtil.convertDateForm1(
        CommonUtil.convertStringToDate(resVan.appDatePriPtn)); //승인일시
    result['amount'] = resVan.amount +
        resVan.tax +
        resVan.gratuity +
        resVan.gratuityTax; //승인금액
    result['cardNo'] = resVan.cardNo; //카드번호
    result['cardName'] = resVan.cardName;
    result['issuerName'] = resVan.ctName;
    result['acquirerName'] = resVan.aqName; //매입사
    result['company'] = ''; // 가맹점
    result['companyNo'] = resVan.companyNo; //가맹점 단말 번호
    result['vanResMsg'] = resVan.vanResMsg;
    result['orderNo'] = resVan.orderNo;
    result['paymentSectionCode'] = TenderConstants_Section.CARD.getCode();
    result['paymentMethodCode'] = resVan.paymentMethodCode;
  }

  Future<void> _makeCashApprovalResult(
    String receiptNo,
    Map<String, Object?> result,
  ) async {
    final saleBL = SaleBL();
    List<db.SalesAccountHistory>? acs =
        await saleBL.getSaleAccountHistoryWithReceiptNo(receiptNo);

    if (acs == null) {
      Log.e(_tag, '_makeCashApprovalResult: No account history: $receiptNo');
      return;
    }

    if (acs.length != 1) {
      Log.e(_tag, '_makeCashApprovalResult: More account history: $receiptNo');
      return;
    }

    db.SalesAccountHistory ac = acs.first;
    result['receiptNo'] = receiptNo;
    result['approvalDate'] = CommonUtil.convertDateForm1(
        CommonUtil.convertStringToDate(ac.getApprovalDatePrimaryPattern()));
    result['amount'] = ac.getTotalAmount();
    result['cardName'] = ac.getCardName();
    result['acquirerName'] = ac.getCardPurchaseCompanyName();
    result['paymentSectionCode'] = ac.getPaymentSectionCode();
    result['paymentMethodCode'] = ac.getPaymentMethodCode();
  }

  void _uploadSales() {
    try {
      gRpcClient.uploadSales();
      gRpcClient.uploadCashierData();
    } catch (e, stacktrace) {
      TLog.e(_tag, e, stacktrace);
    }
  }

  Future<Map> getPartialPayments(String? orderId) async {
    final orderBL = OrderBL();
    final saleBL = SaleBL();
    OrderCheck? check = await orderBL.getOrderByOrderHId(orderId);

    if (check == null) {
      throw ApiException(404, 'Order not found');
    }

    List<db.SalesAccountHistory> acs =
        await saleBL.getOrderSalesAccountHistoryListIncludeCancel(
            check.getOrderHistory()!.getCommonDate()!,
            check.getOrderHistory()!.getCommonSerialNumber()!);
    double sum = acs.fold(0, (value, i) => value + i.getTotalAmount());
    List<Map> list = acs
        .map((i) => {
              'receiptNo': i.getReceiptNumber(),
              'approvalNo': i.getPaymentApprovalNumber(),
              'approvalDate': i.getApprovalDatePrimaryPattern(),
              'amount': i.getTotalAmount(),
              'cardName': i.getCardCompanyName(),
              'cardNo': i.getCashReceiptIdentifyNumber(),
              'acquirerName': i.getCardPurchaseCompanyName(),
              'company': '',
              'companyNo': i.getCardCompanyAffiliateNumber(),
              'paymentSectionCode': i.getPaymentSectionCode(),
              'paymentMethodCode': i.getPaymentMethodCode(),
              'isCanVoid': _isCanVoid(i),
              'isCanceled': TenderConstants.isCanceled(i.getApprovalTypeCode()),
            })
        .toList();

    return bizResponse(200, 'success', {
      'totalAmount': sum,
      'balance': await check.getBalance(),
      'list': list,
    });
  }

  bool _isCanVoid(db.SalesAccountHistory ac) {
    return CommonUtil.isNullEmpty(ac.getCancelSerialNumber()) &&
        !TenderConstants.isCanceled(ac.getApprovalTypeCode());
  }

  /// 결제 취소
  ///
  /// * receiptNo: 원거래 영수증 번호
  /// * amount: 원거래 금액
  Future<Map> cancelPayment(Map? data) async {
    final saleBL = SaleBL();
    double amount = CommonUtil.toDouble(data?['amount']);
    String? receiptNo = data?['receiptNo'];
    String? salesId = data?['salesId'];
    String? currency = data?['currency'];

    if (receiptNo != null) {
      List<db.SalesAccountHistory>? acs =
          await saleBL.getSaleAccountHistoryWithReceiptNo(receiptNo);

      if (acs!.isEmpty) {
        throw ApiException(404, 'Receipt not found');
      }

      db.SalesHistory? sale = await saleBL.getSaleH(
          acs.first.getCommonDate(), acs.first.getSaleSerialNumber());

      if (sale?.getCancelTypeCode() == TenderConstants.REFUND) {
        throw ApiException(500, 'Cannot be canceled because it is refunded');
      }

      if (amount != acs.first.getTotalAmount()) {
        throw ApiException(
            400, 'Invalid amount: should be ${acs.first.getTotalAmount()}');
      }

      return _cancelPayment(acs.first, currency);
    } else if (salesId != null) {
      db.SalesHistory? sale = await saleBL.getSaleHById(salesId);

      if (sale == null) {
        throw ApiException(404, 'Sale not found');
      }

      if (sale.getCancelTypeCode() == TenderConstants.REFUND) {
        throw ApiException(500, 'Cannot be canceled because it is refunded');
      }

      if (sale.getTotalAmount() <= 0) {
        throw ApiException(500, 'Already canceled');
      }

      if (sale.getTotalAmount() != amount) {
        throw ApiException(
            500, 'Invalid amount: should be ${sale.getTotalAmount()}');
      }

      Map? response;

      for (db.SalesAccountHistory i in await sale.getSaleACs()) {
        if ((i.getCancelSerialNumber()?.isEmpty ?? true) &&
            !TenderConstants.isCanceled(i.getApprovalTypeCode())) {
          Map r = await _cancelPayment(i, currency);

          if (!Simple.successful(r)) {
            throw ApiException(
                Simple.resCode(r), Simple.resMessage(r), Simple.result(r));
          }

          if (response == null) {
            response = r;
          } else {
            Map result = Simple.result(response);

            if (!result.containsKey('otherReceipts')) {
              result['otherReceipts'] = [];
            }

            result['otherReceipts'].add(Simple.result(r));
          }
        }
      }

      if (response == null) {
        throw ApiException(500, 'Already canceled');
      }

      return response;
    }

    throw ApiException(400, 'Missing parameters');
  }

  Future<Map> _cancelPayment(db.SalesAccountHistory ac,
      [String? currency]) async {
    final device = Device();
    final store = Store();
    currency ??= await _defaultCurrency();

    if (await device.isSystemTimeInvalid()) {
      TLog.e(_tag, 'System time invalid');
      throw ApiException(500, 'System time invalid');
    }

    String? result = await device.getPrinter().getPrinterStatus();

    if (result != null) {
      throw ApiException(500, result);
    }

    if (!(await store.isCashierIn())) {
      print('Now cashier out. So cashier in first.');
      await store.cashierIn();
    }

    String? pid = ac.getPaymentMethodCode();

    if (pid == null || selectVan(pid)) {
      throw ApiException(400, 'Invalid paymentMethodCode');
    }

    Completer<Map> completer = Completer();

    await _cancelPaymentContinue(
        pid, ac.getReceiptNumber()!, ac.getTotalAmount(), currency,
        (int resCode, String? message, Map<String, Object?>? result) {
      return completer.complete(bizResponse(resCode, message, result));
    });

    return completer.future;
  }

  Future<void> _cancelPaymentContinue(
    String pid,
    String receiptNo,
    double totalAmount,
    String currency,
    InvokeCallback callback,
  ) async {
    final basBL = BasBL();
    final saleBL = SaleBL();
    final ext = ExtSend();
    final device = Device();
    List<db.SalesAccountHistory>? list =
        await saleBL.getSaleAccountHistoryWithReceiptNo(receiptNo);

    if (list == null || list.isEmpty) {
      Log.e(_tag, '_cancelPaymentContinue: No account history: $receiptNo');
      return;
    }

    String? sectionCode = await basBL.getPaymentType(pid);
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);
    ResVan resVan = ResVan();
    resVan.appType = '2';

    if (list.length != 1) {
      String msg = 'no receipt or ambiguous: $receiptNo';
      TLog.e(_tag, msg);
      throw ApiException(500, msg);
    }

    db.SalesAccountHistory ac = list.first;

    if ((ac.getCancelSerialNumber()?.isNotEmpty ?? false) ||
        TenderConstants.isCanceled(ac.getApprovalTypeCode())) {
      throw ApiException(500, 'Already canceled');
    }

    String cancelReceiptNo = await saleBL.createReceiptNo2(ac);
    IntentContentRequest request = IntentContentRequest()
      ..apprType = paymentMethodCode
      ..tranType = IntentContentRequest.TRAN_TYPE_CANCEL
      ..totalAmount = totalAmount.toString()
      ..price = ac.getSupplyValue().toString()
      ..tax = ac.getTaxAmount().toString()
      ..approTrNo = ac.getApprovalTransactionNo()
      ..approNo = ac.getPaymentApprovalNumber()
      ..approDate = ac.getApprovalDate()
      ..currency = currency;

    if (section.isCash()) {
      if (sectionCode!.startsWith(TenderConstants.PREFIX_CASH)) {
        Map<String, Object?> param = <String, Object?>{};
        param['received'] = ac.getTakenAmount();
        param['personal'] =
            TenderConstants_CASH_RECPT_TP_CD.CASH_RECEIPT_BUSINESS.getCode() !=
                ac.getCashReceiptTypeCode();
        param['idStr'] = ac.getCashReceiptIdentifyNumber();
        request.param = param;

        ext.sendTransactionIntent('cashReceipt/cancel', receiptNo, request, (
          String transactionNo,
          int resCode,
          String? message,
          IntentContentResponse? response,
        ) async {
          if (response == null) {
            _getVanData(transactionNo, resVan, (int resCode, String? message,
                Map<String, Object?>? result) async {
              if (isHttpError(resCode)) {
                throw ApiException(resCode, message);
              }

              try {
                await _doPaymentCancel(
                    resVan, ac, cancelReceiptNo, sectionCode, {}, callback);
              } catch (e) {
                print('_cancelPaymentContinue: $e');
                TLog.e(_tag, e);
                throw ApiException(500, 'Fail to cancel');
              }
            }, (int resCode, String? message, Map<String, Object?>? result) {
              return callback(resCode, message, null);
            });
          }

          if (resCode < 0) {
            throw ApiException(httpStatusCode(resCode), message);
          }

          _convertResVan(resVan, response, transactionNo);

          try {
            await _doPaymentCancel(
                resVan, ac, cancelReceiptNo, sectionCode, {}, callback);
          } catch (e) {
            print('_cancelPaymentContinue: $e');
            TLog.e(_tag, e);
            throw ApiException(500, 'Fail to cancel');
          }
        });
      } else {
        try {
          await _doPaymentCancel(
              resVan, ac, cancelReceiptNo, sectionCode, {}, callback);
        } catch (e) {
          print('_cancelPaymentContinue: $e');
          TLog.e(_tag, e);
          throw ApiException(500, 'Fail to cancel');
        }
      }
    } else if (TenderConstants.isQRPay(sectionCode)) {
      try {
        await _doPaymentCancel(
            resVan, ac, cancelReceiptNo, sectionCode, {}, callback);
      } catch (e) {
        print('_cancelPaymentContinue: $e');
        TLog.e(_tag, e);
        throw ApiException(500, 'Fail to cancel');
      }
    } else {
      ext.sendTransactionIntent('payment/cancel', receiptNo, request,
          (String transactionNo, int resCode, String? msg,
              IntentContentResponse? response) async {
        Map<String, Object?> data = <String, Object?>{};

        if (response == null) {
          _getVanData(transactionNo, resVan, (
            int resCode,
            String? message,
            Map<String, Object?>? result,
          ) async {
            if (isHttpError(resCode)) {
              if (resVan.resCode != null) {
                device.printCardFailReceipt(resVan, cancelReceiptNo);
              }

              return callback(resCode, message, null);
            }

            try {
              await _doPaymentCancel(
                resVan,
                ac,
                cancelReceiptNo,
                sectionCode,
                data,
                callback,
              );
            } catch (e) {
              print('_cancelPaymentContinue: $e');
              TLog.e(_tag, e);
              throw ApiException(500, '$message;$e');
            }
          }, (int resCode, String? message, Map<String, Object?>? result) {
            return callback(resCode, message, null);
          });
        }

        _convertResVan(resVan, response, transactionNo);

        if (resCode < 0) {
          if (resVan.resCode != null) {
            device.printCardFailReceipt(resVan, cancelReceiptNo);
          }

          return callback(httpStatusCode(resCode), msg, null);
        }

        try {
          await _doPaymentCancel(
              resVan, ac, cancelReceiptNo, sectionCode, data, callback);
        } catch (e) {
          print('_cancelPaymentContinue: $e');
          TLog.e(_tag, e);
          throw ApiException(500, '$msg;$e');
        }
      });
    }
  }

  Future<void> _doPaymentCancel(
    ResVan resVan,
    db.SalesAccountHistory old,
    String cancelReceiptNo,
    String? sectionCode,
    Map<String, Object?> result,
    InvokeCallback callback,
  ) async {
    final saleBL = SaleBL();
    final cashierBL = CashierBL();
    final orderBL = OrderBL();
    final device = Device();
    TenderConstants_Section section =
        TenderConstants_Section.getSection(sectionCode);
    String? receiptType;

    if (section.isCash() || TenderConstants.isQRPay(sectionCode)) {
      if (TenderConstants_CASH_RECPT_TP_CD.CASH_RECEIPT_PERSONAL.getCode() ==
          old.getCashReceiptTypeCode()) {
        receiptType =
            TenderConstants_CASH_RECPT_TP_CD.CNCL_RECEIPT_PERSONAL.getCode();
      } else if (TenderConstants_CASH_RECPT_TP_CD.CASH_RECEIPT_BUSINESS
              .getCode() ==
          old.getCashReceiptTypeCode()) {
        receiptType =
            TenderConstants_CASH_RECPT_TP_CD.CNCL_RECEIPT_BUSINESS.getCode();
      }

      // 오픈웨이 부분 취소가 들어가면서 van 응답을 사용하기에 값 설정
      resVan.amount = old.getSupplyValue();
      resVan.tax = old.getTaxAmount();
    }

    db.SalesAccountHistory? ac = await saleBL.insertNewSaleAcForVoid(
        resVan,
        old,
        TenderConstants.getCancelAppTypeCode(old.getApprovalTypeCode()),
        receiptType,
        cancelReceiptNo);
    if (ac == null) {
      Log.e(_tag, '_doPaymentCancel, salesAccountHistory is null');
      return;
    }

    if (section.isCash()) {
      await cashierBL.addCashDrawLog(ac);
      await device.getPrinter().openDrawer();
    }

    List<db.SalesHistoryItem> items = [];
    bool isOrdering = !saleBL.isFinalizeSalesAccount(old)!;

    if (isOrdering) {
      // 주문에 대한 결제가 완료가 되지 않은 상태
      await orderBL.initOrderItemPaidSno(old.getCommonDate(),
          old.getSaleSerialNumber(), old.getSalesAccountSerialNumber());
    } else {
      db.SalesHistory? sale =
          await saleBL.getSaleH(ac.getCommonDate(), ac.getSaleSerialNumber());
      if (sale == null) {
        Log.e(_tag, '_doPaymentCancel, saleBL.getSaleH is null');
        return;
      }
      // 모든 saleAC 가 취소되면 상품도 모두 취소
      if (old.getPaymentOption() == TenderConstants_PAY_OPT.MENU.getCode()) {
        items =
            await saleBL.insertNewSaleItemForVoid2(old, ac, BaseBL.employeeId);

        if ((await saleBL.getSaleACListWithoutCanceled(
                sale.getCommonDate(), sale.getSaleSerialNumber()))
            .isEmpty) {
          items = await saleBL.insertNewSaleItemForVoid(
              sale, sale, BaseBL.employeeId);
          await saleBL.insertNewSaleDiscountForVoid(sale, BaseBL.employeeId);
        }
      } else if ((await saleBL.getSaleACListWithoutCanceled(
              sale.getCommonDate(), sale.getSaleSerialNumber()))
          .isEmpty) {
        items = await saleBL.insertNewSaleItemForVoid(
            sale, sale, BaseBL.employeeId);
        await saleBL.insertNewSaleDiscountForVoid(sale, BaseBL.employeeId);
      }

      // 결제 취소가 발생하면 sale 의 cancel type 에 'V' 표기
      sale.setCancelTypeCode(TenderConstants.VOID);
      sale.setCancelEmployeeId(BaseBL.employeeId);
      sale = await saleBL.calcSaleHistory(sale);
      await saleBL.updateSaleH(sale);
    }

    device.printReceiptCardCancel(ac, sectionCode, items, isOrdering);
    await _donePaymentCancel(cancelReceiptNo, result, callback);
    orderBL.updatePaymentInitiator(
        old.getCommonDate()!, old.getSaleSerialNumber()!);
  }

  Future<void> _donePaymentCancel(
    String receiptNo,
    Map<String, Object?> rsp,
    InvokeCallback callback,
  ) async {
    await _makeCashApprovalResult(receiptNo, rsp);
    _uploadSales();
    return callback(200, 'Canceled; receiptNo=$receiptNo', rsp);
  }

  void _convertResVan(
    ResVan resVan,
    IntentContentResponse? response,
    String transactionNo, [
    double? taxExempt,
  ]) {
    resVan.paymentMethodCode = paymentMethodCode;

    if (response == null) {
      return;
    }

    resVan.approvalTransactionNo = transactionNo;
    resVan.appDate = response.approDate;
    resVan.appDatePriPtn = DateFormat('yyyyMMddHHmmss')
        .format(CommonUtil.convertDateForm2(response.approDate));
    resVan.appNo = response.approNo;
    resVan.cardNo = response.deviceCode;
    resVan.cardName = response.deviceName;
    resVan.ctCode = response.issuerCode;
    resVan.ctName = response.issuerName;
    resVan.aqCode = response.acquirerCode;
    resVan.aqName = response.acquirerName;
    // price 는 과세금액 (세금 미포함) , amount 는 총 금액
    double price = CommonUtil.stringToDouble(response.price);
    double totalAmount = CommonUtil.stringToDouble(response.approAmount);
    resVan.amount = price != 0 ? price : totalAmount;
    resVan.tax = CommonUtil.stringToDouble(response.tax);
    resVan.gratuity = CommonUtil.stringToDouble(response.tip);
    resVan.taxExempt =
        taxExempt ?? CommonUtil.stringToDouble(response.taxExempt);
    Map? result = response.approvalRes;

    if (result != null) {
      resVan.batchId = result['batchId'];
      resVan.stan = result['stan'];
      resVan.rrn = result['rrn'];
      resVan.currencyCode = result['currencyCode'];
      resVan.secureReference = result['secureReference'];
      resVan.transactionFee = result['transactionFee'];
      resVan.aid = result['aid'];
      resVan.resCode = result['resCode'];
      resVan.authorizedAmount = result['authorizedAmount'];
      resVan.inmm = result['installment'];
      resVan.idStr = result['idStr'];
      resVan.issueType = result['issueType'];
      String? cardReadType = result['cardReadType'];

      if (cardReadType != null) {
        try {
          resVan.cardReadType = int.parse(cardReadType);
        } catch (e) {
          TLog.e(_tag, e);
        }
      }

      resVan.orderNo = result['orderNo'];
      resVan.companyNo = result['companyNo'];
      resVan.transactionId = result['transactionId'];
      resVan.tokenId = result['tokenId'];
      resVan.userAddress = result['userAddress'];
      resVan.exchangeDateIndex = result['exchangeDateIndex'];
      resVan.exchangeRate = result['exchangeRate'];
      resVan.exchangeAmount = result['exchangeAmount'];
      resVan.tokenAmount = result['tokenAmount'];
      resVan.setVanResMsg();
    }
  }

  Future<Map> listSales(Map? params) async {
    final saleBL = SaleBL();
    String? startDate = params?['startDate'];
    String? endDate = params?['endDate'];
    DateTime start = parseSearchDate(startDate, true);
    DateTime end = parseSearchDate(endDate, false);

    List<db.SalesHistory> sales =
        await saleBL.getSaleHListBetweenDate(start, end);
    List<Map> list = <Map>[];

    for (db.SalesHistory i in sales) {
      list.add(await _getSale(i));
    }

    return bizResponse(200, 'success', list);
  }

  Future<Map> getSaleDetails(Map? params) async {
    final saleBL = SaleBL();
    String? salesId = params?['salesId'];
    String? receiptNo = params?['receiptNo'];
    db.SalesHistory? sale;

    if (salesId != null) {
      sale = await saleBL.getSaleHById(salesId);
    } else if (receiptNo != null) {
      List<db.SalesAccountHistory>? accounts =
          await saleBL.getSaleAccountHistoryWithReceiptNo(receiptNo);

      if (accounts!.isNotEmpty) {
        sale = await saleBL.getSaleH(accounts.first.getCommonDate(),
            accounts.first.getSaleSerialNumber());
      }
    }

    if (sale == null) {
      throw ApiException(404, 'Sale not fond');
    }

    return bizResponse(200, 'success', await _getSale(sale));
  }

  Future<Map> _getSale(db.SalesHistory sale) async {
    return {
      'salesId': sale.getId(),
      'totalAmount': sale.getTotalAmount(),
      'salesDate': sale.getFirstRegistrationDatetime()!.substring(0, 14),
      'isCanceled': sale.getCancelTypeCode() == TenderConstants.VOID ||
          sale.getCancelTypeCode() == TenderConstants.REFUND,
      'cancelType': sale.getCancelTypeCode(),
      'salesAccounts': (await sale.getSaleACs())
          .map((j) => {
                'salesAccountId': j.getId(),
                'paymentMethodCode': j.getPaymentMethodCode(),
                'paymentSectionCode': j.getPaymentSectionCode(),
                'receiptNo': j.getReceiptNumber(),
                'approvalAmount': j.getTotalAmount(),
                'approvalDate': j.getApprovalDatePrimaryPattern(),
                'isCanceled':
                    TenderConstants.isCanceled(j.getApprovalTypeCode()),
              })
          .toList(),
      'salesItems': (await sale.getSaleItems())
          .where((j) => j.getQuantity() >= 0)
          .map((j) => {
                'salesItemId': j.getId(),
                'itemId': j.getItemId(),
                'price': j.getPrice(),
                'qty': j.getQuantity(),
                'supplyValue': j.getSupplyValue(),
                'tax': j.getTotalTax(),
                'supplyAmount': j.getSupplyAmount(),
                'discount': j.getDiscountAmount(),
                'isRefund': (j.getCancelSerialNumber() ?? 0) > 0,
              })
          .toList(),
    };
  }

  Future<Map> listSalesAccounts(Map? params) async {
    final saleBL = SaleBL();
    String? receiptNo = params?['receiptNo'];
    String? startDate = params?['startDate'];
    String? endDate = params?['endDate'];
    List<db.SalesAccountHistory> accounts;

    if (receiptNo != null) {
      accounts = (await saleBL.getSaleAccountHistoryWithReceiptNo(receiptNo))!;
    } else {
      DateTime start = parseSearchDate(startDate, true);
      DateTime end = parseSearchDate(endDate, false);
      accounts = (await saleBL.getSaleACListBetweenDate(start, end))!;
    }

    List<Map> list = accounts
        .map((i) => {
              'salesAccountId': i.getId(),
              'paymentMethodCode': i.getPaymentMethodCode(),
              'paymentSectionCode': i.getPaymentSectionCode(),
              'receiptNo': i.getReceiptNumber(),
              'approvalAmount': i.getTotalAmount(),
              'approvalDate': i.getApprovalDatePrimaryPattern(),
              'isCanceled': TenderConstants.isCanceled(i.getApprovalTypeCode()),
            })
        .toList();

    return bizResponse(200, 'success', list);
  }

  Future<Map> listSalesByShift(String? shiftNo) async {
    final cashierBL = CashierBL();
    final saleBL = SaleBL();

    if (shiftNo == null) {
      db.CashierBankHistory? bank = await cashierBL.last();

      if (bank == null) {
        throw ApiException(404, 'No shift exists');
      }

      shiftNo = bank.getId();
    }

    db.CashierBankHistory? bank = await cashierBL.getCashierBankById(shiftNo!);

    if (bank == null) {
      throw ApiException(404, 'Shift not found');
    }

    List<db.SalesHistory> history = await saleBL.getSaleHListBetweenDate(
        bank.getBusinessStartDate(), bank.getBusinessEndDate());
    List<Map> list = history
        .map((i) => {
              'salesId': i.getId(),
              'totalAmount': i.getTotalAmount(),
              'salesDate': i.getFirstRegistrationDatetime()!.substring(0, 14),
              'isCanceled': i.getCancelTypeCode() == TenderConstants.VOID,
            })
        .toList();
    return bizResponse(200, 'success', list);
  }

  Future<Map> refund(Map? params) async {
    final saleBL = SaleBL();
    String? salesId = params?['salesId'];
    List? itemIds = params?['items'];
    double amount = CommonUtil.toDouble(params?['amount']);

    if (salesId == null) {
      throw ApiException(400, 'Missing parameters');
    }

    db.SalesHistory? sale = await saleBL.getSaleHById(salesId);

    if (sale == null) {
      throw ApiException(404, 'Sale not found');
    }

    List<db.SalesHistoryItem> items = <db.SalesHistoryItem>[];

    for (db.SalesHistoryItem i in await sale.getSaleItems()) {
      // 이미 취소된 상품은 제외
      if ((i.getCancelSerialNumber() ?? 0) == 0) {
        if (itemIds == null || itemIds.contains(i.getId())) {
          items.add(i);
        }
      }
    }

    if (items.isEmpty) {
      throw ApiException(500, 'Already refunded');
    }

    double total = items.fold(0, (v, i) => v + i.getSupplyAmount());

    if (total != amount) {
      throw ApiException(500, 'Invalid amount: should be $total');
    }

    Map result = await _refund(sale, items);
    return bizResponse(200, 'Refunded', result);
  }

  Future<Map<String, Object?>> _refund(
      db.SalesHistory sale, List<db.SalesHistoryItem> items) async {
    final store = Store();
    final saleBL = SaleBL();
    final cashierBL = CashierBL();
    final printer = Device().getPrinter();

    if (!(await store.isCashierIn())) {
      print('Now cashier out. So cashier in first.');
      await store.cashierIn();
    }

    db.SalesAccountHistory ac = await saleBL.doRefund(sale, items);
    TenderConstants_Section section =
        TenderConstants_Section.getSection(ac.getPaymentSectionCode());

    if (section.isCash()) {
      await cashierBL.addCashDrawLog(ac);
      await printer.openDrawer();
    }

    await PrintMapData().createReceiptData(ac, items);
    await printer.receiptPrint(await printer.makeCashReceiptMsg(true, false));

    Map<String, Object?> result = <String, Object?>{};
    await _makeCashApprovalResult(ac.getReceiptNumber()!, result);
    return result;
  }
}

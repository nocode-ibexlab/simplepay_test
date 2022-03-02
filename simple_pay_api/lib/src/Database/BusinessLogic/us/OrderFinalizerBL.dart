import 'package:simple_pay_api/src/Database/Util/BuildConfig.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/StringUtils.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';
import 'package:sprintf/sprintf.dart';

import '../BaseBL.dart';
import 'CashierBL.dart';
import 'OperationBL.dart';
import 'OrderBL.dart';
import 'SaleBL.dart';
import 'TableBL.dart';

class OrderFinalizerBL extends BaseBL {
  static const String _TAG = "OrderFinalizerBL";

  static final OrderFinalizerBL _singleton = OrderFinalizerBL._internal();

  factory OrderFinalizerBL() => _singleton;

  OrderFinalizerBL._internal() {
    _orderBL = OrderBL();
    _saleBL = SaleBL();
    _cashierBL = CashierBL();
    _tableBL = TableBL();
  }

  late OrderBL _orderBL;
  late SaleBL _saleBL;
  late CashierBL _cashierBL;
  late TableBL _tableBL;

  ///
  /// finalize : 결제가 완료된 후 Order 관련 테이블을 삭제하고, Sale 관련 테이블로 정보 이관 함. TableProcess 상태값 변경함.
  ///
  Future<Map<String, Object?>?> finalize(
      String? date, int? orderNum, bool autoTableClear) async {
    String orderId = '${date}_$orderNum';
    OrderHistory? order = await orderHistoryDao!.findById(orderId);

    if (order == null) {
      return null;
    }

    order.resetOrderHistoryItems();
    SalesHistory newSaleH = await _saleBL.getNewSaleH();
    Map<String, Object?> saleDateSno = Map<String, Object?>();
    saleDateSno[TenderConstants.SALE_COM_DATE] = newSaleH.getCommonDate();
    saleDateSno[TenderConstants.SALE_SERIAL_NO] =
        newSaleH.getSaleSerialNumber();
    // saleDateSno[TenderConstants.ORDER_PAGER] = order.getPagerNumber();
    int? itemSno = 0;
    int? accSno = 0;

    if (newSaleH == null) {
      Log.d(_TAG, '================= Add SaleH : FAILED');
      return null;
    }

    newSaleH.setCheckLink(order.getId()!.replaceAll('_', ''));
    newSaleH.setTableId(order.getTableId());
    newSaleH.setOperationTypeCode(order.getOperationTypeCode());
    newSaleH.setBusinessSectionCode(order.getBusinessSectionCode());
    newSaleH.setSupplyAmount(order.getSupplyAmount());
    newSaleH.setSupplyValue(order.getSupplyValue());
    newSaleH.setTaxAmount0(order.getTaxAmount0());
    newSaleH.setTaxAmount1(order.getTaxAmount1());
    newSaleH.setTaxAmount2(order.getTaxAmount2());
    newSaleH.setDiscountTotalAmount(order.getOrderDiscountTotalAmount());
    newSaleH.setTotalAmount(order.getOrderTotalAmount());
    newSaleH.setTaxFreeYn(order.getTaxFreeYn());
    newSaleH.setTaxFreeReason(order.getTaxFreeReason());
    newSaleH.setTipTotalAmount(
        order.getPreTipTotalAmount() + order.getPaymentTipTotalAmount());
    newSaleH.setPreTipTotalAmount(order.getPreTipTotalAmount());
    newSaleH.setPreTipAmount(order.getPreTipAmount());
    newSaleH.setPreTipTaxAmount(order.getPreTipTaxAmount());
    newSaleH.setPaymentTipTotalAmount(order.getPaymentTipTotalAmount());
    newSaleH.setPaymentTipAmount(order.getPaymentTipAmount());
    newSaleH.setPaymentTipTaxAmount(order.getPaymentTipTaxAmount());
    newSaleH.setServingEmployeeId(order.getServingEmployeeId());
    newSaleH.setOrderEmployeeId(order.getOrderEmployeeId());
    newSaleH.updateTime();
    await saleHDao!.insertOne(newSaleH);
    Log.d(_TAG, '================= Add SaleH : SUCCESS');

    // OrderHistoryItem -> SaleItem
    // 메뉴별 결제 처리를 위해 생성한 아이템 삭제
    List<OrderHistoryItem> orderHistoryItemList =
        await order.getOrderHistoryItemsForPayment();

    for (OrderHistoryItem i in orderHistoryItemList) {
      // SaleItem
      SalesHistoryItem? newSaleItem = _saleBL.getNewSaleItem(
          newSaleH.getCommonDate(),
          newSaleH.getSaleSerialNumber(),
          i.getItemSerialNumber());

      if (newSaleItem != null) {
        newSaleItem.setUpperItemSerialNumber(i.getUpperItemSerialNumber());
        newSaleItem.setItemId(i.getItemId());
        newSaleItem.setQuantity(i.getQuantity());
        newSaleItem.setPrice(i.getPrice());
        newSaleItem.setSupplyValue(i.getSupplyValue());
        newSaleItem.setTaxAmount0(i.getTaxAmount0());
        newSaleItem.setTaxAmount1(i.getTaxAmount1());
        newSaleItem.setTaxAmount2(i.getTaxAmount2());
        newSaleItem.setDiscountSectionCode(i.getDiscountSectionCode());
        newSaleItem.setDiscountTypeCode(i.getDiscountTypeCode());
        newSaleItem.setDiscountAmount(i.getMenuDiscountAmount());
        newSaleItem.setOrderDiscountAmount(i.getOrderDiscountAmount());
        newSaleItem.setOrderOptionCode(i.getOrderOptionCode());
        newSaleItem.setSupplyAmount(i.getSupplyAmount());
        newSaleItem.setCancelSerialNumber(i.getCancelSerialNumber());
        newSaleItem.setCancelReason(i.getCancelReason());
        newSaleItem.setCancelEmployeeId(i.getCancelEmployeeId());
        newSaleItem.setMenuPaymentSerialNumber(i.getMenuPaymentSerialNumber());
        newSaleItem.setTrackingInfo(i.getTrackingInfo());
        newSaleItem.updateTime();
        await saleItemDao!.insertOne(newSaleItem);
        Log.d(_TAG, '================= Add SaleItem : SUCCESS');

        if (itemSno! < newSaleItem.getItemSerialNumber()!) {
          itemSno = newSaleItem.getItemSerialNumber();
        }
      } else {
        Log.d(_TAG, '================= Add SaleItem : FAILED');
      }
    }

    // SaleDiscount
    List<OrderHistoryDiscount> orderHistoryDiscountList =
        await order.getOrderHistoryDiscounts();

    for (OrderHistoryDiscount i in orderHistoryDiscountList) {
      SalesHistoryDiscount? newSaleDiscount = _saleBL.getNewSaleDiscount(
          newSaleH.getCommonDate(), newSaleH.getSaleSerialNumber());

      if (newSaleDiscount != null) {
        newSaleDiscount.setDiscountSerialNumber(i.getDiscountSerialNumber());
        newSaleDiscount.setDiscountAmount(i.getDiscountAmount());
        newSaleDiscount.setDiscountName(i.getDiscountName());
        newSaleDiscount.setItemId(i.getItemId());
        newSaleDiscount.setDiscountSectionCode(i.getDiscountSectionCode());
        newSaleDiscount.setDiscountRate(i.getDiscountRate());
        newSaleDiscount.updateTime();
        await salesHistoryDiscountDao!.insertOne(newSaleDiscount);
        Log.d(_TAG, '================= Add SaleDiscount : SUCCESS');
      } else {
        Log.d(_TAG, '================= Add SaleDiscount : FAILED');
      }
    }
    // UPdate SaleAC : SaleH 의 hdate, salenumber 기준으로 업데이트
    List<SalesAccountHistory> salesAccountHistoryList =
        await order.getSalesAccountHistories();

    for (SalesAccountHistory i in salesAccountHistoryList) {
      SalesAccountHistory? newSaleAC = await _saleBL.getNewSaleAC(
          newSaleH.getCommonDate(), newSaleH.getSaleSerialNumber());
      SalesAccountHistory cloneSaleAC = i.clone();

      if (newSaleAC != null) {
        cloneSaleAC.setId(newSaleAC.getId());
        cloneSaleAC.setCommonDate(newSaleAC.getCommonDate());
        cloneSaleAC.setSaleSerialNumber(newSaleAC.getSaleSerialNumber());
        cloneSaleAC.setSalesAccountSerialNumber(
            newSaleAC.getSalesAccountSerialNumber());
        cloneSaleAC.setSaleTransmitYn(true);
        cloneSaleAC.updateTime();
        await saleACDao!.insertOne(cloneSaleAC);

        i.setStateCode(BaseBL.STATE_DELETE);
        await _saleBL.updateSaleAC(i);
        Log.d(_TAG, '================= Update SaleAC : SUCCESS');

        // UPdate SaleACDetail : SaleH 의 hdate, salenumber 기준으로 업데이트
        SalesAccountHistoryDetails? oldSalesAcDetail =
            await i.getSaleACDetail();
        if (oldSalesAcDetail != null) {
          SalesAccountHistoryDetails newSaleACDetail =
              _saleBL.getNewSaleACDetail(
                  newSaleAC.getCommonDate(),
                  newSaleAC.getSaleSerialNumber(),
                  newSaleAC.getSalesAccountSerialNumber());

          if (newSaleACDetail != null) {
            SalesAccountHistoryDetails cloneSalesAcDetail =
                oldSalesAcDetail.clone();
            cloneSalesAcDetail.setId(newSaleACDetail.getId());
            cloneSalesAcDetail.setCommonDate(newSaleACDetail.getCommonDate());
            cloneSalesAcDetail
                .setSaleSerialNumber(newSaleACDetail.getSaleSerialNumber());
            cloneSalesAcDetail.setSalesAccountSerialNumber(
                newSaleACDetail.getSalesAccountSerialNumber());

            int? pagerNumber = order.getPagerNumber();

            if (pagerNumber != null) {
              String? callNum = sprintf("%04d", [pagerNumber]);
              cloneSalesAcDetail.setData18(callNum);
              oldSalesAcDetail.setData18(callNum);
            }
            String? orderMemo = order.getMemo();
            if (orderMemo != null && orderMemo.isNotEmpty) {
              cloneSalesAcDetail.setData19(orderMemo);
              oldSalesAcDetail.setData19(orderMemo);
            }
            cloneSalesAcDetail.updateTime();
            await saleACDetailDao!.insertOne(cloneSalesAcDetail);

            oldSalesAcDetail.setStateCode(BaseBL.STATE_DELETE);
            await _saleBL.updateSaleACDetail(oldSalesAcDetail);
            Log.d(_TAG, '================= Update SaleACDetail : SUCCESS');
          } else {
            Log.d(_TAG, '================= Update SaleACDetail : FAILED');
          }
        }

        //cashier io log 의 SLS-LINK Update [현금 결제만 해당됨]
        String salesLink = i.getComplexId();
        CashdrawCashInOutHistory? cashdrawCashInOutHistory =
            await _cashierBL.getCashDrawLogBySalesLink(salesLink);

        if (cashdrawCashInOutHistory != null) {
          cashdrawCashInOutHistory.setSalesLink(newSaleAC.getComplexId());
          await _cashierBL.updateCashdrawLog(cashdrawCashInOutHistory);
        }
        if (accSno! < newSaleAC.getSalesAccountSerialNumber()!) {
          accSno = newSaleAC.getSalesAccountSerialNumber();
        }
      } else {
        Log.d(_TAG, '================= Update SaleAC : FAILED');
      }
    }

    newSaleH.setItemSerialNumber(itemSno);
    newSaleH.setSalesAccountSerialNumber(accSno);
    newSaleH.updateTime();
    await _saleBL.updateSaleH(newSaleH);

    // Delete Order
    if (!BuildConfig.IS_KIOSK) {
      await orderHistoryDao!.deleteOne(order);
      await orderHistoryItemDao!.deleteAll(await order.getOrderHistoryItems());
      await orderKitchenMemoDao!.deleteAll(
          await orderKitchenMemoDao!.findAllByOrder(date!, orderNum!));
      await orderHistoryDiscountDao!.deleteAll(orderHistoryDiscountList);
    }
    if (OperationBL().useOrderSync() && !BuildConfig.IS_KIOSK) {
      OrderBL().insertOrUpdateOrderHistoryDeletion(order.getId()!, true);
      await GRpcClient.instance.deleteOrder();
    }

    // TableProcess Delete or Update
    // Dine-in 일때만(tabCode 값이 있을 경우)
    // 주문 목록(orderHistory)가 2개이상 존재할 수 있으므로 orderHistory 목록을 조회하여 처리
    String? tabCode = order.getTableId();

    if (!StringUtils.isEmpty(tabCode)) {
      List<OrderHistory> orderHistoryList =
          await _orderBL.getOrderHListByCondition(tabCode, date);

      if ((orderHistoryList != null) && (orderHistoryList.length > 0)) {
        return saleDateSno;
      } else {
        TableProcess? tableProcess = await tableProcessDao!.findById(tabCode!);

        if (autoTableClear) {
          // true 이면 삭제
          await tableProcessDao!.deleteOne(tableProcess!);
        } else {
          // false 이면 PAYMENT_COMPLETE_STATE 로 상태값 update
          tableProcess!
              .setTableProcessStateCode(TableProcess.PAYMENT_COMPLETE_STATE);
          await tableProcessDao!.updateOne(tableProcess);
        }
      }
    }

    // 결제가 완료되면 테이블 묶음 해제
    await _tableBL.updateTableLinkAfterSale(tabCode);
    return saleDateSno;
  }

  Future<void> finalizeUploadDelay(String? date, int? orderNum) async {
    String orderId = '${date}_$orderNum';
    OrderHistory? order = await orderHistoryDao!.findById(orderId);

    if (order == null) {
      return null;
    }

    List<OrderHistory> temp = await orderHistoryDao!.findAll();
    Log.d(_TAG, "finalizeUploadDelay" + temp.length.toString());

    List<OrderHistoryDiscount> orderHistoryDiscountList =
        await order.getOrderHistoryDiscounts();

    await orderHistoryDao!.deleteOne(order);
    await orderHistoryItemDao!.deleteAll(await order.getOrderHistoryItems());
    await orderKitchenMemoDao!
        .deleteAll(await orderKitchenMemoDao!.findAllByOrder(date!, orderNum!));
    await orderHistoryDiscountDao!.deleteAll(orderHistoryDiscountList);

    if (OperationBL().useOrderSync()) {
      OrderBL().insertOrUpdateOrderHistoryDeletion(order.getId()!, true);
      await GRpcClient.instance.deleteOrder();
    }
  }
}

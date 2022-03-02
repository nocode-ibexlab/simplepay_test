import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/Util/VANConstant.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'CashierBL.dart';
import 'OrderBL.dart';
import 'ResVan.dart';

class SaleBL extends BaseBL {
  static const String _TAG = 'SaleBL';
  static const String MANUAL_VOID_CODE = '9998';

  static final SaleBL _singleton = SaleBL._internal();

  factory SaleBL() => _singleton;

  SaleBL._internal() {
    _basBL = BasBL();
  }

  late BasBL _basBL;

  Future<SalesHistory> getNewSaleH([DateTime? date]) async {
    date = date ?? DateTime.now();
    String commonDate = await _basBL.getCommonDate(date);
    List<SalesHistory> list = await saleHDao!.findAllByDate(commonDate);
    int sno = int.parse(DateFormat('HHmmss').format(date)) * 1000 +
        BaseBL.START_HNO +
        list.length;
    Log.d(_TAG, 'hdate ::: $commonDate');
    Log.d(_TAG, 'saleNum ::: $sno');

    SalesHistory entity = SalesHistory();
    entity.setCommonDate(commonDate);
    entity.setSaleSerialNumber(sno);
    entity.createId();
    return entity;
  }

  Future<void> _insertSaleH(SalesHistory sale) async {
    sale.updateTime();
    await saleHDao!.insertOne(sale);
  }

  ///
  /// Update SaleH
  ///
  Future<void> updateSaleH(SalesHistory sale) async {
    sale.updateTime();
    sale.setSynchronizedYn(false);
    await saleHDao!.updateOne(sale);
  }

  ///
  /// Get SalesAccountHistory with Receipt Number
  ///
  Future<List<SalesAccountHistory>?> getSaleAccountHistoryWithReceiptNo(
      String? receiptNo) async {
    if (receiptNo != null) {
      return await saleACDao!.findAllByReceiptNo('%$receiptNo%');
    }

    return null;
  }

  Future<SalesHistory?> getSaleHById(String id) async {
    return saleHDao!.findById(id);
  }

  ///
  /// Get SaleH by hdate and salenumber
  ///
  Future<SalesHistory?> getSaleH(String? date, int? saleNum) async {
    if (date != null && saleNum != null) {
      return await saleHDao!.findByKey(date, saleNum);
    }

    return null;
  }

  ///
  /// Server에 업로드 되지 않은 SalesHistory 쿼리
  ///
  Future<List<SalesHistory>> getSaleHnotUploadList() {
    return saleHDao!.findAllNotSynced();
  }

  ///
  /// Server에 업로드 되지 않은 SalesHistoryItem 쿼리
  ///
  Future<List<SalesHistoryItem>> getSaleHistoryItemNotUploadList() {
    return saleItemDao!.findAllNotSynced();
  }

  ///
  /// Server에 업로드 되지 않은 SalesHistoryDiscount 쿼리
  ///
  Future<List<SalesHistoryDiscount>> getSaleHistoryDiscountNotUploadList() {
    return salesHistoryDiscountDao!.findAllNotSynced();
  }

  ///
  /// Server에 업로드 되지 않은 SalesAccountHistory 쿼리
  ///
  Future<List<SalesAccountHistory>> getSaleAccountHistoryNotUploadList() {
    return saleACDao!.findAllNotSynced();
  }

  ///
  /// Server에 업로드 되지 않은 SalesAccountHistoryDetails 쿼리
  ///
  Future<List<SalesAccountHistoryDetails>>
      getSaleAccountHistoryDetailsNotUploadList() {
    return saleACDetailDao!.findAllNotSynced();
  }

  ///
  /// Server에 업로드 되지 않은 SalesAccountHistoryTip 쿼리
  ///
  Future<List<SalesAccountHistoryTip>> getSaleAccountHistoryTipNotUploadList() {
    return saleTipDao!.findAllNotSynced();
  }

  ///
  /// SalesHistory 동기화
  ///
  /// - 동기화 응답을 받기 전에 데이터가 변경되었는지 확인하기 위해 최종 변경 시간을 확인함
  /// - 여러 장치 간 동기화를 고려하기 위해 최종 수정 시간은 서버에서 내려 받은 시간으로 업데이트
  ///
  Future<void> syncSalesHistory(
      String date, int saleNum, String time, String newTime) async {
    SalesHistory? entity = await saleHDao!.findByKey(date, saleNum);

    if (entity != null && (entity.getLastRevisionDatetime() ?? '') == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await saleHDao!.updateOne(entity);
    }
  }

  ///
  /// SalesHistoryItem 동기화
  ///
  Future<void> syncSalesHistoryItem(
      String date, int saleNum, int sno, String time, String newTime) async {
    SalesHistoryItem? entity = await saleItemDao!.findByKey(date, saleNum, sno);

    if (entity != null && (entity.getLastRevisionDatetime() ?? '') == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await saleItemDao!.updateOne(entity);
    }
  }

  ///
  /// SalesAccountHistory 동기화
  ///
  Future<void> syncSalesAccountHistory(
      String date, int saleNum, int sno, String time, String newTime) async {
    SalesAccountHistory? entity =
        await saleACDao!.findByKey(date, saleNum, sno);

    if (entity != null && (entity.getLastRevisionDatetime() ?? '') == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await saleACDao!.updateOne(entity);
    }
  }

  ///
  /// SalesAccountHistoryDetail 동기화
  ///
  Future<void> syncSalesAccountHistoryDetail(
      String date, int saleNum, int sno, String time, String newTime) async {
    SalesAccountHistoryDetails? entity =
        await saleACDetailDao!.findBySale(date, saleNum, sno);

    if (entity != null && (entity.getLastRevisionDatetime() ?? '') == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await saleACDetailDao!.updateOne(entity);
    }
  }

  ///
  /// SaleAccountHistoryTip 동기화
  ///
  Future<void> syncSalesAccountHistoryTip(
      String date, int saleNum, int sno, String time, String newTime) async {
    SalesAccountHistoryTip? entity =
        await saleTipDao!.findByKey(date, saleNum, sno);

    if (entity != null && (entity.getLastRevisionDatetime() ?? '') == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await saleTipDao!.updateOne(entity);
    }
  }

  ///
  /// SalesHistoryDiscount 동기화
  ///
  Future<void> syncSalesHistoryDiscount(
      String date, int saleNum, int sno, String time, String newTime) async {
    SalesHistoryDiscount? entity =
        await salesHistoryDiscountDao!.findByKey(date, saleNum, sno);

    if (entity != null && (entity.getLastRevisionDatetime() ?? '') == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await salesHistoryDiscountDao!.updateOne(entity);
    }
  }

  ///
  /// Get New SaleItem,
  ///
  SalesHistoryItem? getNewSaleItem(String? date, int? saleNum, int? sno) {
    if (date != null && saleNum != null) {
      SalesHistoryItem entity = SalesHistoryItem();
      entity.setCommonDate(date);
      entity.setSaleSerialNumber(saleNum);
      entity.setItemSerialNumber(sno);
      entity.createId();
      return entity;
    }

    return null;
  }

  ///
  /// Insert SaleItem
  ///
  Future<void> insertSaleItem(SalesHistoryItem entity) async {
    entity.updateTime();
    await saleItemDao!.insertOne(entity);
  }

  ///
  /// Update SaleItem
  ///
  Future<void> updateSaleItem(SalesHistoryItem entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await saleItemDao!.updateOne(entity);

    SalesHistory? salesHistory =
        await getSaleH(entity.getCommonDate(), entity.getSaleSerialNumber());
    if (salesHistory != null) {
      salesHistory.setSynchronizedYn(false);
      await saleHDao!.updateOne(salesHistory);
    }
  }

  ///
  /// Copy saleItem for void, 금액관련 필드 모두 '-' 처리
  ///
  void _copySaleItemEntityForVoid(
      SalesHistoryItem source, SalesHistoryItem target) {
    target.setUpperItemSerialNumber(source.getUpperItemSerialNumber());
    target.setSupplyValue(_changeNegative(source.getSupplyValue()));
    target.setDiscountAmount(_changeNegative(source.getDiscountAmount()));
    target.setDiscountSectionCode(source.getDiscountSectionCode());
    target.setDiscountTypeCode(source.getDiscountTypeCode());
    target.setItemId(source.getItemId());
    target.setItemId(source.getItemId());

    target.setOrderDiscountAmount(
        _changeNegative(source.getOrderDiscountAmount()));

    target.setOrderOptionCode(source.getOrderOptionCode());
    target.setPrice(_changeNegative(source.getPrice()));
    target.setQuantity(_changeNegative(source.getQuantity()));
    target.setSupplyAmount(_changeNegative(source.getSupplyAmount()));
    target.setTaxAmount0(_changeNegative(source.getTaxAmount0()));
    target.setTaxAmount1(_changeNegative(source.getTaxAmount1()));
    target.setTaxAmount2(_changeNegative(source.getTaxAmount2()));
  }

  ///
  /// insert saleItem for void, void 작업시 SaleH와 관련된 SaleItem을 모두 복사하여 신규로 추가
  ///
  @transaction
  Future<List<SalesHistoryItem>> insertNewSaleItemForVoid(
      SalesHistory oldSaleH, SalesHistory newSaleH, String? empCode) async {
    List<SalesHistoryItem> newItems = [];

    if (empCode != null) {
      List<SalesHistoryItem>? oldSaleItemList = await _getSaleItemList(
          oldSaleH.getCommonDate(), oldSaleH.getSaleSerialNumber());

      if (oldSaleItemList != null) {
        List<int?> cancelSerialNumber = [];

        for (SalesHistoryItem i in oldSaleItemList) {
          if (i.getCancelSerialNumber() != null) {
            cancelSerialNumber.add(i.getItemSerialNumber());
            cancelSerialNumber.add(i.getCancelSerialNumber());
          }
        }

        List<SalesHistoryItem> oldSaleItemListFilter = [];

        if (cancelSerialNumber.isNotEmpty) {
          for (SalesHistoryItem i in oldSaleItemList) {
            bool match = false;

            for (int? itemSerialNumber in cancelSerialNumber) {
              if (i.getItemSerialNumber() == itemSerialNumber) {
                match = true;
              }
            }

            if (!match) {
              oldSaleItemListFilter.add(i);
            }
          }
        } else {
          oldSaleItemListFilter.addAll(oldSaleItemList);
        }

        int offset = 0;

        if (newSaleH == oldSaleH) {
          for (SalesHistoryItem i in oldSaleItemListFilter) {
            if (i.getItemSerialNumber()! + 1 > offset) {
              offset = i.getItemSerialNumber()! + 1;
            }
          }
        }

        for (SalesHistoryItem oldSaleItem in oldSaleItemListFilter) {
          SalesHistoryItem newSaleItem = getNewSaleItem(
              newSaleH.getCommonDate(),
              newSaleH.getSaleSerialNumber(),
              oldSaleItem.getItemSerialNumber()! + offset)!;
          _copySaleItemEntityForVoid(oldSaleItem, newSaleItem);
          oldSaleItem.setCancelEmployeeId(empCode);
          oldSaleItem.setCancelSerialNumber(newSaleItem.getItemSerialNumber());
          await insertSaleItem(newSaleItem);
          await updateSaleItem(oldSaleItem);
          newItems.add(newSaleItem);
        }
      }
    }

    return newItems;
  }

  ///
  /// 메뉴별 결제한 경우 취소시에 취소 아이템에 취소한 Account Sale serial Number를 기록한다.
  ///
  @transaction
  Future<List<SalesHistoryItem>> insertNewSaleItemForVoid2(
      SalesAccountHistory oldSalesAccountHistory,
      SalesAccountHistory newSalesAccountHistory,
      String? empCode) async {
    List<SalesHistoryItem> newItems = [];

    if (empCode != null) {
      List<SalesHistoryItem>? oldSaleItemList = await _getSaleItemList(
          oldSalesAccountHistory.getCommonDate(),
          oldSalesAccountHistory.getSaleSerialNumber());
      List<SalesHistoryItem> salesHistoryItems = [];

      if (oldSaleItemList != null) {
        for (SalesHistoryItem salesHistoryItem in oldSaleItemList) {
          if (salesHistoryItem.getMenuPaymentSerialNumber()!.toInt() ==
              oldSalesAccountHistory.getSalesAccountSerialNumber()!.toInt()) {
            salesHistoryItems.add(salesHistoryItem);
          }
        }

        int offset = 0;

        for (SalesHistoryItem i in oldSaleItemList) {
          if (i.getItemSerialNumber()! + 1 > offset) {
            offset = i.getItemSerialNumber()! + 1;
          }
        }

        for (SalesHistoryItem salesHistoryItem in salesHistoryItems) {
          SalesHistoryItem newSaleItem = getNewSaleItem(
              newSalesAccountHistory.getCommonDate(),
              newSalesAccountHistory.getSaleSerialNumber(),
              salesHistoryItem.getItemSerialNumber()! + offset)!;
          _copySaleItemEntityForVoid(salesHistoryItem, newSaleItem);
          newSaleItem.setMenuPaymentSerialNumber(
              newSalesAccountHistory.getSalesAccountSerialNumber());
          salesHistoryItem.setCancelEmployeeId(empCode);
          salesHistoryItem
              .setCancelSerialNumber(newSaleItem.getItemSerialNumber());
          await updateSaleItem(salesHistoryItem);
          await insertSaleItem(newSaleItem);
          newItems.add(newSaleItem);
        }
      }
    }

    return newItems;
  }

  ///
  /// Get SaleItem List by hdate and salenumber
  ///
  Future<List<SalesHistoryItem>?> _getSaleItemList(
      String? date, int? saleNum) async {
    if (date != null && saleNum != 0) {
      List<SalesHistoryItem> list =
          await saleItemDao!.findAllBySale(date, saleNum!);
      return list.where((i) => i.getStateCode() != '99').toList();
    }

    return null;
  }

  /// get SaleItem List by hdate and salenumber
  ///
  /// @param hdate : String
  /// @return List<SaleItem>
  Future<List<SalesHistoryItem>?> getSaleItemListByHDate(String hdate) async {
    return await saleItemDao!.findAllByCommonDate(hdate);
  }

  ///
  /// Get New saleAC
  ///
  Future<SalesAccountHistory?> getNewSaleAC(String? date, int? saleNum) async {
    if (date != null && saleNum != 0) {
      int sno = 1;
      List<SalesAccountHistory> entityList =
          await saleACDao!.findAllBySale(date, saleNum!);

      sno = entityList.length + 1;

      SalesAccountHistory entity = SalesAccountHistory();
      entity.setCommonDate(date);
      entity.setSaleSerialNumber(saleNum);
      entity.setSalesAccountSerialNumber(sno);
      entity.setStoreTerminalId(BaseBL.storeTerminalId);
      entity
          .setApprovalDate(DateFormat('yyyyMMddHHmmss').format(DateTime.now()));
      entity.setApprovalDatePrimaryPattern(entity.getApprovalDate());
      entity.setCashdrawSectionCode(BaseBL.cashdrawSection);
      entity.setCancelSerialNumber('');
      entity.setNotInSalesYn(false);
      entity.createId();
      return entity;
    }

    return null;
  }

  ///
  /// Get New saleACDetail
  ///
  SalesAccountHistoryDetails getNewSaleACDetail(
      String? date, int? saleNum, int? sno) {
    SalesAccountHistoryDetails entity = SalesAccountHistoryDetails();
    entity.setCommonDate(date);
    entity.setSaleSerialNumber(saleNum);
    entity.setSalesAccountSerialNumber(sno);
    entity.createId();
    return entity;
  }

  ///
  /// Insert SaleAC
  ///
  Future<void> _insertSaleAC(SalesAccountHistory entity) async {
    entity.updateTime();
    await saleACDao!.insertOne(entity);
  }

  ///
  /// Insert SaleACDetail
  ///
  Future<void> _insertSaleACDetail(SalesAccountHistoryDetails entity) async {
    entity.updateTime();
    await saleACDetailDao!.insertOne(entity);
  }

  ///
  /// Update SaleAC
  ///
  Future<void> updateSaleAC(SalesAccountHistory entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await saleACDao!.updateOne(entity);

    SalesHistory? salesHistory =
        await getSaleH(entity.getCommonDate(), entity.getSaleSerialNumber());

    if (salesHistory != null) {
      salesHistory.setSynchronizedYn(false);
      await saleHDao!.updateOne(salesHistory);
    }
  }

  ///
  /// Update SalesAccountHistoryDetails
  ///
  Future<void> updateSaleACDetail(SalesAccountHistoryDetails entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await saleACDetailDao!.updateOne(entity);

    SalesHistory? salesHistory =
        await getSaleH(entity.getCommonDate(), entity.getSaleSerialNumber());

    if (salesHistory != null) {
      salesHistory.setSynchronizedYn(false);
      await saleHDao!.updateOne(salesHistory);
    }
  }

  ///
  /// Copy SaleAC for Void, 금액관련 필드 모두 '-' 처리
  ///
  void copySaleACEntityForVoid(
      SalesAccountHistory source, SalesAccountHistory target) {
    target.setCardCompanyName(source.getCardCompanyName() ?? '');
    target.setCardCompanyAffiliateNumber(
        source.getCardCompanyAffiliateNumber() ?? '');
    target.setCardCompanySectionCode(source.getCardCompanySectionCode() ?? '');
    target.setCardName(source.getCardName() ?? '');
    target.setCardSwipYn(source.getCardSwipYn() ?? false);
    target.setCashdrawSectionCode(source.getCashdrawSectionCode() ?? '');
    target.setOperationTypeCode(source.getOperationTypeCode() ?? '');
    target.setExpiryDate(source.getExpiryDate() ?? '');
    target.setInstallmentMonth(source.getInstallmentMonth() ?? 0);
    target.setCashReceiptIdentifyNumber(
        source.getCashReceiptIdentifyNumber() ?? '');
    target.setCashReceiptIdentifyTypeCode(
        source.getCashReceiptIdentifyTypeCode() ?? '');
    target.setCashReceiptTypeCode(source.getCashReceiptTypeCode() ?? '');
    target.setSupplyValue(-source.getSupplyValue());
    target.setTaxAmount(-source.getTaxAmount());
    target.setTaxAmount2(source.getTaxAmount2());
    target.setPreTipTotalAmount(-source.getPreTipTotalAmount());
    target.setPreTipAmount(-source.getPreTipAmount());
    target.setPreTipTaxAmount(-source.getPreTipTaxAmount());
    target.setPaymentTipTotalAmount(-source.getPaymentTipTotalAmount());
    target.setPaymentTipAmount(-source.getPaymentTipAmount());
    target.setPaymentTipTaxAmount(-source.getPaymentTipTaxAmount());
    target.setPaymentSectionCode(source.getPaymentSectionCode() ?? '');
    target.setApprovalTransactionNo(source.getApprovalTransactionNo() ?? '');
    target.setPaymentMethodCode(source.getPaymentMethodCode() ?? '');
    target.setStoreTerminalId(source.getStoreTerminalId() ?? '');
    target.setCompleteSettlementYn(source.getCompleteSettlementYn() ?? false);
    target.setSaleTransmitYn(source.getSaleTransmitYn() ?? false);
    target
        .setCardPurchaseCompanyName(source.getCardPurchaseCompanyName() ?? '');
    target.setTotalAmount(-source.getTotalAmount());
    target.setMenuDiscountAmount(-source.getMenuDiscountAmount());
    target.setOrderDiscountAmount(-source.getOrderDiscountAmount());
    double takenAmount = 0;
    takenAmount = source.getTakenAmount() - source.getChangeAmount();
    target.setTakenAmount(-takenAmount);
  }

  Future<SalesAccountHistory?> insertNewSaleAcForVoid(
      ResVan resVan,
      SalesAccountHistory oldSaleAC,
      String? appType,
      String? cashReceiptTypeCode,
      String receiptNumber) async {
    SalesAccountHistory? newSaleAC = await getNewSaleAC(
        oldSaleAC.getCommonDate(), oldSaleAC.getSaleSerialNumber());
    if (newSaleAC == null) {
      return null;
    }
    SalesAccountHistoryDetails newSaleACDetail = getNewSaleACDetail(
        newSaleAC.getCommonDate(),
        newSaleAC.getSaleSerialNumber(),
        newSaleAC.getSalesAccountSerialNumber());
    copySaleACEntityForVoid(oldSaleAC, newSaleAC);
    newSaleAC.setApprovalDate(resVan.appDate);
    newSaleAC.setApprovalDatePrimaryPattern(resVan.appDatePriPtn);
    newSaleAC.setPaymentApprovalNumber(resVan.appNo);
    newSaleAC.setApprovalTypeCode(appType);
    newSaleAC.setCashReceiptTypeCode(cashReceiptTypeCode);
    newSaleAC
        .setCancelEmployeeId(BaseBL.employeeId); // check : 직원코드가 나중에 변경되어야 함.
    newSaleAC.setCancelSerialNumber('');

    if (CommonUtil.isNullEmpty(resVan.ctName)) {
      newSaleAC.setCardCompanyName(oldSaleAC.getCardCompanyName());
    } else {
      newSaleAC.setCardCompanyName(resVan.ctName);
    }

    newSaleAC.setCardCompanyAffiliateNumber(resVan.companyNo);
    newSaleAC.setCardCompanySectionCode(resVan.ctCode);
    newSaleAC.setCardPurchaseCompanyCode(resVan.aqCode);
    newSaleAC.setCardCompanyAffiliateNumber(resVan.companyNo);

    if (CommonUtil.isNullEmpty(resVan.aqName)) {
      newSaleAC
          .setCardPurchaseCompanyName(oldSaleAC.getCardPurchaseCompanyName());
    } else {
      newSaleAC.setCardPurchaseCompanyName(resVan.aqName);
    }

    newSaleAC.setCardName(oldSaleAC.getCardName() ?? '');
    newSaleAC.setCashdrawSectionCode(oldSaleAC.getCashdrawSectionCode() ?? '');
    newSaleAC.setOperationTypeCode(oldSaleAC.getOperationTypeCode() ?? '');
    newSaleAC.setExpiryDate(resVan.yyyymm);
    newSaleAC.setCashReceiptIdentifyNumber(
        oldSaleAC.getCashReceiptIdentifyNumber() ?? '');
    newSaleAC.setCashReceiptIdentifyTypeCode(
        oldSaleAC.getCashReceiptIdentifyTypeCode() ?? '');
    newSaleAC.setInstallmentMonth(oldSaleAC.getInstallmentMonth() ?? 0);

    // totalAmount, taxAmount, supplyValue 는 VAN 응답 결과에서 가져오나
    // 그외 봉사료 및 할인 금액은 계산할 수 없어 원래 판매정산에서 가져오게 함 (현재 이 값은 모두 0일 것임)
    // 부분 금액 취소일 경우 봉사료 및 할인 금액의 재계산이 필요하나 현재 무시
    newSaleAC.setTotalAmount(-(resVan.amount + resVan.tax));
    newSaleAC.setTaxAmount(-resVan.tax);
    newSaleAC.setTaxAmount2(-resVan.taxExempt);
    newSaleAC.setSupplyValue(-resVan.amount);
    newSaleAC.setPreTipTotalAmount(oldSaleAC.getPreTipTotalAmount() * -1.0);
    newSaleAC.setPreTipAmount(oldSaleAC.getPreTipAmount() * -1.0);
    newSaleAC.setPreTipTaxAmount(oldSaleAC.getPreTipTaxAmount() * -1.0);
    newSaleAC
        .setPaymentTipTotalAmount(oldSaleAC.getPaymentTipTotalAmount() * -1.0);
    newSaleAC.setPaymentTipAmount(oldSaleAC.getPaymentTipAmount() * -1.0);
    newSaleAC.setPaymentTipTaxAmount(oldSaleAC.getPaymentTipTaxAmount() * -1.0);
    newSaleAC.setMenuDiscountAmount(oldSaleAC.getMenuDiscountAmount() * -1.0);
    newSaleAC.setOrderDiscountAmount(oldSaleAC.getOrderDiscountAmount() * -1.0);
    newSaleAC.setPaymentSectionCode(oldSaleAC.getPaymentSectionCode());
    newSaleAC.setApprovalTransactionNo(resVan.approvalTransactionNo);
    newSaleAC.setPaymentMethodCode(oldSaleAC.getPaymentMethodCode());
    newSaleAC.setStoreTerminalId(oldSaleAC.getStoreTerminalId() ?? '');
    newSaleAC.setReceiptNumber(receiptNumber);
    newSaleAC.setPaymentOption(oldSaleAC.getPaymentOption());
    await _insertSaleAC(newSaleAC);

    SalesAccountHistoryDetails? oldSaleACDetail =
        await oldSaleAC.getSaleACDetail();

    if (oldSaleACDetail != null) {
      newSaleACDetail.setData0(oldSaleACDetail.getData0());
      if (oldSaleAC.getCashReceiptIdentifyTypeCode() ==
              TenderConstants_CASH_RECPT_ID_TP_CD.MOBILE_CARD.getCode() ||
          oldSaleAC.getCashReceiptIdentifyTypeCode() ==
              TenderConstants_CASH_RECPT_ID_TP_CD.CASH.getCode()) {
        newSaleACDetail.setData10(oldSaleACDetail.getData10()); //VAN사코드
        newSaleACDetail.setData3(oldSaleACDetail.getData3() != null
            ? '-' + oldSaleACDetail.getData3()!
            : '0.0'); //공급가액(부가세 미포함)
        newSaleACDetail.setData4(oldSaleACDetail.getData4() != null
            ? '-' + oldSaleACDetail.getData4()!
            : '0.0'); //세금(부가세)
        newSaleACDetail.setData5(oldSaleACDetail.getData5() != null
            ? '-' + oldSaleACDetail.getData5()!
            : '0.0'); //봉사료
        newSaleACDetail.setData9(oldSaleACDetail.getData9() != null
            ? '-' + oldSaleACDetail.getData9()!
            : '0.0'); //봉사료세금
      } else {
        newSaleACDetail.setData1(resVan.vanResMsg); //거래결과
        newSaleACDetail.setData2(resVan.vanPrintMsg); //메시지
        newSaleACDetail.setData3('${resVan.amount * -1.0}'); //공급가액(부가세 미포함)
        newSaleACDetail.setData4('${resVan.tax * -1.0}'); //세금(부가세)
        newSaleACDetail.setData5('${resVan.gratuity * -1.0}'); //봉사료
        newSaleACDetail.setData6(resVan.trType); //결제구분
        newSaleACDetail.setData7(resVan.trCode); //거래구분
        newSaleACDetail.setData9('${resVan.gratuityTax * -1.0}'); //봉사료세금
        newSaleACDetail.setData10(resVan.vanCode); //VAN사코드
        newSaleACDetail.setData11(resVan.empNumber); //MyD 사원번호
        newSaleACDetail.setData12(resVan.empPosition); //MyD 직급
        newSaleACDetail.setData13(resVan.empName); //MyD 직원명
      }

      await _insertSaleACDetail(newSaleACDetail);
    }

    resVan.reset();
    oldSaleAC.setCancelSerialNumber(getGenCancelSerialNumber(newSaleAC));
    oldSaleAC.setSynchronizedYn(false);
    await saleACDao!.updateOne(oldSaleAC);
    return newSaleAC;
  }

  ///
  /// 결제 취소건을 제외한 SaleAC list 조회
  ///
  Future<List<SalesAccountHistory>> getSaleACListWithoutCanceled(
      String? date, int? saleNum) {
    return saleACDao!.findAllNotCanceled(date!, saleNum!, [
      TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode(),
      TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode(),
      TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode(),
      TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode(),
    ]);
  }

  ///
  /// 결제 취소건 SaleAC list 조회
  ///
  Future<List<SalesAccountHistory>> getSaleACListWithCanceled(
      String date, int saleNum) {
    return saleACDao!.findAllNotCanceled(date, saleNum, [
      TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode(),
      TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode(),
      TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode(),
      TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode(),
    ]);
  }

  ///
  /// payment section별로 SaleAC목록 조회, Payamt가 0보다 큰경우만 가져옴.
  ///
  Future<List<SalesAccountHistory>> getSaleACListByPaymentSection(
      String paymentSection) async {
    String date = await _basBL.getCommonDate();
    return saleACDao!.findAllByPaymentSection(paymentSection, date, [
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode()
    ]);
  }

  ///
  /// payment section별로 판매내역 SaleAC목록 조회 (결제 취소 분 포함)
  ///
  Future<List<SalesAccountHistory>> getSaleACSellListByPaymentSection(
      String? date, String paymentSection) {
    return saleACDao!.findAllSoldByPaymentSection(paymentSection, date!, [
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode(),
      TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode(),
    ]);
  }

  SalesHistoryDiscount? getNewSaleDiscount(String? date, int? saleNum) {
    if (date != null && saleNum != 0) {
      SalesHistoryDiscount entity = SalesHistoryDiscount();
      entity.setCommonDate(date);
      entity.setSaleSerialNumber(saleNum);
      entity.setDiscountSerialNumber(0);
      entity.createId();
      return entity;
    }

    return null;
  }

  Future<void> insertNewSaleDiscountForVoid(
      SalesHistory salesHistory, String? empCode) async {
    int discountSno;

    if (empCode != null) {
      List<SalesHistoryDiscount> salesHistoryDiscounts =
          await salesHistory.getSaleDiscounts();
      discountSno = salesHistoryDiscounts.length;

      for (SalesHistoryDiscount salesHistoryDiscount in salesHistoryDiscounts) {
        SalesHistoryDiscount entity = SalesHistoryDiscount();
        entity.setCommonDate(salesHistory.getCommonDate());
        entity.setSaleSerialNumber(salesHistory.getSaleSerialNumber());
        entity.setDiscountSerialNumber(discountSno);
        entity.setDiscountAmount(
            _changeNegative(salesHistoryDiscount.getDiscountAmount()));
        entity.setDiscountSectionCode(
            salesHistoryDiscount.getDiscountSectionCode());
        entity.setDiscountRate(
            _changeNegative(salesHistoryDiscount.getDiscountRate()));
        entity.setDiscountName(salesHistoryDiscount.getDiscountName());
        entity.setItemId(salesHistoryDiscount.getItemId());
        entity
            .setCancelSerialNumber(salesHistoryDiscount.getSaleSerialNumber());
        entity.updateTime();
        entity.createId();
        await salesHistoryDiscountDao!.insertOne(entity);

        discountSno++;
        salesHistoryDiscount.setCancelEmployeeId(empCode);
        await updateSalesHistoryDiscount(salesHistoryDiscount);
      }
    }
  }

  double? _changeNegative(double? value) => value != null ? -value : null;

  Future<List<SalesHistory>> getSaleHListBetweenDate(
      DateTime openDate, DateTime closeDate) async {
    return await saleHDao!.findAllByCreationDate(
        CommonUtil.convertDateForm1(openDate),
        CommonUtil.convertDateForm1(closeDate));
  }

  ///
  /// 지정된 기간내 SaleAC 조회
  ///
  Future<List<SalesAccountHistory>?> getSaleACListBetweenDate(
      DateTime openDate, DateTime closeDate) async {
    List<SalesHistory> saleHList = await saleHDao!.findAllByCreationDate(
        CommonUtil.convertDateForm1(openDate),
        CommonUtil.convertDateForm1(closeDate));
    List<SalesAccountHistory> saleACList = [];

    for (SalesHistory saleH in saleHList) {
      saleACList.addAll(await getSaleAccountHistoryList(
          saleH.getCommonDate(), saleH.getSaleSerialNumber()));
    }

    return saleACList;
  }

  ///
  /// 지정된 기간내 SalesAccountHistory 조회 (실제 거래 시간으로 조회)
  ///
  Future<List<SalesAccountHistory>?> getSaleACListBetweenDate2(
      DateTime openDate, DateTime closeDate) async {
    return await saleACDao!.findAllByCreationDate(
        CommonUtil.convertDateForm1(openDate),
        CommonUtil.convertDateForm1(closeDate), [
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode(),
    ]);
  }

  Future<bool> checkFullVoid(final SalesHistory saleH) async {
    return (await getSaleACListWithoutCanceled(
            saleH.getCommonDate(), saleH.getSaleSerialNumber()))
        .isEmpty;
  }

  @transaction
  Future<void> addAll(
      List<SalesHistory> salesHistories,
      List<SalesHistoryItem> salesHistoryItems,
      List<SalesHistoryDiscount> salesHistoryDiscounts,
      List<SalesAccountHistory> salesAccountHistories,
      List<SalesAccountHistoryDetails> salesAccountHistoryDetails,
      List<SalesAccountHistoryTip> salesAccountHistoryTips) async {
    await saleHDao!.deleteAll(await saleHDao!.findAllSynced());
    await saleHDao!.insertAll(salesHistories);
    await saleItemDao!.deleteAll(await saleItemDao!.findAllSynced());
    await saleItemDao!.insertAll(salesHistoryItems);
    await salesHistoryDiscountDao!
        .deleteAll(await salesHistoryDiscountDao!.findAllSynced());
    await salesHistoryDiscountDao!.insertAll(salesHistoryDiscounts);
    await saleACDao!.deleteAll(await saleACDao!.findAllSynced());
    await saleACDao!.insertAll(salesAccountHistories);
    await saleACDetailDao!.deleteAll(await saleACDetailDao!.findAllSynced());
    await saleACDetailDao!.insertAll(salesAccountHistoryDetails);
    await saleTipDao!.deleteAll(await saleTipDao!.findAllSynced());
    await saleTipDao!.insertAll(salesAccountHistoryTips);
  }

  Future<List<SalesAccountHistory>> getSaleAllACList() {
    return saleACDao!.findAllOrderByModificationDate([
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode()
    ]);
  }

  Future<List<String?>> getSaleHAllDate() async {
    return (await saleHDao!.findAllDate()).map((i) => i.date).toList();
  }

  Future<SalesHistory> calcSaleHistory(SalesHistory salesHistory) async {
    double supplyValue = 0;
    double taxAmount0 = 0;
    double preTipTotSum = 0;
    double preTipAmtSum = 0;
    double preTipTaxSum = 0;
    double payTipTotSum = 0;
    double payTipAmtSum = 0;
    double payTipTaxSum = 0;
    double totalAmtSum = 0;
    double menuDcAmt = 0;
    double orderDcAmt = 0;
    List<SalesAccountHistory> list = await getSaleAccountHistoryList(
        salesHistory.getCommonDate(), salesHistory.getSaleSerialNumber());

    for (SalesAccountHistory salesAccountHistory in list) {
      supplyValue += salesAccountHistory.getSupplyValue();
      taxAmount0 += salesAccountHistory.getTaxAmount();
      preTipTotSum += salesAccountHistory.getPreTipTotalAmount();
      preTipAmtSum += salesAccountHistory.getPreTipAmount();
      preTipTaxSum += salesAccountHistory.getPreTipTaxAmount();
      payTipTotSum += salesAccountHistory.getPaymentTipTotalAmount();
      payTipAmtSum += salesAccountHistory.getPaymentTipAmount();
      payTipTaxSum += salesAccountHistory.getPaymentTipTaxAmount();
      totalAmtSum += salesAccountHistory.getTotalAmount();
      menuDcAmt += salesAccountHistory.getMenuDiscountAmount();
      orderDcAmt += salesAccountHistory.getOrderDiscountAmount();
    }

    salesHistory.setSupplyValue(supplyValue);
    salesHistory.setSupplyAmount(supplyValue + taxAmount0);
    salesHistory.setTaxAmount0(taxAmount0);
    salesHistory.setPreTipTotalAmount(preTipTotSum);
    salesHistory.setPreTipAmount(preTipAmtSum);
    salesHistory.setPreTipTaxAmount(preTipTaxSum);
    salesHistory.setPaymentTipTotalAmount(payTipTotSum);
    salesHistory.setPaymentTipAmount(payTipAmtSum);
    salesHistory.setPaymentTipTaxAmount(payTipTaxSum);
    salesHistory.setTotalAmount(totalAmtSum);
    salesHistory.setDiscountTotalAmount(menuDcAmt + orderDcAmt);
    return salesHistory;
  }

  ///
  /// 지정된 기간(승인날짜)내 SaleAC 조회
  ///
  Future<List<SalesAccountHistory>>? getSaleACListBetweenApprovalDate(
      String sDate, String eDate) {
    // if (sDate != null && eDate != null) {
    // yyyyMMdd 포맷은 DateFormat('yyyyMMdd')로 구할 수 없음
    // 다행이 DateTime.parse() 에서 지원하는 포맷
    String from = CommonUtil.convertDateForm0(DateTime.parse(sDate));
    String end = CommonUtil.convertDateForm0(DateTime.parse(eDate)
        .add(const Duration(hours: 23, minutes: 59, seconds: 59)));
    // String from = CommonUtil.convertDateFormat("yyyyMMdd", sDate);
    // String end = CommonUtil.convertDateFormat("yyyyMMddHHmmss", eDate + "235959");
    return saleACDao!.findAllByApprovalDate(from, end, [
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode()
    ]);
    // }
    // return null;
  }

  String getGenCancelSerialNumber(SalesAccountHistory salesAccountHistory) {
    var date = salesAccountHistory.getCommonDate();
    var saleNum = salesAccountHistory.getSaleSerialNumber();
    var sno = salesAccountHistory.getSalesAccountSerialNumber();
    return '${date}_${saleNum}_$sno';
  }

  Future<List<SalesAccountHistory>> getSaleAccountHistoryList(
      String? date, int? saleNum) {
    return saleACDao!.findAllBySaleNotInAppTypes(date!, saleNum!, [
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode()
    ]);
  }

  ///
  /// insertNewSaleAC (현금결제시)
  ///
  Future<SalesAccountHistory?> insertNewSaleAC(
      ResVan resVan,
      OrderCheck orderCheck,
      double taxationAmt,
      double taxExemptAmt,
      bool cashReceipt,
      String? issueTypeOfCash,
      String? sectionCode) async {
    String? date = orderCheck.getOrderHistory()!.getCommonDate();
    double payAmt = taxationAmt + taxExemptAmt;
    int? orderSno = orderCheck.getOrderHistory()!.getCommonSerialNumber();
    SalesAccountHistory? salesAccountHistory =
        await getNewSaleAC(date, orderSno);
    if (salesAccountHistory == null) {
      Log.e(_TAG, 'insertNewSaleAC, salesAccountHistory is null');
      return null;
    }
    SalesAccountHistoryDetails salesAccountHistoryDetails = getNewSaleACDetail(
        date, orderSno, salesAccountHistory.getSalesAccountSerialNumber());
    OrderCheck? orderCheck2 =
        await OrderBL().getOrderByOrderHId('${date}_$orderSno');
    if (orderCheck2 == null) {
      return null;
    }
    OrderHistory oh = orderCheck.getOrderHistory()!;
    orderCheck2.getOrderHistory()!.setMenuDcAmt(oh.getMenuDcAmt());
    orderCheck2.getOrderHistory()!.setOrderDcAmt(oh.getOrderDcAmt());

    Map<String, double> eachAmt =
        await orderCheck2.calcAmtTaxTipToPay(taxationAmt, taxExemptAmt);
    double? amt = eachAmt[TenderConstants.AMOUNT];
    double? stip = eachAmt[TenderConstants.SUM_TIP];
    double? tip = eachAmt[TenderConstants.TIP];
    double? tax = eachAmt[TenderConstants.TAX];
    double? tipTax = eachAmt[TenderConstants.TIP_TAX];
    double? tamt = eachAmt[TenderConstants.TOT_AMT];

    List<OrderHistoryItem> orderHistoryItemList =
        await orderCheck2.getItemsForPayment();
    bool calMenuCheck = false;

    for (OrderHistoryItem orderHistoryItem in orderHistoryItemList) {
      if (orderHistoryItem.getMenuPaymentYn() == 1 &&
          orderHistoryItem.getMenuPaymentSerialNumber() == 0) {
        orderHistoryItem.setMenuPaymentSerialNumber(
            salesAccountHistory.getSalesAccountSerialNumber());
        orderHistoryItem.updateTime();
        await orderHistoryItemDao!.updateOne(orderHistoryItem);
        calMenuCheck = true;
      }
    }

    if (calMenuCheck) {
      salesAccountHistory
          .setPaymentOption(TenderConstants_PAY_OPT.MENU.getCode());
    } else if (payAmt == orderCheck2.getTotalDue()) {
      salesAccountHistory
          .setPaymentOption(TenderConstants_PAY_OPT.NORMAL.getCode());
    } else {
      //부분결제
      salesAccountHistory
          .setPaymentOption(TenderConstants_PAY_OPT.PARTIAL.getCode());
    }

    salesAccountHistory.setOperationTypeCode(orderCheck.getOperationTypeCode());
    salesAccountHistory.setSupplyValue(amt);
    salesAccountHistory.setTotalAmount(tamt);
    salesAccountHistory.setPaymentTipTotalAmount(stip);
    salesAccountHistory.setPaymentTipAmount(tip);
    salesAccountHistory.setTaxAmount(tax);
    salesAccountHistory.setTaxAmount2(taxExemptAmt);
    salesAccountHistory.setPaymentTipTaxAmount(tipTax);
    salesAccountHistory
        .setMenuDiscountAmount(eachAmt[TenderConstants.MENU_DC_AMT]);
    salesAccountHistory
        .setOrderDiscountAmount(eachAmt[TenderConstants.ORDER_DC_AMT]);
//        salesAccountHistory.setReceiptNumber(salesAccountHistory.getCommonDate() + salesAccountHistory.getSaleSerialNumber() + salesAccountHistory.getSalesAccountSerialNumber());
    salesAccountHistory.setApprovalTransactionNo(resVan.approvalTransactionNo);
    salesAccountHistory.setPaymentMethodCode(resVan.paymentMethodCode);

    if (TenderConstants.isQRPay(sectionCode)) {
      // String name = await _basBL.getUserInputString("qr_pay", "Halyk QR");
      BasicDataItem? posPay =
          await _basBL.getStorePayment(resVan.paymentMethodCode);
      String? name = posPay?.getBasicDataItemName();
      salesAccountHistory.setCashReceiptIdentifyTypeCode(
          TenderConstants_CASH_RECPT_ID_TP_CD.CASH.getCode());
      salesAccountHistory.setCardCompanyName(name);
      salesAccountHistory.setCardPurchaseCompanyName(name);
      salesAccountHistory.setApprovalDate(null);
      salesAccountHistory
          .setApprovalDatePrimaryPattern(salesAccountHistory.getApprovalDate());
      salesAccountHistoryDetails.setData2(
          "Can't get a deduction by this receipt"); // LangCode.cant_get_a_deduction_by_this_receipt
      salesAccountHistoryDetails.setData3('$amt');
      salesAccountHistoryDetails.setData4('$tax');
      salesAccountHistoryDetails.setData5('$tip');
      salesAccountHistoryDetails.setData9('$tipTax');
      salesAccountHistoryDetails
          .setData10(TenderConstants_Section.QR_PAY.getCode()); // VAN사코드
    } else if (cashReceipt) {
      // 현금영수증 요청한 경우
      int cardReadType = resVan.cardReadType; //0: 수기입력, 1: 카드리딩

      if (cardReadType == VANConstant.READ_TYPE_ID) {
        if (TenderConstants.ISSUE_TYPE_VOLUNTARILY == issueTypeOfCash ||
            TenderConstants.VOLUNTARILY_ISSUE_NUMBER == resVan.idStr) {
          salesAccountHistory.setCashReceiptIdentifyTypeCode(
              TenderConstants_CASH_RECPT_ID_TP_CD.VOLUNTARILY_ISSUED.getCode());
        } else {
          salesAccountHistory.setCashReceiptIdentifyTypeCode(
              TenderConstants_CASH_RECPT_ID_TP_CD.CASH_RECEIPT_ID.getCode());
        }
      }

      if (cardReadType == VANConstant.READ_TYPE_CARD) {
        salesAccountHistory.setCashReceiptIdentifyTypeCode(
            TenderConstants_CASH_RECPT_ID_TP_CD.CREDIT_RECEIPT_CARD.getCode());
      }

      salesAccountHistory.setPaymentApprovalNumber(resVan.appNo); //승인번호
      salesAccountHistory.setApprovalDate(resVan.appDate); //승인시간
      salesAccountHistory.setApprovalDatePrimaryPattern(resVan.appDatePriPtn);
      salesAccountHistory.setCashReceiptTypeCode(resVan
          .issueType); // 00:개인승인, 01:법인승인, 10:개인취소, 11:법인취소 . 20: 개인오류발급, 21: 법인오류발급, 30:개인기타취소, 31:법인 기타취소
      salesAccountHistory.setCashReceiptIdentifyNumber(resVan
          .idStr); //인증번호(인증에 사용한 번호), 주민번호/핸드폰/사업자번호, DB에 저장해야하는값, 단 현금영주증카드인경우 저장하지 않음.
      salesAccountHistory.setCardName(resVan.cardName);
      salesAccountHistory.setCardCompanyName(resVan.ctName); //발급사 카드명
      salesAccountHistory.setCardCompanySectionCode(resVan.ctCode); //카드사 코드
      salesAccountHistory.setCardPurchaseCompanyCode(resVan.aqCode); //매입사코드

      if (CommonUtil.isNullEmpty(resVan.aqName)) {
        salesAccountHistory
            .setCardPurchaseCompanyName(await BasBL().getCashReceiptAgent());
      } else {
        salesAccountHistory.setCardPurchaseCompanyName(resVan.aqName); //매입사명
      }

      salesAccountHistoryDetails.setData0(resVan.issueType);
      salesAccountHistoryDetails.setData1(resVan.vanResMsg); //거래결과
      salesAccountHistoryDetails.setData2(resVan.vanPrintMsg); //메시지
      salesAccountHistoryDetails.setData3('${resVan.amount}'); //공급가액(부가세 미포함)
      salesAccountHistoryDetails.setData4('${resVan.tax}'); //세금(부가세)
      salesAccountHistoryDetails.setData5('${resVan.gratuity}'); //봉사료
      salesAccountHistoryDetails.setData6(resVan.trType); //결제구분
      salesAccountHistoryDetails.setData7(resVan.trCode); //거래구분
      salesAccountHistoryDetails.setData9('${resVan.gratuityTax}'); //봉사료세금
      salesAccountHistoryDetails.setData10(resVan.vanCode); //VAN사코드
    } else {
      //간이영수증
      salesAccountHistory.setCashReceiptIdentifyTypeCode(
          TenderConstants_CASH_RECPT_ID_TP_CD.CASH.getCode());
      salesAccountHistory.setCardCompanyName(
          TenderConstants_PURCHASE_TYPE.SIMPLE_RECEIPT.getName());
      salesAccountHistory.setCardPurchaseCompanyName(
          TenderConstants_PURCHASE_TYPE.SIMPLE_RECEIPT.getName());
      salesAccountHistory.setApprovalDate(null);
      salesAccountHistory
          .setApprovalDatePrimaryPattern(salesAccountHistory.getApprovalDate());
      salesAccountHistoryDetails.setData2(
          "Can't get a deduction by this receipt"); // LangCode.cant_get_a_deduction_by_this_receipt)
      salesAccountHistoryDetails.setData3('$amt');
      salesAccountHistoryDetails.setData4('$tax');
      salesAccountHistoryDetails.setData5('$tip');
      salesAccountHistoryDetails.setData9('$tipTax');
      salesAccountHistoryDetails.setData10('000'); //VAN사코드
    }

    await _insertSaleACWithOrderDetail(
        salesAccountHistory, salesAccountHistoryDetails);
    resVan.reset();
    return salesAccountHistory;
  }

  Future<SalesAccountHistory?> insertNewSaleACAll(
      ResVan resVan, OrderCheck orderCheck) async {
    String? date = orderCheck.getOrderHistory()!.getCommonDate();
    double payAmt =
        (resVan.amount + resVan.tax + resVan.gratuity + resVan.gratuityTax);
    int? _orderHno = orderCheck.getOrderHistory()!.getCommonSerialNumber();
    SalesAccountHistory? salesAccountHistory =
        await getNewSaleAC(date, _orderHno);
    if (salesAccountHistory == null) {
      Log.e(_TAG, 'insertNewSaleACAll, salesAccountHistory is null');
      return null;
    }
    // OrderAccountHistoryDetail 에 추가데이터 저장
    SalesAccountHistoryDetails salesAccountHistoryDetails = getNewSaleACDetail(
        date, _orderHno, salesAccountHistory.getSalesAccountSerialNumber());
    Map<String, double> eachAmt = await orderCheck.calcAmtTaxTipToPay(
        payAmt - resVan.taxExempt, resVan.taxExempt);
    double? amt = eachAmt[TenderConstants.AMOUNT];
    double? stip = eachAmt[TenderConstants.SUM_TIP];
    double? tip = eachAmt[TenderConstants.TIP];
    double? tax = eachAmt[TenderConstants.TAX];
    double? tipTax = eachAmt[TenderConstants.TIP_TAX];
    double? tamt = eachAmt[TenderConstants.TOT_AMT];

    List<OrderHistoryItem> orderHistoryItemList =
        await orderCheck.getItemsForPayment();
    bool calMenuCheck = false;

    for (OrderHistoryItem orderHistoryItem in orderHistoryItemList) {
      if (orderHistoryItem.getMenuPaymentYn() == 1 &&
          orderHistoryItem.getMenuPaymentSerialNumber() == 0) {
        // 요청 금액이 실 결제 금액과 다른 경우 (분할결제 경우) 삼품별 결제 해제
        if (resVan.requestedTotal > 0 && !(resVan.requestedTotal == payAmt)) {
          orderHistoryItem.setMenuPaymentYn(0);
        } else {
          orderHistoryItem.setMenuPaymentSerialNumber(
              salesAccountHistory.getSalesAccountSerialNumber());
          calMenuCheck = true;
        }

        orderHistoryItem.updateTime();
        await orderHistoryItemDao!.updateOne(orderHistoryItem);
      }
    }

    if (calMenuCheck) {
      salesAccountHistory
          .setPaymentOption(TenderConstants_PAY_OPT.MENU.getCode());
    } else if (payAmt == orderCheck.getTotalDue()) {
      salesAccountHistory
          .setPaymentOption(TenderConstants_PAY_OPT.NORMAL.getCode());
    } else {
      //부분결제
      salesAccountHistory
          .setPaymentOption(TenderConstants_PAY_OPT.PARTIAL.getCode());
    }

    salesAccountHistory.setOperationTypeCode(orderCheck.getOperationTypeCode());
    salesAccountHistory.setSupplyValue(amt); //amount
    salesAccountHistory.setTotalAmount(tamt);
    salesAccountHistory.setPaymentTipTotalAmount(stip);
    salesAccountHistory.setPaymentTipAmount(tip);
    salesAccountHistory.setTaxAmount(tax);
    salesAccountHistory.setTaxAmount2(resVan.taxExempt);
    salesAccountHistory.setPaymentTipTaxAmount(tipTax);
    salesAccountHistory
        .setMenuDiscountAmount(eachAmt[TenderConstants.MENU_DC_AMT]);
    salesAccountHistory
        .setOrderDiscountAmount(eachAmt[TenderConstants.ORDER_DC_AMT]);
    salesAccountHistory.setApprovalTransactionNo(resVan.approvalTransactionNo);
    salesAccountHistory.setPaymentMethodCode(resVan.paymentMethodCode);
    salesAccountHistory.setExpiryDate(resVan.yyyymm); //카드유효기간
    salesAccountHistory.setCashReceiptIdentifyTypeCode(
        TenderConstants_CASH_RECPT_ID_TP_CD.CREDIT_CARD.getCode());
    salesAccountHistory.setPaymentApprovalNumber(resVan.appNo); //승인번호
    salesAccountHistory
        .setInstallmentMonth(CommonUtil.stringToInteger(resVan.inmm)); //할부개월
    salesAccountHistory.setApprovalDate(resVan.appDate); //승인시간
    salesAccountHistory.setApprovalDatePrimaryPattern(resVan.appDatePriPtn);
    salesAccountHistory.setCashReceiptTypeCode(resVan
        .issueType); // 00:개인승인, 01:법인승인, 10:개인취소, 11:법인취소 . 20: 개인오류발급, 21: 법인오류발급, 30:개인기타취소, 31:법인 기타취소
    salesAccountHistory.setCashReceiptIdentifyNumber(resVan
        .idStr); //인증번호(인증에 사용한 번호), 주민번호/핸드폰/사업자번호, DB에 저장해야하는값, 단 현금영주증카드인경우 저장하지 않음.
    salesAccountHistory.setCardName(resVan.cardName);
    salesAccountHistory.setCardCompanyName(resVan.ctName); //발급사 카드명
    salesAccountHistory.setCardCompanySectionCode(resVan.ctCode); //카드사 코드
    salesAccountHistory.setCardPurchaseCompanyCode(resVan.aqCode); //매입사코드
    salesAccountHistory.setCardPurchaseCompanyName(resVan.aqName); //매입사명
    salesAccountHistory
        .setCardCompanyAffiliateNumber(resVan.companyNo); //카드사 가맹점 번호

    //승인데이터 추가 저장
    salesAccountHistoryDetails.setData0(resVan.issueType);
    salesAccountHistoryDetails.setData1(resVan.vanResMsg); //거래결과
    salesAccountHistoryDetails.setData2(resVan.vanPrintMsg); //메시지
    salesAccountHistoryDetails.setData3('${resVan.amount}'); //공급가액(부가세 미포함)
    salesAccountHistoryDetails.setData4('${resVan.tax}'); //세금(부가세)
    salesAccountHistoryDetails.setData5('${resVan.gratuity}'); //봉사료
    salesAccountHistoryDetails.setData6(resVan.trType); //결제구분
    salesAccountHistoryDetails.setData7(resVan.trCode); //거래구분
    salesAccountHistoryDetails.setData9('${resVan.gratuityTax}'); //봉사료세금
    salesAccountHistoryDetails.setData10(resVan.vanCode); //VAN사코드
    salesAccountHistoryDetails.setData14(resVan.orderNo); // ReqExPay 주문 번호

    String? sectionCode = await _basBL.getPaymentType(resVan.paymentMethodCode);

    if (TenderConstants.isYolletPay(sectionCode)) {
      salesAccountHistoryDetails.setData11(resVan.transactionId);
      salesAccountHistoryDetails.setData12(resVan.tokenId);
      salesAccountHistoryDetails.setData13(resVan.tokenAmount);
      salesAccountHistoryDetails.setData14(resVan.userAddress);
      salesAccountHistoryDetails.setData15(resVan.exchangeDateIndex);
      salesAccountHistoryDetails.setData16(resVan.exchangeRate);
      salesAccountHistoryDetails.setData17(resVan.exchangeAmount);
    }

    await _insertSaleACWithOrderDetail(
        salesAccountHistory, salesAccountHistoryDetails);
    return salesAccountHistory;
  }

  Future<void> _insertSaleACWithOrderDetail(
      SalesAccountHistory saleAccountHistory,
      SalesAccountHistoryDetails saleAccountHistoryDetail) async {
    saleAccountHistory.updateTime();
    saleAccountHistoryDetail.updateTime();
    await saleACDao!.insertOne(saleAccountHistory);
    await saleACDetailDao!.insertOne(saleAccountHistoryDetail);
  }

  Future<List<SalesAccountHistory>> getOrderSalesAccountHistoryList(
      String? date, int? saleNum) {
    return saleACDao!.findAllBySaleInAppTypes(date!, saleNum!, [
      TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode(),
      TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode(),
      TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode(),
      TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode()
    ]);
  }

  Future<List<SalesAccountHistory>>
      getOrderSalesAccountHistoryListIncludeCancel(String date, int saleNum) {
    return saleACDao!
        .findAllBySaleNotInAppTypesOrderByApprovalDate(date, saleNum, [
      TenderConstants_APRVL_TP_CD.VAN_CNCL.getCode(),
      TenderConstants_APRVL_TP_CD.RDR_CNCL.getCode(),
    ]);
  }

  ///
  ///  주문내역 -> 판매내역(SalesHistory)으로 이관된 결제내역인지 확인
  ///  주문중 결제 내역은 SalesHistory 존재하지 않음
  ///
  bool? isFinalizeSalesAccount(SalesAccountHistory salesAccountHistory) {
    return salesAccountHistory.getSaleTransmitYn();
  }

  Future<void> updateSalesHistoryDiscount(SalesHistoryDiscount entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await salesHistoryDiscountDao!.updateOne(entity);
  }

  Future<void> deleteSaleData(String date, int saleNum) async {
    Log.d(_TAG, 'deleteSaleData, commonDate = $date, sno=$saleNum');
    SalesHistory? salesHistory = await getSaleH(date, saleNum);
    if (salesHistory == null) {
      Log.e(_TAG, 'deleteSaleData, salesHistory is null');
      return;
    }
    //SalesAccountHistory
    List<SalesAccountHistory> salesAccountHistoryList =
        await salesHistory.getSaleACs();

    for (SalesAccountHistory salesAccountHistory in salesAccountHistoryList) {
      //SalesAccountHistoryDetails 삭제
      SalesAccountHistoryDetails? salesAccountHistoryDetails =
          await salesAccountHistory.getSaleACDetail();
      if (salesAccountHistoryDetails != null) {
        salesAccountHistoryDetails.setStateCode(BaseBL.STATE_DELETE);
        await updateSaleACDetail(salesAccountHistoryDetails);
      }
      //CashdrawCashInOutHistory 삭제
      CashierBL cashierBL = CashierBL();
      CashdrawCashInOutHistory? cashdrawCashInOutHistory = await cashierBL
          .getCashDrawLogBySalesLink(salesAccountHistory.getComplexId());

      if (cashdrawCashInOutHistory != null) {
        cashdrawCashInOutHistory.setStateCode(BaseBL.STATE_DELETE);
        await cashierBL.updateCashdrawLog(cashdrawCashInOutHistory);
      }

      salesAccountHistory.setStateCode(BaseBL.STATE_DELETE);
      await updateSaleAC(salesAccountHistory);
    }

    //SalesHistoryDiscount 삭제
    List<SalesHistoryDiscount> salesHistoryDiscountList =
        await salesHistory.getSaleDiscounts();

    for (SalesHistoryDiscount salesHistoryDiscount
        in salesHistoryDiscountList) {
      salesHistoryDiscount.setStateCode(BaseBL.STATE_DELETE);
      await updateSalesHistoryDiscount(salesHistoryDiscount);
    }

    List<SalesHistoryItem> salesHistoryItemList =
        await salesHistory.getSaleItems();
    for (SalesHistoryItem salesHistoryItem in salesHistoryItemList) {
      salesHistoryItem.setStateCode(BaseBL.STATE_DELETE);
      await updateSaleItem(salesHistoryItem);
    }

    salesHistory.setStateCode(BaseBL.STATE_DELETE);
    await updateSaleH(salesHistory);
  }

  Future<List<SalesHistoryItem>> getSaleCanceledItemList(
      String date, int saleNum) {
    return saleItemDao!.findAllCanceled(date, saleNum);
  }

  ///
  /// 취소거래 결제내역
  ///
  Future<List<SalesAccountHistory>> getSaleCancelAccountList(
      String date, int saleNum) {
    return saleACDao!.findAllCanceled(date, saleNum);
  }

  Future<void> updateSaleAcCrmResult(
      String date, int saleNum, String sno, String approvalDate) async {
    List<SalesAccountHistory> salesAccountHistoryList =
        await getSaleACListWithoutCanceled(date, saleNum);

    for (SalesAccountHistory salesAccountHistory in salesAccountHistoryList) {
      salesAccountHistory.setPaymentApprovalNumber(sno);
      salesAccountHistory.setApprovalDate(approvalDate);
      salesAccountHistory.setApprovalDatePrimaryPattern(approvalDate);
      await updateSaleAC(salesAccountHistory);
    }
  }

  Future<void> updateSaleAcCrmCancelResult(
      String date, int saleNum, String sno, String approvalDate) async {
    List<SalesAccountHistory> salesAccountHistoryList =
        await getSaleACListWithCanceled(date, saleNum);

    for (SalesAccountHistory salesAccountHistory in salesAccountHistoryList) {
      salesAccountHistory.setPaymentApprovalNumber(sno);
      salesAccountHistory.setApprovalDate(approvalDate);
      salesAccountHistory.setApprovalDatePrimaryPattern(approvalDate);
      await updateSaleAC(salesAccountHistory);
    }
  }

  Future<String?> getReceiptNoFromPaymentApprovalNo(String no) async {
    SalesAccountHistory? acount = await saleACDao!.findByApprovalNo(no);
    return acount != null ? acount.getReceiptNumber() : '';
  }

  Future<String> createReceiptNo(OrderCheck check) {
    OrderHistory order = check.getOrderHistory()!;
    return _createReceiptNo(
        order.getCommonDate(), order.getCommonSerialNumber());
  }

  Future<String> createReceiptNo2(SalesAccountHistory account) {
    return _createReceiptNo(
        account.getCommonDate(), account.getSaleSerialNumber());
  }

  Future<String> _createReceiptNo(String? date, int? saleNum) async {
    String? receiptNo;
    List<SalesAccountHistory> list =
        await saleACDao!.findAllBySaleOrderByReceiptNo(date!, saleNum!);

    if (list.isNotEmpty) {
      receiptNo = list[0].getReceiptNumber();
      String tail = receiptNo!.substring(date.length);
      int? index = int.tryParse(tail);

      if (index != null) {
        receiptNo = date + (index + 1).toString().padLeft(11, '0');
      } else {
        receiptNo = date + saleNum.toString().padLeft(9, '0') + '01';
      }
    } else {
      receiptNo = date + saleNum.toString().padLeft(9, '0') + '01';
    }

    Log.d(_TAG, "Receipt number created: " + receiptNo);
    return receiptNo;
  }

  String toJsonTrackingInfoMark(String? mark) {
    if (mark == null || mark == 'null') {
      mark = '';
    }

    return jsonEncode({'mark': mark});
  }

  String? fromJsonTrackingInfoMark(String? json) {
    if (json == null || json.isEmpty) {
      return '';
    }

    return jsonDecode(json)['mark'];
  }

  @transaction
  Future<SalesAccountHistory> doRefund(
      SalesHistory oriSale, List<SalesHistoryItem> oriItems) async {
    double supplyValue = oriItems.fold(0, (v, i) => v + i.getSupplyValue());
    double tax = oriItems.fold(0, (v, i) => v + i.getTaxAmount0());
    double supplyAmount = oriItems.fold(0, (v, i) => v + i.getSupplyAmount());
    double itemDc = oriItems.fold(0, (v, i) => v + i.getDiscountAmount());
    double orderDc = oriItems.fold(0, (v, i) => v + i.getOrderDiscountAmount());

    // refund sales history 추가
    SalesHistory? sale;

    if (oriSale.getCancelLink() != null) {
      sale = await saleHDao!.findById(oriSale.getCancelLink()!);
    }

    if (sale == null) {
      sale = await getNewSaleH();
      sale.setOperationTypeCode(oriSale.getOperationTypeCode());
      sale.setBusinessSectionCode(oriSale.getBusinessSectionCode());
      sale.setCloseBusinessTypeCode(oriSale.getCloseBusinessTypeCode());
      sale.setTableId(oriSale.getTableId());
      sale.setCheckLink(oriSale.getCheckLink()!);
      sale.setCancelLink(null);
      sale.setTipTotalAmount(0);
      sale.setPreTipAmount(0);
      sale.setPreTipTaxAmount(0);
      sale.setPreTipTotalAmount(0);
      sale.setPaymentTipAmount(0);
      sale.setPaymentTipTaxAmount(0);
      sale.setPaymentTipTotalAmount(0);
      sale.setTaxAmount0(0);
      sale.setTaxAmount1(0);
      sale.setTaxAmount2(0);
      sale.setSupplyValue(0);
      sale.setTaxAmount0(0);
      sale.setSupplyAmount(0);
      sale.setTotalAmount(0);
      sale.setDiscountTotalAmount(0);
      await _insertSaleH(sale);

      oriSale.setCancelLink(sale.getId()!);
      oriSale.setCancelTypeCode(TenderConstants.REFUND);
      oriSale.setCancelEmployeeId(BaseBL.employeeId);
      await updateSaleH(oriSale);
    }

    // 방어코드인 듯 함
    if (sale.getCancelTypeCode() != TenderConstants.REFUND) {
      sale.setCancelTypeCode(TenderConstants.REFUND);
      sale.setCancelEmployeeId(BaseBL.employeeId);
      await updateSaleH(sale);
    }

    sale.setSupplyValue(sale.getSupplyValue() - supplyValue);
    sale.setTaxAmount0(sale.getTaxAmount0() - tax);
    sale.setSupplyAmount(sale.getSupplyAmount() - supplyAmount);
    sale.setTotalAmount(sale.getTotalAmount() - supplyAmount);
    sale.setDiscountTotalAmount(
        sale.getDiscountTotalAmount() - itemDc - orderDc);
    sale.setOrderEmployeeId(BaseBL.employeeId);
    sale.setServingEmployeeId(BaseBL.employeeId);

    // refund sales account history 추가
    SalesAccountHistory? ac =
        await getNewSaleAC(sale.getCommonDate(), sale.getSaleSerialNumber());
    ac!.setApprovalTypeCode(TenderConstants_APRVL_TP_CD.REF_CASH.getCode());
    ac.setCashdrawSectionCode(BaseBL.cashdrawSection);
    ac.setOperationTypeCode(BaseBL_OPR_TP_CD.OPERATION_TYPE_SELL.getCode());
    ac.setSupplyValue(-supplyValue);
    ac.setTaxAmount(-tax);
    ac.setTotalAmount(-supplyAmount);
    ac.setMenuDiscountAmount(-itemDc);
    ac.setOrderDiscountAmount(-orderDc);
    ac.setPaymentMethodCode(
        await _getPaymentMethodCode(TenderConstants_Section.CASH.getCode()));
    ac.setPaymentSectionCode(TenderConstants_Section.CASH.getCode());
    ac.setReceiptNumber(
        await _createReceiptNo(ac.getCommonDate(), ac.getSaleSerialNumber()));
    ac.setCancelEmployeeId(BaseBL.employeeId);
    ac.setPaymentOption(TenderConstants_PAY_OPT.MENU.getCode());
    ac.createId();
    await _insertSaleAC(ac);

    for (SalesAccountHistory i in await oriSale.getSaleACs()) {
      i.setCancelSerialNumber(getGenCancelSerialNumber(ac));
      i.setSynchronizedYn(false);
      await i.update();
    }

    await _insertNewSaleItemForVoid3(ac, oriItems, BaseBL.employeeId);
    await updateSaleH(sale);

    // 모든 saleAC 가 환불되면 Discount 취소 내역 추가
    if (await _checkFullRefund(oriSale)) {
      insertNewSaleDiscountForVoid(oriSale, BaseBL.employeeId);
    }

    return ac;
  }

  Future<void> _insertNewSaleItemForVoid3(SalesAccountHistory ac,
      List<SalesHistoryItem> oriItems, String? employeeId) async {
    for (SalesHistoryItem oriItem in oriItems) {
      SalesHistoryItem? item = getNewSaleItem(ac.getCommonDate(),
          ac.getSaleSerialNumber(), oriItem.getItemSerialNumber());
      _copySaleItemEntityForVoid(oriItem, item!);
      oriItem.setCancelEmployeeId(employeeId);
      oriItem.setCancelSerialNumber(item.getItemSerialNumber());
      item.setMenuPaymentSerialNumber(ac.getSalesAccountSerialNumber());
      await updateSaleItem(oriItem);
      await insertSaleItem(item);
    }
  }

  Future<bool> _checkFullRefund(SalesHistory oriSale) async {
    if (oriSale.getCancelLink() == null) {
      return false;
    }

    SalesHistory? sale = await saleHDao!.findById(oriSale.getCancelLink()!);
    return sale != null && sale.getTotalAmount() == oriSale.getTotalAmount();
  }

  Future<String?> _getPaymentMethodCode(String type) async {
    final basBL = BasBL();

    for (String i in await basBL.getPaymentList()) {
      if (await basBL.getPaymentType(i) == type) {
        return i;
      }
    }

    return null;
  }
}

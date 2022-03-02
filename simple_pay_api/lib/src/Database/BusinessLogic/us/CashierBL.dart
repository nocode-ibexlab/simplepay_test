import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/CultureManager.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'ResVan.dart';
import 'SaleBL.dart';
import 'TableBL.dart';

class CashierBL_CASHDRAWLOG {
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_RESERVE =
      CashierBL_CASHDRAWLOG("0", 1, 1); // 영업준비금 (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_PAYMENT =
      CashierBL_CASHDRAWLOG("1", 1, 1); // 입금 (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_WITHDRAW =
      CashierBL_CASHDRAWLOG("2", -1, 1); // 출금 (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_CLOSE =
      CashierBL_CASHDRAWLOG("3", -1, 1); // 영업마감금 (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_SELL =
      CashierBL_CASHDRAWLOG("4", 1, 1); // 판매금(판매외부승인, 판매내부승인, 간이영수증) (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_SELL_CNCL =
      CashierBL_CASHDRAWLOG(
          "7", -1, -1); // 판매금(판매외부승인취소, 판매내부승인취소, 현금환불, 간이영수증 취소) (-)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_CASHIER_CHANGE_IN =
      CashierBL_CASHDRAWLOG("5", 1, 1); //근무교대 입금 (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_CASHIER_CHANGE_OUT =
      CashierBL_CASHDRAWLOG("6", -1, 1); //근무교대 출금 (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_PURCHASE =
      CashierBL_CASHDRAWLOG("8", -1, 1); // 매입금(구매외부승인) (+)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_PURCHASE_CNCL =
      CashierBL_CASHDRAWLOG("9", 1, -1); // 매입금(구매외부승인취소) (-)
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_SYNC =
      CashierBL_CASHDRAWLOG("10", 1, 1); //서버와의 싱크로 추가되는 금액
  static CashierBL_CASHDRAWLOG CASHDRAWLOG_INPUTTYPE_CLOSE_CNCL =
      CashierBL_CASHDRAWLOG("11", 1, 1); // 영업마감취소 (-)
  late String _code;
  late int _inOut; //1: IN, -1: OUT
  late int
      _arbitration; //입력데이터 부호에 따른 계산 부호를 조정하기 위함, inOut 부호 = 입력데이터 부호 * arbitration

  CashierBL_CASHDRAWLOG(String code, int inOut, int arbitration) {
    this._code = code;
    this._inOut = inOut;
    this._arbitration = arbitration;
  }

  String getCode() {
    return _code;
  }

  int getInOut() {
    return _inOut;
  }

  int getMSign() {
    //the multiplication sign
    return _inOut * _arbitration;
  }

  bool isIn() {
    if (_inOut == 1)
      return true;
    else
      return false;
  }

  static CashierBL_CASHDRAWLOG? getType(String? code) {
    switch (code) {
      case "0":
        return CASHDRAWLOG_INPUTTYPE_RESERVE;
      case "1":
        return CASHDRAWLOG_INPUTTYPE_PAYMENT;
      case "2":
        return CASHDRAWLOG_INPUTTYPE_WITHDRAW;
      case "3":
        return CASHDRAWLOG_INPUTTYPE_CLOSE;
      case "4":
        return CASHDRAWLOG_INPUTTYPE_SELL;
      case "7":
        return CASHDRAWLOG_INPUTTYPE_SELL_CNCL;
      case "5":
        return CASHDRAWLOG_INPUTTYPE_CASHIER_CHANGE_IN;
      case "6":
        return CASHDRAWLOG_INPUTTYPE_CASHIER_CHANGE_OUT;
      case "8":
        return CASHDRAWLOG_INPUTTYPE_PURCHASE;
      case "9":
        return CASHDRAWLOG_INPUTTYPE_PURCHASE_CNCL;
      case "10":
        return CASHDRAWLOG_INPUTTYPE_SYNC;
      case "11":
        return CASHDRAWLOG_INPUTTYPE_CLOSE_CNCL;
      default:
        return null;
    }
  }
}

class CashierBL extends BaseBL {
  static const String TAG = "CashierBL";

  static const String CASHIER_CLOSE_TYPE_START = "0"; // 영업시작
  static const String CASHIER_CLOSE_TYPE_END = "1"; // 영업마감
  static const String SYSTEM_CLOSE_TYPE_END = "2"; // 시스템에의한 자동영업마감

  static const String CASHIER_TYPE_CASHIER = "C";
  static const String CASHIER_TYPE_STAFFBANK_STOREMONEY = "S";
  static const String CASHIER_TYPE_STAFFBANK = "P";

  static final CashierBL _singleton = CashierBL._internal();

  factory CashierBL() => _singleton;

  CashierBL._internal() {
    _basBL = BasBL();
    _saleBL = SaleBL();
    _tableBL = TableBL();
  }

  late BasBL _basBL;
  late SaleBL _saleBL;
  late TableBL _tableBL;

  /// 해당 POS의 Cashier In 된 CashierBankHistory list 조회
  /// @param POS_CODE POS CODE
  /// @return Cashier In 된 CashierBankHistory list
  Future<List<CashierBankHistory>> getCashierInList(String? POS_CODE) async {
    List<CashierBankHistory> cashierInList = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeAndCashierTypeCodeAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_START, CASHIER_TYPE_CASHIER, POS_CODE!);

    cashierInList =
        cashierInList == null ? <CashierBankHistory>[] : cashierInList;

    return cashierInList;
  }

  Future<CashierBankHistory> getCashierInBankHistory() async {
    List<CashierBankHistory> cashierInList = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeAndCashierTypeCodeAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_START,
            CASHIER_TYPE_CASHIER,
            BaseBL.storeTerminalId!);

    return cashierInList.first;
  }

  Future<CashierBankHistory?> getCashierOutBankHistory() async {
    List<CashierBankHistory> cashierOutList = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_START,
            CASHIER_TYPE_CASHIER,
            BaseBL.storeTerminalId!);

    return cashierOutList.length > 0 ? cashierOutList.first : null;
  }

  Future<void> updateCashierBankData(CashierBankHistory bankEntity) async {
    try {
      int saleCount = 0;
      double tableRate = 0;
      double posCash = 0;
      double cashInTamt = 0;
      double cashOutTamt = 0;
      double posSaleCashTamt = 0;
      double saleTamt = 0; //모든 결제내역(현금, 카드..)
      double saleDiscountTamt = 0;
      double saleTipTamt = 0;

      DateTime openDate = bankEntity.getBusinessStartDate();
      DateTime closeDate = DateTime.now();

      List<SalesHistory>? saleHList =
          await _saleBL.getSaleHListBetweenDate(openDate, closeDate);
      if ((saleHList != null) && (saleHList.length > 0)) {
        saleCount = saleHList.length;

        double tempTableCount = 0;

        for (SalesHistory saleH in saleHList) {
          saleTamt += saleH.getSupplyAmount();
          saleDiscountTamt += saleH.getDiscountTotalAmount();
          saleTipTamt +=
              saleH.getTipTotalAmount() != null ? saleH.getTipTotalAmount() : 0;

          if (saleH.getTableId() != null) {
            tempTableCount++;
          }
        }

        // table 회전율
        List<Table> tableList = await _tableBL.getAllTabList();
        if ((tableList != null) && (tableList.length > 0)) {
          tableRate = tempTableCount / tableList.length;
          tableRate = (tableRate * 100).toInt() / 100;
        }
      }

      // posCash
      List<CashdrawCashInOutHistory> cashdrawCashInOutHistoryList =
          await getCashdrawPayInOutLogBetween(
              bankEntity.getCashdrawSectionCode(), openDate, closeDate);
      if ((cashdrawCashInOutHistoryList != null) &&
          (cashdrawCashInOutHistoryList.length > 0)) {
        for (CashdrawCashInOutHistory log in cashdrawCashInOutHistoryList) {
          if (CashierBL_CASHDRAWLOG.getType(log.getInOutTypeCode())!.isIn())
            posCash += log.getAmount()!;
          else
            posCash -= log.getAmount()!;
        }
      }

      //cashInTamt
      List<CashdrawCashInOutHistory> payInLogList =
          await getPayInCashdrawLogBetween(
              bankEntity.getCashdrawSectionCode(), openDate, closeDate);
      if ((payInLogList != null) && (payInLogList.length > 0)) {
        for (CashdrawCashInOutHistory log in payInLogList) {
          cashInTamt += log.getAmount()!;
        }
      }

      //cashOutTamt
      List<CashdrawCashInOutHistory> payOutLogList =
          await getPayOutCashdrawLogBetween(
              bankEntity.getCashdrawSectionCode(), openDate, closeDate);
      if ((payOutLogList != null) && (payOutLogList.length > 0)) {
        for (CashdrawCashInOutHistory log in payOutLogList) {
          cashOutTamt += log.getAmount()!;
        }
      }

      //saleCashTamt
      List<SalesAccountHistory> salesAccountHistoryList =
          (await _saleBL.getSaleACListBetweenDate(openDate, closeDate)) ?? [];

      for (SalesAccountHistory saleAC in salesAccountHistoryList) {
        String? paySecCode = saleAC.getPaymentSectionCode();
        if (TenderConstants_Section.getSection(paySecCode).isCash()) {
          posSaleCashTamt += saleAC.getTotalAmount();
        }
      }
      int salesHistoryBatchIdValue = 0;

      for (SalesAccountHistory saleAC in salesAccountHistoryList) {
        // OpenWay
        SalesAccountHistoryDetails? detail = await saleAC.getSaleACDetail();
        if (detail != null) {
          String? vanResMsg = detail.getData1();
          if (vanResMsg != null) {
            String? batchIdString = ResVan.parseVanResMsg(vanResMsg, "batchId");
            if (batchIdString != null) {
              int value = 0;
              try {
                value = int.parse(batchIdString);
              } catch (e) {
                print('Exception: $e');
                value = 0;
              }

              if (salesHistoryBatchIdValue < value) {
                salesHistoryBatchIdValue = value;
              }
            }
          }
        }
      }
      // update CashierBankHistory
      double totCashAmt = bankEntity.getOpenBusinessCashTotalAmount() +
          await _getRemainCashInCashDraw(openDate, closeDate);
      bankEntity.setSalesCount(saleCount);
      bankEntity.setTableTurnoverRate(tableRate);
      bankEntity.setCloseBusinessCashTotalAmount(totCashAmt);
      bankEntity.setPosCashTotalAmount(posCash);
      bankEntity.setCashDifferenceAmount(totCashAmt - posCash);
      bankEntity.setCashDepositTotalAmount(cashInTamt);
      bankEntity.setCashWithdrawalAmount(cashOutTamt);
      bankEntity.setSalesTotalCashAmount(posSaleCashTamt);
      bankEntity.setSalesTotalAmount(saleTamt);
      bankEntity.setDiscountTotalAmount(saleDiscountTamt);
      bankEntity.setTipTotalAmount(saleTipTamt);
      bankEntity.setBatchId(salesHistoryBatchIdValue);

      await updateCashierBank(bankEntity);
    } catch (e) {
      print('Exception: $e');
    }
  }

  Future<void> updateCashSum(bool isOpen, double crmCashSum) async {
    BasBL basBL = BasBL();
    CultureManager cultureMng = CultureManager();
    CashierBankHistory? bankEntity;

    if (await CommonUtil.checkCashierIn()) {
      bankEntity = await getCashierInBankHistory();
      await updateCashierBankData(bankEntity);
    }

    if (isOpen) {
      //X레포트
      bool isCashierIn = await CommonUtil.checkCashierIn();
      if (!isCashierIn) {
        //포스 영업마감 상태
        List<BasicDataItem> drawers = await basBL.getCashDrawerList();
        if (drawers.length > 0) {
          List<String> unitList = [];
          unitList.add(cultureMng.currencyFormat(crmCashSum));
          for (int i = 1; i < 13; i++) {
            unitList.add("0");
          }
          Log.d(
              TAG,
              "updateCashSum; pos close; isOpen = " +
                  isOpen.toString() +
                  " ; crmCashSum = " +
                  crmCashSum.toString());
          await CashierBL().cashierInProcess(
              drawers.first.getBasicDataItemCodeName(),
              unitList,
              CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_RESERVE,
              crmCashSum,
              "",
              "",
              BaseBL.storeTerminalId);
        }
      } else {
        //포스 영업개시 상태
        bankEntity = await getCashierInBankHistory();
        double posCashSum = bankEntity.getOpenBusinessCashTotalAmount() +
            bankEntity.getPosCashTotalAmount() +
            bankEntity.getSalesTotalCashAmount();
        Log.d(
            TAG,
            "updateCashSum; pos open; isOpen = " +
                isOpen.toString() +
                " ; crmCashSum = " +
                crmCashSum.toString() +
                " ; posCashSum = " +
                posCashSum.toString());
        double diffSum = crmCashSum - posCashSum;
        if (diffSum == 0) return;

        double startAmt = crmCashSum -
            (bankEntity.getPosCashTotalAmount() +
                bankEntity.getSalesTotalCashAmount());
        bankEntity.setOpenBusinessCashTotalAmount(startAmt);
        bankEntity.setBusinessChangeCashTotalAmount(startAmt);
        await updateCashierBank(bankEntity);

        CashierBankHistoryBill? bankHistoryBill =
            await getCashierBankHistoryBillOpen(
                bankEntity.getCommonDate(), bankEntity.getCommonSerialNumber());
        if (bankHistoryBill != null) {
          bankHistoryBill.setUserInputAmount(startAmt);
          bankHistoryBill.setTotalAmount(startAmt);
          await updateCashierBankHistoryBill(bankHistoryBill);
        }
        await addCashdrawLog(
            CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_SYNC,
            diffSum,
            "",
            "",
            bankEntity.getCashdrawSectionCode(),
            bankEntity.getStoreTerminalId(),
            null);
      }
    } else {
      //Z 레포트
      bool isCashierIn = await CommonUtil.checkCashierIn();
      if (!isCashierIn) {
        //포스 양쪽 마감상태
        double posCashSum = 0;
        bankEntity = await getCashierOutBankHistory();
        if (bankEntity != null) {
          posCashSum = bankEntity.getOpenBusinessCashTotalAmount() +
              bankEntity.getPosCashTotalAmount() +
              bankEntity.getSalesTotalCashAmount();
        } else {
          //캐셔뱅크가 하나도 없는 경우 (최초)
          List<BasicDataItem> drawers = await basBL.getCashDrawerList();
          if (drawers.length > 0) {
            List<String> unitList = [];
            unitList.add(cultureMng.currencyFormat(crmCashSum));
            for (int i = 1; i < 13; i++) {
              unitList.add("0");
            }
            Log.d(
                TAG,
                "updateCashSum; pos close; isOpen = " +
                    isOpen.toString() +
                    " ; crmCashSum = " +
                    crmCashSum.toString());
            await CashierBL().cashierInProcess(
                drawers.first.getBasicDataItemCodeName(),
                unitList,
                CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_RESERVE,
                crmCashSum,
                "",
                "",
                BaseBL.storeTerminalId);

            bankEntity = await getCashierInBankHistory();
            double startAmt = crmCashSum;
            bankEntity.setOpenBusinessCashTotalAmount(crmCashSum);
            bankEntity.setBusinessChangeCashTotalAmount(crmCashSum);
            bankEntity.setBusinessEndDatetime(
                CommonUtil.convertDateForm1(DateTime.now()));
            bankEntity.setBusinessOpenCloseSectionCode(
                CashierBL.SYSTEM_CLOSE_TYPE_END);
            await updateCashierBank(bankEntity);

            CashierBankHistoryBill? bankHistoryBill =
                await getCashierBankHistoryBillOpen(bankEntity.getCommonDate(),
                    bankEntity.getCommonSerialNumber());
            if (bankHistoryBill != null) {
              bankHistoryBill.setUserInputAmount(crmCashSum);
              bankHistoryBill.setTotalAmount(startAmt);
              bankHistoryBill.setBusinessOpenCloseSectionCode(
                  CashierBL.SYSTEM_CLOSE_TYPE_END);
              await updateCashierBankHistoryBill(bankHistoryBill);
            }
            await addCashdrawLog(
                CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_SYNC,
                0,
                "",
                "",
                bankEntity.getCashdrawSectionCode(),
                bankEntity.getStoreTerminalId(),
                null);
          }
        }
        Log.d(
            TAG,
            "updateCashSum; both closed; isOpen = " +
                isOpen.toString() +
                " ; crmCashSum = " +
                crmCashSum.toString() +
                " ; posCashSum = " +
                posCashSum.toString());
      } else {
        //포스 영업개시 상태
        bankEntity = await getCashierInBankHistory();
        double posCashSum = bankEntity.getOpenBusinessCashTotalAmount() +
            bankEntity.getPosCashTotalAmount() +
            bankEntity.getSalesTotalCashAmount();
        Log.d(
            TAG,
            "updateCashSum; pos open; isOpen = " +
                isOpen.toString() +
                " ; crmCashSum = " +
                crmCashSum.toString() +
                " ; posCashSum = " +
                posCashSum.toString());
        double diffSum = crmCashSum - posCashSum;
        if (diffSum == 0) return;

        double startAmt = crmCashSum -
            (bankEntity.getPosCashTotalAmount() +
                bankEntity.getSalesTotalCashAmount());
        bankEntity.setOpenBusinessCashTotalAmount(startAmt);
        bankEntity.setBusinessChangeCashTotalAmount(startAmt);
        bankEntity.setCloseBusinessCashTotalAmount(crmCashSum);
        bankEntity
            .setBusinessOpenCloseSectionCode(CashierBL.SYSTEM_CLOSE_TYPE_END);
        bankEntity.setBusinessEndDatetime(
            CommonUtil.convertDateForm1(DateTime.now()));
        await updateCashierBank(bankEntity);

        CashierBankHistoryBill? bankHistoryBill =
            await getCashierBankHistoryBillOpen(
                bankEntity.getCommonDate(), bankEntity.getCommonSerialNumber());
        if (bankHistoryBill != null) {
          bankHistoryBill.setBill0Number(0);
          bankHistoryBill.setBill1Number(0);
          bankHistoryBill.setBill2Number(0);
          bankHistoryBill.setBill3Number(0);
          bankHistoryBill.setBill4Number(0);
          bankHistoryBill.setBill5Number(0);
          bankHistoryBill.setBill6Number(0);
          bankHistoryBill.setBill7Number(0);
          bankHistoryBill.setBill8Number(0);
          bankHistoryBill.setBill9Number(0);
          bankHistoryBill.setBill10Number(0);
          bankHistoryBill.setBill11Number(0);
          bankHistoryBill.setBill12Number(0);
          bankHistoryBill.setBill13Number(0);
          bankHistoryBill.setBill14Number(0);
          bankHistoryBill.setBill15Number(0);
          bankHistoryBill.setBill16Number(0);
          bankHistoryBill.setBill17Number(0);
          bankHistoryBill.setBill18Number(0);
          bankHistoryBill.setBill19Number(0);
          bankHistoryBill.setUserInputAmount(startAmt);
          bankHistoryBill.setTotalAmount(startAmt);
          bankHistoryBill
              .setBusinessOpenCloseSectionCode(CashierBL.SYSTEM_CLOSE_TYPE_END);
          await updateCashierBankHistoryBill(bankHistoryBill);
        }
        await addCashdrawLog(
            CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_SYNC,
            diffSum,
            "",
            "",
            bankEntity.getCashdrawSectionCode(),
            bankEntity.getStoreTerminalId(),
            null);

        await updateCashierBankData(bankEntity);
      }
    }
  }

  /// EOD 처리용 Cashier In 리스트 반환 지정된
  /// @return POS_CODE를 제외한 POS의 Cashier In 된 CashierBankHistory 리스트
  Future<List<CashierBankHistory>> getCashierInListForEOD(
      String? storeTerminalId) async {
    return [];
  }

  ////////////////////////////////////////////////////
  // Cashier Bank
  ////////////////////////////////////////////////////

  Future<CashierBankHistory> getNewCashierBank(String? cashdrawSection) async {
    String commonDate = await _basBL.getCommonDate();
    int commonSerialNumber = getCommonSerialNumber();
    List<CashierBankHistory> entityList =
        await cashierBankHistoryDao!.findAllByCommonDate(commonDate);

    if (entityList != null) {
      commonSerialNumber = entityList.length + getCommonSerialNumber();
    }

    CashierBankHistory entity = CashierBankHistory();
    entity.setCommonDate(commonDate);
    entity.setCommonSerialNumber(commonSerialNumber);
    entity.setCashdrawSectionCode(cashdrawSection);
    entity.createId();
    return entity;
  }

  Future<CashierBankHistory?> getCashierBankById(String id) async {
    return await cashierBankHistoryDao!.findById(id);
  }

  Future<CashierBankHistory?> getCashierBankByCashDrawerSection(
      String? section) async {
    List<CashierBankHistory> list = await cashierBankHistoryDao!
        .findAllByCashdrawSectionCodeAndStoreTerminalId(
            section!, BaseBL.storeTerminalId!);
    return list.length > 0 ? list.first : null;
  }

  Future<List<CashierBankHistory>> getCashierBankListByCloseType(
      String type) async {
    return await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeAndStoreTerminalId(
            type, BaseBL.storeTerminalId!);
  }

  Future<CashierBankHistory?> getLastClosedCashierBank() async {
    List<CashierBankHistory> list = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeNotAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_START, BaseBL.storeTerminalId!);
    return list.isNotEmpty ? list.first : null;
  }

  Future<List<CashierBankHistory>> getCashierBankList(
      /*String type,String section,*/ int offset, int limit) async {
    return await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndStoreTerminalIdLimitOffset(
            CASHIER_CLOSE_TYPE_START,
            CASHIER_TYPE_CASHIER,
            BaseBL.storeTerminalId!,
            limit,
            offset);
  }

  Future<void> insertCashierBank(CashierBankHistory entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await cashierBankHistoryDao!.insertOne(entity);
  }

  Future<void> updateCashierBank(CashierBankHistory entity) async {
    entity.setLastReviserId(BaseBL.employeeId);
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await cashierBankHistoryDao!.updateOne(entity);
  }

  /// cashier in 된 cashierBank 찾기
  /// @return
  Future<CashierBankHistory?> getCashierInStateCashierBank() async {
    List<CashierBankHistory> banks =
        await getCashierInList(BaseBL.storeTerminalId);
    return banks.length > 0 ? banks.first : null;
  }

  ////////////////////////////////////////////////////
  // Cashier Bank Unit
  ////////////////////////////////////////////////////

  Future<CashierBankHistoryBill> getNewCashierBankHistoryBill(
      String? commonDate,
      int? commonSerialNumber,
      String? cashdrawSection,
      String closeType) async {
    List<CashierBankHistoryBill> entityList = await cashierBankHistoryBillDao!
        .findAllByCommonDateAndCommonSerialNumberAndCashdrawSectionCode(
            commonDate!, commonSerialNumber!, cashdrawSection!);

    CashierBankHistoryBill entity = CashierBankHistoryBill();
    entity.setCommonDate(commonDate);
    entity.setCommonSerialNumber(commonSerialNumber);
    entity.setCashdrawSectionCode(cashdrawSection);
    entity.setBillSerialNumber(entityList.length > 0
        ? entityList.first.getBillSerialNumber()! + 1
        : getCommonSerialNumber());
    entity.setBusinessOpenCloseSectionCode(closeType);
    entity.createId();
    return entity;
  }

  Future<CashierBankHistoryBill?> getCashierBankHistoryBillOpen(
      String? comDate, int? serialNo) async {
    return await cashierBankHistoryBillDao!
        .findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCode(
            comDate!, serialNo!, CashierBL.CASHIER_CLOSE_TYPE_START);
  }

  Future<CashierBankHistoryBill?> getCashierBankHistoryBillClosed(
      String? comDate, int? serialNo) async {
    return await cashierBankHistoryBillDao!
        .findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCodeNot(
            comDate!, serialNo!, CashierBL.CASHIER_CLOSE_TYPE_START);
  }

  Future<CashierBankHistoryBill?> getCashierBankHistoryBillSystemClosed(
      String? comDate, int? serialNo) async {
    return await cashierBankHistoryBillDao!
        .findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCode(
            comDate!, serialNo!, CashierBL.SYSTEM_CLOSE_TYPE_END);
  }

  Future<CashierBankHistoryBill?> getCashierBankHistoryBillById(
      String id) async {
    return await cashierBankHistoryBillDao!.findById(id);
  }

  Future<void> insertCashierBankHistoryBill(
      CashierBankHistoryBill entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await cashierBankHistoryBillDao!.insertOne(entity);
  }

  Future<void> updateCashierBankHistoryBill(
      CashierBankHistoryBill entity) async {
    entity.updateTime();
    entity.setSynchronizedYn(false);
    await cashierBankHistoryBillDao!.updateOne(entity);
  }

  ////////////////////////////////////////////////////
  // Cashdarw Log
  ////////////////////////////////////////////////////

  Future<CashdrawCashInOutHistory> getNewCashdrawLog(
      String? cashdrawSection) async {
    String commonDate = await _basBL.getCommonDate();
    int commonSerialNumber = getCommonSerialNumber();
    List<CashdrawCashInOutHistory> entityList =
        await cashdrawHistoryDao!.findAllByCommonDate(commonDate);

    if (entityList != null) {
      commonSerialNumber = entityList.length + getCommonSerialNumber();
    }

    CashdrawCashInOutHistory entity = CashdrawCashInOutHistory();
    entity.setCommonDate(commonDate);
    entity.setCommonSerialNumber(commonSerialNumber);
    entity.setCashdrawSectionCode(cashdrawSection);
    entity.createId();
    return entity;
  }

  Future<void> insertCashdrawLog(CashdrawCashInOutHistory entity) async {
    entity.updateTime();
    await cashdrawHistoryDao!.insertOne(entity);
  }

  Future<void> updateCashdrawLog(CashdrawCashInOutHistory entity) async {
    entity.updateTime();
    await cashdrawHistoryDao!.updateOne(entity);
  }

  /// add CashdrawCashInOutHistory
  ///
  /// @param inputType : PayIn = 1, PayOut = 2
  /// @param amt : PayIn = + 값, PayOut = - 값
  /// @param rema : Memo
  /// @param accountCode
  /// @param cashdrawSection
  /// @param storeTerminalId
  /// @param inputType
  Future<void> addCashdrawLog(
      CashierBL_CASHDRAWLOG inputType,
      double amt,
      String rema,
      String accountCode,
      String? cashdrawSection,
      String? storeTerminalId,
      String? link) async {
    CashdrawCashInOutHistory entity =
        await getNewCashdrawLog(BaseBL.cashdrawSection);
    entity.setInOutTypeCode(inputType.getCode());
    entity.setAmount(amt);
    entity.setRemarkA(rema);
    entity.setAccountSubjectId(accountCode);
    entity.setCashdrawSectionCode(cashdrawSection);
    entity.setStoreTerminalId(storeTerminalId);
    entity.createId();

    if (link != null) {
      entity.setCashierBankLink(link);
    }

    await insertCashdrawLog(entity);
  }

  Future<void> addCashDrawLog(SalesAccountHistory saleAC) async {
    CashdrawCashInOutHistory log =
        await getNewCashdrawLog(BaseBL.cashdrawSection);
    log.setAccountSubjectId("1101");
    log.setStoreTerminalId(BaseBL.storeTerminalId);
    double amount = 0;

    if (TenderConstants_APRVL_TP_CD.SELL_APRVL_EXT.getCode() ==
            (saleAC.getApprovalTypeCode()) ||
        TenderConstants_APRVL_TP_CD.SELL_APRVL_INT.getCode() ==
            (saleAC.getApprovalTypeCode()) ||
        TenderConstants_APRVL_TP_CD.APRVL_SIM.getCode() ==
            (saleAC.getApprovalTypeCode())) {
      log.setInOutTypeCode(
          CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_SELL.getCode());
      amount = saleAC.getTotalAmount();
    } else if (TenderConstants_APRVL_TP_CD.SELL_CNCL_EXT.getCode() ==
            (saleAC.getApprovalTypeCode()) ||
        TenderConstants_APRVL_TP_CD.SELL_CNCL_INT.getCode() ==
            (saleAC.getApprovalTypeCode()) ||
        TenderConstants_APRVL_TP_CD.REF_CASH.getCode() ==
            (saleAC.getApprovalTypeCode()) ||
        TenderConstants_APRVL_TP_CD.CNCL_SIM.getCode() ==
            (saleAC.getApprovalTypeCode())) {
      log.setInOutTypeCode(
          CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_SELL_CNCL.getCode());
      amount = saleAC.getTotalAmount();
    } else if (TenderConstants_APRVL_TP_CD.BUY_APRVL_EXT.getCode() ==
        (saleAC.getApprovalTypeCode())) {
      log.setInOutTypeCode(
          CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PURCHASE.getCode());
      amount = saleAC.getTotalAmount();
    } else if (TenderConstants_APRVL_TP_CD.BUY_CNCL_EXT.getCode() ==
        (saleAC.getApprovalTypeCode())) {
      log.setInOutTypeCode(
          CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PURCHASE_CNCL.getCode());
      amount = saleAC.getTotalAmount();
    }

    log.setAmount(amount);
    log.setSalesLink(saleAC.getComplexId());
    await insertCashdrawLog(log);
  }

  Future<List<CashdrawCashInOutHistory>> getCashdrawPayInOutLogBetween(
      String? cashDrawerSection, DateTime openDate, DateTime closeDate) async {
    List<String> inOutTypeCodes = [];
    inOutTypeCodes
        .add(CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT.getCode());
    inOutTypeCodes
        .add(CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW.getCode());

    return await cashdrawHistoryDao!
        .findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCodeAndInOutTypeCode(
            cashDrawerSection ?? "",
            CommonUtil.convertDateForm1(openDate),
            CommonUtil.convertDateForm1(closeDate),
            BaseBL.STATE_DELETE,
            inOutTypeCodes);
  }

  Future<List<CashdrawCashInOutHistory>> getCashdrawLogBetween(
      String? cashDrawerSection, DateTime openDate, DateTime closeDate) async {
    return await cashdrawHistoryDao!
        .findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCode(
            cashDrawerSection!,
            CommonUtil.convertDateForm1(openDate),
            CommonUtil.convertDateForm1(closeDate),
            BaseBL.STATE_DELETE);
  }

  Future<List<CashdrawCashInOutHistory>> getPayInCashdrawLogBetween(
      String? cashDrawerSection, DateTime openDate, DateTime closeDate) async {
    List<String> inOutTypeCodes = [];
    inOutTypeCodes
        .add(CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT.getCode());

    return await cashdrawHistoryDao!
        .findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCodeAndInOutTypeCode(
            cashDrawerSection!,
            CommonUtil.convertDateForm1(openDate),
            CommonUtil.convertDateForm1(closeDate),
            BaseBL.STATE_DELETE,
            inOutTypeCodes);
  }

  Future<List<CashdrawCashInOutHistory>> getPayOutCashdrawLogBetween(
      String? cashDrawerSection, DateTime openDate, DateTime closeDate) async {
    List<String> inOutTypeCodes = [];
    inOutTypeCodes
        .add(CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW.getCode());
    return await cashdrawHistoryDao!
        .findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCodeAndInOutTypeCode(
            cashDrawerSection!,
            CommonUtil.convertDateForm1(openDate),
            CommonUtil.convertDateForm1(closeDate),
            BaseBL.STATE_DELETE,
            inOutTypeCodes);
  }

  Future<List<CashdrawCashInOutHistory>> getPayInCashdrawLog(
      String? date) async {
    return await cashdrawHistoryDao!
        .findAllByCommonDateAndStateCodeAndInOutTypeCode(
            date!,
            BaseBL.STATE_DELETE,
            CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_PAYMENT.getCode());
  }

  Future<List<CashdrawCashInOutHistory>> getPayOutCashdrawLog(
      String? date) async {
    return await cashdrawHistoryDao!
        .findAllByCommonDateAndStateCodeAndInOutTypeCode(
            date!,
            BaseBL.STATE_DELETE,
            CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_WITHDRAW.getCode());
  }

  Future<CashdrawCashInOutHistory?> getCashDrawLogBySalesLink(
      String salesLink) async {
    return await cashdrawHistoryDao!.findOrderBySalesLink(salesLink);
  }

  ////////////////////////////////////////////////////
  // Util
  ////////////////////////////////////////////////////
  Future<void> cashierInProcess(
      final String? cashdrawSection,
      final List<String> unitList,
      final CashierBL_CASHDRAWLOG inputType,
      final double amt,
      final String rema,
      final String accountCode,
      final String? storeTerminalId) async {
    if ((cashdrawSection != null) &&
        (unitList != null) &&
        (unitList.length == 13) && // CASHITEMCOUNT + USERINPUT
        (inputType != null) &&
        (amt != null) &&
        (rema != null) &&
        (accountCode != null) &&
        (storeTerminalId != null)) {
      // insert CashierBankHistory
      CashierBankHistory bankEntity = await getNewCashierBank(cashdrawSection);
      bankEntity.setBusinessStartDatetime(
          CommonUtil.convertDateForm1(DateTime.now()));
      bankEntity.setCashierTypeCode(CASHIER_TYPE_CASHIER);
      bankEntity.setEmployeeId(BaseBL.employeeId);
      bankEntity.setOpenBusinessCashTotalAmount(amt);
      bankEntity.setBusinessChangeCashTotalAmount(amt);
      bankEntity.setCashdrawSectionCode(cashdrawSection);
      bankEntity.setStoreTerminalId(storeTerminalId);
      bankEntity
          .setBusinessOpenCloseSectionCode(CashierBL.CASHIER_CLOSE_TYPE_START);
      await insertCashierBank(bankEntity);

      // insert CashierBankHistoryBill
      CashierBankHistoryBill entity = await getNewCashierBankHistoryBill(
          bankEntity.getCommonDate(),
          bankEntity.getCommonSerialNumber(),
          cashdrawSection,
          CashierBL.CASHIER_CLOSE_TYPE_START);
      entity.setTotalAmount(amt);
      entity.setUserInputAmount(
          CultureManager().currencyFormatToDouble(unitList.elementAt(0)));
      entity.setBill0Number(int.parse(unitList.elementAt(1)));
      entity.setBill1Number(int.parse(unitList.elementAt(2)));
      entity.setBill2Number(int.parse(unitList.elementAt(3)));
      entity.setBill3Number(int.parse(unitList.elementAt(4)));
      entity.setBill4Number(int.parse(unitList.elementAt(5)));
      entity.setBill5Number(int.parse(unitList.elementAt(6)));
      entity.setBill6Number(int.parse(unitList.elementAt(7)));
      entity.setBill7Number(int.parse(unitList.elementAt(8)));
      entity.setBill8Number(int.parse(unitList.elementAt(9)));
      entity.setBill9Number(int.parse(unitList.elementAt(10)));
      entity.setBill10Number(int.parse(unitList.elementAt(11)));
      entity.setBill11Number(int.parse(unitList.elementAt(12)));

      await insertCashierBankHistoryBill(entity);

      // insert CashdrawCashInOutHistory
      String link = bankEntity.getCommonDate()! +
          bankEntity.getCommonSerialNumber().toString();
      await addCashdrawLog(inputType, amt, rema, accountCode, cashdrawSection,
          storeTerminalId, link);

      BaseBL.cashierInEmployeeId = BaseBL.employeeId;
      return null;
    }
  }

  Future<void> cashierInProcessCancelClose(
      final CashierBankHistory preCashierBankHistory,
      final double? totalUnitValue) async {
    // insert CashierBankHistory
    CashierBankHistory bankEntity =
        await getNewCashierBank(preCashierBankHistory.getCashdrawSectionCode());
    bankEntity.setBusinessStartDatetime(
        preCashierBankHistory.getBusinessStartDatetime());
    bankEntity.setBusinessChangeDatetime(
        preCashierBankHistory.getBusinessChangeDatetime());
    bankEntity.setCashierTypeCode(CASHIER_TYPE_CASHIER);
    bankEntity.setEmployeeId(BaseBL.employeeId);
    bankEntity.setOpenBusinessCashTotalAmount(
        preCashierBankHistory.getOpenBusinessCashTotalAmount());
    bankEntity.setBusinessChangeCashTotalAmount(
        preCashierBankHistory.getBusinessChangeCashTotalAmount());
    bankEntity
        .setCashdrawSectionCode(preCashierBankHistory.getCashdrawSectionCode());
    bankEntity.setStoreTerminalId(BaseBL.storeTerminalId);
    bankEntity
        .setBusinessOpenCloseSectionCode(CashierBL.CASHIER_CLOSE_TYPE_START);
    await insertCashierBank(bankEntity);

    // insert CashierBankHistoryBill
    CashierBankHistoryBill? preCashierBankHistoryBill =
        await getCashierBankHistoryBillClosed(
            preCashierBankHistory.getCommonDate(),
            preCashierBankHistory.getCommonSerialNumber());
    if (preCashierBankHistoryBill != null) {
      CashierBankHistoryBill entity = await getNewCashierBankHistoryBill(
          bankEntity.getCommonDate(),
          bankEntity.getCommonSerialNumber(),
          preCashierBankHistory.getCashdrawSectionCode(),
          CashierBL.CASHIER_CLOSE_TYPE_START);
      entity.setTotalAmount(totalUnitValue);
      entity.setUserInputAmount(preCashierBankHistoryBill.getUserInputAmount());
      entity.setBill0Number(preCashierBankHistoryBill.getBill0Number());
      entity.setBill1Number(preCashierBankHistoryBill.getBill1Number());
      entity.setBill2Number(preCashierBankHistoryBill.getBill2Number());
      entity.setBill3Number(preCashierBankHistoryBill.getBill3Number());
      entity.setBill4Number(preCashierBankHistoryBill.getBill4Number());
      entity.setBill5Number(preCashierBankHistoryBill.getBill5Number());
      entity.setBill6Number(preCashierBankHistoryBill.getBill6Number());
      entity.setBill7Number(preCashierBankHistoryBill.getBill7Number());
      entity.setBill8Number(preCashierBankHistoryBill.getBill8Number());
      entity.setBill9Number(preCashierBankHistoryBill.getBill9Number());
      entity.setBill10Number(preCashierBankHistoryBill.getBill10Number());
      entity.setBill11Number(preCashierBankHistoryBill.getBill11Number());

      await insertCashierBankHistoryBill(entity);

      //Cancel Link
      preCashierBankHistory
          .setCancelSerialNumber(bankEntity.getCommonSerialNumber());
      await updateCashierBank(preCashierBankHistory);
      preCashierBankHistoryBill
          .setCancelSerialNumber(entity.getCommonSerialNumber());
      await updateCashierBankHistoryBill(preCashierBankHistoryBill);
    }
    //Restore Sale Data
    DateTime openDate = preCashierBankHistory.getBusinessStartDate();
    DateTime closeDate = preCashierBankHistory.getBusinessEndDate();
    List<SalesHistory>? saleHList =
        await _saleBL.getSaleHListBetweenDate(openDate, closeDate);
    if ((saleHList != null) && (saleHList.length > 0)) {
      for (SalesHistory saleH in saleHList) {
        // Settlement 처리
        List<SalesAccountHistory> saleACList =
            await _saleBL.getSaleAccountHistoryList(
                saleH.getCommonDate(), saleH.getSaleSerialNumber());
        for (SalesAccountHistory saleAC in saleACList) {
          saleAC.setCompleteSettlementYn(false);
          saleAC.setSynchronizedYn(false);
          await saleAC.update();
        }

        // End of day 처리
        saleH.setCloseBusinessTypeCode(CASHIER_CLOSE_TYPE_START);
        saleH.setSynchronizedYn(false);
        await saleH.update();
      }
    }

    await addCashdrawLog(
        CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_CLOSE_CNCL,
        preCashierBankHistory.getCloseBusinessCashTotalAmount(),
        "",
        "",
        bankEntity.getCashdrawSectionCode(),
        bankEntity.getStoreTerminalId(),
        null);
    BaseBL.cashierInEmployeeId = BaseBL.employeeId;
    return null;
  }

  /// 다음 교대근무자 캐셔인 함수 (근무교대 버튼을 통해 앞 근무자 캐셔아웃 직후 호출)
  /// @param preCashierBankHistory : 앞 근무자 캐셔뱅크 정보
  Future<void> cashierInProcessShiftCashier(
      final CashierBankHistory preCashierBankHistory) async {
    // insert CashierBankHistory
    CashierBankHistory bankEntity =
        await getNewCashierBank(preCashierBankHistory.getCashdrawSectionCode());
    bankEntity.setBusinessStartDatetime(
        preCashierBankHistory.getBusinessStartDatetime());
    bankEntity.setBusinessChangeDatetime(
        preCashierBankHistory.getBusinessEndDatetime());
    bankEntity.setCashierTypeCode(CASHIER_TYPE_CASHIER);
    bankEntity.setEmployeeId(BaseBL.employeeId);
    bankEntity.setOpenBusinessCashTotalAmount(
        preCashierBankHistory.getOpenBusinessCashTotalAmount());
    bankEntity.setBusinessChangeCashTotalAmount(
        preCashierBankHistory.getCloseBusinessCashTotalAmount());
    bankEntity
        .setCashdrawSectionCode(preCashierBankHistory.getCashdrawSectionCode());
    bankEntity.setStoreTerminalId(BaseBL.storeTerminalId);
    bankEntity
        .setBusinessOpenCloseSectionCode(CashierBL.CASHIER_CLOSE_TYPE_START);
    await insertCashierBank(bankEntity);

    preCashierBankHistory.setShiftSerialNumber(bankEntity.getCommonDate()! +
        bankEntity.getCommonSerialNumber().toString());
    await updateCashierBank(preCashierBankHistory);

    // insert CashierBankHistoryBill
    CashierBankHistoryBill? preCashierBankHistoryBill =
        await getCashierBankHistoryBillClosed(
            preCashierBankHistory.getCommonDate(),
            preCashierBankHistory.getCommonSerialNumber());

    if (preCashierBankHistoryBill != null) {
      CashierBankHistoryBill entity = await getNewCashierBankHistoryBill(
          bankEntity.getCommonDate(),
          bankEntity.getCommonSerialNumber(),
          preCashierBankHistory.getCashdrawSectionCode(),
          CashierBL.CASHIER_CLOSE_TYPE_START);
      entity.setTotalAmount(preCashierBankHistoryBill.getTotalAmount());
      entity.setUserInputAmount(preCashierBankHistoryBill.getUserInputAmount());
      entity.setBill0Number(preCashierBankHistoryBill.getBill0Number());
      entity.setBill1Number(preCashierBankHistoryBill.getBill1Number());
      entity.setBill2Number(preCashierBankHistoryBill.getBill2Number());
      entity.setBill3Number(preCashierBankHistoryBill.getBill3Number());
      entity.setBill4Number(preCashierBankHistoryBill.getBill4Number());
      entity.setBill5Number(preCashierBankHistoryBill.getBill5Number());
      entity.setBill6Number(preCashierBankHistoryBill.getBill6Number());
      entity.setBill7Number(preCashierBankHistoryBill.getBill7Number());
      entity.setBill8Number(preCashierBankHistoryBill.getBill8Number());
      entity.setBill9Number(preCashierBankHistoryBill.getBill9Number());
      entity.setBill10Number(preCashierBankHistoryBill.getBill10Number());
      entity.setBill11Number(preCashierBankHistoryBill.getBill11Number());

      await insertCashierBankHistoryBill(entity);

      preCashierBankHistoryBill.setShiftSerialNumber(
          entity.getCommonDate()! + entity.getCommonSerialNumber().toString());
      await updateCashierBankHistoryBill(preCashierBankHistoryBill);
    }
    await addCashdrawLog(
        CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_CASHIER_CHANGE_IN,
        preCashierBankHistory.getCloseBusinessCashTotalAmount(),
        "",
        "",
        bankEntity.getCashdrawSectionCode(),
        bankEntity.getStoreTerminalId(),
        null);
    return null;
  }

  /// 수동 영업마감 / 수동 근무교대 프로세스
  /// isClose : true - 영업마감, false - 근무교대
  /// Cashier out 처리 (현재 캐셔인된 정보(CashierBankHistory, CashierBankHistoryBill 업데이트))
  Future<Map> cashierOutProcess(
      String? cashdrawSection,
      List<String> unitList,
      CashierBL_CASHDRAWLOG inputType,
      double totalUnitamt,
      String rema,
      String accountCode,
      String? storeTerminalId,
      bool isSettlement,
      bool isEndOfDay,
      bool isClose) async {
    if (cashdrawSection != null &&
        unitList != null &&
        unitList.length == 13 && // CASHITEMCOUNT + USERINPUT
        inputType != null &&
        totalUnitamt != null &&
        rema != null &&
        accountCode != null &&
        storeTerminalId != null) {
      await CashierOutProcess2(
          cashdrawSection,
          unitList,
          inputType,
          totalUnitamt,
          rema,
          accountCode,
          storeTerminalId,
          isSettlement,
          isEndOfDay,
          isClose);
      return {'result': true};
    }

    return {'result': false};
  }

  Future<void> CashierOutProcess2(
      final String cashdrawSection,
      final List<String> unitList,
      final CashierBL_CASHDRAWLOG inputType,
      final double totalUnitamt,
      final String rema,
      final String accountCode,
      final String storeTerminalId,
      final bool isSettlement,
      final bool isEndOfDay,
      final bool isClose) async {
    CashierBankHistory? cashierInBankEntity =
        await getCashierInStateCashierBank();
    if (cashierInBankEntity == null) {
      return null;
    }

    int saleCount = 0;
    double tableRate = 0;
    double posCash = 0;
    double cashInTamt = 0;
    double cashOutTamt = 0;
    double posSaleCashTamt = 0; //포스 판매내역중 현금만
    double saleTamt = 0;
    double saleDiscountTamt = 0;
    double saleTipTamt = 0;

    DateTime openDate;
    if (!isClose) {
      //근무교대
      if (!CommonUtil.isNullEmpty(
          cashierInBankEntity.getBusinessChangeDatetime()))
        openDate = cashierInBankEntity.getBusinessChangeDate();
      else
        openDate = cashierInBankEntity.getBusinessStartDate();
    } else {
      //영업마감
      openDate = cashierInBankEntity.getBusinessStartDate();
    }

    DateTime closeDate = DateTime.now();
    int salesHistoryBatchIdValue = 0;

    List<SalesHistory>? saleHList =
        await _saleBL.getSaleHListBetweenDate(openDate, closeDate);
    if ((saleHList != null) && (saleHList.length > 0)) {
      saleCount = saleHList.length;

      double tempTableCount = 0;
      for (SalesHistory saleH in saleHList) {
        saleTamt += saleH.getSupplyAmount();
        saleDiscountTamt += saleH.getDiscountTotalAmount();
        saleTipTamt +=
            saleH.getTipTotalAmount() != null ? saleH.getTipTotalAmount() : 0;

        if (saleH.getTableId() != null) {
          tempTableCount++;
        }

        // End of day 처리
        if (isEndOfDay && isClose) {
          saleH.setCloseBusinessTypeCode(CASHIER_CLOSE_TYPE_END);
          saleH.setSynchronizedYn(false);
          await saleH.update();
        }

        // Settlement 처리
        if (isSettlement && isClose) {
          List<SalesAccountHistory> saleACList =
              await _saleBL.getSaleAccountHistoryList(
                  saleH.getCommonDate(), saleH.getSaleSerialNumber());
          for (SalesAccountHistory saleAC in saleACList) {
            saleAC.setCompleteSettlementYn(true);
            saleAC.setSynchronizedYn(false);
            await saleAC.update();
          }
          saleH.setSynchronizedYn(false);
          await saleH.update();
        }

        List<SalesAccountHistory> salesAccountHistoryList =
            await _saleBL.getSaleAccountHistoryList(
                saleH.getCommonDate(), saleH.getSaleSerialNumber());

        for (SalesAccountHistory saleAC in salesAccountHistoryList) {
          // OpenWay
          SalesAccountHistoryDetails? detail = await saleAC.getSaleACDetail();
          if (detail != null) {
            String? vanResMsg = detail.getData1();
            if (vanResMsg != null) {
              String? batchIdString =
                  ResVan.parseVanResMsg(vanResMsg, "batchId");
              if (batchIdString != null) {
                int value = 0;
                try {
                  value = int.parse(batchIdString);
                } catch (e) {
                  print('Exception: $e');
                  value = 0;
                }

                if (salesHistoryBatchIdValue < value) {
                  salesHistoryBatchIdValue = value;
                }
              }
            }
          }
        }
      }

      // table 회전율
      List<Table> tableList = await _tableBL.getAllTabList();
      if ((tableList != null) && (tableList.length > 0)) {
        tableRate = tempTableCount / tableList.length;
        tableRate = (tableRate * 100).toInt() / 100;
      }
    }

    // posCash
    List<CashdrawCashInOutHistory> cashdrawCashInOutHistoryList =
        await getCashdrawPayInOutLogBetween(
            cashdrawSection, openDate, closeDate);
    if ((cashdrawCashInOutHistoryList != null) &&
        (cashdrawCashInOutHistoryList.length > 0)) {
      for (CashdrawCashInOutHistory log in cashdrawCashInOutHistoryList) {
        if (CashierBL_CASHDRAWLOG.getType(log.getInOutTypeCode())!.isIn())
          posCash += log.getAmount()!;
        else
          posCash -= log.getAmount()!;
      }
    }

    //cashInTamt
    List<CashdrawCashInOutHistory> payInLogList =
        await getPayInCashdrawLogBetween(cashdrawSection, openDate, closeDate);
    if ((payInLogList != null) && (payInLogList.length > 0)) {
      for (CashdrawCashInOutHistory log in payInLogList) {
        cashInTamt += log.getAmount()!;
      }
    }

    //cashOutTamt
    List<CashdrawCashInOutHistory> payOutLogList =
        await getPayOutCashdrawLogBetween(cashdrawSection, openDate, closeDate);
    if ((payOutLogList != null) && (payOutLogList.length > 0)) {
      for (CashdrawCashInOutHistory log in payOutLogList) {
        cashOutTamt += log.getAmount()!;
      }
    }

    //saleCashTamt
    List<SalesAccountHistory>? salesAccountHistoryList =
        (await _saleBL.getSaleACListBetweenDate(openDate, closeDate)) ?? [];
    for (SalesAccountHistory salesAccountHistory in salesAccountHistoryList) {
      String? paySecCode = salesAccountHistory.getPaymentSectionCode();
      if (TenderConstants_Section.getSection(paySecCode).isCash()) {
        posSaleCashTamt += salesAccountHistory.getTotalAmount();
      }
    }

    // update CashierBankHistory
    cashierInBankEntity
        .setBusinessOpenCloseSectionCode(CashierBL.CASHIER_CLOSE_TYPE_END);
    cashierInBankEntity
        .setBusinessEndDatetime(CommonUtil.convertDateForm1(DateTime.now()));
    cashierInBankEntity.setSalesCount(saleCount);
    cashierInBankEntity.setTableTurnoverRate(tableRate);
    cashierInBankEntity.setCloseBusinessCashTotalAmount(totalUnitamt);
    cashierInBankEntity.setPosCashTotalAmount(posCash);
    cashierInBankEntity.setCashDifferenceAmount(totalUnitamt - posCash);
    cashierInBankEntity.setCashDepositTotalAmount(cashInTamt);
    cashierInBankEntity.setCashWithdrawalAmount(cashOutTamt);
    cashierInBankEntity.setSalesTotalCashAmount(posSaleCashTamt);
    cashierInBankEntity.setSalesTotalAmount(saleTamt);
    cashierInBankEntity.setDiscountTotalAmount(saleDiscountTamt);
    cashierInBankEntity.setTipTotalAmount(saleTipTamt);
    cashierInBankEntity.setBatchId(salesHistoryBatchIdValue);

    await updateCashierBank(cashierInBankEntity);

    // insert CashierBankHistoryBill
    CashierBankHistoryBill entity = await getNewCashierBankHistoryBill(
        cashierInBankEntity.getCommonDate(),
        cashierInBankEntity.getCommonSerialNumber(),
        cashdrawSection,
        CashierBL.CASHIER_CLOSE_TYPE_END);
    entity.setTotalAmount(totalUnitamt);
    entity.setUserInputAmount(
        CultureManager().currencyFormatToDouble(unitList.elementAt(0)));
    entity.setBill0Number(int.parse(unitList.elementAt(1)));
    entity.setBill1Number(int.parse(unitList.elementAt(2)));
    entity.setBill2Number(int.parse(unitList.elementAt(3)));
    entity.setBill3Number(int.parse(unitList.elementAt(4)));
    entity.setBill4Number(int.parse(unitList.elementAt(5)));
    entity.setBill5Number(int.parse(unitList.elementAt(6)));
    entity.setBill6Number(int.parse(unitList.elementAt(7)));
    entity.setBill7Number(int.parse(unitList.elementAt(8)));
    entity.setBill8Number(int.parse(unitList.elementAt(9)));
    entity.setBill9Number(int.parse(unitList.elementAt(10)));
    entity.setBill10Number(int.parse(unitList.elementAt(11)));
    entity.setBill11Number(int.parse(unitList.elementAt(12)));

    await insertCashierBankHistoryBill(entity);

    // if(!Feature.CAT) {
    await addCashdrawLog(inputType, totalUnitamt, rema, accountCode,
        cashdrawSection, storeTerminalId, null);
    // }
    BaseBL.cashierInEmployeeId = null;
    return null;
  }

  //판매데이터에서 현금수입 + 시재입출금 금액 반환
  Future<double> _getRemainCashInCashDraw(
      DateTime openDate, DateTime closeDate) async {
    double remainCash = 0;
    double _B_cashInSum = 0;
    double cashSum = 0;
    double _B_cashOutSum = 0;

    MonetaryCalculator monetaryCalc = MonetaryCalculator();

    List<SalesHistory>? saleHList =
        (await _saleBL.getSaleHListBetweenDate(openDate, closeDate));
    for (SalesHistory saleH in saleHList) {
      // saleAC 집계
      List<SalesAccountHistory> saleACList =
          await _saleBL.getSaleAccountHistoryList(
              saleH.getCommonDate(), saleH.getSaleSerialNumber());
      for (SalesAccountHistory saleAC in saleACList) {
        // cash
        TenderConstants_Section section =
            TenderConstants_Section.getSection(saleAC.getPaymentSectionCode());

        if (section.isCash()) {
          //현금수입 집계
          if (await TenderConstants.includeSalesResult(saleAC))
            cashSum = monetaryCalc
                .setValue(cashSum)
                .add(saleAC.getTotalAmount())
                .getValue();
        }
      }
    }

    List<CashdrawCashInOutHistory> cashdrawCashInOutHistoryList =
        await getCashdrawPayInOutLogBetween(
            BaseBL.cashdrawSection, openDate, closeDate);
    for (CashdrawCashInOutHistory cashdrawCashInOutHistory
        in cashdrawCashInOutHistoryList) {
      if (CashierBL_CASHDRAWLOG.getType(
              cashdrawCashInOutHistory.getInOutTypeCode())!
          .isIn()) {
        _B_cashInSum = monetaryCalc
            .setValue(_B_cashInSum)
            .add(cashdrawCashInOutHistory.getAmount())
            .getValue();
      } else {
        _B_cashOutSum = monetaryCalc
            .setValue(_B_cashOutSum)
            .subtract(cashdrawCashInOutHistory.getAmount())
            .getValue();
      }
    }

    remainCash = monetaryCalc
        .setValue(cashSum)
        .add(_B_cashInSum)
        .add(_B_cashOutSum)
        .getValue();

    return remainCash;
  }

  Future<List<CashdrawCashInOutHistory>>
      getCashdrawCashInOutHistoriesToUpload() async {
    return await cashdrawHistoryDao!.findAllBySynchronizedYn(false);
  }

  Future<List<CashierBankHistory>> getCashierBankHistoriesToUpload() async {
    return await cashierBankHistoryDao!.findAllBySynchronizedYn(false);
  }

  Future<List<CashierBankHistoryBill>>
      getCashierBankHistoryBillsToUpload() async {
    return await cashierBankHistoryBillDao!.findAllBySynchronizedYn(false);
  }

  Future<void> syncCashdrawCashInOutHistory(
      String comDate, int sno, String time, String newTime) async {
    CashdrawCashInOutHistory? entity = await cashdrawHistoryDao!
        .findByCommonDateAndCommonSerialNumber(comDate, sno);

    if (entity != null && entity.getLastRevisionDatetime() == (time)) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await cashdrawHistoryDao!.updateOne(entity);
    }
  }

  Future<void> syncCashierBankHistory(String comDate, int sno, String secCode,
      String time, String newTime) async {
    CashierBankHistory? entity = await cashierBankHistoryDao!
        .findAllByCommonDateAndCommonSerialNumberAndCashdrawSectionCode(
            comDate, sno, secCode);

    if (entity != null && entity.getLastRevisionDatetime() == (time)) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await cashierBankHistoryDao!.updateOne(entity);
    }
  }

  Future<void> syncCashierBankHistoryBill(String comDate, int sno,
      String secCode, int billSno, String time, String newTime) async {
    CashierBankHistoryBill? entity = await cashierBankHistoryBillDao!
        .findByCommonDateAndCommonSerialNumberAndCashdrawSectionCodeAndBillSerialNumber(
            comDate, sno, secCode, billSno);

    if (entity != null && entity.getLastRevisionDatetime() == (time)) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await cashierBankHistoryBillDao!.updateOne(entity);
    }
  }

  Future<void> addAll(
      final List<CashdrawCashInOutHistory> cashdrawCashInOutHistories,
      final List<CashierBankHistory> cashierBankHistories,
      final List<CashierBankHistoryBill> cashierBankHistoryBills) async {
    List<CashdrawCashInOutHistory> cashdrawCashInOutHistoryList =
        await cashdrawHistoryDao!.findAllBySynchronizedYn(true);
    await cashdrawHistoryDao!.deleteAll(cashdrawCashInOutHistoryList);
    await cashdrawHistoryDao!.insertAll(cashdrawCashInOutHistories);

    List<CashierBankHistory> cashierBankHistoryList =
        await cashierBankHistoryDao!.findAllBySynchronizedYn(true);
    await cashierBankHistoryDao!.deleteAll(cashierBankHistoryList);
    await cashierBankHistoryDao!.insertAll(cashierBankHistories);

    List<CashierBankHistoryBill> cashierBankHistoryBillList =
        await cashierBankHistoryBillDao!.findAllBySynchronizedYn(true);
    await cashierBankHistoryBillDao!.deleteAll(cashierBankHistoryBillList);
    await cashierBankHistoryBillDao!.insertAll(cashierBankHistoryBills);
  }

  /// 마감취소를 위한 영업일 기준 마지막 캐셔아웃한 정보
  /// @return 동일 영업일 Cashier Out 된 CashierBankHistory list
  Future<CashierBankHistory?> getLastCashierOutListForCancelCloseWithoutEmpID(
      String startDate, String endDate, String? terminalId) async {
    List<CashierBankHistory> cashierOutList = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndBusinessStartDatetimeAndBusinessEndDatetimeAndCancelSerialNumberAndShiftSerialNumberAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_START,
            CASHIER_TYPE_CASHIER,
            startDate,
            endDate,
            0,
            "",
            terminalId!);

    return cashierOutList.length > 0 ? cashierOutList.first : null;
  }

  /// 마지막 캐셔아웃한 정보
  /// @return 동일 영업일 Cashier Out 된 CashierBankHistory list
  Future<CashierBankHistory?> getLastCashierOutListInBusinessDay(
      String businessDate, String terminalId) async {
    List<CashierBankHistory> cashierOutList = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeNotAndCommonDateAndCashierTypeCodeAndCancelSerialNumberAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_START,
            businessDate,
            CASHIER_TYPE_CASHIER,
            0,
            terminalId);
    return cashierOutList.length > 0 ? cashierOutList.first : null;
  }

  /// 마지막 캐셔아웃한 정보
  /// @return 동일 영업일 Cashier Out 된 CashierBankHistory list
  Future<CashierBankHistory?> getLastCashierOutList(
      String businessDate, String? terminalId) async {
    List<CashierBankHistory> cashierOutList = await cashierBankHistoryDao!
        .findAllByBusinessOpenCloseSectionCodeAndCommonDateAndCashierTypeCodeAndCancelSerialNumberAndStoreTerminalId(
            CASHIER_CLOSE_TYPE_END,
            businessDate,
            CASHIER_TYPE_CASHIER,
            0,
            terminalId!);

    return cashierOutList.length > 0 ? cashierOutList.first : null;
  }

  /// 자동영업마감 후 자동영업시작 프로세스
  /// @param preCashierBankHistory
  /// @param empId
  Future<void> CashierInProcessBySystem(
      final CashierBankHistory preCashierBankHistory,
      final String empId) async {
    // insert CashierBankHistory
    CashierBankHistory bankEntity =
        await getNewCashierBank(preCashierBankHistory.getCashdrawSectionCode());
    bankEntity
        .setBusinessStartDatetime(CommonUtil.convertDateForm1(DateTime.now()));
    //근무교대 상태에서 자동마감이 된 경우, 변경시간은 앞의 변경시간으로 설정
    //일반 캐셔인 상태인 경우에서 자동마감이 된 경우, 자동영업시작 후 근무교대시에 일반캐셔인 기준의 정보를 보여줘야 함
    if (!CommonUtil.isNullEmpty(
        preCashierBankHistory.getBusinessChangeDatetime())) {
      bankEntity.setBusinessChangeDatetime(
          preCashierBankHistory.getBusinessChangeDatetime());
      bankEntity.setBusinessChangeCashTotalAmount(
          preCashierBankHistory.getBusinessChangeCashTotalAmount());
    } else {
      bankEntity.setBusinessChangeDatetime(
          preCashierBankHistory.getBusinessStartDatetime());
      bankEntity.setBusinessChangeCashTotalAmount(
          preCashierBankHistory.getOpenBusinessCashTotalAmount());
    }
    bankEntity.setCashierTypeCode(CASHIER_TYPE_CASHIER);
    bankEntity.setEmployeeId(empId);
    bankEntity.setOpenBusinessCashTotalAmount(
        preCashierBankHistory.getCloseBusinessCashTotalAmount());

    bankEntity
        .setCashdrawSectionCode(preCashierBankHistory.getCashdrawSectionCode());
    bankEntity.setStoreTerminalId(BaseBL.storeTerminalId);
    bankEntity
        .setBusinessOpenCloseSectionCode(CashierBL.CASHIER_CLOSE_TYPE_START);
    await insertCashierBank(bankEntity);

    preCashierBankHistory.setShiftSerialNumber(bankEntity.getCommonDate()! +
        bankEntity.getCommonSerialNumber().toString());
    await updateCashierBank(preCashierBankHistory);

    // insert CashierBankHistoryBill
    CashierBankHistoryBill? preCashierBankHistoryBill =
        await getCashierBankHistoryBillSystemClosed(
            preCashierBankHistory.getCommonDate(),
            preCashierBankHistory.getCommonSerialNumber());
    CashierBankHistoryBill entity = await getNewCashierBankHistoryBill(
        bankEntity.getCommonDate(),
        bankEntity.getCommonSerialNumber(),
        preCashierBankHistory.getCashdrawSectionCode(),
        CashierBL.CASHIER_CLOSE_TYPE_START);
    if (preCashierBankHistoryBill != null) {
      entity.setTotalAmount(preCashierBankHistoryBill.getTotalAmount());
      entity.setUserInputAmount(preCashierBankHistoryBill.getUserInputAmount());
      entity.setBill0Number(preCashierBankHistoryBill.getBill0Number());
      entity.setBill1Number(preCashierBankHistoryBill.getBill1Number());
      entity.setBill2Number(preCashierBankHistoryBill.getBill2Number());
      entity.setBill3Number(preCashierBankHistoryBill.getBill3Number());
      entity.setBill4Number(preCashierBankHistoryBill.getBill4Number());
      entity.setBill5Number(preCashierBankHistoryBill.getBill5Number());
      entity.setBill6Number(preCashierBankHistoryBill.getBill6Number());
      entity.setBill7Number(preCashierBankHistoryBill.getBill7Number());
      entity.setBill8Number(preCashierBankHistoryBill.getBill8Number());
      entity.setBill9Number(preCashierBankHistoryBill.getBill9Number());
      entity.setBill10Number(preCashierBankHistoryBill.getBill10Number());
      entity.setBill11Number(preCashierBankHistoryBill.getBill11Number());

      await insertCashierBankHistoryBill(entity);

      preCashierBankHistoryBill.setShiftSerialNumber(
          entity.getCommonDate()! + entity.getCommonSerialNumber().toString());
      await updateCashierBankHistoryBill(preCashierBankHistoryBill);
    }
    // insert CashdrawCashInOutHistory
    String link = bankEntity.getCommonDate()! +
        bankEntity.getCommonSerialNumber().toString();
    await addCashdrawLog(
        CashierBL_CASHDRAWLOG.CASHDRAWLOG_INPUTTYPE_RESERVE,
        bankEntity.getOpenBusinessCashTotalAmount(),
        "",
        "",
        bankEntity.getCashdrawSectionCode(),
        bankEntity.getStoreTerminalId(),
        link);
    Log.d(TAG, "AutoCashierOutProcess End");
    return null;
  }

  Future<List<CashdrawCashInOutHistory>> getCashierInOutList(
      String commonDate) async {
    return await cashdrawHistoryDao!.findAllByCommonDate(commonDate);
  }

  Future<int?> getBatchId(CashierBankHistory _cashierBankHistory) async {
    int batchId = _cashierBankHistory.getBatchId() ?? 0;

    if (batchId != 0) {
      return batchId;
    }

    SaleBL saleBL = SaleBL();
    DateTime openDate = _cashierBankHistory.getBusinessStartDate();
    String businessEndDatetime =
        _cashierBankHistory.getBusinessEndDatetime() ?? '';
    DateTime closeDate;

    if (businessEndDatetime.isEmpty) {
      closeDate = DateTime.now();
    } else {
      closeDate = _cashierBankHistory.getBusinessEndDate();
    }

    List<SalesAccountHistory> saleACList =
        (await saleBL.getSaleACListBetweenDate2(openDate, closeDate)) ?? [];

    for (SalesAccountHistory saleAC in saleACList) {
      SalesAccountHistoryDetails? detail = await saleAC.getSaleACDetail();
      String? vanResMsg = detail?.getData1();
      String? batchIdString = ResVan.parseVanResMsg(vanResMsg, "batchId");

      if (batchIdString != null) {
        int value = int.tryParse(batchIdString) ?? 0;

        if (batchId < value) {
          batchId = value;
        }
      }
    }

    return batchId != 0 ? batchId : null;
  }

  Future<CashierBankHistory?> last() {
    return cashierBankHistoryDao!.findOrderByBusinessStartDatetime();
  }

  Future<List<CashierBankHistory>> findBetween(DateTime start, DateTime end) {
    return cashierBankHistoryDao!.findBetween(
        CommonUtil.convertDateForm1(start), CommonUtil.convertDateForm1(end));
  }
}

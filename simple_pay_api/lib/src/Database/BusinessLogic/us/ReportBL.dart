import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashUnitRow.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashierOutReport.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashierOutReportByActualBalance.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashierOutReportByBalanceDifference.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashierOutReportByBeginBalance.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashierOutReportByOtherActivity.dart';
import 'package:simple_pay_api/src/Database/Model/report/CashierOutReportByPaymentSection.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/CultureManager.dart';
import 'package:simple_pay_api/src/Database/Util/LangCode.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/Util/TenderConstants.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'CashierBL.dart';
import 'SaleBL.dart';

class ReportBL extends BaseBL {
  static const String TAG = "ReportBL";

  static final ReportBL _singleton = ReportBL._internal();

  factory ReportBL() => _singleton;

  ReportBL._internal() {
    _cashierBL = CashierBL();
    _saleBL = SaleBL();
    _basBL = BasBL();
    monetaryCalc = MonetaryCalculator();
  }

  late CashierBL _cashierBL;
  late SaleBL _saleBL;
  late BasBL _basBL;

  late MonetaryCalculator monetaryCalc;

  /// CashierOut report 데이터 생성
  /// @return CashierOut report
  // @SuppressWarnings("ConstantConditions")
  Future<CashierOutReport> createCashierOutReportData(
      List<String> unitList, bool CashierChangeReport) async {
    CashierOutReport cashieroutReport = CashierOutReport();
    CultureManager cultureMng = CultureManager();

    double _Asum;
    double _Aabcdef_total;
    int _Aabcdef_cnt;

    double _Aa_cash = 0;
    int _Aa_cash_cnt = 0;
    double _Ab_card = 0;
    int _Ab_card_cnt = 0;
    double _Ac_myd = 0;
    int _Ac_myd_cnt = 0;
    double _Ad_took = 0;
    int _Ad_took_cnt = 0;
    double _Ae_union_pay = 0;
    int _Ae_union_pay_cnt = 0;
    double _Af_smart_pay = 0;
    int _Af_smart_pay_cnt = 0;
    double _Ag_kiwi_pg = 0;
    int _Ag_kiwi_pg_cnt = 0;
    double _Ah_coupon = 0;
    int _Ah_coupon_cnt = 0;

    double _A_total;
    double _A_itemSalesAmount = 0;
    double _A_itemDiscount = 0;
    double _A_tax1 = 0;
    double _A_tax2 = 0;
    double _A_tax3 = 0;
    double _A_discount = 0;
    double _A_gratuity = 0;
    double _A_tiptax = 0;

    double _B_otherActivity;
    double _B_cashInSum = 0;
    double _B_cashOutSum = 0;
    double _B_cashSum;
    double _B_total;

    double? _C_beginningBalance;

    double _D_EstimatedAmountInRegister;

    double _Da_cash;
    double _Db_card;
    double _Dc_myd;
    double _Dd_took;
    double _De_union_pay;
    double _Df_smart_pay;
    double _Dg_kiwi_pg;
    double _Dh_coupon;
    double _D_total;

    double _E_actualAmountInRegister;
    double _Ea_totalCash = 0;
    double _Eb_totalCard;
    double _Ec_totalMyd;
    double _Ed_totalTook;
    double _Ee_totalUnionPay;
    double _Ef_totalSmartPay;
    double _Eg_totalKiwiPG;
    double _Eh_totalCoupon;
    double _E_total;

    double _F_balanceDifference;
    double _Fa_cashDifference;
    double _Fb_cardDifference;
    double _Fc_mydDifference;
    double _Fd_tookDifference;
    double _Fe_unionPayDifference;
    double _Ff_smartPayDifference;
    double _Fg_kiwiPgDifference;
    double _Fh_couponDifference;
    double _F_total;

    CashierOutReportByPaymentSection paymentSectionReportData =
        CashierOutReportByPaymentSection();
    CashierOutReportByOtherActivity otherActivityReportData =
        CashierOutReportByOtherActivity();
    CashierOutReportByBeginBalance beginBalanceReportData =
        CashierOutReportByBeginBalance();
    CashierOutReportByActualBalance actualBalanceReportData =
        CashierOutReportByActualBalance();
    CashierOutReportByBalanceDifference balanceDifference =
        CashierOutReportByBalanceDifference();

    // CashierIn 정보 조회
    CashierBankHistory _cashierBankHistory =
        (await _cashierBL.getCashierInList(BaseBL.storeTerminalId)).first;

    // sale 정보 집계
    DateTime? openDate = null;
    if (CashierChangeReport) {
      //근무교대 레포트
      if (CommonUtil.isNullEmpty(_cashierBankHistory
          .getBusinessChangeDatetime())) //근무교대한 경우 근무교대 시점의 판매데이터를 가져오도록 함
        openDate = _cashierBankHistory.getBusinessStartDate();
      else
        openDate = _cashierBankHistory.getBusinessChangeDate();
    } else {
      //영업마감 레포트
      openDate = _cashierBankHistory.getBusinessStartDate();
    }
    DateTime closeDate = DateTime.now();
    List<SalesHistory>? saleHList =
        (await _saleBL.getSaleHListBetweenDate(openDate, closeDate));

    // Cashier 정보 집계
    // SimpleDateFormat format = SimpleDateFormat("yyyy/MM/dd HH:mm", Locale.getDefault());
    Employee? employee = await _cashierBankHistory.getEmployee();
    String? cashierName = employee?.getEmployeeName();
    StoreTerminal? storeTerminal = await _cashierBankHistory.getStoreTerminal();
    String posName =
        storeTerminal == null ? "" : storeTerminal.getStoreTerminalName()!;
    BasicDataItem? itemCode =
        await _cashierBankHistory.getCashdrawSectionInfo();

    String? str = await _basBL.getString(
        itemCode?.getI18nTermId(), itemCode?.getBasicDataItemName());
    String storeTerminalIdNTray = posName + " / " + (str ?? "");
    String signInTime = DateFormat("yyyy/MM/dd HH:mm").format(openDate);
    String signOutTime = DateFormat("yyyy/MM/dd HH:mm").format(closeDate);
    cashieroutReport.setCashierName(cashierName);
    cashieroutReport.setStoreTerminalIdNTray(storeTerminalIdNTray);
    cashieroutReport.setSignInTime(signInTime);
    cashieroutReport.setSignOutTime(signOutTime);

    //////////////////////////////////////
    // A.결제 수단별 집계
    //////////////////////////////////////
    for (SalesHistory saleH in saleHList) {
      // saleItem 집계
      List<SalesHistoryItem> saleItemList = await saleH.getSaleItems();
      for (SalesHistoryItem saleItem in saleItemList) {
        // Gift Card 판매, 충전 전표는 집계에서 제외
        if (saleItem.getItemId() != ("100000")) {
          _A_itemSalesAmount = monetaryCalc
              .setValue(_A_itemSalesAmount)
              .add(saleItem.getSupplyValue())
              .getValue();

          _A_itemDiscount = monetaryCalc
              .setValue(_A_itemDiscount)
              .add(saleItem.getDiscountAmount())
              .getValue();
        }
      }

      // saleAC 집계
      List<SalesAccountHistory> saleACList =
          await _saleBL.getSaleAccountHistoryList(
              saleH.getCommonDate(), saleH.getSaleSerialNumber());
      for (SalesAccountHistory saleAC in saleACList) {
        double sign =
            TenderConstants_APRVL_TP_CD.getType(saleAC.getApprovalTypeCode())!
                .getMSign()!
                .toDouble();
        _A_tax1 = monetaryCalc
            .setValue(_A_tax1)
            .add(saleAC.getTaxAmount() * sign)
            .getValue();
        _A_tax2 = monetaryCalc
            .setValue(_A_tax2)
            .add(saleAC.getTaxAmount1() * sign)
            .getValue();
        _A_discount = monetaryCalc
            .setValue(_A_discount)
            .add(saleAC.getTotalDiscountAmount() * sign)
            .getValue();
        _A_gratuity = monetaryCalc
            .setValue(_A_gratuity)
            .add(saleAC.getPaymentTipAmount() * sign)
            .add(saleAC.getPreTipAmount() * sign)
            .getValue();
        _A_tiptax = monetaryCalc
            .setValue(_A_tiptax)
            .add(saleAC.getPaymentTipTaxAmount() * sign)
            .add(saleAC.getPreTipTaxAmount() * sign)
            .getValue();
        TenderConstants_Section section =
            TenderConstants_Section.getSection(saleAC.getPaymentSectionCode());

        // cash
        if (section.isCash()) {
          bool value = await TenderConstants.includeSalesResult(saleAC);
          if (value) {
            _Aa_cash = monetaryCalc
                .setValue(_Aa_cash)
                .add(saleAC.getTotalAmount() * sign)
                .getValue();
            _Aa_cash_cnt++;
          }
        } else if (section.isCard()) {
          _Ab_card = monetaryCalc
              .setValue(_Ab_card)
              .add(saleAC.getTotalAmount() * sign)
              .getValue();
          _Ab_card_cnt++;
        } else if (TenderConstants_Section.UNION_PAY == (section)) {
          _Ae_union_pay = monetaryCalc
              .setValue(_Ae_union_pay)
              .add(saleAC.getTotalAmount() * sign)
              .getValue();
          _Ae_union_pay_cnt++;
        } else if (TenderConstants_Section.SMART_PAY == (section)) {
          _Af_smart_pay = monetaryCalc
              .setValue(_Af_smart_pay)
              .add(saleAC.getTotalAmount() * sign)
              .getValue();
          _Af_smart_pay_cnt++;
        } else if (TenderConstants_Section.KIWI_PG == (section)) {
          _Ag_kiwi_pg = monetaryCalc
              .setValue(_Ag_kiwi_pg)
              .add(saleAC.getTotalAmount() * sign)
              .getValue();
          _Ag_kiwi_pg_cnt++;
        } else if (TenderConstants_Section.COUPON == (section)) {
          _Ah_coupon = monetaryCalc
              .setValue(_Ah_coupon)
              .add(saleAC.getTotalAmount() * sign)
              .getValue();
          _Ah_coupon_cnt++;
        }
      }
    }

    _Aabcdef_total = monetaryCalc
        .setValue(_Aa_cash)
        .add(_Ab_card)
        .add(_Ac_myd)
        .add(_Ad_took)
        .add(_Ae_union_pay)
        .add(_Af_smart_pay)
        .add(_Ag_kiwi_pg)
        .add(_Ah_coupon)
        .getValue();
    _Asum = monetaryCalc.setValue(_Aabcdef_total).getValue();
    _Aabcdef_cnt = _Aa_cash_cnt +
        _Ab_card_cnt +
        _Ac_myd_cnt +
        _Ad_took_cnt +
        _Ae_union_pay_cnt +
        _Af_smart_pay_cnt +
        _Ag_kiwi_pg_cnt +
        _Ah_coupon_cnt;
    _A_total = _Asum;

    // 집계결과 container에 담기
    paymentSectionReportData.set_Asum(_Asum);
    paymentSectionReportData.set_Aabcdef_total(_Aabcdef_total);
    paymentSectionReportData.set_Aabcdef_cnt(_Aabcdef_cnt);
    paymentSectionReportData.set_Aa_cash(_Aa_cash);
    paymentSectionReportData.set_Aa_cash_cnt(_Aa_cash_cnt);
    paymentSectionReportData.set_Ab_card(_Ab_card);
    paymentSectionReportData.set_Ab_card_cnt(_Ab_card_cnt);
    paymentSectionReportData.set_Ac_myd_pay(_Ac_myd);
    paymentSectionReportData.set_Ac_myd_pay_cnt(_Ac_myd_cnt);
    paymentSectionReportData.set_Ad_took_pay(_Ad_took);
    paymentSectionReportData.set_Ad_took_pay_cnt(_Ad_took_cnt);
    paymentSectionReportData.set_Ae_union_pay(_Ae_union_pay);
    paymentSectionReportData.set_Ae_union_pay_cnt(_Ae_union_pay_cnt);
    paymentSectionReportData.set_Af_smart_pay(_Af_smart_pay);
    paymentSectionReportData.set_Af_smart_pay_cnt(_Af_smart_pay_cnt);
    paymentSectionReportData.set_Ag_kiwi_pg(_Ag_kiwi_pg);
    paymentSectionReportData.set_Ag_kiwi_pg_cnt(_Ag_kiwi_pg_cnt);
    paymentSectionReportData.set_Ah_coupon(_Ah_coupon);
    paymentSectionReportData.set_Ah_coupon_cnt(_Ah_coupon_cnt);
    paymentSectionReportData.set_A_total(_A_total);
    paymentSectionReportData.set_A_itemSalesAmount(_A_itemSalesAmount);
    paymentSectionReportData.set_A_itemDiscount(_A_itemDiscount);
    paymentSectionReportData.set_A_tax1(_A_tax1);
    paymentSectionReportData.set_A_tax2(_A_tax2);
    paymentSectionReportData.set_A_tax3(_A_tax3);
    paymentSectionReportData.set_A_discount(_A_discount);
    paymentSectionReportData.set_A_gratuity(_A_gratuity);
    paymentSectionReportData.set_A_tiptax(_A_tiptax);

    //////////////////////////////////////
    // B.영업 외 금액 집계
    //////////////////////////////////////
    List<CashdrawCashInOutHistory> cashdrawCashInOutHistoryList =
        await _cashierBL.getCashdrawPayInOutLogBetween(
            BaseBL.cashdrawSection, openDate, closeDate);
    int _B_cashInCountSum = 0, _B_cashOutCountSum = 0;
    for (CashdrawCashInOutHistory cashdrawCashInOutHistory
        in cashdrawCashInOutHistoryList) {
      if (CashierBL_CASHDRAWLOG.getType(
              cashdrawCashInOutHistory.getInOutTypeCode())!
          .isIn()) {
        _B_cashInSum = monetaryCalc
            .setValue(_B_cashInSum)
            .add(cashdrawCashInOutHistory.getAmount())
            .getValue();
        _B_cashInCountSum++;
      } else {
        _B_cashOutSum = monetaryCalc
            .setValue(_B_cashOutSum)
            .subtract(cashdrawCashInOutHistory.getAmount())
            .getValue();
        _B_cashOutCountSum++;
      }
    }

    _B_otherActivity =
        monetaryCalc.setValue(_B_cashInSum).add(_B_cashOutSum).getValue();
    _B_cashSum =
        monetaryCalc.setValue(_B_cashInSum).add(_B_cashOutSum).getValue();

    _B_total = monetaryCalc.setValue(_B_cashSum).getValue();

    // 집계결과 container에 담기
    otherActivityReportData.set_B_otherActivity(_B_otherActivity);
    otherActivityReportData.set_B_cashInSum(_B_cashInSum);
    otherActivityReportData.set_B_cashOutSum(_B_cashOutSum);
    otherActivityReportData.set_B_cashInCountSum(_B_cashInCountSum);
    otherActivityReportData.set_B_cashOutCountSum(_B_cashOutCountSum);
    otherActivityReportData.set_B_total(_B_total);

    //////////////////////////////////////
    // C.D.전산시재
    //////////////////////////////////////

    if (CashierChangeReport) {
      //근무교대 레포트
      _C_beginningBalance =
          _cashierBankHistory.getBusinessChangeCashTotalAmount();
    } else {
      //영업마감 레포트
      _C_beginningBalance =
          _cashierBankHistory.getOpenBusinessCashTotalAmount();
    }

    _Da_cash = monetaryCalc
        .setValue(_Aa_cash)
        .add(_B_cashSum)
        .add(_C_beginningBalance)
        .getValue();
    _Db_card = monetaryCalc.setValue(_Ab_card).getValue();
    _Dc_myd = monetaryCalc.setValue(_Ac_myd).getValue();
    _Dd_took = monetaryCalc.setValue(_Ad_took).getValue();
    _De_union_pay = monetaryCalc.setValue(_Ae_union_pay).getValue();
    _Df_smart_pay = monetaryCalc.setValue(_Af_smart_pay).getValue();
    _Dg_kiwi_pg = monetaryCalc.setValue(_Ag_kiwi_pg).getValue();
    _Dh_coupon = monetaryCalc.setValue(_Ah_coupon).getValue();

    // TODO Dd-1, Dd-2, Dd-3 집계 구현
    _D_EstimatedAmountInRegister = monetaryCalc
        .setValue(_Aa_cash)
        .add(_Ab_card)
        .add(_Ac_myd)
        .add(_Ad_took)
        .add(_Ae_union_pay)
        .add(_Af_smart_pay)
        .add(_Ag_kiwi_pg)
        .add(_Ah_coupon)
        .add(_B_otherActivity)
        .add(_C_beginningBalance)
        .getValue();
    _D_total = monetaryCalc
        .setValue(_Da_cash)
        .add(_Db_card)
        .add(_Dc_myd)
        .add(_Dd_took)
        .add(_De_union_pay)
        .add(_Df_smart_pay)
        .add(_Dg_kiwi_pg)
        .add(_Dh_coupon)
        .getValue();

    // 집계결과 container에 담기
    beginBalanceReportData.set_C_beginningBalance(_C_beginningBalance);
    beginBalanceReportData
        .set_D_EstimatedAmountInRegister(_D_EstimatedAmountInRegister);
    beginBalanceReportData.set_Da_cash(_Da_cash);
    beginBalanceReportData.set_Db_card(_Db_card);
    beginBalanceReportData.set_Dc_myd_pay(_Dc_myd);
    beginBalanceReportData.set_Dd_took(_Dd_took);
    beginBalanceReportData.set_De_union_pay(_De_union_pay);
    beginBalanceReportData.set_Df_smart_pay(_Df_smart_pay);
    beginBalanceReportData.set_Dg_kiwi_pg(_Dg_kiwi_pg);
    beginBalanceReportData.set_Dh_coupon(_Dh_coupon);
    beginBalanceReportData.set_D_total(_D_total);

    //////////////////////////////////////
    // E.영업마감 Summary
    //////////////////////////////////////
    List<BasicDataItem> cashUnitList = await _basBL.getCashUnitList();
    int cashUnitListCnt = cashUnitList.length;
    List<CashUnitRow> cashUnitRowList = [];
    double userInputAmount = 0;
    for (int i = 0; i < cashUnitListCnt + 1; i++) {
      CashUnitRow cashUnitRow = CashUnitRow();
      double amount = 0;
      // User Input 처리
      if (i == 0) {
        // Cash
        String? unitName = BaseBL.lang[LangCode.cash];
        cashUnitRow.setUnitName(unitName);
        cashUnitRow.setCount("");
        cashUnitRow.setAmount(cultureMng.currencyFormat(
            cultureMng.currencyFormatToDouble(unitList.elementAt(i))));
        userInputAmount =
            cultureMng.currencyFormatToDouble(unitList.elementAt(i));
        _Ea_totalCash = monetaryCalc
            .setValue(_Ea_totalCash)
            .add(userInputAmount)
            .getValue();
      }
      // cash unit
      else {
        double unitPrice = cultureMng.currencyFormatToDouble(
            cashUnitList.elementAt(cashUnitListCnt - i).getData1()!);
        double count = CommonUtil.stringToDouble(unitList.elementAt(i));
        amount = monetaryCalc.setValue(count).multiply(unitPrice).getValue();

        itemCode = cashUnitList.elementAt(cashUnitListCnt - i);
        String? str = await _basBL.getString(
            itemCode.getI18nTermId(), itemCode.getBasicDataItemName());
        cashUnitRow.setUnitName(str);
        cashUnitRow.setCount(count.toInt().toString());
        cashUnitRow.setAmount(cultureMng.currencyFormat(amount));
      }

      // User Input 이 있을 경우 집계하지 않음
      if (userInputAmount == (0)) {
        _Ea_totalCash =
            monetaryCalc.setValue(_Ea_totalCash).add(amount).getValue();
      }

      cashUnitRowList.add(cashUnitRow);
    }

    _Eb_totalCard = _Ab_card;
    _Ec_totalMyd = _Ac_myd;
    _Ed_totalTook = _Ad_took;
    _Ee_totalUnionPay = _Ae_union_pay;
    _Ef_totalSmartPay = _Af_smart_pay;
    _Eg_totalKiwiPG = _Ag_kiwi_pg;
    _Eh_totalCoupon = _Ah_coupon;

    _E_actualAmountInRegister = monetaryCalc
        .setValue(_Ea_totalCash)
        .add(_Eb_totalCard)
        .add(_Ec_totalMyd)
        .add(_Ed_totalTook)
        .add(_Ee_totalUnionPay)
        .add(_Ef_totalSmartPay)
        .add(_Eg_totalKiwiPG)
        .add(_Eh_totalCoupon)
        .getValue();
    _E_total = monetaryCalc
        .setValue(_Ea_totalCash)
        .add(_Eb_totalCard)
        .add(_Ec_totalMyd)
        .add(_Ed_totalTook)
        .add(_Ee_totalUnionPay)
        .add(_Ef_totalSmartPay)
        .add(_Eg_totalKiwiPG)
        .add(_Eh_totalCoupon)
        .getValue();

    // 집계결과 container에 담기
    actualBalanceReportData
        .set_E_actualAmountInRegister(_E_actualAmountInRegister);
    actualBalanceReportData.setCashierOutUnitRowList(cashUnitRowList);
    actualBalanceReportData.set_Ea_totalCash(_Ea_totalCash);
    actualBalanceReportData.set_Eb_totalCard(_Eb_totalCard);
    actualBalanceReportData.set_Ec_totalMyd(_Ec_totalMyd);
    actualBalanceReportData.set_Ed_totalTook(_Ed_totalTook);
    actualBalanceReportData.set_Ee_totalUnionPay(_Ee_totalUnionPay);
    actualBalanceReportData.set_Ef_totalSmartPay(_Ef_totalSmartPay);
    actualBalanceReportData.set_Eg_totalKiwiPG(_Eg_totalKiwiPG);
    actualBalanceReportData.set_Eh_totalCoupon(_Eh_totalCoupon);
    actualBalanceReportData.set_E_total(_E_total);

    //////////////////////////////////////
    // F.전산시재 & 마감시재 Summary
    //////////////////////////////////////
    _F_balanceDifference = monetaryCalc
        .setValue(_E_actualAmountInRegister)
        .subtract(_D_EstimatedAmountInRegister)
        .getValue();
    _Fa_cashDifference =
        monetaryCalc.setValue(_Ea_totalCash).subtract(_Da_cash).getValue();
    _Fb_cardDifference =
        monetaryCalc.setValue(_Eb_totalCard).subtract(_Db_card).getValue();
    _Fc_mydDifference =
        monetaryCalc.setValue(_Ec_totalMyd).subtract(_Dc_myd).getValue();
    _Fd_tookDifference =
        monetaryCalc.setValue(_Ed_totalTook).subtract(_Dd_took).getValue();
    _Fe_unionPayDifference = monetaryCalc
        .setValue(_Ee_totalUnionPay)
        .subtract(_De_union_pay)
        .getValue();
    _Ff_smartPayDifference = monetaryCalc
        .setValue(_Ef_totalSmartPay)
        .subtract(_Df_smart_pay)
        .getValue();
    _Fg_kiwiPgDifference =
        monetaryCalc.setValue(_Eg_totalKiwiPG).subtract(_Dg_kiwi_pg).getValue();
    _Fh_couponDifference =
        monetaryCalc.setValue(_Eh_totalCoupon).subtract(_Dh_coupon).getValue();
    _F_total = _F_balanceDifference;

    // 집계결과 container에 담기
    balanceDifference.set_F_balanceDifference(_F_balanceDifference);
    balanceDifference.set_Fa_cashDifference(_Fa_cashDifference);
    balanceDifference.set_Fb_cardDifference(_Fb_cardDifference);
    balanceDifference.set_Fc_mydDifference(_Fc_mydDifference);
    balanceDifference.set_Fd_tookDifference(_Fd_tookDifference);
    balanceDifference.set_Fe_unionPayDifference(_Fe_unionPayDifference);
    balanceDifference.set_Ff_smartPayDifference(_Ff_smartPayDifference);
    balanceDifference.set_Fg_kiwiPgDifference(_Fg_kiwiPgDifference);
    balanceDifference.set_Fh_couponDifference(_Fh_couponDifference);
    balanceDifference.set_F_total(_F_total);

    // 각 데이터 취합
    cashieroutReport
        .setCashierOutReportByPaymentSection(paymentSectionReportData);
    cashieroutReport
        .setCashierOutReportByOtherActivity(otherActivityReportData);
    cashieroutReport.setCashierOutReportByBeginBalance(beginBalanceReportData);
    cashieroutReport
        .setCashierOutReportByActualBalance(actualBalanceReportData);
    cashieroutReport.setCashierOutReportByBalanceDifference(balanceDifference);

    return cashieroutReport;
  }

  static const int START_SNO = 1001;

  Future<DailyReportHistory> getNewDailyReportHistory(
      String? businessDate) async {
    int serialNumber;
    List<DailyReportHistory> entityList = await dailyReportHistoryDao!
        .findAllByCommonDateAndStateCode(businessDate!, BaseBL.STATE_DELETE);

    if (entityList != null) {
      serialNumber = entityList.length + START_SNO;
    } else {
      serialNumber = START_SNO;
    }

    DailyReportHistory entity = DailyReportHistory();
    entity.setCommonDate(businessDate);
    entity.setCommonSerialNumber(serialNumber);
    entity.createId();
    return entity;
  }

  Future<DailyReportHistoryPayments> getNewDailyReportHistoryPayments(
      String? businessDate, String paySectionCode) async {
    int serialNumber;
    List<DailyReportHistoryPayments> entityList =
        await dailyReportHistoryPaymentsDao!
            .findAllByCommonDateAndStateCode(businessDate!, BaseBL.STATE_DELETE);

    if (entityList != null) {
      serialNumber = entityList.length + START_SNO;
    } else {
      serialNumber = START_SNO;
    }

    DailyReportHistoryPayments entity = DailyReportHistoryPayments();
    entity.setCommonDate(businessDate);
    entity.setCommonSerialNumber(serialNumber);
    entity.setPaymentSectionCode(paySectionCode);
    entity.updateTime();
    entity.createId();
    return entity;
  }

  Future<DailyReportHistory?> getDailyReportHistory(String? date) async {
    List<DailyReportHistory> entityList = await dailyReportHistoryDao!
        .findAllByCommonDateAndStateCode(date!, BaseBL.STATE_DELETE);
    if (entityList.length > 0) {
      return entityList.elementAt(0);
    } else {
      return null;
    }
  }

  Future<List<DailyReportHistoryPayments>> getDailyReportHistoryPayments(
      String? businessDate) async {
    return await dailyReportHistoryPaymentsDao!
        .findAllByCommonDateAndStateCode(businessDate!, BaseBL.STATE_DELETE);
  }

  Future<DailyReportHistoryPayments?> getDailyReportHistoryPayment(
      String? businessDate, String? paySectionCode) async {
    List<DailyReportHistoryPayments> entityList =
        await dailyReportHistoryPaymentsDao!
            .findAllByCommonDateAndPaymentSectionCodeAndStateCode(
                businessDate!, paySectionCode!, BaseBL.STATE_DELETE);

    if (entityList.length > 0) {
      return entityList.elementAt(0);
    } else {
      return null;
    }
  }

  Future<void> updateDailyReportHistoryPayments(String? businessDate) async {
    try {
      MonetaryCalculator totalSalesAmount = MonetaryCalculator();
      MonetaryCalculator totalSupplyValue = MonetaryCalculator();
      MonetaryCalculator totalTaxAmount = MonetaryCalculator();
      MonetaryCalculator totalTipAmount = MonetaryCalculator();
      MonetaryCalculator totalTipTaxAmount = MonetaryCalculator();
      MonetaryCalculator discountTotalAmount = MonetaryCalculator(0);
      MonetaryCalculator totalCancelAmount = MonetaryCalculator();
      MonetaryCalculator totalRefundAmount = MonetaryCalculator();
      var inserts = <DailyReportHistoryPayments>[];
      var updates = <DailyReportHistoryPayments>[];

      for (TenderConstants_Section n in TenderConstants_Section.values) {
        //결제타입별
        totalSalesAmount.setValue(0);
        totalSupplyValue.setValue(0);
        totalTaxAmount.setValue(0);
        totalTipAmount.setValue(0);
        totalTipTaxAmount.setValue(0);
        totalCancelAmount.setValue(0);
        totalRefundAmount.setValue(0);
        discountTotalAmount.setValue(0);

        List<SalesAccountHistory> salesAccountHistoryList = await _saleBL
            .getSaleACSellListByPaymentSection(businessDate, n.getCode());
        DailyReportHistoryPayments? entity =
            await getDailyReportHistoryPayment(businessDate, n.getCode());

        if (entity == null) {
          //Report가 없는 경우
          entity =
              await getNewDailyReportHistoryPayments(businessDate, n.getCode());
          entity.setStoreTerminalId(BaseBL.storeTerminalId);
          inserts.add(entity);
        }

        //Report 업데이트
        entity.setTotalSalesCount(salesAccountHistoryList.length);
        for (SalesAccountHistory salesAccountHistory
            in salesAccountHistoryList) {
          bool value =
              await TenderConstants.includeSalesResult(salesAccountHistory);
          if (!value) {
            //판매데이터에 미포함 내역은 제외
            entity.setTotalSalesCount(entity.getTotalSalesCount()! - 1);
            continue;
          }

          double sign = TenderConstants_APRVL_TP_CD.getType(
                  salesAccountHistory.getApprovalTypeCode())!
              .getMSign()!
              .toDouble();
          totalSalesAmount.add(salesAccountHistory.getTotalAmount() * sign);
          totalSupplyValue.add(salesAccountHistory.getSupplyValue() * sign);
          totalTaxAmount.add(salesAccountHistory.getTaxAmount() * sign);
          totalTipAmount
              .add(salesAccountHistory.getPaymentTipAmount() * sign)
              .add(salesAccountHistory.getPreTipAmount() * sign);
          totalTipTaxAmount
              .add(salesAccountHistory.getPaymentTipTaxAmount() * sign)
              .add(salesAccountHistory.getPreTipTaxAmount() * sign);
          discountTotalAmount
              .add(salesAccountHistory.getMenuDiscountAmount() * sign)
              .add(salesAccountHistory.getOrderDiscountAmount() * sign);
          bool isCanceledForReport =
              await TenderConstants.isCanceledForReport(salesAccountHistory);
          if (isCanceledForReport) {
            totalCancelAmount.add(salesAccountHistory.getTotalAmount() * sign);
          }

          if (TenderConstants.isRefund(salesAccountHistory)) {
            totalRefundAmount.add(salesAccountHistory.getTotalAmount() * sign);
          }
        }

        entity.setTotalSalesAmount(totalSalesAmount.getValue());
        entity.setTotalSupplyValue(totalSupplyValue.getValue());
        entity.setTotalTaxAmount(totalTaxAmount.getValue());
        entity.setTotalTipAmount(totalTipAmount.getValue());
        entity.setTotalTipTaxAmount(totalTipTaxAmount.getValue());
        entity.setTotalCancelAmount(totalCancelAmount.getValue());
        entity.setTotalRefundAmount(totalRefundAmount.getValue());
        entity.setDiscountTotalAmount(discountTotalAmount.getValue());
        entity.setBusinessDatetime(businessDate);
        entity.updateTime();
        entity.setSynchronizedYn(false);
        updates.add(entity);
      }

      await dailyReportHistoryPaymentsDao!.insertAll(inserts);
      await dailyReportHistoryPaymentsDao!.updateAll(updates);
    } catch (e) {
      print('Exception: $e');
    }
  }

  Future<void> updateDailyReportHistory(String businessDate) async {
    if (businessDate == null) businessDate = await _basBL.getCommonDate();
    Log.d(TAG, "updateDailyReportHistory, businessDate = " + businessDate);

    final String finalBusinessDate = businessDate;
    await updateDailyReportHistoryPayments(finalBusinessDate);
    await _updateHistory(finalBusinessDate);
  }

  Future<void> _updateHistory(String? businessDate) async {
    DailyReportHistory? entity = await getDailyReportHistory(businessDate);

    MonetaryCalculator totalSalesAmount = MonetaryCalculator(0);
    MonetaryCalculator totalSupplyValue = MonetaryCalculator(0);
    MonetaryCalculator totalTaxAmount = MonetaryCalculator(0);
    MonetaryCalculator totalTipAmount = MonetaryCalculator(0);
    MonetaryCalculator totalTipTaxAmount = MonetaryCalculator(0);
    MonetaryCalculator discountTotalAmount = MonetaryCalculator(0);
    MonetaryCalculator totalCancelAmount = MonetaryCalculator(0);
    MonetaryCalculator totalRefundAmount = MonetaryCalculator(0);
    int totalSalesCount = 0;

    List<DailyReportHistoryPayments> dailyReportHistoryPaymentsList =
        await getDailyReportHistoryPayments(businessDate);
    for (DailyReportHistoryPayments dailyReportHistoryPayments
        in dailyReportHistoryPaymentsList) {
      totalSalesAmount.add(dailyReportHistoryPayments.getTotalSalesAmount());
      totalSalesCount += dailyReportHistoryPayments.getTotalSalesCount()!;
      totalSupplyValue.add(dailyReportHistoryPayments.getTotalSupplyValue());
      totalTaxAmount.add(dailyReportHistoryPayments.getTotalTaxAmount());
      totalTipAmount.add(dailyReportHistoryPayments.getTotalTipAmount());
      totalTipTaxAmount.add(dailyReportHistoryPayments.getTotalTipTaxAmount());
      discountTotalAmount
          .add(dailyReportHistoryPayments.getDiscountTotalAmount());
      totalCancelAmount.add(dailyReportHistoryPayments.getTotalCancelAmount());
      totalRefundAmount.add(dailyReportHistoryPayments.getTotalRefundAmount());
    }

    MonetaryCalculator cashDepositTotalAmount = MonetaryCalculator(0);
    MonetaryCalculator cashWithdrawalAmount = MonetaryCalculator(0);

    //입금
    List<CashdrawCashInOutHistory> payInLogList =
        await _cashierBL.getPayInCashdrawLog(businessDate);
    if ((payInLogList != null) && (payInLogList.length > 0)) {
      for (CashdrawCashInOutHistory log in payInLogList) {
        cashDepositTotalAmount.add(log.getAmount());
      }
    }

    //출금
    List<CashdrawCashInOutHistory> payOutLogList =
        await _cashierBL.getPayOutCashdrawLog(businessDate);
    if ((payOutLogList != null) && (payOutLogList.length > 0)) {
      for (CashdrawCashInOutHistory log in payOutLogList) {
        cashWithdrawalAmount.add(log.getAmount());
      }
    }

    if (entity == null) {
      DailyReportHistory dailyReportHistory =
          await getNewDailyReportHistory(businessDate);
      dailyReportHistory.setStoreTerminalId(BaseBL.storeTerminalId);
      dailyReportHistory.setTotalSalesCount(totalSalesCount);
      dailyReportHistory.setTotalSalesAmount(totalSalesAmount.getValue());
      dailyReportHistory.setTotalSupplyValue(totalSupplyValue.getValue());
      dailyReportHistory.setTotalTaxAmount(totalTaxAmount.getValue());
      dailyReportHistory.setTotalTipAmount(totalTipAmount.getValue());
      dailyReportHistory.setTotalTipTaxAmount(totalTipTaxAmount.getValue());
      dailyReportHistory.setDiscountTotalAmount(discountTotalAmount.getValue());
      dailyReportHistory.setTotalCancelAmount(totalCancelAmount.getValue());
      dailyReportHistory.setTotalRefundAmount(totalRefundAmount.getValue());
      dailyReportHistory.setBusinessDatetime(businessDate);
      dailyReportHistory
          .setCashDepositTotalAmount(cashDepositTotalAmount.getValue());
      dailyReportHistory
          .setCashWithdrawalAmount(cashWithdrawalAmount.getValue());
      dailyReportHistory.setPosCashTotalAmount(
          cashDepositTotalAmount.getValue() - cashWithdrawalAmount.getValue());
      dailyReportHistory.updateTime();
      dailyReportHistory.setSynchronizedYn(false);
      await dailyReportHistoryDao!.insertOne(dailyReportHistory);
    } else {
      entity.setTotalSalesCount(totalSalesCount);
      entity.setTotalSalesAmount(totalSalesAmount.getValue());
      entity.setTotalSupplyValue(totalSupplyValue.getValue());
      entity.setTotalTaxAmount(totalTaxAmount.getValue());
      entity.setTotalTipAmount(totalTipAmount.getValue());
      entity.setTotalTipTaxAmount(totalTipTaxAmount.getValue());
      entity.setDiscountTotalAmount(discountTotalAmount.getValue());
      entity.setTotalCancelAmount(totalCancelAmount.getValue());
      entity.setTotalRefundAmount(totalRefundAmount.getValue());
      entity.setBusinessDatetime(businessDate);
      entity.setCashDepositTotalAmount(cashDepositTotalAmount.getValue());
      entity.setCashWithdrawalAmount(cashWithdrawalAmount.getValue());
      entity.setPosCashTotalAmount(
          cashDepositTotalAmount.getValue() - cashWithdrawalAmount.getValue());
      entity.updateTime();
      entity.setSynchronizedYn(false);
      await dailyReportHistoryDao!.updateOne(entity);
    }
  }

  /// Server에 업로드 되지 않은 DailyReportHistory, DailyReportHistoryPayments 쿼리
  Future<List<DailyReportHistory>> getDailyReportHistoryNotUploadList() async {
    return await dailyReportHistoryDao!.findAllBySynchronizedYnNot();
  }

  Future<List<DailyReportHistoryPayments>>
      getDailyReportHistoryPaymentsNotUploadList() async {
    return await dailyReportHistoryPaymentsDao!.findAllBySynchronizedYnNot();
  }

  Future<void> syncDailyReportHistory(
      String comDate, int sno, String time, String newTime) async {
    DailyReportHistory? entity = await dailyReportHistoryDao!
        .findByCommonDateAndCommonSerialNumber(comDate, sno);

    if (entity != null && entity.getLastRevisionDatetime() == (time)) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await dailyReportHistoryDao!.updateOne(entity);
    }
  }

  Future<void> syncDailyReportHistoryPayments(String comDate, int sno,
      String secCode, String time, String newTime) async {
    DailyReportHistoryPayments? entity = await dailyReportHistoryPaymentsDao!
        .findAllByCommonDateAndCommonSerialNumberAndPaymentSectionCode(
            comDate, sno, secCode);

    if (entity != null && entity.getLastRevisionDatetime() == (time)) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await dailyReportHistoryPaymentsDao!.updateOne(entity);
    }
  }

  /// DataSync Sale Upload Completed Flag
  /// upload 성공시에 SD필드를 true 업데이트
  Future<void> updateSdToDailyReportHistory(
      List<DailyReportHistory> dailyReportHistory, bool isUpLoad) async {
    if (dailyReportHistory != null) {
      int size = dailyReportHistory.length;
      for (int i = 0; i < size; i++) {
        DailyReportHistory item = dailyReportHistory.elementAt(i);
        if (item == null) continue;

        item.setSynchronizedYn(isUpLoad);
        await dailyReportHistoryDao!.updateOne(item);
      }
    }
  }

  Future<void> updateSdToDailyReportHistoryPayments(
      List<DailyReportHistoryPayments> dailyReportHistoryPayments,
      bool isUpLoad) async {
    if (dailyReportHistoryPayments != null) {
      int size = dailyReportHistoryPayments.length;
      for (int i = 0; i < size; i++) {
        DailyReportHistoryPayments item =
            dailyReportHistoryPayments.elementAt(i);
        if (item == null) continue;

        item.setSynchronizedYn(isUpLoad);
        await dailyReportHistoryPaymentsDao!.updateOne(item);
      }
    }
  }

  Future<void> updateAllDayReportHistoryForSimpleReceipt() async {
    final List<String?> dateList = await _saleBL.getSaleHAllDate();

    if (dateList.length == 0) return;

    for (String? date in dateList) {
      await updateDailyReportHistoryPayments(date);
    }

    for (String? date in dateList) {
      await _updateHistory(date);
    }
  }

  /// 데일리 레포트 업데이트가 필요로한 날짜 반환
  /// DailyReportHistory 마지막 업데이트 시간이 해당 영업일 마감시간보다 작은 경우엔 업데이트 함.
  Future<List<String?>> _getDateNeedToUpdate() async {
    List<String?> result = [];
    Store? store = await _basBL.getStore();
    String? closeBusinessTime = store?.getCloseBusinessTime();
    List<DailyReportHistory> dailyReportHistories =
        await dailyReportHistoryDao!.findAllStateCode(BaseBL.STATE_DELETE);

    for (DailyReportHistory entity in dailyReportHistories) {
      DateTime closeDateTime = CommonUtil.getBusinessCashierInCloseDateTime(
          entity.getCommonDate()!, closeBusinessTime!);
      String? lastUpdateTime = entity.getLastRevisionDatetime();
      if (CommonUtil.stringToLong(lastUpdateTime) <
          CommonUtil.stringToLong(CommonUtil.convertDateForm1(closeDateTime))) {
        result.add(entity.getCommonDate());
      }
    }
    Log.d(TAG, "Daily Report updateDate = " + result.toString());
    return result;
  }

  Future<void> updateDayReportHistoryChanged() async {
    final List<String?> dateList = await _getDateNeedToUpdate();

    if (dateList.length == 0) {
      return;
    }

    for (String? date in dateList) {
      await updateDailyReportHistoryPayments(date);
    }

    for (String? date in dateList) {
      await _updateHistory(date);
    }
  }

  Future<void> updateDayReportHistory([Function? callback]) async {
    final String date = await _basBL.getCommonDate();
    await updateDailyReportHistoryPayments(date);
    await _updateHistory(date);

    if (callback != null) {
      try {
        callback(null);
      } catch (e) {
        print('Exception: $e');
      }
    }
  }

  Future<void> updateAllDayReportHistory(List<String?> dateList) async {
    if (dateList.length == 0) {
      return;
    }

    for (String? date in dateList) {
      await updateDailyReportHistoryPayments(date);
    }

    for (String? date in dateList) {
      await _updateHistory(date);
    }
  }

  Future<void> addAll(
      final List<DailyReportHistory> dailyReportHistoryList,
      final List<DailyReportHistoryPayments>
          dailyReportHistoryPaymentsList) async {
    List<DailyReportHistory> dailyReportHistoryList =
        await dailyReportHistoryDao!.findAllBySynchronizedYn();
    await dailyReportHistoryDao!.deleteAll(dailyReportHistoryList);

    for (DailyReportHistory i in dailyReportHistoryList) {
      if (getDailyReportHistory(i.getCommonDate()) != null) {
        await dailyReportHistoryDao!.updateOne(i);
      } else {
        await dailyReportHistoryDao!.insertOne(i);
      }
    }
    List<DailyReportHistoryPayments> dailyReportHistoryPaymentsList =
        await dailyReportHistoryPaymentsDao!.findAllBySynchronizedYn();
    await dailyReportHistoryPaymentsDao!
        .deleteAll(dailyReportHistoryPaymentsList);

    for (DailyReportHistoryPayments i in dailyReportHistoryPaymentsList) {
      if (getDailyReportHistoryPayment(
              i.getCommonDate(), i.getPaymentSectionCode()) !=
          null) {
        await dailyReportHistoryPaymentsDao!.updateOne(i);
      } else {
        await dailyReportHistoryPaymentsDao!.insertOne(i);
      }
    }
  }

  Future<void> createDailyReportHistory(String businessDate) async {
    DailyReportHistory dailyReportHistory =
        await getNewDailyReportHistory(businessDate);
    dailyReportHistory.setStoreTerminalId(BaseBL.storeTerminalId);
    dailyReportHistory.setBusinessDatetime(businessDate);
    dailyReportHistory.updateTime();
    dailyReportHistory.setSynchronizedYn(false);
    await dailyReportHistoryDao!.insertOne(dailyReportHistory);
  }
}

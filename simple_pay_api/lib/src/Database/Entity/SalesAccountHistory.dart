import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/Util/MonetaryCalculator.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "SL1_SLS_ACC_HIS", indices: const [
  Index(value: ["COM_DT", "SL_SNO", "SLS_ACC_SNO"], unique: true)
])
class SalesAccountHistory {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "SL_SNO")
  int? saleSerialNumber;

  @ColumnInfo(name: "SLS_ACC_SNO")
  int? salesAccountSerialNumber;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "CDRW_SEC_CD")
  String? cashdrawSectionCode;

  @ColumnInfo(name: "OPR_TP_CD")
  String? operationTypeCode;

  @ColumnInfo(name: "PAY_SEC_CD")
  String? paymentSectionCode;

  @ColumnInfo(name: "APRVL_TRANS_NO")
  String? approvalTransactionNo;

  @ColumnInfo(name: "PAY_METHOD_CD")
  String? paymentMethodCode;

  @ColumnInfo(name: "TRANS_TP_CD")
  String? transactionTypeCode;

  @ColumnInfo(name: "CASH_RECPT_ID_TP_CD")
  String? cashReceiptIdentifyTypeCode;

  @ColumnInfo(name: "CASH_RECPT_ID_NO")
  String? cashReceiptIdentifyNumber;

  @ColumnInfo(name: "APRVL_TP_CD")
  String? approvalTypeCode;

  @ColumnInfo(name: "CASH_RECPT_TP_CD")
  String? cashReceiptTypeCode;

  @ColumnInfo(name: "PAY_APRVL_NO")
  String? paymentApprovalNumber;

  @ColumnInfo(name: "APRVL_DT")
  String? approvalDate;

  @ColumnInfo(name: "APRVL_DT_PRI_PTN")
  String? approvalDatePrimaryPattern; //yyyyMMddHHmmss

  @ColumnInfo(name: "SPLY_VAL")
  double? supplyValue;

  @ColumnInfo(name: "TAX_AMT")
  double? taxAmount;

  @ColumnInfo(name: "TAX_AMT_1")
  double? taxAmount1;

  @ColumnInfo(name: "TAX_AMT_2")
  double? taxAmount2;

  @ColumnInfo(name: "CRD_EXP_DT")
  String? expiryDate;

  @ColumnInfo(name: "INSTLMNT_MM")
  int? installmentMonth;

  @ColumnInfo(name: "CRD_NM")
  String? cardName;

  @ColumnInfo(name: "CRD_CO_SEC_CD")
  String? cardCompanySectionCode;

  @ColumnInfo(name: "CRD_CO_NM")
  String? cardCompanyName;

  @ColumnInfo(name: "CRD_CO_AFF_NO")
  String? cardCompanyAffiliateNumber;

  @ColumnInfo(name: "CRD_PUCHS_CO_CD")
  String? cardPurchaseCompanyCode;

  @ColumnInfo(name: "CRD_PUCHS_CO_NM")
  String? cardPurchaseCompanyName;

  @ColumnInfo(name: "CRD_SWIP_YN")
  bool? cardSwipYn;

  @ColumnInfo(name: "PRE_TIP_TOT_AMT")
  double? preTipTotalAmount;

  @ColumnInfo(name: "PRE_TIP_AMT")
  double? preTipAmount;

  @ColumnInfo(name: "PRE_TIP_TAX_AMT")
  double? preTipTaxAmount;

  @ColumnInfo(name: "PAY_TIP_TOT_AMT")
  double? paymentTipTotalAmount;

  @ColumnInfo(name: "PAY_TIP_AMT")
  double? paymentTipAmount;

  @ColumnInfo(name: "PAY_TIP_TAX_AMT")
  double? paymentTipTaxAmount;

  @ColumnInfo(name: "TOT_AMT")
  double? totalAmount;

  @ColumnInfo(name: "CNCL_SNO")
  String? cancelSerialNumber;

  @ColumnInfo(name: "CNCL_EMP_ID")
  String? cancelEmployeeId;

  @ColumnInfo(name: "COMPLT_SETLMNT_YN")
  bool? completeSettlementYn;

  @ColumnInfo(name: "SALE_TX_YN")
  bool? saleTransmitYn;

  @ColumnInfo(name: "RECPT_NO")
  String? receiptNumber;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  @ColumnInfo(name: "PAY_OPT")
  String? paymentOption;

  @ColumnInfo(name: "MENU_DC_AMT")
  double? menuDiscountAmount;

  @ColumnInfo(name: "ODR_DC_AMT")
  double? orderDiscountAmount;

  @ColumnInfo(name: "NOT_IN_SLS_YN")
  bool? notInSalesYn;

  @ColumnInfo(name: "TAKEN_AMT")
  double? takenAmount;

  @ColumnInfo(name: "CHANGE_AMT")
  double? changeAmount;

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  //todo @ToOne(joinProperty = "cancelEmployeeId")
  @ignore
  Employee? employee;

  //todo @ToOne(joinProperty = "id")
  @ignore
  SalesAccountHistoryTip? saleTip;

  //todo @Transient
  @ignore
  SalesHistory? saleH;

  // SaleTip 에 데이터 저장용으로 사용
  //todo @Transient
  @ignore
  String? saleTipPaymentSection, saleTipAppType;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 35854374)
  // transient SalesAccountHistoryDao myDao;

  //todo @Generated(hash = 1278008531)
  // SalesAccountHistory() {
  // }

  //todo @Generated(hash = 1965149690)
  SalesAccountHistory(
      {String? id,
      String? commonDate,
      int? saleSerialNumber,
      int? salesAccountSerialNumber,
      String? storeTerminalId,
      String? cashdrawSectionCode,
      String? operationTypeCode,
      String? paymentSectionCode,
      String? approvalTransactionNo,
      String? paymentMethodCode,
      String? transactionTypeCode,
      String? cashReceiptIdentifyTypeCode,
      String? cashReceiptIdentifyNumber,
      String? approvalTypeCode,
      String? cashReceiptTypeCode,
      String? paymentApprovalNumber,
      String? approvalDate,
      String? approvalDatePrimaryPattern,
      double? supplyValue,
      double? taxAmount,
      double? taxAmount1,
      double? taxAmount2,
      String? expiryDate,
      int? installmentMonth,
      String? cardName,
      String? cardCompanySectionCode,
      String? cardCompanyName,
      String? cardCompanyAffiliateNumber,
      String? cardPurchaseCompanyCode,
      String? cardPurchaseCompanyName,
      bool? cardSwipYn,
      double? preTipTotalAmount,
      double? preTipAmount,
      double? preTipTaxAmount,
      double? paymentTipTotalAmount,
      double? paymentTipAmount,
      double? paymentTipTaxAmount,
      double? totalAmount,
      String? cancelSerialNumber,
      String? cancelEmployeeId,
      bool? completeSettlementYn,
      bool? saleTransmitYn,
      String? receiptNumber,
      bool? synchronizedYn,
      String? paymentOption,
      double? menuDiscountAmount,
      double? orderDiscountAmount,
      bool? notInSalesYn,
      double? takenAmount,
      double? changeAmount,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.saleSerialNumber = saleSerialNumber;
    this.salesAccountSerialNumber = salesAccountSerialNumber;
    this.storeTerminalId = storeTerminalId;
    this.cashdrawSectionCode = cashdrawSectionCode;
    this.operationTypeCode = operationTypeCode;
    this.paymentSectionCode = paymentSectionCode;
    this.approvalTransactionNo = approvalTransactionNo;
    this.paymentMethodCode = paymentMethodCode;
    this.transactionTypeCode = transactionTypeCode;
    this.cashReceiptIdentifyTypeCode = cashReceiptIdentifyTypeCode;
    this.cashReceiptIdentifyNumber = cashReceiptIdentifyNumber;
    this.approvalTypeCode = approvalTypeCode;
    this.cashReceiptTypeCode = cashReceiptTypeCode;
    this.paymentApprovalNumber = paymentApprovalNumber;
    this.approvalDate = approvalDate;
    this.approvalDatePrimaryPattern = approvalDatePrimaryPattern;
    this.supplyValue = supplyValue;
    this.taxAmount = taxAmount;
    this.taxAmount1 = taxAmount1;
    this.taxAmount2 = taxAmount2;
    this.expiryDate = expiryDate;
    this.installmentMonth = installmentMonth;
    this.cardName = cardName;
    this.cardCompanySectionCode = cardCompanySectionCode;
    this.cardCompanyName = cardCompanyName;
    this.cardCompanyAffiliateNumber = cardCompanyAffiliateNumber;
    this.cardPurchaseCompanyCode = cardPurchaseCompanyCode;
    this.cardPurchaseCompanyName = cardPurchaseCompanyName;
    this.cardSwipYn = cardSwipYn;
    this.preTipTotalAmount = preTipTotalAmount;
    this.preTipAmount = preTipAmount;
    this.preTipTaxAmount = preTipTaxAmount;
    this.paymentTipTotalAmount = paymentTipTotalAmount;
    this.paymentTipAmount = paymentTipAmount;
    this.paymentTipTaxAmount = paymentTipTaxAmount;
    this.totalAmount = totalAmount;
    this.cancelSerialNumber = cancelSerialNumber;
    this.cancelEmployeeId = cancelEmployeeId;
    this.completeSettlementYn = completeSettlementYn;
    this.saleTransmitYn = saleTransmitYn;
    this.receiptNumber = receiptNumber;
    this.synchronizedYn = synchronizedYn;
    this.paymentOption = paymentOption;
    this.menuDiscountAmount = menuDiscountAmount;
    this.orderDiscountAmount = orderDiscountAmount;
    this.notInSalesYn = notInSalesYn;
    this.takenAmount = takenAmount;
    this.changeAmount = changeAmount;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 1937818519)
  // transient String employee__resolvedKey;

  //todo @Generated(hash = 804674440)
  // transient String SaleACDetail__resolvedKey;

  //todo @Generated(hash = 1577288739)
  // transient String saleTip__resolvedKey;

  String? getId() {
    return id;
  }

  void setId(String? id) {
    this.id = id;
  }

  String? getCommonDate() {
    return commonDate;
  }

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getSaleSerialNumber() {
    return saleSerialNumber;
  }

  void setSaleSerialNumber(int? saleSerialNumber) {
    this.saleSerialNumber = saleSerialNumber;
  }

  int? getSalesAccountSerialNumber() {
    return salesAccountSerialNumber;
  }

  void setSalesAccountSerialNumber(int? salesAccountSerialNumber) {
    this.salesAccountSerialNumber = salesAccountSerialNumber;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  String? getCashdrawSectionCode() {
    return cashdrawSectionCode;
  }

  void setCashdrawSectionCode(String? cashdrawSectionCode) {
    this.cashdrawSectionCode = cashdrawSectionCode;
  }

  String? getPaymentSectionCode() {
    return paymentSectionCode;
  }

  void setPaymentSectionCode(String? paymentSectionCode) {
    this.paymentSectionCode = paymentSectionCode;
  }

  String? getCashReceiptIdentifyTypeCode() {
    return cashReceiptIdentifyTypeCode;
  }

  void setCashReceiptIdentifyTypeCode(String? cashReceiptIdentifyTypeCode) {
    this.cashReceiptIdentifyTypeCode = cashReceiptIdentifyTypeCode;
  }

  String? getCashReceiptIdentifyNumber() {
    return cashReceiptIdentifyNumber;
  }

  void setCashReceiptIdentifyNumber(String? cashReceiptIdentifyNumber) {
    this.cashReceiptIdentifyNumber = cashReceiptIdentifyNumber;
  }

  String? getApprovalTypeCode() {
    return approvalTypeCode;
  }

  void setApprovalTypeCode(String? approvalTypeCode) {
    this.approvalTypeCode = approvalTypeCode;
  }

  String? getPaymentApprovalNumber() {
    return paymentApprovalNumber;
  }

  void setPaymentApprovalNumber(String? paymentApprovalNumber) {
    this.paymentApprovalNumber = paymentApprovalNumber;
  }

  String? getApprovalDate() {
    return approvalDate;
  }

  void setApprovalDate(String? approvalDate) {
    if (approvalDate == null || approvalDate.isEmpty) {
      // SimpleDateFormat sdf = SimpleDateFormat("yyyyMMddHHmmss");
      // this.approvalDate = sdf.format(DateTime());
      this.approvalDate = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    } else {
      this.approvalDate = approvalDate;
    }
  }

  String? getApprovalDatePrimaryPattern() {
    return approvalDatePrimaryPattern;
  }

  void setApprovalDatePrimaryPattern(String? approvalDatePrimaryPattern) {
    if (approvalDatePrimaryPattern == null ||
        approvalDatePrimaryPattern.isEmpty) {
      // SimpleDateFormat sdf = SimpleDateFormat("yyyyMMddHHmmss");
      // this.approvalDatePrimaryPattern = sdf.format(DateTime());
      this.approvalDatePrimaryPattern =
          DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    } else {
      this.approvalDatePrimaryPattern = approvalDatePrimaryPattern;
    }
  }

  double getSupplyValue() {
    return supplyValue == null ? 0 : MonetaryCalculator.value(supplyValue);
  }

  void setSupplyValue(double? supplyValue) {
    this.supplyValue = supplyValue;
  }

  double getTaxAmount() {
    return taxAmount == null ? 0 : MonetaryCalculator.value(taxAmount);
  }

  void setTaxAmount(double? taxAmount) {
    this.taxAmount = taxAmount;
  }

  String? getExpiryDate() {
    return expiryDate;
  }

  void setExpiryDate(String? expiryDate) {
    this.expiryDate = expiryDate;
  }

  int? getInstallmentMonth() {
    return installmentMonth;
  }

  void setInstallmentMonth(int? installmentMonth) {
    this.installmentMonth = installmentMonth;
  }

  String? getCardName() {
    return cardName;
  }

  void setCardName(String? cardName) {
    this.cardName = cardName;
  }

  String? getCardCompanySectionCode() {
    return cardCompanySectionCode;
  }

  void setCardCompanySectionCode(String? cardCompanySectionCode) {
    this.cardCompanySectionCode = cardCompanySectionCode;
  }

  String? getCardCompanyName() {
    return cardCompanyName;
  }

  void setCardCompanyName(String? cardCompanyName) {
    this.cardCompanyName = cardCompanyName;
  }

  String? getCardCompanyAffiliateNumber() {
    return cardCompanyAffiliateNumber;
  }

  void setCardCompanyAffiliateNumber(String? cardCompanyAffiliateNumber) {
    this.cardCompanyAffiliateNumber = cardCompanyAffiliateNumber;
  }

  String? getCardPurchaseCompanyCode() {
    return cardPurchaseCompanyCode;
  }

  void setCardPurchaseCompanyCode(String? cardPurchaseCompanyCode) {
    this.cardPurchaseCompanyCode = cardPurchaseCompanyCode;
  }

  String? getCardPurchaseCompanyName() {
    return cardPurchaseCompanyName;
  }

  void setCardPurchaseCompanyName(String? cardPurchaseCompanyName) {
    this.cardPurchaseCompanyName = cardPurchaseCompanyName;
  }

  bool? getCardSwipYn() {
    return cardSwipYn;
  }

  void setCardSwipYn(bool? cardSwipYn) {
    this.cardSwipYn = cardSwipYn;
  }

  double getPreTipTotalAmount() {
    return preTipTotalAmount == null
        ? 0
        : MonetaryCalculator.value(preTipTotalAmount);
  }

  void setPreTipTotalAmount(double preTipTotalAmount) {
    this.preTipTotalAmount = preTipTotalAmount;
  }

  double getPreTipAmount() {
    return preTipAmount == null ? 0 : MonetaryCalculator.value(preTipAmount);
  }

  void setPreTipAmount(double preTipAmount) {
    this.preTipAmount = preTipAmount;
  }

  double getPreTipTaxAmount() {
    return preTipTaxAmount == null
        ? 0
        : MonetaryCalculator.value(preTipTaxAmount);
  }

  void setPreTipTaxAmount(double preTipTaxAmount) {
    this.preTipTaxAmount = preTipTaxAmount;
  }

  double getPaymentTipTotalAmount() {
    return paymentTipTotalAmount == null
        ? 0
        : MonetaryCalculator.value(paymentTipTotalAmount);
  }

  void setPaymentTipTotalAmount(double? paymentTipTotalAmount) {
    this.paymentTipTotalAmount = paymentTipTotalAmount;
  }

  double getPaymentTipAmount() {
    return paymentTipAmount == null
        ? 0
        : MonetaryCalculator.value(paymentTipAmount);
  }

  void setPaymentTipAmount(double? paymentTipAmount) {
    this.paymentTipAmount = paymentTipAmount;
  }

  double getPaymentTipTaxAmount() {
    return paymentTipTaxAmount == null
        ? 0
        : MonetaryCalculator.value(paymentTipTaxAmount);
  }

  void setPaymentTipTaxAmount(double? paymentTipTaxAmount) {
    this.paymentTipTaxAmount = paymentTipTaxAmount;
  }

  double getTotalAmount() {
    return totalAmount == null ? 0 : MonetaryCalculator.value(totalAmount);
  }

  void setTotalAmount(double? totalAmount) {
    this.totalAmount = totalAmount;
  }

  String? getCancelSerialNumber() {
    return cancelSerialNumber;
  }

  void setCancelSerialNumber(String cancelSerialNumber) {
    this.cancelSerialNumber = cancelSerialNumber;
  }

  String? getCancelEmployeeId() {
    return cancelEmployeeId;
  }

  void setCancelEmployeeId(String? cancelEmployeeId) {
    this.cancelEmployeeId = cancelEmployeeId;
  }

  bool? getCompleteSettlementYn() {
    return completeSettlementYn;
  }

  void setCompleteSettlementYn(bool? completeSettlementYn) {
    this.completeSettlementYn = completeSettlementYn;
  }

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

  void createId() {
    NumberFormat df1 = NumberFormat("0000");
    NumberFormat df2 = NumberFormat("00000");
    id = commonDate! +
        "_" +
        df1.format(saleSerialNumber) +
        "_" +
        df2.format(salesAccountSerialNumber);
  }

  SalesHistory? getSaleH() {
    return saleH;
  }

  void setSaleH(SalesHistory saleH) {
    this.saleH = saleH;
  }

  String? getSaleTipPaymentSection() {
    return saleTipPaymentSection;
  }

  void setSaleTipPaymentSection(String saleTipPaymentSection) {
    this.saleTipPaymentSection = saleTipPaymentSection;
  }

  String? getSaleTipAppType() {
    return saleTipAppType;
  }

  void setSaleTipAppType(String saleTipAppType) {
    this.saleTipAppType = saleTipAppType;
  }

  /**
   * 순수봉사료 + 세금
   */
  double getTipWithTax() {
    return MonetaryCalculator.value(paymentTipTotalAmount);
  }

  double getPreTipWithTax() {
    return MonetaryCalculator.value(preTipTotalAmount);
  }

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());
    synchronizedYn = false;

    if (firstRegistrantId == null) {
      firstRegistrantId = BaseBL.employeeId;
    }

    if (firstRegistrationDatetime == null) {
      firstRegistrationDatetime = now;
    }

    lastReviserId = BaseBL.employeeId;
    lastRevisionDatetime = now;

    if (stateCode == null) {
      stateCode = "00";
    }
  }

  String? getReceiptNumber() {
    return this.receiptNumber;
  }

  void setReceiptNumber(String receiptNumber) {
    this.receiptNumber = receiptNumber;
  }

  /** To-one relationship, resolved on first access. */
  //todo @Generated(hash = 1280175334)
  // Employee getEmployee() {
  //     String __key = this.cancelEmployeeId;
  //     if (employee__resolvedKey == null || employee__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         EmployeeDao targetDao = daoSession.getEmployeeDao();
  //         Employee employeeNew = targetDao.load(__key);
  //         synchronized (this) {
  //             employee = employeeNew;
  //             employee__resolvedKey = __key;
  //         }
  //     }
  //     return employee;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 864060886)
  // void setEmployee(Employee employee) {
  //     synchronized (this) {
  //         this.employee = employee;
  //         cancelEmployeeId = employee == null ? null : employee.getEmployeeId();
  //         employee__resolvedKey = cancelEmployeeId;
  //     }
  // }
  //

  Future<SalesAccountHistoryDetails?> getSaleACDetail() {
    return Common.db!.salesAccountHistoryDetailsDao.findById(id!);
  }

  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 967172365)
  // void setSaleACDetail(SalesAccountHistoryDetails SaleACDetail) {
  //     synchronized (this) {
  //         this.SaleACDetail = SaleACDetail;
  //         id = SaleACDetail == null ? null : SaleACDetail.getId();
  //         SaleACDetail__resolvedKey = id;
  //     }
  // }
  //
  // /** To-one relationship, resolved on first access. */
  // //todo @Generated(hash = 1246344829)
  // SalesAccountHistoryTip getSaleTip() {
  //     String __key = this.id;
  //     if (saleTip__resolvedKey == null || saleTip__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         SalesAccountHistoryTipDao targetDao = daoSession.getSalesAccountHistoryTipDao();
  //         SalesAccountHistoryTip saleTipNew = targetDao.load(__key);
  //         synchronized (this) {
  //             saleTip = saleTipNew;
  //             saleTip__resolvedKey = __key;
  //         }
  //     }
  //     return saleTip;
  // }
  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 540380019)
  // void setSaleTip(SalesAccountHistoryTip saleTip) {
  //     synchronized (this) {
  //         this.saleTip = saleTip;
  //         id = saleTip == null ? null : saleTip.getId();
  //         saleTip__resolvedKey = id;
  //     }
  // }
  //
  // /**
  //  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#delete(Object)}.
  //  * Entity must attached to an entity context.
  //  */
  // //todo @Generated(hash = 128553479)
  // void delete() {
  //     if (myDao == null) {
  //         throw DaoException("Entity is detached from DAO context");
  //     }
  //     myDao.delete(this);
  // }
  //
  // /**
  //  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#refresh(Object)}.
  //  * Entity must attached to an entity context.
  //  */
  // //todo @Generated(hash = 1942392019)
  // void refresh() {
  //     if (myDao == null) {
  //         throw DaoException("Entity is detached from DAO context");
  //     }
  //     myDao.refresh(this);
  // }
  //
  // /**
  //  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#update(Object)}.
  //  * Entity must attached to an entity context.
  //  */
  // //todo @Generated(hash = 713229351)
  // void update() {
  //     if (myDao == null) {
  //         throw DaoException("Entity is detached from DAO context");
  //     }
  //     myDao.update(this);
  // }
  Future<void> update() async {
    await Common.db!.salesAccountHistoryDao.updateOne(this);
  }

  String? getCashReceiptTypeCode() {
    return this.cashReceiptTypeCode;
  }

  void setCashReceiptTypeCode(String? cashReceiptTypeCode) {
    this.cashReceiptTypeCode = cashReceiptTypeCode;
  }

  String? getPaymentOption() {
    return this.paymentOption;
  }

  void setPaymentOption(String? paymentOption) {
    this.paymentOption = paymentOption;
  }

  double getMenuDiscountAmount() {
    return menuDiscountAmount == null
        ? 0
        : MonetaryCalculator.value(menuDiscountAmount);
  }

  void setMenuDiscountAmount(double? menuDiscountAmount) {
    this.menuDiscountAmount = menuDiscountAmount;
  }

  double getOrderDiscountAmount() {
    return orderDiscountAmount == null
        ? 0
        : MonetaryCalculator.value(orderDiscountAmount);
  }

  void setOrderDiscountAmount(double? orderDiscountAmount) {
    this.orderDiscountAmount = orderDiscountAmount;
  }

  double getTaxAmount1() {
    return taxAmount1 == null ? 0 : MonetaryCalculator.value(taxAmount1);
  }

  void setTaxAmount1(double taxAmount1) {
    this.taxAmount1 = taxAmount1;
  }

  double getTaxAmount2() {
    return taxAmount2 == null ? 0 : MonetaryCalculator.value(taxAmount2);
  }

  void setTaxAmount2(double taxAmount2) {
    this.taxAmount2 = taxAmount2;
  }

  SalesAccountHistory clone() {
    return SalesAccountHistory(
      id: this.id,
      commonDate: this.commonDate,
      saleSerialNumber: this.saleSerialNumber,
      salesAccountSerialNumber: this.salesAccountSerialNumber,
      storeTerminalId: this.storeTerminalId,
      cashdrawSectionCode: this.cashdrawSectionCode,
      operationTypeCode: this.operationTypeCode,
      paymentSectionCode: this.paymentSectionCode,
      approvalTransactionNo: this.approvalTransactionNo,
      paymentMethodCode: this.paymentMethodCode,
      transactionTypeCode: this.transactionTypeCode,
      cashReceiptIdentifyTypeCode: this.cashReceiptIdentifyTypeCode,
      cashReceiptIdentifyNumber: this.cashReceiptIdentifyNumber,
      approvalTypeCode: this.approvalTypeCode,
      cashReceiptTypeCode: this.cashReceiptTypeCode,
      paymentApprovalNumber: this.paymentApprovalNumber,
      approvalDate: this.approvalDate,
      approvalDatePrimaryPattern: this.approvalDatePrimaryPattern,
      supplyValue: this.supplyValue,
      taxAmount: this.taxAmount,
      taxAmount1: this.taxAmount1,
      taxAmount2: this.taxAmount2,
      expiryDate: this.expiryDate,
      installmentMonth: this.installmentMonth,
      cardName: this.cardName,
      cardCompanySectionCode: this.cardCompanySectionCode,
      cardCompanyName: this.cardCompanyName,
      cardCompanyAffiliateNumber: this.cardCompanyAffiliateNumber,
      cardPurchaseCompanyCode: this.cardPurchaseCompanyCode,
      cardPurchaseCompanyName: this.cardPurchaseCompanyName,
      cardSwipYn: this.cardSwipYn,
      preTipTotalAmount: this.preTipTotalAmount,
      preTipAmount: this.preTipAmount,
      preTipTaxAmount: this.preTipTaxAmount,
      paymentTipTotalAmount: this.paymentTipTotalAmount,
      paymentTipAmount: this.paymentTipAmount,
      paymentTipTaxAmount: this.paymentTipTaxAmount,
      totalAmount: this.totalAmount,
      cancelSerialNumber: this.cancelSerialNumber,
      cancelEmployeeId: this.cancelEmployeeId,
      completeSettlementYn: this.completeSettlementYn,
      saleTransmitYn: this.saleTransmitYn,
      receiptNumber: this.receiptNumber,
      synchronizedYn: this.synchronizedYn,
      paymentOption: this.paymentOption,
      menuDiscountAmount: this.menuDiscountAmount,
      orderDiscountAmount: this.orderDiscountAmount,
      notInSalesYn: this.notInSalesYn,
      takenAmount: this.takenAmount,
      changeAmount: this.changeAmount,
      firstRegistrantId: this.firstRegistrantId,
      firstRegistrationDatetime: this.firstRegistrationDatetime,
      lastReviserId: this.lastReviserId,
      lastRevisionDatetime: this.lastRevisionDatetime,
      stateCode: this.stateCode,
    );
  }

  String? getTransactionTypeCode() {
    return this.transactionTypeCode;
  }

  void setTransactionTypeCode(String transactionTypeCode) {
    this.transactionTypeCode = transactionTypeCode;
  }

  bool? getSaleTransmitYn() {
    return saleTransmitYn == null ? false : saleTransmitYn;
  }

  void setSaleTransmitYn(bool? saleTransmitYn) {
    this.saleTransmitYn = saleTransmitYn;
  }

  double getOrderTotalAmount() {
    return getTotalAmount() + getTotalDiscountAmount();
  }

  double getTotalDiscountAmount() {
    return getMenuDiscountAmount() + getOrderDiscountAmount();
  }

  String getComplexId() {
    // return getCommonDate().concat("_").concat(String.valueOf(getSaleSerialNumber())).concat("_").concat(String.valueOf(getSalesAccountSerialNumber()));
    return getCommonDate()! +
        "_" +
        getSaleSerialNumber().toString() +
        "_" +
        getSalesAccountSerialNumber().toString();
  }

  String? getOperationTypeCode() {
    return this.operationTypeCode;
  }

  void setOperationTypeCode(String? operationTypeCode) {
    this.operationTypeCode = operationTypeCode;
  }

  bool? getNotInSalesYn() {
    return notInSalesYn;
  }

  void setNotInSalesYn(bool notInSalesYn) {
    this.notInSalesYn = notInSalesYn;
  }

  double getTakenAmount() {
    return takenAmount == null ? 0 : MonetaryCalculator.value(takenAmount);
  }

  void setTakenAmount(double takenAmount) {
    this.takenAmount = takenAmount;
  }

  double getChangeAmount() {
    return changeAmount == null ? 0 : MonetaryCalculator.value(changeAmount);
  }

  void setChangeAmount(double changeAmount) {
    this.changeAmount = changeAmount;
  }

  String? getPaymentMethodCode() {
    return this.paymentMethodCode;
  }

  void setPaymentMethodCode(String? paymentMethodCode) {
    this.paymentMethodCode = paymentMethodCode;
  }

  String? getApprovalTransactionNo() {
    return approvalTransactionNo;
  }

  void setApprovalTransactionNo(String? approvalTransactionNo) {
    this.approvalTransactionNo = approvalTransactionNo;
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 626247479)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getSalesAccountHistoryDao() : null;
// }
}

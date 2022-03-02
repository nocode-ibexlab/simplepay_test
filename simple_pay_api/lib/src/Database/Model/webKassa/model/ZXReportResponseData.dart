import 'OutputMessage.dart';
import 'type/NonNullableType.dart';
import 'type/OfdInformation.dart';
import 'type/OperationTypeSummaryApiModel.dart';

class ZXReportResponseData extends OutputMessage {
  int? ReportNumber;
  String? TaxPayerName;
  String? TaxPayerIN;
  bool? TaxPayerVAT;
  String? TaxPayerVATSeria;
  String? TaxPayerVATNumber;
  String? CashboxSN;
  int? CashboxIN;
  String? CashboxRN;
  String? StartOn;
  String? ReportOn;
  String? CloseOn;
  int? CashierCode;
  int? ShiftNumber;
  int? DocumentCount;
  double? PutMoneySum;
  double? TakeMoneySum;
  int? ControlSum;
  bool? OfflineMode;
  bool? CashboxOfflineMode;
  double? SumInCashbox;
  OperationTypeSummaryApiModel? Sell;
  OperationTypeSummaryApiModel? Buy;
  OperationTypeSummaryApiModel? ReturnSell;
  OperationTypeSummaryApiModel? ReturnBuy;
  NonNullableType? StartNonNullable;
  NonNullableType? EndNonNullable;
  OfdInformation? Ofd;

  ZXReportResponseData();

  ZXReportResponseData.fromJson(Map json)
      : ReportNumber = json['ReportNumber'] ?? 0,
        TaxPayerName = json['TaxPayerName'] ?? "",
        TaxPayerIN = json['TaxPayerIN'] ?? "",
        TaxPayerVAT = json['TaxPayerVAT'] ?? false,
        TaxPayerVATSeria = json['TaxPayerVATSeria'] ?? "",
        TaxPayerVATNumber = json['TaxPayerVATNumber'] ?? "",
        CashboxSN = json['CashboxSN'] ?? "",
        CashboxIN = json['CashboxIN'] ?? 0,
        CashboxRN = json['CashboxRN'] ?? "",
        StartOn = json['StartOn'] ?? "",
        ReportOn = json['ReportOn'] ?? "",
        CloseOn = json['CloseOn'] ?? "",
        CashierCode = json['CashierCode'] ?? 0,
        ShiftNumber = json['ShiftNumber'] ?? 0,
        DocumentCount = json['DocumentCount'] ?? 0,
        PutMoneySum = json['PutMoneySum'] ?? 0,
        TakeMoneySum = json['TakeMoneySum'] ?? 0,
        ControlSum = json['ControlSum'] ?? 0,
        OfflineMode = json['OfflineMode'] ?? false,
        CashboxOfflineMode = json['CashboxOfflineMode'] ?? false,
        SumInCashbox = json['SumInCashbox'] ?? 0,
        Sell = OperationTypeSummaryApiModel.fromJson(json['Sell'] ?? Map()),
        Buy = OperationTypeSummaryApiModel.fromJson(json['Buy'] ?? Map()),
        ReturnSell =
            OperationTypeSummaryApiModel.fromJson(json['ReturnSell'] ?? Map()),
        ReturnBuy =
            OperationTypeSummaryApiModel.fromJson(json['ReturnBuy'] ?? Map()),
        StartNonNullable =
            NonNullableType.fromJson(json['StartNonNullable'] ?? Map()),
        EndNonNullable =
            NonNullableType.fromJson(json['EndNonNullable'] ?? Map()),
        Ofd = OfdInformation.fromJson(json['Ofd'] ?? Map()),
        super.fromJson(json);

  Map<String, dynamic> toJson() => toMap() as Map<String, dynamic>;

  Map toMap() {
    var map = super.toMap();
    map['ReportNumber'] = ReportNumber;
    map['TaxPayerName'] = TaxPayerName;
    map['TaxPayerIN'] = TaxPayerIN;
    map['TaxPayerVAT'] = TaxPayerVAT;
    map['TaxPayerVATSeria'] = TaxPayerVATSeria;
    map['TaxPayerVATNumber'] = TaxPayerVATNumber;
    map['CashboxSN'] = CashboxSN;
    map['CashboxIN'] = CashboxIN;
    map['CashboxRN'] = CashboxRN;
    map['StartOn'] = StartOn;
    map['ReportOn'] = ReportOn;
    map['CloseOn'] = CloseOn;
    map['CashierCode'] = CashierCode;
    map['ShiftNumber'] = ShiftNumber;
    map['DocumentCount'] = DocumentCount;
    map['PutMoneySum'] = PutMoneySum;
    map['TakeMoneySum'] = TakeMoneySum;
    map['ControlSum'] = ControlSum;
    map['OfflineMode'] = OfflineMode;
    map['CashboxOfflineMode'] = CashboxOfflineMode;
    map['SumInCashbox'] = SumInCashbox;
    map['Sell'] = Sell!.toMap();
    map['Buy'] = Buy!.toMap();
    map['ReturnSell'] = ReturnSell!.toMap();
    map['ReturnBuy'] = ReturnBuy!.toMap();
    map['StartNonNullable'] = StartNonNullable!.toMap();
    map['EndNonNullable'] = EndNonNullable!.toMap();
    map['Ofd'] = Ofd!.toMap();
    return map;
  }

  int? getReportNumber() {
    return ReportNumber;
  }

  void setReportNumber(int reportNumber) {
    ReportNumber = reportNumber;
  }

  String? getTaxPayerName() {
    return TaxPayerName;
  }

  void setTaxPayerName(String taxPayerName) {
    TaxPayerName = taxPayerName;
  }

  String? getTaxPayerIN() {
    return TaxPayerIN;
  }

  void setTaxPayerIN(String taxPayerIN) {
    TaxPayerIN = taxPayerIN;
  }

  bool? getTaxPayerVAT() {
    return TaxPayerVAT;
  }

  void setTaxPayerVAT(bool taxPayerVAT) {
    TaxPayerVAT = taxPayerVAT;
  }

  String? getTaxPayerVATSeria() {
    return TaxPayerVATSeria;
  }

  void setTaxPayerVATSeria(String taxPayerVATSeria) {
    TaxPayerVATSeria = taxPayerVATSeria;
  }

  String? getTaxPayerVATNumber() {
    return TaxPayerVATNumber;
  }

  void setTaxPayerVATNumber(String taxPayerVATNumber) {
    TaxPayerVATNumber = taxPayerVATNumber;
  }

  String? getCashboxSN() {
    return CashboxSN;
  }

  void setCashboxSN(String cashboxSN) {
    CashboxSN = cashboxSN;
  }

  int? getCashboxIN() {
    return CashboxIN;
  }

  void setCashboxIN(int cashboxIN) {
    CashboxIN = cashboxIN;
  }

  String? getCashboxRN() {
    return CashboxRN;
  }

  void setCashboxRN(String cashboxRN) {
    CashboxRN = cashboxRN;
  }

  String? getStartOn() {
    return StartOn;
  }

  void setStartOn(String startOn) {
    StartOn = startOn;
  }

  String? getReportOn() {
    return ReportOn;
  }

  void setReportOn(String reportOn) {
    ReportOn = reportOn;
  }

  String? getCloseOn() {
    return CloseOn;
  }

  void setCloseOn(String closeOn) {
    CloseOn = closeOn;
  }

  int? getCashierCode() {
    return CashierCode;
  }

  void setCashierCode(int cashierCode) {
    CashierCode = cashierCode;
  }

  int? getShiftNumber() {
    return ShiftNumber;
  }

  void setShiftNumber(int shiftNumber) {
    ShiftNumber = shiftNumber;
  }

  int? getDocumentCount() {
    return DocumentCount;
  }

  void setDocumentCount(int documentCount) {
    DocumentCount = documentCount;
  }

  double? getPutMoneySum() {
    return PutMoneySum;
  }

  void setPutMoneySum(double putMoneySum) {
    PutMoneySum = putMoneySum;
  }

  double? getTakeMoneySum() {
    return TakeMoneySum;
  }

  void setTakeMoneySum(double takeMoneySum) {
    TakeMoneySum = takeMoneySum;
  }

  int? getControlSum() {
    return ControlSum;
  }

  void setControlSum(int controlSum) {
    ControlSum = controlSum;
  }

  bool? getOfflineMode() {
    return OfflineMode;
  }

  void setOfflineMode(bool offlineMode) {
    OfflineMode = offlineMode;
  }

  bool? getCashboxOfflineMode() {
    return CashboxOfflineMode;
  }

  void setCashboxOfflineMode(bool cashboxOfflineMode) {
    CashboxOfflineMode = cashboxOfflineMode;
  }

  double? getSumInCashbox() {
    return SumInCashbox;
  }

  void setSumInCashbox(double sumInCashbox) {
    SumInCashbox = sumInCashbox;
  }

  OperationTypeSummaryApiModel? getSell() {
    return Sell;
  }

  void setSell(OperationTypeSummaryApiModel sell) {
    Sell = sell;
  }

  OperationTypeSummaryApiModel? getBuy() {
    return Buy;
  }

  void setBuy(OperationTypeSummaryApiModel buy) {
    Buy = buy;
  }

  OperationTypeSummaryApiModel? getReturnSell() {
    return ReturnSell;
  }

  void setReturnSell(OperationTypeSummaryApiModel returnSell) {
    ReturnSell = returnSell;
  }

  OperationTypeSummaryApiModel? getReturnBuy() {
    return ReturnBuy;
  }

  void setReturnBuy(OperationTypeSummaryApiModel returnBuy) {
    ReturnBuy = returnBuy;
  }

  NonNullableType? getStartNonNullable() {
    return StartNonNullable;
  }

  void setStartNonNullable(NonNullableType startNonNullable) {
    StartNonNullable = startNonNullable;
  }

  NonNullableType? getEndNonNullable() {
    return EndNonNullable;
  }

  void setEndNonNullable(NonNullableType endNonNullable) {
    EndNonNullable = endNonNullable;
  }

  OfdInformation? getOfd() {
    return Ofd;
  }

  void setOfd(OfdInformation ofd) {
    Ofd = ofd;
  }
}

import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';

class ReportState {
  final bool isSales;
  final String itemGroupId;
  //
  final SimpleStoreGetCashierInfoRes simpleStoreGetCashierInfoRes;
  final List<TenderListSalesByShiftRes> tenderListSalesByShiftResList;
  final SimpleTenderGetSalesDetailsRes simpleTenderGetSalesDetailsRes;
  final SimpleReportSummarizeAmountsRes simpleReportSummarizeAmountsRes;
  final List<SimpleReportSummarizeByItemGroupsRes>
      simpleReportSummarizeByItemGroupsResList;
  final List<SimpleReportSummarizeByItemsRes>
      simpleReportSummarizeByItemsResList;
  ReportState(
      {required this.isSales,
      required this.itemGroupId,
      //
      required this.simpleStoreGetCashierInfoRes,
      required this.tenderListSalesByShiftResList,
      required this.simpleTenderGetSalesDetailsRes,
      required this.simpleReportSummarizeAmountsRes,
      required this.simpleReportSummarizeByItemGroupsResList,
      required this.simpleReportSummarizeByItemsResList});
  factory ReportState.initial() {
    return ReportState(
      isSales: true,
      itemGroupId: "",
      //
      simpleStoreGetCashierInfoRes:
          SimpleStoreGetCashierInfoRes(cashierName: "", shiftNo: ""),
      tenderListSalesByShiftResList: [],
      simpleTenderGetSalesDetailsRes: SimpleTenderGetSalesDetailsRes(
          amount: 0,
          salesAccountHistory: [],
          salesDate: "",
          discount: 0,
          items: []),
      simpleReportSummarizeAmountsRes: SimpleReportSummarizeAmountsRes(
          refundAmount: 0, refundCount: 0, salesAmount: 0, salesCount: 0),
      simpleReportSummarizeByItemGroupsResList: [],
      simpleReportSummarizeByItemsResList: [],
    );
  }

  ReportState copyWith(
      {final bool? isSales,
      final String? itemGroupId,
      //
      SimpleStoreGetCashierInfoRes? simpleStoreGetCashierInfoRes,
      List<TenderListSalesByShiftRes>? tenderListSalesByShiftResList,
      SimpleTenderGetSalesDetailsRes? simpleTenderGetSalesDetailsRes,
      SimpleReportSummarizeAmountsRes? simpleReportSummarizeAmountsRes,
      List<SimpleReportSummarizeByItemGroupsRes>?
          simpleReportSummarizeByItemGroupsResList,
      List<SimpleReportSummarizeByItemsRes>?
          simpleReportSummarizeByItemsResList}) {
    return ReportState(
        isSales: isSales ?? this.isSales,
        itemGroupId: itemGroupId ?? this.itemGroupId,
        //
        simpleStoreGetCashierInfoRes:
            simpleStoreGetCashierInfoRes ?? this.simpleStoreGetCashierInfoRes,
        tenderListSalesByShiftResList:
            tenderListSalesByShiftResList ?? this.tenderListSalesByShiftResList,
        simpleTenderGetSalesDetailsRes: simpleTenderGetSalesDetailsRes ??
            this.simpleTenderGetSalesDetailsRes,
        simpleReportSummarizeAmountsRes: simpleReportSummarizeAmountsRes ??
            this.simpleReportSummarizeAmountsRes,
        simpleReportSummarizeByItemGroupsResList:
            simpleReportSummarizeByItemGroupsResList ??
                this.simpleReportSummarizeByItemGroupsResList,
        simpleReportSummarizeByItemsResList:
            simpleReportSummarizeByItemsResList ??
                this.simpleReportSummarizeByItemsResList);
  }
}

import 'Database/Util/CommonUtil.dart';
import 'Util/Common/Common.dart';
import 'exception.dart';
import 'utils.dart';

class Report with Utils {
  static final Report _singleton = Report._internal();

  factory Report() => _singleton;

  Report._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'summarizeAmounts':
        return summarizeAmounts(data);
      case 'summarizeByItemGroups':
        return summarizeByItemGroups(data);
      case 'summarizeByItems':
        return summarizeByItems(data);
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> summarizeAmounts(Map? params) async {
    DateTime startDate = parseSearchDate(params?['startDate'], true, 7);
    DateTime endDate = parseSearchDate(params?['endDate'], false);
    String start = CommonUtil.convertDateForm1(startDate);
    String end = CommonUtil.convertDateForm1(endDate);

    String period = 'FRST_REG_DTTM>="$start" AND FRST_REG_DTTM<="$end"';
    int? salesCount = await _queryOne(
        'SELECT COUNT(ID) count FROM SL1_SLS_HIS WHERE $period AND (CNCL_TP_CD!="R" OR CNCL_LNK IS NOT NULL)',
        'count');
    int? refundCount = await _queryOne(
        'SELECT COUNT(ID) count FROM SL1_SLS_HIS WHERE $period AND ((CNCL_TP_CD="R" AND CNCL_LNK IS NULL) OR CNCL_TP_CD="V")',
        'count');
    double? salesAmount = await _queryOne(
        'SELECT SUM(ABS(TOT_AMT)) amount FROM SL1_SLS_ACC_HIS WHERE $period AND APRVL_TP_CD NOT IN ("2", "4", "5", "7", "12") AND STAT_CD<>"99"',
        'amount');
    double? refundAmount = await _queryOne(
        'SELECT SUM(ABS(TOT_AMT)) amount FROM SL1_SLS_ACC_HIS WHERE $period AND APRVL_TP_CD IN ("2", "4", "5", "7", "12") AND STAT_CD<>"99"',
        'amount');

    return bizResponse(200, 'success', {
      'salesCount': salesCount ?? 0,
      'salesAmount': salesAmount ?? 0,
      'refundCount': refundCount ?? 0,
      'refundAmount': refundAmount ?? 0,
    });
  }

  Future<Map> summarizeByItemGroups(Map? params) async {
    bool isSales = params?['isSales'] ?? true;
    DateTime startDate = parseSearchDate(params?['startDate'], true, 7);
    DateTime endDate = parseSearchDate(params?['endDate'], false);
    String start = CommonUtil.convertDateForm1(startDate);
    String end = CommonUtil.convertDateForm1(endDate);

    String period = 'SI.FRST_REG_DTTM>="$start" AND SI.FRST_REG_DTTM<="$end"';
    String salesOrRefund = isSales
        ? '(SI.CNCL_SNO IS NULL OR SI.CNCL_SNO=0)'
        : '(SI.CNCL_SNO IS NOT NULL AND SI.CNCL_SNO!=0)';
    String sql =
        'SELECT IG.ITM_GRP_ID itemGroupId, IG.ITM_GRP_NM itemGroupName, SUM(ABS(SI.QTY)) totalQty, SUM(ABS(SI.SPLY_AMT)) totalAmount '
        'FROM SL1_SLS_HIS_ITM SI '
        'JOIN IT1_ITM IT ON IT.ITM_ID=SI.ITM_ID '
        'JOIN IT1_ITM_GRP IG ON IG.ITM_GRP_ID=IT.ITM_GRP_ID '
        'WHERE $period AND $salesOrRefund '
        'GROUP BY IG.ITM_GRP_ID';
    List<Map> rows = await _query(sql);
    return bizResponse(200, 'success', rows);
  }

  Future<Map> summarizeByItems(Map? params) async {
    bool isSales = params?['isSales'] ?? true;
    String? itemGroupId = params?['itemGroupId'];
    DateTime startDate = parseSearchDate(params?['startDate'], true, 7);
    DateTime endDate = parseSearchDate(params?['endDate'], false);
    String start = CommonUtil.convertDateForm1(startDate);
    String end = CommonUtil.convertDateForm1(endDate);

    String period = 'SI.FRST_REG_DTTM>="$start" AND SI.FRST_REG_DTTM<="$end"';
    String salesOrRefund = isSales
        ? '(SI.CNCL_SNO IS NULL OR SI.CNCL_SNO=0)'
        : '(SI.CNCL_SNO IS NOT NULL AND SI.CNCL_SNO!=0)';
    String itemGroup =
        itemGroupId != null ? 'IT.ITM_GRP_ID="$itemGroupId"' : '1';
    String sql =
        'SELECT IT.ITM_ID itemId, IT.ITM_NM itemName, IT.SELL_PRICE price, IT.BARCD barcode, IT.IMG_URL imageUri, SUM(ABS(SI.QTY)) totalQty, SUM(ABS(SI.SPLY_AMT)) totalAmount '
        'FROM SL1_SLS_HIS_ITM SI '
        'JOIN IT1_ITM IT ON IT.ITM_ID=SI.ITM_ID '
        'WHERE $period AND $salesOrRefund AND $itemGroup '
        'GROUP BY IT.ITM_ID';
    List<Map> rows = await _query(sql);
    return bizResponse(200, 'success', rows);
  }

  Future _queryOne(String sql, [String? key]) async {
    List<Map> rows = await Common.db!.database.rawQuery(sql);
    Map result = rows.isNotEmpty ? rows.first : {};
    return key != null ? result[key] : result;
  }

  Future<List<Map>> _query(String sql) async {
    return await Common.db!.database.rawQuery(sql);
  }
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SalesHistoryItem.dart';

import 'AbstractDao.dart';

@dao
abstract class SalesHistoryItemDao extends AbstractDao<SalesHistoryItem> {
  @Query('SELECT * FROM SL1_SLS_HIS_ITM WHERE ID = :id')
  Future<SalesHistoryItem?> findById(String id);

  @Query(
      'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = :date AND SL_SNO = :saleNum AND ITM_SNO = :sno')
  Future<SalesHistoryItem?> findByKey(String date, int saleNum, int sno);

  @Query('SELECT * FROM SL1_SLS_HIS_ITM')
  Future<List<SalesHistoryItem>> findAll();

  @Query('SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = :commonDate')
  Future<List<SalesHistoryItem>> findAllByCommonDate(String commonDate);

  @Query(
      'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = :date AND SL_SNO = :saleNum')
  Future<List<SalesHistoryItem>> findAllBySale(String date, int saleNum);

  @Query(
      'SELECT * FROM SL1_SLS_HIS_ITM WHERE COM_DT = :date AND SL_SNO = :saleNum AND CNCL_SNO IS NOT NULL AND CNCL_SNO <> "" AND (STAT_CD <> "99" OR (STAT_CD = "99" AND ODR_OPT_CD = "002")) ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesHistoryItem>> findAllCanceled(String date, int saleNum);

  @Query(
      'SELECT * FROM SL1_SLS_HIS_ITM WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesHistoryItem>> findAllNotSynced();

  @Query('SELECT * FROM SL1_SLS_HIS_ITM WHERE SYNCD_YN = 1')
  Future<List<SalesHistoryItem>> findAllSynced();

  @Query('DELETE FROM SL1_SLS_HIS_ITM')
  Future<void> truncate();
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SalesAccountHistoryTip.dart';

import 'AbstractDao.dart';

@dao
abstract class SalesAccountHistoryTipDao
    extends AbstractDao<SalesAccountHistoryTip> {
  @Query('SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE ID = :id')
  Future<SalesAccountHistoryTip?> findById(String id);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE COM_DT = :date AND SL_SNO = :saleNum AND SLS_ACC_SNO = :sno')
  Future<SalesAccountHistoryTip?> findByKey(String date, int saleNum, int sno);

  @Query('SELECT * FROM SL1_SLS_ACC_HIS_TIP')
  Future<List<SalesAccountHistoryTip>> findAll();

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesAccountHistoryTip>> findAllNotSynced();

  @Query('SELECT * FROM SL1_SLS_ACC_HIS_TIP WHERE SYNCD_YN = 1')
  Future<List<SalesAccountHistoryTip>> findAllSynced();

  @Query('DELETE FROM SL1_SLS_ACC_HIS_TIP')
  Future<void> truncate();
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SalesAccountHistoryDetails.dart';

import 'AbstractDao.dart';

@dao
abstract class SalesAccountHistoryDetailsDao
    extends AbstractDao<SalesAccountHistoryDetails> {
  @Query('SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE ID = :id')
  Future<SalesAccountHistoryDetails?> findById(String id);

  @Query('SELECT * FROM SL1_SLS_ACC_HIS_DTL')
  Future<List<SalesAccountHistoryDetails>> findAll();

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE COM_DT = :date AND SL_SNO = :saleNum AND SLS_ACC_SNO = :sno')
  Future<SalesAccountHistoryDetails?> findBySale(
      String date, int saleNum, int sno);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesAccountHistoryDetails>> findAllNotSynced();

  @Query('SELECT * FROM SL1_SLS_ACC_HIS_DTL WHERE SYNCD_YN = 1')
  Future<List<SalesAccountHistoryDetails>> findAllSynced();

  @Query('DELETE FROM SL1_SLS_ACC_HIS_DTL')
  Future<void> truncate();
}

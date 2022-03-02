import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SalesHistoryDiscount.dart';

import 'AbstractDao.dart';

@dao
abstract class SalesHistoryDiscountDao
    extends AbstractDao<SalesHistoryDiscount> {
  @Query('SELECT * FROM SL1_SLS_HIS_DC WHERE ID = :id')
  Future<SalesHistoryDiscount?> findById(String id);

  @Query(
      'SELECT * FROM SL1_SLS_HIS_DC WHERE COM_DT = :date AND SL_SNO = :saleNum AND DC_SNO = :sno')
  Future<SalesHistoryDiscount?> findByKey(String date, int saleNum, int sno);

  @Query('SELECT * FROM SL1_SLS_HIS_DC')
  Future<List<SalesHistoryDiscount>> findAll();

  @Query(
      'SELECT * FROM SL1_SLS_HIS_DC WHERE COM_DT = :date AND SL_SNO = :saleNum')
  Future<List<SalesHistoryDiscount>> findAllBySale(String date, int saleNum);

  @Query(
      'SELECT * FROM SL1_SLS_HIS_DC WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesHistoryDiscount>> findAllNotSynced();

  @Query('SELECT * FROM SL1_SLS_HIS_DC WHERE SYNCD_YN = 1')
  Future<List<SalesHistoryDiscount>> findAllSynced();

  @Query('DELETE FROM SL1_SLS_HIS_DC')
  Future<void> truncate();
}

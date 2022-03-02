import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SalesHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class SalesHistoryDao extends AbstractDao<SalesHistory> {
  @Query('SELECT * FROM SL1_SLS_HIS WHERE ID = :id')
  Future<SalesHistory?> findById(String id);

  @Query('SELECT * FROM SL1_SLS_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum')
  Future<SalesHistory?> findByKey(String date, int saleNum);

  @Query('SELECT * FROM SL1_SLS_HIS')
  Future<List<SalesHistory>> findAll();

  @Query('SELECT * FROM SL1_SLS_HIS WHERE COM_DT = :date')
  Future<List<SalesHistory>> findAllByDate(String date);

  @Query(
      'SELECT * FROM SL1_SLS_HIS WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesHistory>> findAllNotSynced();

  @Query(
      'SELECT * FROM SL1_SLS_HIS WHERE FRST_REG_DTTM >= :start AND FRST_REG_DTTM <= :end')
  Future<List<SalesHistory>> findAllByCreationDate(String start, String end);

  @Query('SELECT * FROM SL1_SLS_HIS WHERE SYNCD_YN = 1')
  Future<List<SalesHistory>> findAllSynced();

  @Query('SELECT * FROM SL1_SLS_HIS_COM_DT')
  Future<List<SalesHistoryDate>> findAllDate();

  @Query('DELETE FROM SL1_SLS_HIS_COM_DT')
  Future<void> truncate();
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/DailyReportHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class DailyReportHistoryDao extends AbstractDao<DailyReportHistory> {
  @Query('SELECT * FROM BI1_DAILY_RPT_HIS WHERE ID = :id')
  Future<DailyReportHistory?> findById(String id);

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<DailyReportHistory?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS WHERE COM_DT = :commonDate AND COM_SNO =  :sno')
  Future<DailyReportHistory?> findByCommonDateAndCommonSerialNumber(
      String commonDate, int sno);

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS')
  Future<List<DailyReportHistory>> findAll();

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS WHERE SYNCD_YN = 1')
  Future<List<DailyReportHistory>> findAllBySynchronizedYn();

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS WHERE SYNCD_YN <> 1 ORDER BY FRST_REG_DTTM ASC ')
  Future<List<DailyReportHistory>> findAllBySynchronizedYnNot();

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS WHERE STAT_CD !=  :stateCode')
  Future<List<DailyReportHistory>> findAllStateCode(String stateCode);

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS WHERE COM_DT = :commonDate AND STAT_CD !=  :stateCode')
  Future<List<DailyReportHistory>> findAllByCommonDateAndStateCode(
      String commonDate, String stateCode);

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS')
  Stream<List<DailyReportHistory>> findAllAsStream();
}

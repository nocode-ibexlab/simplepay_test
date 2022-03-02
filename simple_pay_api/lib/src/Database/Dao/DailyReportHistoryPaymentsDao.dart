import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/DailyReportHistoryPayments.dart';

import 'AbstractDao.dart';

@dao
abstract class DailyReportHistoryPaymentsDao
    extends AbstractDao<DailyReportHistoryPayments> {
  @Query('SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE ID = :id')
  Future<DailyReportHistoryPayments?> findById(String id);

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<DailyReportHistoryPayments?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE COM_DT = :commonDate  AND COM_SNO =  :sno AND PAY_SEC_CD  = :paySectionCode ')
  Future<DailyReportHistoryPayments?>
      findAllByCommonDateAndCommonSerialNumberAndPaymentSectionCode(
          String commonDate, int sno, String paySectionCode);

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS')
  Future<List<DailyReportHistoryPayments>> findAll();

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE SYNCD_YN = 1')
  Future<List<DailyReportHistoryPayments>> findAllBySynchronizedYn();

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE SYNCD_YN <> 1 ORDER BY FRST_REG_DTTM ASC ')
  Future<List<DailyReportHistoryPayments>> findAllBySynchronizedYnNot();

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE COM_DT = :commonDate AND STAT_CD !=  :stateCode')
  Future<List<DailyReportHistoryPayments>> findAllByCommonDateAndStateCode(
      String commonDate, String stateCode);

  @Query(
      'SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS WHERE COM_DT = :commonDate AND PAY_SEC_CD  = :paySectionCode AND  STAT_CD !=  :stateCode')
  Future<List<DailyReportHistoryPayments>>
      findAllByCommonDateAndPaymentSectionCodeAndStateCode(
          String commonDate, String paySectionCode, String stateCode);

  @Query('SELECT * FROM BI1_DAILY_RPT_HIS_PAYMENTS')
  Stream<List<DailyReportHistoryPayments>> findAllAsStream();
}

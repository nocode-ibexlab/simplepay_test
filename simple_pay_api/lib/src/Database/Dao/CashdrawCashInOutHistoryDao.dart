import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/CashdrawCashInOutHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class CashdrawCashInOutHistoryDao
    extends AbstractDao<CashdrawCashInOutHistory> {
  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE ID = :id')
  Future<CashdrawCashInOutHistory?> findById(String id);

  @Query(
      'SELECT * FROM BI1_CDRW_CASH_IO_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<CashdrawCashInOutHistory?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = :commonDate AND COM_SNO = :commonSerialNumber')
  Future<CashdrawCashInOutHistory?> findByCommonDateAndCommonSerialNumber(
      String commonDate, int commonSerialNumber);

  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE SLS_LNK = :salesLink')
  Future<CashdrawCashInOutHistory?> findOrderBySalesLink(String salesLink);

  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS')
  Future<List<CashdrawCashInOutHistory>> findAll();

  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = :commonDate')
  Future<List<CashdrawCashInOutHistory>> findAllByCommonDate(String commonDate);

  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = :commonDate')
  Future<List<CashdrawCashInOutHistory>> findAllByCashdrawSectionCode(
      String commonDate);

  @Query(
      'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE CDRW_SEC_CD = :cashDrawerSection AND FRST_REG_DTTM >=  :openDate AND FRST_REG_DTTM <=  :closeDate  '
      ' AND  STAT_CD != :stateCode AND IO_TP_CD IN (:inOutTypeCodes) ')
  Future<List<CashdrawCashInOutHistory>>
      findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCodeAndInOutTypeCode(
          String cashDrawerSection,
          String openDate,
          String closeDate,
          String stateCode,
          List<String> inOutTypeCodes);

  @Query(
      'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE CDRW_SEC_CD = :cashDrawerSection AND FRST_REG_DTTM >=  :openDate AND FRST_REG_DTTM <=  :closeDate  '
      ' AND  STAT_CD != :stateCode')
  Future<List<CashdrawCashInOutHistory>>
      findAllByCashdrawSectionCodeAndFirstRegistrationDatetimeAndStateCode(
          String cashDrawerSection,
          String openDate,
          String closeDate,
          String stateCode);

  @Query(
      'SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE COM_DT = :commonDate AND  STAT_CD != :stateCode AND IO_TP_CD =:inOutTypeCode')
  Future<List<CashdrawCashInOutHistory>>
      findAllByCommonDateAndStateCodeAndInOutTypeCode(
          String commonDate, String stateCode, String inOutTypeCode);

  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS WHERE SYNCD_YN = :value')
  Future<List<CashdrawCashInOutHistory>> findAllBySynchronizedYn(bool value);

  @Query('SELECT * FROM BI1_CDRW_CASH_IO_HIS')
  Stream<List<CashdrawCashInOutHistory>> findAllAsStream();
}

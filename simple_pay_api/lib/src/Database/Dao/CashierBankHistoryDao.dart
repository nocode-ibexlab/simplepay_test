import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/CashierBankHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class CashierBankHistoryDao extends AbstractDao<CashierBankHistory> {
  @Query('SELECT * FROM BI1_CSHR_BNK_HIS WHERE ID = :id')
  Future<CashierBankHistory?> findById(String id);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS ORDER BY BIZ_START_DTTM DESC LIMIT 1')
  Future<CashierBankHistory?> findOrderByBusinessStartDatetime();

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_START_DTTM >= :start and BIZ_START_DTTM <= :end')
  Future<List<CashierBankHistory>> findBetween(String start, String end);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE COM_DT = :commonDate  AND COM_SNO = :commonSerialNumber AND CDRW_SEC_CD =:cashdrawSectionCode ')
  Future<CashierBankHistory?>
      findAllByCommonDateAndCommonSerialNumberAndCashdrawSectionCode(
          String commonDate,
          int commonSerialNumber,
          String cashdrawSectionCode);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS')
  Future<List<CashierBankHistory>> findAll();

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS WHERE COM_DT = :commonDate')
  Future<List<CashierBankHistory>> findAllByCommonDate(String commonDate);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE CDRW_SEC_CD = :cashdrawSectionCode AND STR_TRM_ID = :storeTerminalId ORDER BY BIZ_END_DTTM DESC')
  Future<List<CashierBankHistory>>
      findAllByCashdrawSectionCodeAndStoreTerminalId(
          String cashdrawSectionCode, String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD = :businessOpenCloseSectionCode AND STR_TRM_ID = :storeTerminalId ORDER BY CDRW_SEC_CD ASC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeAndStoreTerminalId(
          String businessOpenCloseSectionCode, String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != :businessOpenCloseSectionCode AND STR_TRM_ID = :storeTerminalId ORDER BY BIZ_END_DTTM DESC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndStoreTerminalId(
          String businessOpenCloseSectionCode, String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD = :businessOpenCloseSectionCode AND CSHR_TP_CD = :cashierTypeCode AND STR_TRM_ID = :storeTerminalId ORDER BY BIZ_START_DTTM DESC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeAndCashierTypeCodeAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != :businessOpenCloseSectionCode AND CSHR_TP_CD = :cashierTypeCode AND STR_TRM_ID = :storeTerminalId ORDER BY BIZ_START_DTTM DESC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != :businessOpenCloseSectionCode AND CSHR_TP_CD = :cashierTypeCode AND STR_TRM_ID = :storeTerminalId ORDER BY BIZ_START_DTTM DESC LIMIT :limit OFFSET :_offset')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndStoreTerminalIdLimitOffset(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String storeTerminalId,
          int limit,
          int _offset);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != :businessOpenCloseSectionCode AND CSHR_TP_CD = :cashierTypeCode '
      ' AND BIZ_START_DTTM>=  :businessStartDatetime AND BIZ_END_DTTM <=  :businessEndDatetime  AND CNCL_SNO =  :cancelSerialNumber  AND SHIFT_SNO =  :shiftSerialNumber  '
      ' AND STR_TRM_ID = :storeTerminalId ORDER BY BIZ_END_DTTM DESC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCashierTypeCodeAndBusinessStartDatetimeAndBusinessEndDatetimeAndCancelSerialNumberAndShiftSerialNumberAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String cashierTypeCode,
          String businessStartDatetime,
          String businessEndDatetime,
          int cancelSerialNumber,
          String shiftSerialNumber,
          String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD != :businessOpenCloseSectionCode AND COM_DT = :commonDate AND CSHR_TP_CD = :cashierTypeCode '
      ' AND CNCL_SNO =  :cancelSerialNumber AND STR_TRM_ID = :storeTerminalId ORDER BY COM_SNO DESC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeNotAndCommonDateAndCashierTypeCodeAndCancelSerialNumberAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String commonDate,
          String cashierTypeCode,
          int cancelSerialNumber,
          String storeTerminalId);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS WHERE BIZ_OPN_CLS_SEC_CD = :businessOpenCloseSectionCode AND COM_DT = :commonDate AND CSHR_TP_CD = :cashierTypeCode '
      ' AND CNCL_SNO =  :cancelSerialNumber AND STR_TRM_ID = :storeTerminalId ORDER BY COM_SNO DESC')
  Future<List<CashierBankHistory>>
      findAllByBusinessOpenCloseSectionCodeAndCommonDateAndCashierTypeCodeAndCancelSerialNumberAndStoreTerminalId(
          String businessOpenCloseSectionCode,
          String commonDate,
          String cashierTypeCode,
          int cancelSerialNumber,
          String storeTerminalId);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS WHERE SYNCD_YN = :value')
  Future<List<CashierBankHistory>> findAllBySynchronizedYn(bool value);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS')
  Stream<List<CashierBankHistory>> findAllAsStream();
}

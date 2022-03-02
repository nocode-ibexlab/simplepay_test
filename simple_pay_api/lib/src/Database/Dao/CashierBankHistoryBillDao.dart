import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/CashierBankHistoryBill.dart';

import 'AbstractDao.dart';

@dao
abstract class CashierBankHistoryBillDao
    extends AbstractDao<CashierBankHistoryBill> {
  @Query('SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE ID = :id')
  Future<CashierBankHistoryBill?> findById(String id);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS_BIL ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<CashierBankHistoryBill?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = :commonDate  AND COM_SNO = :commonSerialNumber AND CDRW_SEC_CD =:cashdrawSectionCode AND BIL_SNO =:billSerialNumber ')
  Future<CashierBankHistoryBill?>
      findByCommonDateAndCommonSerialNumberAndCashdrawSectionCodeAndBillSerialNumber(
          String commonDate,
          int commonSerialNumber,
          String cashdrawSectionCode,
          int billSerialNumber);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = :commonDate AND COM_SNO =:commonSerialNumber AND BIZ_OPN_CLS_SEC_CD = :businessOpenCloseSectionCode')
  Future<CashierBankHistoryBill?>
      findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCode(
          String commonDate,
          int commonSerialNumber,
          String businessOpenCloseSectionCode);

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = :commonDate AND COM_SNO =:commonSerialNumber AND BIZ_OPN_CLS_SEC_CD != :businessOpenCloseSectionCode')
  Future<CashierBankHistoryBill?>
      findByCommonDateAndCommonSerialNumberAndBusinessOpenCloseSectionCodeNot(
          String commonDate,
          int commonSerialNumber,
          String businessOpenCloseSectionCode);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS_BIL')
  Future<List<CashierBankHistoryBill>> findAll();

  @Query(
      'SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE COM_DT = :commonDate AND COM_SNO =:commonSerialNumber AND CDRW_SEC_CD = :cashdrawSectionCode ORDER BY BIL_SNO DESC LIMIT 1')
  Future<List<CashierBankHistoryBill>>
      findAllByCommonDateAndCommonSerialNumberAndCashdrawSectionCode(
          String commonDate,
          int commonSerialNumber,
          String cashdrawSectionCode);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS_BIL WHERE SYNCD_YN = :value')
  Future<List<CashierBankHistoryBill>> findAllBySynchronizedYn(bool value);

  @Query('SELECT * FROM BI1_CSHR_BNK_HIS_BIL')
  Stream<List<CashierBankHistoryBill>> findAllAsStream();
}

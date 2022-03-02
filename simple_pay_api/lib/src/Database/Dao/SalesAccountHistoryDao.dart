import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SalesAccountHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class SalesAccountHistoryDao extends AbstractDao<SalesAccountHistory> {
  @Query('SELECT * FROM SL1_SLS_ACC_HIS WHERE ID = :id')
  Future<SalesAccountHistory?> findById(String id);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND SLS_ACC_SNO = :sno')
  Future<SalesAccountHistory?> findByKey(String date, int saleNum, int sno);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE PAY_APRVL_NO = :appNo AND STAT_CD <>"99"')
  Future<SalesAccountHistory?> findByApprovalNo(String appNo);

  @Query('SELECT * FROM SL1_SLS_ACC_HIS')
  Future<List<SalesAccountHistory>> findAll();

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum')
  Future<List<SalesAccountHistory>> findAllBySale(String date, int saleNum);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND APRVL_TP_CD NOT IN (:appTypeCodes) AND STAT_CD <> "99"')
  Future<List<SalesAccountHistory>> findAllBySaleNotInAppTypes(
      String date, int saleNum, List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND CNCL_SNO = "" AND APRVL_TP_CD IN (:appTypeCodes) AND STAT_CD <> "99"')
  Future<List<SalesAccountHistory>> findAllBySaleInAppTypes(
      String date, int saleNum, List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND APRVL_TP_CD NOT IN (:appTypeCodes) AND STAT_CD <> "99" ORDER BY APRVL_DT_PRI_PTN DESC')
  Future<List<SalesAccountHistory>>
      findAllBySaleNotInAppTypesOrderByApprovalDate(
          String date, int saleNum, List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND RECPT_NO IS NOT NULL ORDER BY RECPT_NO DESC')
  Future<List<SalesAccountHistory>> findAllBySaleOrderByReceiptNo(
      String date, int saleNum);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND CNCL_EMP_ID IS NOT NULL AND STAT_CD <> "99" ORDER BY FRST_REG_DTTM ASC')
  Future<List<SalesAccountHistory>> findAllCanceled(String date, int saleNum);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE RECPT_NO LIKE :receiptNo AND STAT_CD <> "99" ORDER BY APRVL_DT_PRI_PTN DESC')
  Future<List<SalesAccountHistory>> findAllByReceiptNo(String receiptNo);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND RECPT_NO LIKE :receiptNo AND STAT_CD <> "99" ORDER BY APRVL_DT_PRI_PTN DESC')
  Future<List<SalesAccountHistory>> findAllBySaleReceiptNo(
      String date, int saleNum, String receiptNo);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE SYNCD_YN IS NULL OR SYNCD_YN = 0 ORDER BY FRST_REG_DTTM DESC')
  Future<List<SalesAccountHistory>> findAllNotSynced();

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE COM_DT = :date AND SL_SNO = :saleNum AND CNCL_SNO = "" AND APRVL_TP_CD IN (:appTypeCodes) AND STAT_CD <> "99"')
  Future<List<SalesAccountHistory>> findAllNotCanceled(
      String date, int saleNum, List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE PAY_SEC_CD = :sectionCode AND COM_DT = :date AND SPLY_VAL IS NOT NULL AND SPLY_VAL > 0 AND APRVL_TP_CD NOT IN (:appTypeCodes) AND STAT_CD <> "99"')
  Future<List<SalesAccountHistory>> findAllByPaymentSection(
      String sectionCode, String date, List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE PAY_SEC_CD = :sectionCode AND COM_DT = :date AND SPLY_VAL IS NOT NULL AND APRVL_TP_CD NOT IN (:appTypeCodes) AND NOT_IN_SLS_YN <> 1 AND STAT_CD <> "99"')
  Future<List<SalesAccountHistory>> findAllSoldByPaymentSection(
      String sectionCode, String date, List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE FRST_REG_DTTM >= :start AND FRST_REG_DTTM <= :end AND APRVL_TP_CD NOT IN (:appTypeCodes) AND STAT_CD <> "99"')
  Future<List<SalesAccountHistory>> findAllByCreationDate(
      String start, String end, List<String> appTypeCodes);

  @Query('SELECT * FROM SL1_SLS_ACC_HIS WHERE SYNCD_YN = 1')
  Future<List<SalesAccountHistory>> findAllSynced();

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE APRVL_TP_CD NOT IN (:appTypeCodes) AND STAT <> "99" ORDER BY LAST_REV_DTTM DESC')
  Future<List<SalesAccountHistory>> findAllOrderByModificationDate(
      List<String> appTypeCodes);

  @Query(
      'SELECT * FROM SL1_SLS_ACC_HIS WHERE APRVL_DT_PRI_PTN >= :start AND APRVL_DT_PRI_PTN <= :end AND APRVL_TP_CD NOT IN (:appTypeCodes) AND STAT_CD <> "99" ORDER BY APRVL_DT_PRI_PTN DESC')
  Future<List<SalesAccountHistory>> findAllByApprovalDate(
      String start, String end, List<String> appTypeCodes);

  @Query('DELETE FROM SL1_SLS_ACC_HIS')
  Future<void> truncate();
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class OrderHistoryDao extends AbstractDao<OrderHistory> {
  @Query('SELECT * FROM OD1_ODR_HIS WHERE ID = :id')
  Future<OrderHistory?> findById(String id);

  @Query('SELECT * FROM OD1_ODR_HIS WHERE COM_DT = :date AND COM_SNO = :sno')
  Future<OrderHistory?> findByKey(String date, int sno);

  @Query('SELECT * FROM OD1_ODR_HIS')
  Future<List<OrderHistory>> findAll();

  @Query(
      'SELECT * FROM OD1_ODR_HIS WHERE COM_DT||COM_SNO LIKE = :receiptNo AND TAB_ID <> = :tableId')
  Future<List<OrderHistory>> findAllByReceiptNo(
      String receiptNo, String tableId);

  @Query('SELECT * FROM OD1_ODR_HIS WHERE TAB_ID = :tableId ORDER BY ID ASC')
  Future<List<OrderHistory>> findAllByTableId(String tableId);

  @Query('SELECT * FROM OD1_ODR_HIS WHERE COM_DT = :date AND TAB_ID = :tableId')
  Future<List<OrderHistory>> findAllByDateTableId(String date, String tableId);

  @Query(
      'SELECT * FROM OD1_ODR_HIS WHERE STAT_CD <>"99" ORDER BY FRST_REG_DTTM DESC')
  Future<List<OrderHistory>> findAllOrderByDate();

  @Query('DELETE FROM OD1_ODR_HIS')
  Future<void> truncate();

  // CAT 상품은 동기화에 포함되지 않음
  @Query(
      'SELECT * FROM OD1_ODR_HIS WHERE TAB_ID <> "9999" AND (SYNCD_YN IS NULL OR SYNCD_YN = 0)')
  Future<List<OrderHistory>> findAllNotSynced();

  @Query('SELECT * FROM OD1_ODR_HIS WHERE TAB_ID <> "9999" AND SYNCD_YN = 1')
  Future<List<OrderHistory>> findAllSynced();
}

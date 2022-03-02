import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistoryItem.dart';

import 'AbstractDao.dart';

@dao
abstract class OrderHistoryItemDao extends AbstractDao<OrderHistoryItem> {
  @Query('SELECT * FROM OD1_ODR_HIS_ITM WHERE ID = :id')
  Future<OrderHistoryItem?> findById(String id);

  @Query('SELECT * FROM OD1_ODR_HIS_ITM')
  Future<List<OrderHistoryItem>> findAll();

  @Query(
      'SELECT * FROM OD1_ODR_HIS_ITM WHERE COM_DT = :date AND COM_SNO = :orderNum')
  Future<List<OrderHistoryItem>> findAllByOrder(String date, int orderNum);

  @Query(
      'SELECT * FROM OD1_ODR_HIS_ITM WHERE COM_DT = :date AND COM_SNO = :orderNum AND QTY >= 0')
  Future<List<OrderHistoryItem>> findAllForPayment(String date, int orderNum);

  @Query(
      'SELECT * FROM OD1_ODR_HIS_ITM WHERE COM_DT = :date AND COM_SNO = :orderNum AND MNU_PAY_SNO = :paidSno')
  Future<List<OrderHistoryItem>> findAllPaid(
      String date, int orderNum, int paidSno);

  @Query('DELETE FROM OD1_ODR_HIS_ITM')
  Future<void> truncate();
}

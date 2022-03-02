import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistoryDiscount.dart';

import 'AbstractDao.dart';

@dao
abstract class OrderHistoryDiscountDao
    extends AbstractDao<OrderHistoryDiscount> {
  @Query('SELECT * FROM OD1_ODR_HIS_DC WHERE ID = :id')
  Future<OrderHistoryDiscount?> findById(String id);

  @Query('SELECT * FROM OD1_ODR_HIS_DC ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<OrderHistoryDiscount?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM OD1_ODR_HIS_DC')
  Future<List<OrderHistoryDiscount>> findAll();

  @Query(
      'SELECT * FROM OD1_ODR_HIS_DC WHERE COM_DT = :date AND COM_SNO = :orderNum')
  Future<List<OrderHistoryDiscount>> findAllByOrder(String date, int orderNum);

  @Query('DELETE FROM OD1_ODR_HIS_DC')
  Future<void> truncate();
}

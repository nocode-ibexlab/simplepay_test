import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistoryCancelItem.dart';

import 'AbstractDao.dart';

@dao
abstract class OrderHistoryCancelItemDao
    extends AbstractDao<OrderHistoryCancelItem> {
  @Query('SELECT * FROM OD1_ODR_HIS_CNCL_ITM WHERE ID = :id')
  Future<OrderHistoryCancelItem?> findById(String id);

  @Query(
      'SELECT * FROM OD1_ODR_HIS_CNCL_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<OrderHistoryCancelItem?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM OD1_ODR_HIS_CNCL_ITM')
  Future<List<OrderHistoryCancelItem>> findAll();

  @Query(
      'SELECT * FROM OD1_ODR_HIS_CNCL_ITM WHERE COM_DT = :date AND COM_SNO = :orderNum')
  Future<List<OrderHistoryCancelItem>> findAllByOrder(
      String date, int orderNum);

  @Query('DELETE FROM OD1_ODR_HIS_CNCL_ITM')
  Future<void> truncate();
}

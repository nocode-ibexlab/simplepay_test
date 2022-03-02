import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistoryDeletion.dart';

import 'AbstractDao.dart';

@dao
abstract class OrderHistoryDeletionDao
    extends AbstractDao<OrderHistoryDeletion> {
  @Query('SELECT * FROM OD1_ODR_HIS_DEL WHERE ID = :id')
  Future<OrderHistoryDeletion?> findById(String id);

  @Query('SELECT * FROM OD1_ODR_HIS_DEL WHERE SYNCD_YN = 0')
  Future<List<OrderHistoryDeletion>> findAllNotSynced();
}

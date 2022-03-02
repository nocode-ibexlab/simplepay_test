import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistoryKitchenMemo.dart';

import 'AbstractDao.dart';

@dao
abstract class OrderHistoryKitchenMemoDao
    extends AbstractDao<OrderHistoryKitchenMemo> {
  @Query('SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE ID = :id')
  Future<OrderHistoryKitchenMemo?> findById(String id);

  @Query('SELECT * FROM OD1_ODR_HIS_KTCHN_MMO')
  Future<List<OrderHistoryKitchenMemo>> findAll();

  @Query(
      'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE KTCHN_MMO_ID = :kitchenMemoId')
  Future<List<OrderHistoryKitchenMemo>> findAllByKitchenMemoId(
      String kitchenMemoId);

  @Query(
      'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE COM_DT = :date AND COM_SNO = :orderNum')
  Future<List<OrderHistoryKitchenMemo>> findAllByOrder(
      String date, int orderNum);

  @Query(
      'SELECT * FROM OD1_ODR_HIS_KTCHN_MMO WHERE COM_DT = :date AND COM_SNO = :orderNum AND ITM_SNO = :itemSno')
  Future<List<OrderHistoryKitchenMemo>> findAllByOrderItem(
      String date, int orderNum, int itemSno);

  @Query('DELETE FROM OD1_ODR_HIS_KTCHN_MMO')
  Future<void> truncate();
}

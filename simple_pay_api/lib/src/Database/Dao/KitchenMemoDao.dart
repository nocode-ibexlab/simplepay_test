import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/KitchenMemo.dart';

import 'AbstractDao.dart';

@dao
abstract class KitchenMemoDao extends AbstractDao<KitchenMemo> {
  @Query('SELECT * FROM ST1_KTCHN_MMO WHERE KTCHN_MMO_ID = :id')
  Future<KitchenMemo?> findById(String id);

  @Query('SELECT * FROM ST1_KTCHN_MMO ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<KitchenMemo?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_KTCHN_MMO')
  Future<List<KitchenMemo>> findAll();

  @Query(
      'SELECT * FROM ST1_KTCHN_MMO WHERE  (HIDE_YN IS NULL OR HIDE_YN = 0) AND KTCHN_MMO_ID = :kitchenMemoGroupId')
  Future<List<KitchenMemo>> findAllByHideNotAndKitchenMemoGroupId(
      String kitchenMemoGroupId);

  @Query('SELECT * FROM ST1_KTCHN_MMO')
  Stream<List<KitchenMemo>> findAllAsStream();
}

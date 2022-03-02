import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/KitchenMemoGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class KitchenMemoGroupDao extends AbstractDao<KitchenMemoGroup> {
  @Query('SELECT * FROM ST1_KTCHN_MMO_GRP WHERE KTCHN_MMO_GRP_ID = :id')
  Future<KitchenMemoGroup?> findById(String id);

  @Query('SELECT * FROM ST1_KTCHN_MMO_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<KitchenMemoGroup?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_KTCHN_MMO_GRP')
  Future<List<KitchenMemoGroup>> findAll();

  @Query(
      'SELECT * FROM ST1_KTCHN_MMO_GRP WHERE (HIDE_YN IS NULL OR HIDE_YN = 0)')
  Future<List<KitchenMemoGroup>> findAllByHideNot();

  @Query('SELECT * FROM ST1_KTCHN_MMO_GRP')
  Stream<List<KitchenMemoGroup>> findAllAsStream();
}

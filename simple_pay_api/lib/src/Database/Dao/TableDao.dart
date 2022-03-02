import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/Table.dart';

import 'AbstractDao.dart';

@dao
abstract class TableDao extends AbstractDao<Table> {
  @Query('SELECT * FROM ST1_TAB WHERE TAB_ID = :id')
  Future<Table?> findById(String id);

  @Query('SELECT * FROM ST1_TAB ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<Table?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_TAB')
  Future<List<Table>> findAll();

  @Query(
      'SELECT * FROM ST1_TAB WHERE TAB_GRP_ID = :groupId AND HIDE_YN = 0 AND STAT_CD <> "99" ORDER BY TAB_NM')
  Future<List<Table>> findAllByGroupId(String groupId);

  @Query(
      'SELECT * FROM ST1_TAB WHERE TAB_ID LIKE :id AND HIDE_YN = 0 AND STAT_CD <> "99" ORDER BY TAB_NM')
  Future<List<Table>> findAllByIdLike(String id);

  @Query('SELECT * FROM ST1_TAB WHERE SRV_TAB_ID = :id')
  Future<Table?> findByServerTableId(String id);
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/TableGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class TableGroupDao extends AbstractDao<TableGroup> {
  @Query('SELECT * FROM ST1_TAB_GRP WHERE TAB_GRP_ID = :id')
  Future<TableGroup?> findById(String id);

  @Query('SELECT * FROM ST1_TAB_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<TableGroup?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_TAB_GRP')
  Future<List<TableGroup>> findAll();

  @Query(
      'SELECT * FROM ST1_TAB_GRP WHERE HIDE_YN = 0 AND STAT_CD <> "99" ORDER BY LOC_Z,LOC_Y,LOC_X')
  Future<List<TableGroup>> findAllOrderByLocation();
}

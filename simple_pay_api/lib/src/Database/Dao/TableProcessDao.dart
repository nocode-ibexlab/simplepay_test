import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/TableProcess.dart';

import 'AbstractDao.dart';

@dao
abstract class TableProcessDao extends AbstractDao<TableProcess> {
  @Query('SELECT * FROM ST1_TAB_PROC WHERE TAB_ID = :id')
  Future<TableProcess?> findById(String id);

  @Query('SELECT * FROM ST1_TAB_PROC ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<TableProcess?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_TAB_PROC')
  Future<List<TableProcess>> findAll();
}

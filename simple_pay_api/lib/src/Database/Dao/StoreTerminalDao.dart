import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/StoreTerminal.dart';

import 'AbstractDao.dart';

@dao
abstract class StoreTerminalDao extends AbstractDao<StoreTerminal> {
  @Query('SELECT * FROM ST1_STR_TRM WHERE STR_TRM_ID = :id')
  Future<StoreTerminal?> findById(String id);

  @Query('SELECT * FROM ST1_STR_TRM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<StoreTerminal?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_STR_TRM')
  Future<List<StoreTerminal>> findAll();

  @Query('SELECT * FROM ST1_STR_TRM')
  Stream<List<StoreTerminal>> findAllAsStream();
}

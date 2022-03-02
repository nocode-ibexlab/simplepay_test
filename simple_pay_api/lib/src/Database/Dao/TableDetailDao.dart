import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/TableDetail.dart';

import 'AbstractDao.dart';

@dao
abstract class TableDetailDao extends AbstractDao<TableDetail> {
  @Query('SELECT * FROM ST1_TAB_DTL WHERE TAB_ID = :id')
  Future<TableDetail?> findById(String id);

  @Query('SELECT * FROM ST1_TAB_DTL ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<TableDetail?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_TAB_DTL')
  Future<List<TableDetail>> findAll();
}

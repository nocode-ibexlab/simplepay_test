import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/TableLink.dart';

import 'AbstractDao.dart';

@dao
abstract class TableLinkDao extends AbstractDao<TableLink> {
  @Query('SELECT * FROM ST1_TAB_LNK WHERE ID = :id')
  Future<TableLink?> findById(String id);

  @Query('SELECT * FROM ST1_TAB_LNK ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<TableLink?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_TAB_LNK')
  Future<List<TableLink>> findAll();

  @Query(
      'SELECT * FROM ST1_TAB_LNK WHERE TAB_ID = :tableId ORDER BY LNKD_TAB_ID')
  Future<List<TableLink>> findAllByTableId(String tableId);

  @Query('SELECT * FROM ST1_TAB_LNK WHERE LNKD_TAB_ID = :tableId')
  Future<List<TableLink>> findAllByLinkedTableId(String tableId);
}

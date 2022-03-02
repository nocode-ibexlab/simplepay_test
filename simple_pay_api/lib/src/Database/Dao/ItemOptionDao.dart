import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/ItemOption.dart';

import 'AbstractDao.dart';

@dao
abstract class ItemOptionDao extends AbstractDao<ItemOption> {
  @Query('SELECT * FROM IT1_ITM_OPT WHERE ITM_OPT_ID = :id')
  Future<ItemOption?> findById(String id);

  @Query('SELECT * FROM IT1_ITM_OPT ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<ItemOption?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM IT1_ITM_OPT WHERE STAT_CD <>"99" ')
  Future<List<ItemOption>> findAll();

  @Query(
      'SELECT * FROM IT1_ITM_OPT WHERE ITM_ID = :itemId AND STAT_CD != :stateCode ORDER BY ITM_OPT_SNO ASC ')
  Future<List<ItemOption>> findAllByItemId(String itemId, String stateCode);

  @Query('SELECT * FROM IT1_ITM_OPT')
  Stream<List<ItemOption>> findAllAsStream();
}

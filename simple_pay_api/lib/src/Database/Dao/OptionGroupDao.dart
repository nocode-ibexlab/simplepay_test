import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OptionGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class OptionGroupDao extends AbstractDao<OptionGroup> {
  @Query('SELECT * FROM IT1_OPT_GRP WHERE OPT_GRP_ID = :id AND STAT_CD <>"99"')
  Future<OptionGroup?> findById(String id);

  @Query('SELECT * FROM IT1_OPT_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<OptionGroup?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM IT1_OPT_GRP WHERE OPT_GRP_ID in (SELECT OPT_GRP_ID FROM IT1_ITM_OPT WHERE STAT_CD <>"99" )')
  Future<List<OptionGroup>> findAllItemOption();

  @Query(
      'SELECT * FROM IT1_OPT_GRP WHERE OPT_GRP_ID in (SELECT OPT_GRP_ID FROM IT1_ITM_OPT WHERE ITM_ID = :itemId AND STAT_CD '
      '!= :stateCode ORDER BY ITM_OPT_SNO ASC) AND STAT_CD <>"99" ')
  Future<List<OptionGroup>> findAllItemOptionByItemId(
      String itemId, String stateCode);

  @Query('SELECT * FROM IT1_OPT_GRP')
  Future<List<OptionGroup>> findAll();

  @Query('SELECT * FROM IT1_OPT_GRP')
  Stream<List<OptionGroup>> findAllAsStream();
}

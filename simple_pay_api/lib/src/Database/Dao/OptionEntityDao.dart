import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/OptionEntity.dart';

import 'AbstractDao.dart';

@dao
abstract class OptionEntityDao extends AbstractDao<OptionEntity> {
  @Query('SELECT * FROM IT1_OPT_ENTY WHERE OPT_ENTY_ID = :id')
  Future<OptionEntity?> findById(String id);

  @Query('SELECT * FROM IT1_OPT_ENTY ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<OptionEntity?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM IT1_OPT_ENTY WHERE OPT_GRP_ID= :groupId AND STAT_CD != :stateCode ')
  Future<List<OptionEntity>> findByItemIdAndStateCode(
      String groupId, String stateCode);

  @Query('SELECT * FROM IT1_OPT_ENTY')
  Future<List<OptionEntity>> findAll();

  @Query('SELECT * FROM IT1_OPT_ENTY')
  Stream<List<OptionEntity>> findAllAsStream();
}

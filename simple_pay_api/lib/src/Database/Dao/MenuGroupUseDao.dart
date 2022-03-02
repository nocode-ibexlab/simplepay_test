import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/MenuGroupUse.dart';

import 'AbstractDao.dart';

@dao
abstract class MenuGroupUseDao extends AbstractDao<MenuGroupUse> {
  @Query('SELECT * FROM ST1_MNU_GRP_USE WHERE ID = :id')
  Future<MenuGroupUse?> findById(String id);

  @Query('SELECT * FROM ST1_MNU_GRP_USE ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<MenuGroupUse?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_MNU_GRP_USE')
  Future<List<MenuGroupUse>> findAll();

  @Query(
      'SELECT * FROM ST1_MNU_GRP_USE WHERE BIZ_SEC_CD = :businessSectionCode AND USE_YN = :useYn AND STAT_CD != :stateCode')
  Future<List<MenuGroupUse>> findAllByBusinessSectionCodeAndUseYnAndStateCode(
      String businessSectionCode, bool useYn, String stateCode);

  @Query('SELECT * FROM ST1_MNU_GRP_USE')
  Stream<List<MenuGroupUse>> findAllAsStream();
}

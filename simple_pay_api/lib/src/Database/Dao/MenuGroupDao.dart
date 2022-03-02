import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/MenuGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class MenuGroupDao extends AbstractDao<MenuGroup> {
  @Query('SELECT * FROM ST1_MNU_GRP WHERE MNU_GRP_ID = :id')
  Future<MenuGroup?> findById(String id);

  @Query('SELECT * FROM ST1_MNU_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<MenuGroup?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_MNU_GRP')
  Future<List<MenuGroup>> findAll();

  @Query(
      'SELECT * FROM ST1_MNU_GRP WHERE MNU_GRP_ID IN (:menuGroups) AND MNU_GRP_NM NOT LIKE "%BARSCAN" AND STAT_CD != :stateCode ORDER BY LOC_Z,LOC_Y,LOC_X ')
  Future<List<MenuGroup>> findAllByMenuGroupIdInAndStateCode(
      List<String> menuGroups, String stateCode);

  @Query(
      'SELECT * FROM ST1_MNU_GRP WHERE MNU_GRP_ID IN (:menuGroups) AND MNU_GRP_NM NOT LIKE "%BARSCAN" AND STAT_CD != :stateCode AND LOC_Z = :locationZ  ORDER BY LOC_Z,LOC_Y,LOC_X ')
  Future<List<MenuGroup>> findAllByMenuGroupIdInAndStateCodeAndLocationZ(
      List<String> menuGroups, String stateCode, int locationZ);

  @Query('SELECT * FROM ST1_MNU_GRP')
  Stream<List<MenuGroup>> findAllAsStream();
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SelfMenuGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class SelfMenuGroupDao extends AbstractDao<SelfMenuGroup> {
  @Query('SELECT * FROM ST1_SLF_MNU_GRP WHERE SLF_MNU_GRP_ID = :id')
  Future<SelfMenuGroup?> findById(String id);

  @Query('SELECT * FROM ST1_SLF_MNU_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<SelfMenuGroup?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_SLF_MNU_GRP')
  Future<List<SelfMenuGroup>> findAll();

  @Query(
      'SELECT * FROM ST1_SLF_MNU_GRP WHERE SLF_MNU_GRP_NM NOT LIKE "%BARSCAN" AND STAT_CD != :stateCode ORDER BY LOC_Z,LOC_Y,LOC_X ')
  Future<List<SelfMenuGroup>> findAllByMenuGroupIdInAndStateCode(
      String stateCode);

// @Query('SELECT * FROM ST1_SLF_MNU_GRP WHERE SLF_MNU_GRP_ID IN (:menuGroups) AND MNU_GRP_NM NOT LIKE "%BARSCAN" AND STAT_CD != :stateCode AND LOC_Z = :locationZ  ORDER BY LOC_Z,LOC_Y,LOC_X ')
// Future<List<SelfMenuGroup>> findAllByMenuGroupIdInAndStateCodeAndLocationZ(List<String> menuGroups ,String stateCode,int locationZ);

  @Query('SELECT * FROM ST1_SLF_MNU_GRP')
  Stream<List<SelfMenuGroup>> findAllAsStream();
}

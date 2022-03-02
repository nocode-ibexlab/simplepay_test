import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SelfMenuItem.dart';

import 'AbstractDao.dart';

@dao
abstract class SelfMenuItemDao extends AbstractDao<SelfMenuItem> {
  @Query('SELECT * FROM ST1_SLF_MNU_ITM WHERE SLF_MNU_ITM_ID = :id')
  Future<SelfMenuItem?> findById(String id);

  @Query('SELECT * FROM ST1_SLF_MNU_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<SelfMenuItem?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_SLF_MNU_ITM')
  Future<List<SelfMenuItem>> findAll();

  @Query(
      'SELECT * FROM ST1_SLF_MNU_ITM WHERE SLF_MNU_GRP_ID = :menuGroupId AND STAT_CD != :stateCode')
  Future<List<SelfMenuItem>> findAllBySelfMenuGroupIdAndStateCode(
      String menuGroupId, String stateCode);

  @Query('SELECT * FROM ST1_SLF_MNU_ITM WHERE SYNCD_YN = 0')
  Future<List<SelfMenuItem>> findNotSynced();
}

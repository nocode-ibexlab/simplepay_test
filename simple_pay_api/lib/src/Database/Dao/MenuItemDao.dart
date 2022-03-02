import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/MenuItem.dart';

import 'AbstractDao.dart';

@dao
abstract class MenuItemDao extends AbstractDao<MenuItem> {
  @Query('SELECT * FROM ST1_MNU_ITM WHERE MNU_ITM_ID = :id')
  Future<MenuItem?> findById(String id);

  @Query('SELECT * FROM ST1_MNU_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<MenuItem?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_MNU_ITM')
  Future<List<MenuItem>> findAll();

  @Query(
      'SELECT * FROM ST1_MNU_ITM WHERE MNU_GRP_ID = :menuGroupId AND STAT_CD != :stateCode')
  Future<List<MenuItem>> findAllByMenuGroupIdAndStateCode(
      String menuGroupId, String stateCode);

  @Query('SELECT * FROM ST1_MNU_ITM WHERE SYNCD_YN = 0')
  Future<List<MenuItem>> findNotSynced();
}

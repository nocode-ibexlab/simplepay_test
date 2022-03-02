import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/SetEntity.dart';

import 'AbstractDao.dart';

@dao
abstract class SetEntityDao extends AbstractDao<SetEntity> {
  @Query('SELECT * FROM IT1_SET_ENTY WHERE SET_ENTY_ID = :id')
  Future<SetEntity?> findById(String id);

  @Query('SELECT * FROM IT1_SET_ENTY ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<SetEntity?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM IT1_SET_ENTY')
  Future<List<SetEntity>> findAll();

  @Query(
      'SELECT * FROM IT1_SET_ENTY WHERE SET_ITM_ID = :setItemId AND STAT_CD != :stateCode ORDER BY SET_ENTY_SNO ASC')
  Future<List<SetEntity>>
      findAllBySetItemIdAndStateCodeOrderBySetEntitySerialNumber(
          String setItemId, String stateCode);

  @Query('SELECT * FROM IT1_SET_ENTY')
  Stream<List<SetEntity>> findAllAsStream();
}

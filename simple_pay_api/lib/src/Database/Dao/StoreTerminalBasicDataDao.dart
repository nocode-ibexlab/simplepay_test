import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Dao/AbstractDao.dart';
import 'package:simple_pay_api/src/Database/Entity/StoreTerminalBasicData.dart';

@dao
abstract class StoreTerminalBasicDataDao
    extends AbstractDao<StoreTerminalBasicData> {
  @Query('SELECT * FROM BA1_STR_TRM_BAS_DAT WHERE STR_TRM_BAS_DAT_ID = :id')
  Future<StoreTerminalBasicData?> findById(String id);

  @Query(
      'SELECT * FROM BA1_STR_TRM_BAS_DAT ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<StoreTerminalBasicData?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_STR_TRM_BAS_DAT')
  Future<List<StoreTerminalBasicData>> findAll();

  @Query('SELECT * FROM BA1_STR_TRM_BAS_DAT')
  Stream<List<StoreTerminalBasicData>> findAllAsStream();
}

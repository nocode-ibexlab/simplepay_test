import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/InstallLog.dart';

import 'AbstractDao.dart';

@dao
abstract class InstallLogDao extends AbstractDao<InstallLog> {
  @Query('SELECT * FROM SY1_INS_LOG WHERE LOG_ID = :id')
  Future<InstallLog?> findById(String id);

  @Query('SELECT * FROM SY1_INS_LOG ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<InstallLog?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM SY1_INS_LOG')
  Future<List<InstallLog>> findAll();

  @Query(
      'SELECT * FROM SY1_INS_LOG WHERE LOG_TP = :logTypeA OR  LOG_TP = :logTypeB Order by LAST_REV_DTTM desc limit 1 ')
  Future<List<InstallLog>> findAllByLogType(String logTypeA, String logTypeB);

  @Query('SELECT * FROM SY1_INS_LOG')
  Stream<List<InstallLog>> findAllAsStream();
}

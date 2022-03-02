import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/TraceLog.dart';

import 'AbstractDao.dart';

@dao
abstract class TraceLogDao extends AbstractDao<TraceLog> {
  @Query('SELECT * FROM SY1_TRACE_LOG WHERE ID = :id')
  Future<TraceLog?> findById(int id);

  @Query('SELECT * FROM SY1_TRACE_LOG')
  Future<List<TraceLog>> findAll();

  @Query('SELECT * FROM SY1_TRACE_LOG ORDER BY LAST_REV_DTTM ASC LIMIT :size')
  Future<List<TraceLog>> findAllOld(int size);

  @Query(
      'SELECT * FROM SY1_TRACE_LOG WHERE SYNCD_YN = 0 ORDER BY LAST_REV_DTTM ASC')
  Future<List<TraceLog>> findNotSynced();

  @Query('SELECT * FROM SY1_TRACE_LOG_COUNT')
  Future<TraceLogCount?> count();
}

import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/EmployeeWorkHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class EmployeeWorkHistoryDao extends AbstractDao<EmployeeWorkHistory> {
  @Query('SELECT * FROM ST1_EMP_WRK_HIS WHERE ID = :id')
  Future<EmployeeWorkHistory?> findById(String id);

  @Query('SELECT * FROM ST1_EMP_WRK_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<EmployeeWorkHistory?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_EMP_WRK_HIS')
  Future<List<EmployeeWorkHistory>> findAll();

  @Query('SELECT * FROM ST1_EMP_WRK_HIS')
  Stream<List<EmployeeWorkHistory>> findAllAsStream();
}

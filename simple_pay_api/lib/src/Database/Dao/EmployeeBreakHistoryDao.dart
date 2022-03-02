import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/EmployeeBreakHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class EmployeeBreakHistoryDao
    extends AbstractDao<EmployeeBreakHistory> {
  @Query('SELECT * FROM ST1_EMP_BRK_HIS WHERE ID = :id')
  Future<EmployeeBreakHistory?> findById(String id);

  @Query('SELECT * FROM ST1_EMP_BRK_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<EmployeeBreakHistory?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_EMP_BRK_HIS')
  Future<List<EmployeeBreakHistory>> findAll();

  @Query('SELECT * FROM ST1_EMP_BRK_HIS')
  Stream<List<EmployeeBreakHistory>> findAllAsStream();
}

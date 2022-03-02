import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/EmployeeGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class EmployeeGroupDao extends AbstractDao<EmployeeGroup> {
  @Query('SELECT * FROM ST1_EMP_GRP WHERE EMP_GRP_ID = :id')
  Future<EmployeeGroup?> findById(String id);

  @Query('SELECT * FROM ST1_EMP_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<EmployeeGroup?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_EMP_GRP')
  Future<List<EmployeeGroup>> findAll();

  @Query('SELECT * FROM ST1_EMP_GRP')
  Stream<List<EmployeeGroup>> findAllAsStream();
}

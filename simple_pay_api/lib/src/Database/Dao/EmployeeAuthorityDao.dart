import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/EmployeeAuthority.dart';

import 'AbstractDao.dart';

@dao
abstract class EmployeeAuthorityDao extends AbstractDao<EmployeeAuthority> {
  @Query('SELECT * FROM ST1_EMP_AUTH WHERE EMP_AUTH_ID = :id')
  Future<EmployeeAuthority?> findById(String id);

  @Query('SELECT * FROM ST1_EMP_AUTH ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<EmployeeAuthority?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_EMP_AUTH')
  Future<List<EmployeeAuthority>> findAll();

  @Query('SELECT * FROM ST1_EMP_AUTH WHERE EMP_ID = :employeeId')
  Future<List<EmployeeAuthority>> findAllByEmployeeId(String employeeId);

  @Query('SELECT * FROM ST1_EMP_AUTH')
  Stream<List<EmployeeAuthority>> findAllAsStream();
}

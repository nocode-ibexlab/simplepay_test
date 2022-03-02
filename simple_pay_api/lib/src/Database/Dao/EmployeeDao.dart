import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/Employee.dart';

import 'AbstractDao.dart';

@dao
abstract class EmployeeDao extends AbstractDao<Employee> {
  @Query('SELECT * FROM ST1_EMP WHERE EMP_ID = :id')
  Future<Employee?> findById(String id);

  @Query('SELECT * FROM ST1_EMP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<Employee?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM ST1_EMP WHERE EMP_CD = :employeeCode AND STAT_CD !=  :stateCode')
  Future<Employee?> findByEmployeeCodeAndStateCode(
      String employeeCode, String stateCode);

  @Query('SELECT * FROM ST1_EMP')
  Future<List<Employee>> findAll();

  @Query('SELECT * FROM ST1_EMP WHERE STAT_CD !=  :stateCode')
  Future<List<Employee>> findAllByStateCode(String stateCode);

  @Query(
      'SELECT * FROM ST1_EMP WHERE LGIN_PWD = :password AND STAT_CD !=  :stateCode')
  Future<List<Employee>> findAllByLoginPasswordAndStateCode(
      String password, String stateCode);

  @Query('SELECT * FROM ST1_EMP')
  Stream<List<Employee>> findAllAsStream();
}

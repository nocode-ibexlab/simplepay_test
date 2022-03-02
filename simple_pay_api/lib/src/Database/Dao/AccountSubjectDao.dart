import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/AccountSubject.dart';

import 'AbstractDao.dart';

@dao
abstract class AccountSubjectDao extends AbstractDao<AccountSubject> {
  @Query('SELECT * FROM BA1_ACC_SBJ WHERE ACC_SBJ_ID = :id')
  Future<AccountSubject?> findById(String id);

  @Query('SELECT * FROM BA1_ACC_SBJ ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<AccountSubject?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_ACC_SBJ')
  Future<List<AccountSubject>> findAll();

  @Query(
      'SELECT * FROM BA1_ACC_SBJ WHERE (ACC_SBJ_ID LIKE "1%00" OR ACC_SBJ_ID ="7000") AND ACC_SBJ_ID !="1000" AND  STAT_CD !=  :stateCode')
  Future<List<AccountSubject>> findAllPayInGroup(String stateCode);

  @Query(
      'SELECT * FROM BA1_ACC_SBJ WHERE (ACC_SBJ_ID LIKE "3%00" OR ACC_SBJ_ID LIKE "4%00"  OR ACC_SBJ_ID = "7000" ) AND ACC_SBJ_ID !="3000" AND ACC_SBJ_ID !="4000" AND  STAT_CD !=  :stateCode')
  Future<List<AccountSubject>> findAllPayOutGroup(String stateCode);

  @Query(
      'SELECT * FROM BA1_ACC_SBJ WHERE ACC_SBJ_ID LIKE :pre AND ACC_SBJ_ID = :fix AND ACC_SBJ_ID !="7000" AND  STAT_CD !=  :stateCode')
  Future<List<AccountSubject>> findAllPayAccountLists(
      String pre, String fix, String stateCode);

  @Query(
      'SELECT * FROM BA1_ACC_SBJ WHERE ACC_SBJ_ID LIKE :pre AND ACC_SBJ_ID != :groupCode AND  STAT_CD !=  :stateCode')
  Future<List<AccountSubject>> findAllPayAccountLists2(
      String pre, String groupCode, String stateCode);

  @Query('SELECT * FROM BA1_ACC_SBJ')
  Stream<List<AccountSubject>> findAllAsStream();
}

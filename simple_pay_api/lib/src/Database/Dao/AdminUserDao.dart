import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/AdminUser.dart';

import 'AbstractDao.dart';
@dao
abstract class AdminUserDao extends AbstractDao<AdminUser> {
  @Query('SELECT * FROM CO1_ADM_USR WHERE ADM_USR_ID = :id')
  Future<AdminUser?> findById(String id);

  @Query('SELECT * FROM CO1_ADM_USR ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<AdminUser?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM CO1_ADM_USR')
  Future<List<AdminUser>> findAll();

  @Query('SELECT * FROM CO1_ADM_USR')
  Stream<List<AdminUser>> findAllAsStream();
}

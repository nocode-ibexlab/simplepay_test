import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/Store.dart';

import 'AbstractDao.dart';

@dao
abstract class StoreDao extends AbstractDao<Store> {
  @Query('SELECT * FROM ST1_STR WHERE STR_ID = :id')
  Future<Store?> findById(String id);

  @Query('SELECT * FROM ST1_STR ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<Store?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_STR')
  Future<List<Store>> findAll();

  @Query('SELECT * FROM ST1_STR')
  Stream<List<Store>> findAllAsStream();
}

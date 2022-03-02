import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/StorePlace.dart';

import 'AbstractDao.dart';

@dao
abstract class StorePlaceDao extends AbstractDao<StorePlace> {
  @Query('SELECT * FROM ST1_ST_PLACE WHERE STR_PLACE_ID = :id')
  Future<StorePlace?> findById(String id);

  @Query('SELECT * FROM ST1_ST_PLACE ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<StorePlace?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM ST1_ST_PLACE')
  Future<List<StorePlace>> findAll();

  @Query('SELECT * FROM ST1_ST_PLACE ORDER BY IS_DEFAULT,LAST_REV_DTTM DESC')
  Future<List<StorePlace>> findAllOrderByIsDefaultAndLastRevisionDatetime();

  @Query('SELECT * FROM ST1_ST_PLACE WHERE SYNCD_YN = 0')
  Future<List<StorePlace>> findNotSynced();
}

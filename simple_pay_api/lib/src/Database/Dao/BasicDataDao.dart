import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/BasicData.dart';

import 'AbstractDao.dart';

@dao
abstract class BasicDataDao extends AbstractDao<BasicData> {
  @Query('SELECT * FROM BA1_BAS_DAT WHERE BAS_DAT_ID = :id')
  Future<BasicData?> findById(String id);

  @Query('SELECT * FROM BA1_BAS_DAT ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<BasicData?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_BAS_DAT')
  Future<List<BasicData>> findAll();

  @Query('SELECT * FROM BA1_BAS_DAT')
  Stream<List<BasicData>> findAllAsStream();
}

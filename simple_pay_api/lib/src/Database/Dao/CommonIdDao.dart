import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/CommonId.dart';

import 'AbstractDao.dart';

@dao
abstract class CommonIdDao extends AbstractDao<CommonId> {
  @Query('SELECT * FROM BA1_COM_ID WHERE ID = :id')
  Future<CommonId?> findById(String id);

  @Query('SELECT * FROM BA1_COM_ID WHERE COM_DT = :date AND COM_SNO = :sno')
  Future<CommonId?> findByKey(String date, int sno);

  @Query('SELECT * FROM BA1_COM_ID')
  Future<List<CommonId>> findAll();

  @Query('SELECT * FROM BA1_COM_ID WHERE COM_DT = :date ORDER BY COM_SNO DESC')
  Future<List<CommonId>> findAllByDate(String date);
}

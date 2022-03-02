import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/Notice.dart';

import 'AbstractDao.dart';

@dao
abstract class NoticeDao extends AbstractDao<Notice> {
  @Query('SELECT * FROM BA1_NOTI WHERE NOTI_ID = :id')
  Future<Notice?> findById(String id);

  @Query('SELECT * FROM BA1_NOTI ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<Notice?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_NOTI')
  Future<List<Notice>> findAll();

  @Query('DELETE FROM BA1_NOTI')
  Future<void> truncate();
}

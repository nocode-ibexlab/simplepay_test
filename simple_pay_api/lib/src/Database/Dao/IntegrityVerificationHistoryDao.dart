import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/IntegrityVerificationHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class IntegrityVerificationHistoryDao
    extends AbstractDao<IntegrityVerificationHistory> {
  @Query('SELECT * FROM SY1_INTEG_VERIF_HIS WHERE HIS_ID = :id')
  Future<IntegrityVerificationHistory?> findById(String id);

  @Query(
      'SELECT * FROM SY1_INTEG_VERIF_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<IntegrityVerificationHistory?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM SY1_INTEG_VERIF_HIS')
  Future<List<IntegrityVerificationHistory>> findAll();

  @Query(
      'SELECT * FROM SY1_INTEG_VERIF_HIS WHERE DAT_1 = :data1 AND VERIF_DTTM >= :start AND VERIF_DTTM <= :end')
  Future<List<IntegrityVerificationHistory>> findAllByDataAndTime(
      String data1, int start, int end);

  @Query('SELECT * FROM SY1_INTEG_VERIF_HIS WHERE HIS_ID LIKE :id')
  Future<List<IntegrityVerificationHistory>> findAllByIdLike(String id);
}

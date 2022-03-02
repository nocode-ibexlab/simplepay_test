import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/EntranceRegistration.dart';

import 'AbstractDao.dart';

@dao
abstract class EntranceRegistrationDao
    extends AbstractDao<EntranceRegistration> {
  @Query('SELECT * FROM CU1_ENT_REG WHERE ENT_REG_ID = :id')
  Future<EntranceRegistration?> findById(int id);

  @Query('SELECT * FROM CU1_ENT_REG')
  Future<List<EntranceRegistration>> findAll();

  @Query('SELECT * FROM CU1_ENT_REG ORDER BY LAST_REV_DTTM ASC LIMIT :size')
  Future<List<EntranceRegistration>> findAllOld(int size);

  @Query(
      'SELECT * FROM CU1_ENT_REG WHERE FRST_REG_DTTM >=  :openDate AND FRST_REG_DTTM <=  :closeDate  '
      ' AND  STAT_CD != :stateCode ORDER BY FRST_REG_DTTM ASC')
  Future<List<EntranceRegistration>>
      findAllByFirstRegistrationDatetimeAndStateCode(
          String openDate, String closeDate, String stateCode);

  @Query(
      'SELECT * FROM CU1_ENT_REG WHERE SYNCD_YN = 0 ORDER BY LAST_REV_DTTM ASC')
  Future<List<EntranceRegistration>> findNotSynced();
}

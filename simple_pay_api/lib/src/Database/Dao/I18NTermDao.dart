import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/I18NTerm.dart';

import 'AbstractDao.dart';

@dao
abstract class I18NTermDao extends AbstractDao<I18NTerm> {
  @Query('SELECT * FROM BA1_I18N_TER WHERE I18N_TER_ID = :id')
  Future<I18NTerm?> findById(String id);

  @Query('SELECT * FROM BA1_I18N_TER ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<I18NTerm?> findOrderByLastRevisionDatetime();

  @Query(
      'SELECT * FROM BA1_I18N_TER WHERE USR_INPT = :userInput AND STAT_CD !=  :stateCode')
  Future<I18NTerm?> findByUserInputAndStateCode(
      String userInput, String stateCode);

  @Query('SELECT * FROM BA1_I18N_TER')
  Future<List<I18NTerm>> findAll();

  @Query('SELECT * FROM BA1_I18N_TER WHERE I18N_TER_ID LIKE "____" ')
  Future<List<I18NTerm>> findAllByLangCode();

  @Query('SELECT * FROM BA1_I18N_TER')
  Stream<List<I18NTerm>> findAllAsStream();
}

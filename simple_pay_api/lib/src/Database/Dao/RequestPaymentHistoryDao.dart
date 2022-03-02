import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/RequestPaymentHistory.dart';

import 'AbstractDao.dart';

@dao
abstract class RequestPaymentHistoryDao
    extends AbstractDao<RequestPaymentHistory> {
  @Query('SELECT * FROM SY1_REQ_PAY_HIS WHERE REQ_ID = :id')
  Future<RequestPaymentHistory?> findById(String id);

  @Query('SELECT * FROM SY1_REQ_PAY_HIS ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<RequestPaymentHistory?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM SY1_REQ_PAY_HIS')
  Future<List<RequestPaymentHistory>> findAll();

  @Query('SELECT * FROM SY1_REQ_PAY_HIS WHERE REQ_TKN = :token')
  Future<RequestPaymentHistory?> findByToken(String token);
}

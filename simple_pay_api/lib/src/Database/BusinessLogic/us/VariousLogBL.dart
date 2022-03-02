import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Util/DateTimeConverter.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';

class VariousLogBL extends BaseBL {
  static final VariousLogBL _singleton = VariousLogBL._internal();

  factory VariousLogBL() => _singleton;

  VariousLogBL._internal();

  Future<void> insertVariousLog(IntegrityVerificationHistory entity) {
    return variousLogDao!.insertOne(entity);
  }

  Future<void> updateVariousLog(IntegrityVerificationHistory entity) {
    return variousLogDao!.updateOne(entity);
  }

  Future<void> deleteVariousLog(IntegrityVerificationHistory entity) {
    return variousLogDao!.deleteOne(entity);
  }

  Future<List<IntegrityVerificationHistory>> getVariousLogList(
      String data1, DateTime start, DateTime end) {
    return variousLogDao!.findAllByDataAndTime(data1,
        DateTimeConverter().encode(start)!, DateTimeConverter().encode(end)!);
  }

  Future<List<IntegrityVerificationHistory>> getAllVariousLogs() {
    return variousLogDao!.findAll();
  }

  Future<IntegrityVerificationHistory?> getVariousLog(String id) {
    return variousLogDao!.findById(id);
  }

  Future<String?> setVariousLog(Map<String, String> data) async {
    var prefix = DateFormat("yyMMddHHmm").format(DateTime.now()) + '_';
    var list = await variousLogDao!.findAllByIdLike(prefix + '%');
    var no = list.length + 1;

    IntegrityVerificationHistory entity = IntegrityVerificationHistory();
    entity.setHistoryId('$prefix$no');
    entity.setVerificationDatetime(DateTime.now());
    entity.setVerificationTypeCode(data["VerificationTypeCode"]);
    entity.setVerificationResultCode(data["VerificationResultCode"]);
    entity.setRemarks(data["Remarks"]);
    entity.setData1(data["Data1"]);
    entity.setData2(data["Data2"]);
    entity.setData3(data["Data3"]);
    await insertVariousLog(entity);
    return entity.getHistoryId();
  }

  RequestPaymentHistory getNewRequestPaymentHistory() {
    RequestPaymentHistory entity = RequestPaymentHistory();
    entity.setReqId(entity.createId());
    entity.setRequestToken(BaseBL.storeTerminalId! + entity.getReqId()!);
    return entity;
  }

  Future<RequestPaymentHistory?> getRequestPaymentHistoryByToken(String token) {
    return requestPaymentHistoryDao!.findByToken(token);
  }

  Future<void> insertPaymentHistory(RequestPaymentHistory entity) {
    return requestPaymentHistoryDao!.insertOne(entity);
  }

  Future<void> updatePaymentHistory(RequestPaymentHistory entity) {
    return requestPaymentHistoryDao!.updateOne(entity);
  }

  Future<void> deletePaymentHistory(RequestPaymentHistory entity) {
    return requestPaymentHistoryDao!.deleteOne(entity);
  }

  Future<List<RequestPaymentHistory>> getRequestPaymentHistoryList() {
    return requestPaymentHistoryDao!.findAll();
  }
}

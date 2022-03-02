import 'package:simple_pay_api/src/Database/Entity/CashdrawCashInOutHistory.dart';

import '../BaseBL.dart';

/// 영업 관련 로직
class BusinessBL extends BaseBL {
  static final BusinessBL _singleton = BusinessBL._internal();

  factory BusinessBL() => _singleton;

  BusinessBL._internal();

  /// PayIn
  /// @param cashdrawCashInOutHistory
  void payIn(CashdrawCashInOutHistory cashdrawCashInOutHistory) async {
    await cashdrawHistoryDao!.insertOne(cashdrawCashInOutHistory);
  }

  /// PayOut
  /// @param cashdrawCashInOutHistory
  void payOut(CashdrawCashInOutHistory cashdrawCashInOutHistory) async {
    await cashdrawHistoryDao!.insertOne(cashdrawCashInOutHistory);
  }
}

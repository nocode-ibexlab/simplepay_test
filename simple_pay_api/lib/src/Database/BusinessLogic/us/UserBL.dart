import 'dart:async';

import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';

class UserBL extends BaseBL {
  static const _TAG = 'UserBL';

  static final UserBL _singleton = UserBL._internal();

  factory UserBL() => _singleton;

  UserBL._internal();

  Future<void> insertEntranceRegistration(String storeId,
      String storeTerminalId, String phoneNumber, bool isAgree) async {
    EntranceRegistration item = EntranceRegistration();

    item.createId();
    item.setStoreId(storeId);
    item.setStoreTerminalId(storeTerminalId);
    item.setPhoneNumber(phoneNumber);
    item.setAgreementYN(isAgree ? "1" : "0");
    item.updateTime();
    await entranceRegistrationDao!.insertOne(item);
  }

  Future<List<EntranceRegistration>> getEntranceRegistrationListBetweenDate(
      String openDate, String closeDate) async {
    return await entranceRegistrationDao!
        .findAllByFirstRegistrationDatetimeAndStateCode(
            openDate, closeDate, BaseBL.STATE_DELETE);
  }
}

import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/simple_store_terminal/store_terminal.dart';

part 'sync_get_registration_info_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleSyncGetRegistrationInfoRes {
  List<StoreTerminal> storeTerminals;
  String softwareTerms;
  String serviceTerms;
  String personalInfoAgreement;
  String marketingInfoAgreement;

  @override
  SimpleSyncGetRegistrationInfoRes({
    required this.serviceTerms,
    required this.softwareTerms,
    required this.personalInfoAgreement,
    required this.marketingInfoAgreement,
    required this.storeTerminals,
  });

  factory SimpleSyncGetRegistrationInfoRes.fromJson(Map json) =>
      _$SimpleSyncGetRegistrationInfoResFromJson(json);

  Map toJson() => _$SimpleSyncGetRegistrationInfoResToJson(this);
}

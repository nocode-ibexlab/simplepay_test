import 'package:json_annotation/json_annotation.dart';

part 'store_get_cashier_info_res.g.dart';

@JsonSerializable(anyMap: true)
class SimpleStoreGetCashierInfoRes {
  String shiftNo;
  String cashierName;

  @override
  SimpleStoreGetCashierInfoRes({
    required this.shiftNo,
    required this.cashierName,
  });

  factory SimpleStoreGetCashierInfoRes.fromJson(Map json) =>
      _$SimpleStoreGetCashierInfoResFromJson(json);

  Map toJson() => _$SimpleStoreGetCashierInfoResToJson(this);
}

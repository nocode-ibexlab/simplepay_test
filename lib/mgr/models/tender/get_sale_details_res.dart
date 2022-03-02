import 'package:json_annotation/json_annotation.dart';
import 'package:simple_pay_flutter/mgr/models/tender/sales_account.dart';
import 'package:simple_pay_flutter/mgr/models/tender/sales_item.dart';
part 'get_sale_details_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderGetSaleDetailsRes {
  String salesId;
  double totalAmount;
  String salesDate;
  bool isCanceled;
  List<SalesAccount> salesAccounts;
  List<SalesItem> salesItems;

  @override
  TenderGetSaleDetailsRes(
      {required this.salesDate,
      required this.totalAmount,
      required this.isCanceled,
      required this.salesAccounts,
      required this.salesId,
      required this.salesItems});

  factory TenderGetSaleDetailsRes.fromJson(Map json) =>
      _$TenderGetSaleDetailsResFromJson(json);

  Map toJson() => _$TenderGetSaleDetailsResToJson(this);
}

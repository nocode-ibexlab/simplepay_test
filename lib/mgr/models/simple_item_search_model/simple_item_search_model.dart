import 'package:json_annotation/json_annotation.dart';

import '../../../presentation/template/base/template.dart';
part 'simple_item_search_model.g.dart';

@JsonSerializable(anyMap: true)
class ItemModelSearch {
  String itemId;
  String groupId;
  String name;
  double price;
  String? barcode;
  String? imageUri;
  bool? isRecommended;

  @override
  ItemModelSearch({
    required this.itemId,
    required this.groupId,
    required this.name,
    required this.price,
    this.barcode,
    this.imageUri,
    this.isRecommended,
  });

  ModelFormatter get getPriceMap =>
      ModelFormatter(currencyFormatter(price), price);

  factory ItemModelSearch.fromJson(json) => _$ItemModelSearchFromJson(json);

  Map toJson() => _$ItemModelSearchToJson(this);
}

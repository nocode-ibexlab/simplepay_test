import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class ItemState {
  final List<ItemListGroupsRes> listGroups;
  final List<ProductItemRes> listItems;
  final ItemListGroupsRes currentCategory;

  ItemState({
    required this.listItems,
    required this.listGroups,
    required this.currentCategory,
  });
  factory ItemState.initial() {
    return ItemState(
        listGroups: [],
        listItems: [],
        currentCategory: ItemListGroupsRes(name: '', id: ''));
  }

  ItemState copyWith({
    List<ItemListGroupsRes>? listGroups,
    List<ProductItemRes>? listItems,
    ItemListGroupsRes? currentCategory,
  }) {
    return ItemState(
      listGroups: listGroups ?? this.listGroups,
      listItems: listItems ?? this.listItems,
      currentCategory: currentCategory ?? this.currentCategory,
    );
  }
}

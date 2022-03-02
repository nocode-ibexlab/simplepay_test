import 'package:simple_pay_flutter/presentation/template/base/template.dart';

import '../../models/model_exporter.dart';

class InventoryState {
  //warehouse
  final int selectedItemGroupId;
  final TextEditingController warehouseItemNameController;
  final TextEditingController warehouseBarcodeController;
  final TextEditingController warehousePurchasePriceController;
  final TextEditingController warehouseSalePriceController;
  final TextEditingController warehouseFavoriteController;
  final TextEditingController warehouseMarkingController;

  //api
  //warehouse
  final List<InventoryBalanceProductItemRes> inventoryBalanceItemsResList;
  final List<InventoryAcceptanceListProductItemRes>
      inventoryListAcceptanceItemsDraftResList;
  final List<InventoryAcceptanceListProductItemRes>
      inventoryListAcceptanceItemsCompleteResList;
  final InventoryDetailAcceptanceItemRes inventoryDetailAcceptanceItemRes;
  final List<InventoryListSupplierRes> inventoryListSupplierResList;

//revision
  final List<InventoryListRevisionItemRes> inventoryListRevisionItemResList;
  final InventoryDetailRevisionItemsRes inventoryDetailRevisionItemsRes;

  InventoryState({
    required this.selectedItemGroupId,
    required this.warehouseItemNameController,
    required this.warehouseBarcodeController,
    required this.warehousePurchasePriceController,
    required this.warehouseSalePriceController,
    required this.warehouseFavoriteController,
    required this.warehouseMarkingController,
    required this.inventoryBalanceItemsResList,
    required this.inventoryListAcceptanceItemsDraftResList,
    required this.inventoryListAcceptanceItemsCompleteResList,
    required this.inventoryDetailAcceptanceItemRes,
    required this.inventoryListSupplierResList,
    required this.inventoryDetailRevisionItemsRes,
    required this.inventoryListRevisionItemResList,
  });

  factory InventoryState.initial() {
    return InventoryState(
      selectedItemGroupId: 0,
      warehouseItemNameController: TextEditingController(),
      warehouseBarcodeController: TextEditingController(),
      warehousePurchasePriceController: TextEditingController(),
      warehouseSalePriceController: TextEditingController(),
      warehouseFavoriteController: TextEditingController(),
      warehouseMarkingController: TextEditingController(),
      inventoryBalanceItemsResList: [],
      inventoryListAcceptanceItemsDraftResList: [],
      inventoryListAcceptanceItemsCompleteResList: [],
      inventoryDetailAcceptanceItemRes:
          InventoryDetailAcceptanceItemRes(acceptanceItemsId: '', name: ''),
      inventoryListSupplierResList: [],
      inventoryListRevisionItemResList: [],
      inventoryDetailRevisionItemsRes:
          InventoryDetailRevisionItemsRes(date: '', name: '', items: []),
    );
  }

  InventoryState copyWith({
    //warehouse
    int? selectedItemGroupId,
    TextEditingController? warehouseItemNameController,
    TextEditingController? warehouseBarcodeController,
    TextEditingController? warehousePurchasePriceController,
    TextEditingController? warehouseSalePriceController,
    TextEditingController? warehouseFavoriteController,
    TextEditingController? warehouseMarkingController,
    //api warehouse
    List<InventoryBalanceProductItemRes>? inventoryBalanceItemsResList,
    List<InventoryAcceptanceListProductItemRes>?
        inventoryListAcceptanceItemsDraftResList,
    List<InventoryAcceptanceListProductItemRes>?
        inventoryListAcceptanceItemsCompleteResList,
    InventoryDetailAcceptanceItemRes? inventoryDetailAcceptanceItemRes,
    List<InventoryListSupplierRes>? inventoryListSupplierResList,
//revision
//api revision
    List<InventoryListRevisionItemRes>? inventoryListRevisionItemResList,
    InventoryDetailRevisionItemsRes? inventoryDetailRevisionItemsRes,
  }) {
    return InventoryState(
      //warehouse
      selectedItemGroupId: selectedItemGroupId ?? this.selectedItemGroupId,
      warehouseItemNameController:
          warehouseItemNameController ?? this.warehouseItemNameController,
      warehouseBarcodeController:
          warehouseBarcodeController ?? this.warehouseBarcodeController,
      warehousePurchasePriceController: warehousePurchasePriceController ??
          this.warehousePurchasePriceController,
      warehouseSalePriceController:
          warehouseSalePriceController ?? this.warehouseSalePriceController,
      warehouseFavoriteController:
          warehouseFavoriteController ?? this.warehouseFavoriteController,
      warehouseMarkingController:
          warehouseMarkingController ?? this.warehouseMarkingController,
      inventoryBalanceItemsResList:
          inventoryBalanceItemsResList ?? this.inventoryBalanceItemsResList,
      inventoryDetailAcceptanceItemRes: inventoryDetailAcceptanceItemRes ??
          this.inventoryDetailAcceptanceItemRes,
      inventoryListSupplierResList:
          inventoryListSupplierResList ?? this.inventoryListSupplierResList,
      inventoryListAcceptanceItemsDraftResList:
          inventoryListAcceptanceItemsDraftResList ??
              this.inventoryListAcceptanceItemsDraftResList,
      inventoryListAcceptanceItemsCompleteResList:
          inventoryListAcceptanceItemsCompleteResList ??
              this.inventoryListAcceptanceItemsCompleteResList,
//revision
      inventoryListRevisionItemResList: inventoryListRevisionItemResList ??
          this.inventoryListRevisionItemResList,
      inventoryDetailRevisionItemsRes: inventoryDetailRevisionItemsRes ??
          this.inventoryDetailRevisionItemsRes,
    );
  }
}

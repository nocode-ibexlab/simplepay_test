import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

@immutable
class BasketState {
  final OrderItemRes selectedItem;
  final List<OrderItemRes> cartList;
  final OrderListOrdersRes reservedItems;
  final OrderListItemRes selectedReservedItem;
  final double totalDue; //Total amount to be paid
  //totdalDue = (itemPrice1 * qty1- itemDiscount1)
  // + (itemPrice2 * qty2 - itemDiscount2)
  // ... - orderDiscount (
  final double totalReceived; //Amount received
  final double taxExemptReceived; //Tax exempt amount received
  final double balance; //Remaining amount to be paid
  final double totalTax;
  final double totalDiscount;
  final double selectedItemDiscount;
  final double innBinNumber;

  BasketState({
    required this.selectedItem,
    required this.cartList,
    required this.reservedItems,
    required this.selectedReservedItem,
    required this.totalDue,
    required this.totalReceived,
    required this.taxExemptReceived,
    required this.balance,
    required this.totalTax,
    required this.totalDiscount,
    required this.selectedItemDiscount,
    required this.innBinNumber,
  });
  factory BasketState.initial() {
    return BasketState(
      totalDiscount: 0,
      totalTax: 0,
      balance: 0,
      totalReceived: 0,
      taxExemptReceived: 0,
      selectedItemDiscount: 0,
      innBinNumber: -1,
      totalDue: 0,
      cartList: [],
      selectedReservedItem: OrderListItemRes(
          orderId: '',
          tableId: '',
          totalQty: 0,
          totalAmount: 0,
          lastRevisionDatetime: ''),
      reservedItems: OrderListOrdersRes(list: []),
      selectedItem:
          OrderItemRes(name: '', id: '', itemId: '', qty: 0, price: 0),
    );
  }

  BasketState copyWith({
    OrderItemRes? selectedItem,
    List<OrderItemRes>? cartList,
    OrderListOrdersRes? reservedItems,
    OrderListItemRes? selectedReservedItem,
    double? totalDue,
    double? totalReceived,
    double? taxExemptReceived,
    double? balance,
    double? totalTax,
    double? totalDiscount,
    double? selectedItemDiscount,
    double? innBinNumber,
  }) {
    return BasketState(
      selectedItem: selectedItem ?? this.selectedItem,
      totalReceived: totalReceived ?? this.totalReceived,
      innBinNumber: innBinNumber ?? this.innBinNumber,
      totalDue: totalDue ?? this.totalDue,
      balance: balance ?? this.balance,
      taxExemptReceived: taxExemptReceived ?? this.taxExemptReceived,
      cartList: cartList ?? this.cartList,
      reservedItems: reservedItems ?? this.reservedItems,
      selectedReservedItem: selectedReservedItem ?? this.selectedReservedItem,
      totalTax: totalTax ?? this.totalTax,
      totalDiscount: totalDiscount ?? this.totalDiscount,
      selectedItemDiscount: selectedItemDiscount ?? this.selectedItemDiscount,
    );
  }
}

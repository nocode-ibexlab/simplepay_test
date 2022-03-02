import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

class CartOrderHistoryItem {
  String? id;
  int? itemSerialNumber;
  int? upperItemSerialNumber;
  String? itemId;
  String? name;
  double? price;
  double? taxExempt;
  double? discount;
  double? qty;
  bool? isStorno;
  bool? isDiscountStorno;
  bool? isUsed;
  int? menuPaymentYn;
  int? menuPaymentSerialNumber;
  String? mark;
  List<CartOrderHistoryItem>? option;

  CartOrderHistoryItem([
    this.id,
    this.itemSerialNumber = 0,
    this.upperItemSerialNumber = 0,
    this.itemId = '',
    this.name = '',
    this.price = 0,
    this.taxExempt = 0,
    this.discount = 0,
    this.qty = 0,
    this.isStorno = false,
    this.isDiscountStorno = false,
    this.menuPaymentYn = 0,
    this.menuPaymentSerialNumber = 0,
  ]);

  String? getId() {
    return id;
  }

  void setId(String id) {
    this.id = id;
  }

  String? getItemId() {
    return itemId;
  }

  void setItemId(String itemId) {
    this.itemId = itemId;
  }

  String? getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  double? getPrice() {
    return price;
  }

  void setPrice(double price) {
    this.price = price;
  }

  double? getTaxExempt() {
    return taxExempt;
  }

  void setTaxExempt(double taxExempt) {
    this.taxExempt = taxExempt;
  }

  double? getDiscount() {
    return discount;
  }

  void setDiscount(double discount) {
    this.discount = discount;
  }

  double? getQty() {
    return qty;
  }

  void setQty(double qty) {
    this.qty = qty;
  }

  void setStorno(bool storno) {
    isStorno = storno;
  }

  void setDiscountStorno(bool discountStorno) {
    isDiscountStorno = discountStorno;
  }

  bool? getUsed() {
    return isUsed;
  }

  void setUsed(bool used) {
    isUsed = used;
  }

  bool getStorno() {
    return isStorno ?? false;
  }

  bool getDiscountStorno() {
    return isDiscountStorno ?? false;
  }

  int? getMenuPaymentYn() {
    return menuPaymentYn;
  }

  void setMenuPaymentYn(int menuPaymentYn) {
    this.menuPaymentYn = menuPaymentYn;
  }

  int? getMenuPaymentSerialNumber() {
    return menuPaymentSerialNumber;
  }

  void setMenuPaymentSerialNumber(int menuPaymentSerialNumber) {
    this.menuPaymentSerialNumber = menuPaymentSerialNumber;
  }

  String? getMark() {
    return mark;
  }

  void setMark(String mark) {
    this.mark = mark;
  }

  int? getItemSerialNumber() {
    return itemSerialNumber;
  }

  void setItemSerialNumber(int itemSerialNumber) {
    this.itemSerialNumber = itemSerialNumber;
  }

  int? getUpperItemSerialNumber() {
    return upperItemSerialNumber;
  }

  void setUpperItemSerialNumber(int upperItemSerialNumber) {
    this.upperItemSerialNumber = upperItemSerialNumber;
  }

  void fromMap(Map j) {
    try {
      id = j['id'];
      itemSerialNumber = j['itemSerialNumber'];
      upperItemSerialNumber = j['upperItemSerialNumber'];
      itemId = j['itemId'];
      name = j['name'];
      price = CommonUtil.toDouble(j['price']);
      taxExempt = CommonUtil.toDouble(j['taxExempt']);
      discount = CommonUtil.toDouble(j['discount']);
      qty = CommonUtil.toDouble(j['qty']);
      isStorno = j['isStorno'];
      isDiscountStorno = j['isDiscountStorno'];
      menuPaymentYn = j['menuPaymentYn'];
      menuPaymentSerialNumber = j['menuPaymentSerialNumber'];
      mark = j['mark'];

      if (j['option'] == null) {
        option = <CartOrderHistoryItem>[];
      } else {
        List<CartOrderHistoryItem> list = [];

        for (Map item in j['option']) {
          CartOrderHistoryItem optionItem = CartOrderHistoryItem();
          optionItem.fromMap(item);
          list.add(optionItem);
        }

        option = list;
      }
    } catch (e) {
      print('CartOrderHistoryItem.fromMap: $e');
    }
  }
}

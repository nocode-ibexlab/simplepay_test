import 'dart:math';

import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/BasBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/OperationBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/OrderBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/SaleBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/TableBL.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import 'CommonUtil.dart';
import 'LangCode.dart';
import 'Log.dart';
import 'MonetaryCalculator.dart';
import 'TaxCalculator.dart';
import 'TenderConstants.dart';

/// 주문정보 관리를 위한 helper Class
/// 주문에서 사용되는 계산 처리
class OrderCheck {
  static const String TAG = "OrderCheck";
  static const String ORDER_CHANGED_CONTENTS_ID = "9999999";
  static const String ORDER_OPTION_NORMAL_ORDER = "000"; //일반주문
  static const int ORDER_OPTION_NORMAL_ORDER_BIT = 0; //일반주문
  static const String ORDER_OPTION_PACKAGING_ORDER = "001"; //포장주문
  static const int ORDER_OPTION_PACKAGING_ORDER_BIT = 1; //포장주문

  static const String ORDER_OPTION_STORNO_ORDER = "002"; //STORNO Order
  static const int ORDER_OPTION_STORNO_ORDER_BIT = 0x00000010; //STORNO Order
  static const String ORDER_OPTION_DISCOUNT_STORNO_ORDER =
      "003"; //DISCOUNT/MARKUP STORNO Order
  static const int ORDER_OPTION_DISCOUNT_STORNO_ORDER_BIT =
      0x00000100; //DISCOUNT/MARKUP STORNO Order

  String? _operationTypeCode;
  String? _busiSection;
  CommonId? _commonId;
  OrderHistory? _orderHistory;
  List<OrderHistoryItem>? _oldOrderHistoryItems;
  List<OrderHistoryItem>? _currOrderHistoryItems;
  List<OrderHistoryDiscount>? _orderHistoryDiscounts;
  late BasBL _basBL;
  late OrderBL _orderBL;
  late SaleBL _saleBL;

  OrderCheck([OrderHistory? orderHistory]) {
    this._orderHistory = orderHistory ?? OrderHistory();
    _orderHistoryDiscounts = [];

    if (orderHistory != null) {
      _commonId = CommonId(orderHistory.getId(), orderHistory.getCommonDate(),
          orderHistory.getCommonSerialNumber());
      _operationTypeCode = orderHistory.getOperationTypeCode();
      _busiSection = orderHistory.getBusinessSectionCode();
      initGetOrderHistoryDiscounts();
    }

    _orderHistory!.setOrderEmployeeId(BaseBL.employeeId);
    _orderHistory!.setServingEmployeeId(BaseBL.employeeId);
    _orderHistory!.setConflictYn(false);
    _oldOrderHistoryItems = [];
    _currOrderHistoryItems = [];

    _basBL = BasBL();
    _orderBL = OrderBL();
    _saleBL = SaleBL();
  }

  Future<void> initGetOrderHistoryDiscounts() async {
    _orderHistoryDiscounts = await _orderHistory!.getOrderHistoryDiscounts();
  }

  /// 신규주문 주문번호 부여
  ///
  /// @param commonId Common id
  void addCommonIdToOrder(CommonId commonId) {
    this._commonId = commonId;

    // orderHistory 에 주문번호 부여
    _orderHistory!.setCommonDate(commonId.getCommonDate());
    _orderHistory!.setCommonSerialNumber(commonId.getCommonSerialNumber());
    _orderHistory!.createId();

    // orderHistory 에 날짜 부여
    _orderHistory!.setFirstRegistrantId(BaseBL.employeeId);
    _orderHistory!.setFirstRegistrationDatetime(
        CommonUtil.convertDateForm1(DateTime.now()));

    // orderDiscount 에 주문번호 부여
    for (int i = 0; i < _orderHistoryDiscounts!.length; i++) {
      OrderHistoryDiscount dc = _orderHistoryDiscounts![i];
      dc.setCommonDate(commonId.getCommonDate());
      dc.setCommonSerialNumber(commonId.getCommonSerialNumber());
      dc.setDiscountSerialNumber(i);
      dc.createId();
    }
  }

  /// Item 추가
  ///
  /// @param item         Item
  /// @param upperItemSno upper item serial number
  OrderHistoryItem addOrderItem(Item item, [int upperItemSno = 0]) {
    // 저장값 계산
    double? qty = item.getQty();
    double? price = item.getSellingPrice();
    double amt = MonetaryCalculator(qty).multiply(price).getValue();

    // currOrderHistoryItems 에 없는 새 Item 일 경우
    OrderHistoryItem newItem = OrderHistoryItem();

    // 기존 주문이 있을경우 hdate, hno 업데이트
    if (_commonId != null) {
      newItem.setCommonDate(_commonId!.getCommonDate());
      newItem.setCommonSerialNumber(_commonId!.getCommonSerialNumber());
    }

    newItem.setUpperItemSerialNumber(upperItemSno);
    newItem.setItemName(item.getItemName());
    newItem.setItemId(item.getItemId());
    newItem.setQuantity(qty);
    newItem.setPrice(price);
    newItem.setSupplyValue(amt);
    newItem.setApplyTax0Yn(item.getApplyTax0Yn() ?? TaxCalculator.TaxFree);
    newItem.setApplyTax1Yn(item.getApplyTax1Yn() ?? TaxCalculator.TaxFree);
    newItem.setApplyTax2Yn(item.getApplyTax2Yn() ?? TaxCalculator.TaxFree);
    newItem.setItemSerialNumber(_currOrderHistoryItems!.length + 1);

    // 신규 추가
    _addOrderItem(_currOrderHistoryItems, newItem, upperItemSno);
    return newItem;
  }

  Future<void> addCatItem(
      Item? item, double amount, double taxExempt, double qty) async {
    Map<String, double> calculated =
        await TaxCalculator.getIncludeTax(amount - taxExempt, taxExempt);
    double? tax = calculated[TenderConstants.TAX];
    double? price = calculated[TenderConstants.SUPPLY_VALUE];

    if (tax == null) {
      tax = 0;
    }

    if (price == null) {
      price = 0;
    }

    await _addCatOrderItem(item, qty, price, tax);
  }

  Future<void> _addCatOrderItem(
      Item? item, double qty, double price, double tax) async {
    if (item == null) {
      Log.d(TAG, "Item is null");
      return;
    }

    OrderHistoryItem newItem = OrderHistoryItem();

    if (_commonId != null) {
      newItem.setCommonDate(_commonId!.getCommonDate());
      newItem.setCommonSerialNumber(_commonId!.getCommonSerialNumber());
    }

    newItem.setItemSerialNumber(_currOrderHistoryItems!.length + 1);
    newItem.setUpperItemSerialNumber(0);
    newItem.setItemName(item.getItemName());
    newItem.setItemId(item.getItemId());
    newItem.setQuantity(qty);
    newItem.setPrice(price + tax); // CAT 상품은 세금 포함 상품으로 처리
    newItem.setSupplyValue(price * qty);
    newItem.setTaxAmount0(tax * qty);
    newItem.setSupplyAmount((price + tax) * qty);
    newItem.setApplyTax0Yn(item.getApplyTax0Yn());
    newItem.setApplyTax1Yn(item.getApplyTax1Yn());
    newItem.setApplyTax2Yn(item.getApplyTax2Yn());
    newItem.setCatItem(true);

    _addOrderItem(_currOrderHistoryItems, newItem, 0);
    await recalcOrder();
  }

  void _addOrderItem(
      List<OrderHistoryItem>? list, OrderHistoryItem item, int upperItemSno) {
    if (upperItemSno != 0) {
      for (int i = list!.length - 1; i >= 0; i--) {
        OrderHistoryItem j = list.elementAt(i);

        if (upperItemSno == j.getItemSerialNumber() ||
            upperItemSno == j.getUpperItemSerialNumber()) {
          list.insert(i + 1, item);
          return;
        }
      }
    }

    list!.add(item);
  }

  /// 기존 주문목록을 가져와 저장
  Future<void> setCurrentOrderItemList() async {
    _orderHistory!.resetOrderHistoryItems();
    List<OrderHistoryItem> items =
        await _orderHistory!.getOrderHistoryItemsForPayment();
    await _arrangeOrderItemList(items);
  }

  /// OrderItemList 재배치( OrderItem 에 set, modifier item 등 재배치)
  ///
  /// @param _orderHistoryItemList Order history item list
  Future<void> _arrangeOrderItemList(
      List<OrderHistoryItem> _orderHistoryItemList) async {
    _oldOrderHistoryItems!.clear();
    _currOrderHistoryItems!.clear();

    for (OrderHistoryItem i in _orderHistoryItemList) {
      // item 의 ApplyTax 를 OrderItem 으로 전달
      Item? item = await i.getItem();

      if (item != null) {
        i.setApplyTax0Yn(item.getApplyTax0Yn() ?? "0");
        i.setApplyTax1Yn(item.getApplyTax1Yn() ?? "0");
        i.setApplyTax1Yn(item.getApplyTax2Yn() ?? "0");

        // 기존 주문된 Item 구분 flag 값 변경
        i.setOrderedItem(true);

        i.setItemName(item.getItemName());

        //할인정보를 OrderItem 으로 전달
        if (i.getDiscountSectionCode() != null) {
          if (BasBL.USER_INPUT_DISCOUNT_CODE == (i.getDiscountSectionCode())) {
            bool isRate = i.getDiscountRate() != null;
            double? amount =
                isRate ? i.getDiscountRate() : i.getDiscountAmount();
            i.setDiscountName(
                CommonUtil.getUserDefinedDiscountName(isRate, amount));
          } else {
            BasicDataItem? basicDataItem =
                await _basBL.getBasicDataItemById(i.getDiscountSectionCode());
            i.setDiscountName(basicDataItem?.getBasicDataItemName());
          }
        }

        _oldOrderHistoryItems!.add(i);
        _currOrderHistoryItems!.add(i.clone());

        // OrderHistoryKitchenMemo 정보 OrderItem 에 저장
        i.resetOrderHistoryKitchenMemos();
        List<OrderHistoryKitchenMemo> orderHistoryKitchenMemoList =
            await i.getOrderHistoryKitchenMemos();
        i.setOrderHistoryKitchenMemoList(orderHistoryKitchenMemoList);
      }
    }
  }

  ////////////////////////////////////////////////////////////////
  // 계산함수 모음
  ////////////////////////////////////////////////////////////////

  /// 할인 가능여부 검사
  ///
  /// @param item 가능여부를 검사할 OrderHistoryItem 데이터
  /// @return 할인이 가능한 경우 true, 할인이 불가능한 경우 false
  bool isItemDiscountable(OrderHistoryItem item) {
    // 단품 할인이 된 상품을 취소할 경우 불필요한 할인 발생
    return item.getDiscountTypeCode() == null ||
        TaxCalculator.DcTypeItem != (item.getDiscountTypeCode()) ||
        item.getQuantity()! >= 0;
  }

  /// 해당 OrderItem 와 연관된 취소 OrderItem 이 있는지 여부 반환
  ///
  /// @param item Order history item
  /// @return bool
  bool haveCanceledOrderItem(OrderHistoryItem item) {
    for (OrderHistoryItem i in _currOrderHistoryItems!) {
      if (i.getCancelSerialNumber() != null &&
          i.getCancelSerialNumber() == (item.getItemSerialNumber())) {
        return true;
      }
    }

    return false;
  }

  /// 금액에 포함된 세금을 반환
  ///
  /// @return double
  Future<double> _getTax(double amount) async {
    double ratio = await TaxCalculator.getTaxRatio0();
    double supplyValue =
        MonetaryCalculator(amount).divide(1 + ratio / 100).getValue();
    return MonetaryCalculator(amount).subtract(supplyValue).getValue();
  }

  /// 입력받은 봉사료로 순수 봉사료와 각 tax 를 tax 비율에 맞춰서 구함
  ///
  /// @param amount 봉사료 입력 금액
  Future<void> _calcTip(double amount) async {
    double ratio = await TaxCalculator.getTaxRatio4();
    double tip = MonetaryCalculator(amount).divide(1 + ratio / 100).getValue();
    double tipTax = MonetaryCalculator(amount).subtract(tip).getValue();

    _orderHistory!.setPaymentTipTotalAmount(amount);
    _orderHistory!.setPaymentTipAmount(tip);
    _orderHistory!.setPaymentTipTaxAmount(tipTax);
  }

  /// 입력받은 봉사료로 순수 봉사료와 각 tax 를 tax 비율에 맞춰서 구함
  ///
  /// @param amount 봉사료 입력 금액
  /// @return tipInfo 봉사료 정보
  Future<Map<String, double>> _getTip(double amount) async {
    double ratio = await TaxCalculator.getTaxRatio4();
    double tip =
        MonetaryCalculator(amount).divide(1 + ratio / 100).getValueCulture();
    double tipTax = MonetaryCalculator(amount).subtract(tip).getValue();

    Map<String, double> tipInfo = Map();
    tipInfo[TenderConstants.TIP] = tip;
    tipInfo[TenderConstants.TIP_TAX] = tipTax;
    return tipInfo;
  }

  double _getOrderDiscountTotalAmt() {
    MonetaryCalculator total = MonetaryCalculator();

    for (OrderHistoryDiscount dc in _orderHistoryDiscounts!) {
      total.add(dc.getDiscountAmount());
    }

    return total.getValue();
  }

  void _calcOrderHistory(List<OrderHistoryItem> items) {
    MonetaryCalculator supplyValue = MonetaryCalculator();
    MonetaryCalculator supplyAmount = MonetaryCalculator();
    MonetaryCalculator taxAmount0 = MonetaryCalculator();
    MonetaryCalculator menuDiscountSum = MonetaryCalculator();
    MonetaryCalculator orderDiscountSum = MonetaryCalculator();

    for (OrderHistoryItem item in items) {
      if (item.isCanceled()) {
        continue;
      }

      supplyValue.add(item.getSupplyValue());
      supplyAmount.add(item.getSupplyAmount());
      taxAmount0.add(item.getTaxAmount0());
      orderDiscountSum.add(item.getOrderDiscountAmount());

      if (ORDER_OPTION_DISCOUNT_STORNO_ORDER == item.getOrderOptionCode()) {
        continue;
      }

      menuDiscountSum.add(item.getMenuDiscountAmount());
    }

    _orderHistory!.setSupplyValue(supplyValue.getValue());
    _orderHistory!.setSupplyAmount(supplyAmount.getValue());
    _orderHistory!.setTaxAmount0(taxAmount0.getValue());
    _orderHistory!.setOrderDiscountTotalAmount(
        orderDiscountSum.getValue() + menuDiscountSum.getValue());
    _orderHistory!.setOrderTotalAmount(getTotalDue());
    _orderHistory!.setMenuDcAmt(menuDiscountSum.getValue());
    _orderHistory!.setOrderDcAmt(orderDiscountSum.getValue());
  }

  Future<void> _calcOrderSum(List<OrderHistoryItem> items) async {
    for (OrderHistoryItem item in items) {
      bool? isCatItem = await item.isCatItem();
      if (isCatItem ?? false) {
        continue;
      }

      TaxCalculator taxCalculator = TaxCalculator();
      await taxCalculator.init(item);

      //아이템할인, 공급가, 세금, 판매가 계산적용
      item.setMenuDiscountAmount(taxCalculator.getMenuDiscountAmt());
      item.setSupplyValue(taxCalculator.getSupplyValue());
      item.setTaxAmount0(taxCalculator.getTax0());
      item.setSupplyAmount(taxCalculator.getSupplyAmount());
    }
  }

  /// 주문정보 재계산
  Future<void> recalcOrder() async {
    await _calcOrderSum(_currOrderHistoryItems!);
    await _adaptOrderDiscountToItems(_currOrderHistoryItems!);
    _calcOrderHistory(_currOrderHistoryItems!);
  }

  /// 순수 주문 금액 합 반환, 세금 미포함
  ///
  /// @return 순수 주문 금액 합
  double getOrderAmount() {
    return _orderHistory!.getSupplyValue();
  }

  /// 총할인 금액 반환, 세금포함
  ///
  /// @return 현재 주문의 총할인 금액, 세금포함
  double getTotalDiscount() {
    return _orderHistory!.getOrderDiscountTotalAmount();
  }

  /// @return 주문 총 단가 (Item Price 들의 총 합)
  double getTotalOrderAmt() {
    MonetaryCalculator total = MonetaryCalculator();

    for (OrderHistoryItem i in _currOrderHistoryItems!) {
      total.add(i.getSupplyAmount());
    }

    return total.getValue();
  }

  /// 주문화면에 표시되는 할인 금액을 보여주기 위한 함수
  ///
  /// @return 현재 주문 품목의 할인 금액 합계
  double getTotalMenuDiscountAmt() {
    MonetaryCalculator total = MonetaryCalculator();

    for (OrderHistoryItem i in _currOrderHistoryItems!) {
      total.add(i.getMenuDiscountAmount());
    }

    return total.getValue();
  }

  /// 순주문총액 반환 (세금미포함)
  ///
  /// @return 현재 주문의 순주문총액
  double _getSubTotal() {
    return MonetaryCalculator(getOrderAmount()).getValue();
  }

  /// 총세금 금액 반환
  ///
  /// @return 현재 주문의 총세금, Tip 은 제외
  double getTotalTax() {
    return MonetaryCalculator()
        .add(_orderHistory!.getTaxAmount0())
        .add(_orderHistory!.getTaxAmount1())
        .add(_orderHistory!.getTaxAmount2())
        .getValue();
  }

  /// 봉사료 총 금액 반환
  ///
  /// @return 순수봉사료 + 세금
  double _getTotalTip() {
    return MonetaryCalculator()
        .add(_getTotalTipTax())
        .add(_getSubTotalTip())
        .getValue();
  }

  /// 세금을 제외한 순수 봉사료 금액
  ///
  /// @return 순수 봉사료 총 금액 반환
  double _getSubTotalTip() {
    return MonetaryCalculator()
        .add(_orderHistory!.getPreTipTotalAmount())
        .add(_orderHistory!.getPaymentTipTotalAmount())
        .subtract(_orderHistory!.getPaymentTipTaxAmount())
        .subtract(_orderHistory!.getPreTipTaxAmount())
        .getValue();
  }

  /// 공급대가: 총금액( subtotal + tax ) 반환
  ///
  /// @return 총금액(subtotal plus tax)
  double getTotalAmount() {
    return MonetaryCalculator()
        .add(_getSubTotal())
        .add(getTotalTax())
        .getValue();
  }

  /// 총 봉사료 세금
  ///
  /// @return Tip tax 들의 총금액
  double _getTotalTipTax() {
    return MonetaryCalculator()
        .add(_orderHistory!.getPaymentTipTaxAmount())
        .add(_orderHistory!.getPreTipTaxAmount())
        .getValue();
  }

  /// 총금액 반환
  ///
  /// @return 현재 주문의 총금액
  double getTotalDue() {
    return MonetaryCalculator()
        .add(getTotalAmount())
        .add(_getTotalTip())
        .getValue();
  }

  /// 총 받은 금액
  ///
  /// @return 현재 주문의 총계산금액
  Future<double> getTotalReceived() async {
    MonetaryCalculator received = MonetaryCalculator();

    try {
      _orderHistory!.resetSalesAccountHistories();
      List<SalesAccountHistory> list =
          await _saleBL.getOrderSalesAccountHistoryList(
              _orderHistory!.getCommonDate(),
              _orderHistory!.getCommonSerialNumber());

      for (SalesAccountHistory ac in list) {
        received.add(ac.getTotalAmount());
      }
    } catch (e) {
      received.setValue(0);
    }

    return received.getValue();
  }

  Future<double> getTaxExemptReceived() async {
    MonetaryCalculator received = MonetaryCalculator();

    try {
      _orderHistory!.resetSalesAccountHistories();
      List<SalesAccountHistory> list =
          await _saleBL.getOrderSalesAccountHistoryList(
              _orderHistory!.getCommonDate(),
              _orderHistory!.getCommonSerialNumber());

      for (SalesAccountHistory ac in list) {
        received.add(ac.getTaxAmount2());
      }
    } catch (e) {
      received.setValue(0);
    }

    return received.getValue();
  }

  /// 잔액 반환
  ///
  /// @return 현재 주문의 잔액
  Future<double> getBalance() async {
    double totalReceived = await getTotalReceived();
    double value = MonetaryCalculator()
        .add(getTotalDue())
        .subtract(totalReceived)
        .getValue();
    Log.d(TAG, "getBalance :  $value");
    return value;
  }

  /// 부분 결제 여부 반환
  ///
  /// @return bool
  Future<bool> hasPayments() async {
    if (_orderHistory!.getId() == null) {
      //주문저장 전 상태
      return false;
    }
    List<SalesAccountHistory> list =
        await _saleBL.getOrderSalesAccountHistoryList(
            _orderHistory!.getCommonDate(),
            _orderHistory!.getCommonSerialNumber());
    return list.length > 0;
  }

  ////////////////////////////////////////
  // Getter, Setter
  ////////////////////////////////////////
  OrderHistory? getOrderHistory() {
    return _orderHistory;
  }

  void setOrderHistory(OrderHistory orderHistory) {
    this._orderHistory = orderHistory;
  }

  List<OrderHistoryItem>? getOldOrderItemList() {
    return _oldOrderHistoryItems;
  }

  Future<void> setCurrentOrderItem(
      List<OrderHistoryItem> currOrderHistoryItem) async {
    _oldOrderHistoryItems = currOrderHistoryItem;

    // 주문 재계산
    await recalcOrder();
  }

  Future<void> setOldOrderItemForSplit(
      List<OrderHistoryItem> currOrderHistoryItem) async {
    _oldOrderHistoryItems = currOrderHistoryItem;
    _currOrderHistoryItems!.clear();

    for (OrderHistoryItem i in currOrderHistoryItem) {
      _currOrderHistoryItems!.add(i.clone());
    }

    // 주문 재계산
    await recalcOrder();
  }

  void setOrderItem(List<OrderHistoryItem> orderHistoryItems) {
    _oldOrderHistoryItems = [];
    _currOrderHistoryItems = orderHistoryItems;
  }

  void setOldOrderHistoryItems(List<OrderHistoryItem> items) {
    _oldOrderHistoryItems = items;
    var currSize = _currOrderHistoryItems?.length ?? 0;

    // 주문을 여러번 저장하더라도 주문 상품 순서는 변경되지 않기에 아래와 같이 relationKey 설정
    // relationKey 는 OrderCheck.getChangedOrderItems()에서 같은 주문 상품인지 판단하기 위해 사용됨
    for (var i = 0; i < items.length && i < currSize; i++) {
      _currOrderHistoryItems![i].relationKey = items[i];
    }
  }

  Future<void> createItemsForPaymentByMenu() async {
    // 주문 항목에 수량 변경하여 취소 항목을 없앰
    List<OrderHistoryItem> orderHistoryItems =
        List.from(_currOrderHistoryItems!);
    Map<int?, OrderHistoryItem> itemMap = Map<int?, OrderHistoryItem>();

    for (OrderHistoryItem item in orderHistoryItems) {
      if (item.getCancelSerialNumber() == null) {
        itemMap[item.getItemSerialNumber()] = item;
      } else {
        // OrderHistoryItem tmp = itemMap[item.getCancelSerialNumber()]!;
        // tmp.setQuantity(tmp.getQuantity()! + item.getQuantity()!);
      }
    }

    List<OrderHistoryItem> items = [];
    int sno = 1;

    // for (int i = 0; i < itemMap.length; i++) {
    for (int? i in itemMap.keys) {
      if (i == null) {
        continue;
      }
      OrderHistoryItem item = itemMap[i]!;

      // 취소 상품이거나 단품할인일 경우 낱개로 분리할 수 없음
      if (item.isCanceled() ||
          (item.getDiscountSectionCode() != null &&
              "1" == (item.getDiscountTypeCode()))) {
        OrderHistoryItem cloned = item.clone();
        cloned.setItemSerialNumber(sno++);
        cloned.createId();
        items.add(cloned);
      } else {
        for (int j = 0; j < item.getQuantity()!; j++) {
          OrderHistoryItem cloned = item.clone();
          cloned.setItemSerialNumber(sno++);
          cloned.setQuantity(1);
          cloned.createId();
          items.add(cloned);
        }
      }
    }

    await _calcOrderSum(items);
    await _adaptOrderDiscountToItems(items);
    await _orderBL.updateOrderItem(items);
  }

  Future<List<OrderHistoryItem>> getItemsForPayment() async {
    return await _orderHistory!.getOrderHistoryItemsForPayment();
  }

  List<OrderHistoryItem>? getCurrOrderItemList() {
    return _currOrderHistoryItems;
  }

  Future<void> setCurrOrderItem(
      List<OrderHistoryItem> currOrderHistoryItems) async {
    this._currOrderHistoryItems = currOrderHistoryItems;

    // 주문 재계산
    await recalcOrder();
  }

  String? getOperationTypeCode() {
    return _operationTypeCode;
  }

  void setOperationTypeCode(String? operationTypeCode) {
    this._operationTypeCode = operationTypeCode;
    _orderHistory!.setOperationTypeCode(operationTypeCode);
  }

  String? getBusiSection() {
    return _busiSection;
  }

  void setBusiSection(String busiSection) {
    this._busiSection = busiSection;
    _orderHistory!.setBusinessSectionCode(busiSection);
  }

  List<OrderHistoryDiscount>? getOrderHistoryDiscounts() {
    return _orderHistoryDiscounts;
  }

  Future<void> setTip(double tip) async {
    _orderHistory!.setPaymentTipTotalAmount(tip);
    await _calcTip(tip);

    // 주문 재계산
    await recalcOrder();
  }

  /// 분할결제시 세금, 봉사료의 결제 비율을 계산하기 위함
  ///
  /// @return 결제 남은 금액 / 부분 결제 금액
  double _getPayRatio(double price) {
    try {
      double value = MonetaryCalculator(price)
          .multiply(10000)
          .divide(getTotalDue())
          .getValue();
      return value.round() / 100; //소수점 3째자리에서 반올림함
    } catch (e) {
      print('Exception: $e');
    }

    return 0;
  }

  /// 받은 금액으로 세금, 봉사료, 지불금액을 계산 (분할결제)
  ///
  /// @param taxIncluded 과세 금액
  /// @param taxFree     면세 금액
  /// @return 전체 결제할 금액중 받은 금액 비율 * 각 항목 남은 금액
  Future<Map<String, double>> calcAmtTaxTipToPay(
      double taxIncluded, double taxFree) async {
    double totalAmount = taxIncluded + taxFree;
    double ratio = _getPayRatio(totalAmount);
    Map<String, double> paid = await _getPaidAmount();

    Map<String, double> result = Map();
    result[TenderConstants.TOT_AMT] = 0;
    result[TenderConstants.TAXATION_AMOUNT] = 0;
    result[TenderConstants.EXEMPT_AMOUNT] = 0;
    result[TenderConstants.TAX] = 0;
    result[TenderConstants.TIP] = 0;
    result[TenderConstants.TIP_TAX] = 0;
    result[TenderConstants.SUM_TIP] = 0;
    result[TenderConstants.AMOUNT] = 0;
    result[TenderConstants.MENU_DC_AMT] = 0;
    result[TenderConstants.ORDER_DC_AMT] = 0;
    result[TenderConstants.DC_AMT] = 0;

    double balance = await getBalance();
    Log.i(
        TAG,
        "[calcAmtTaxTipToPay] tax included: " +
            taxIncluded.toString() +
            " tax free: " +
            taxFree.toString());
    Log.i(
        TAG,
        "[calcAmtTaxTipToPay] ratio: " +
            ratio.toString() +
            " total amount: " +
            totalAmount.toString() +
            " balance: " +
            balance.toString());

    try {
      double tax = await _getTax(taxIncluded);
      double maxTax = MonetaryCalculator(_orderHistory!.getTaxes())
          .subtract(paid[TenderConstants.PAID_TAX])
          .getValue();
      tax = min(tax, maxTax);
      result[TenderConstants.TOT_AMT] = totalAmount;
      result[TenderConstants.TAXATION_AMOUNT] = taxIncluded;
      result[TenderConstants.EXEMPT_AMOUNT] = taxFree;
      result[TenderConstants.TAX] = tax;

      if (balance == totalAmount) {
        //마지막 결제
        double tip = MonetaryCalculator(_orderHistory!.getPaymentTipAmount())
            .subtract(paid[TenderConstants.PAID_TIP])
            .getValue();
        result[TenderConstants.TIP] = tip;
        result[TenderConstants.TIP_TAX] =
            MonetaryCalculator(_orderHistory!.getPaymentTipTaxAmount())
                .subtract(paid[TenderConstants.PAID_TIP_TAX])
                .getValue();
        result[TenderConstants.SUM_TIP] =
            MonetaryCalculator(_orderHistory!.getPaymentTipTotalAmount())
                .subtract(paid[TenderConstants.PAID_STIP])
                .getValue();
        result[TenderConstants.AMOUNT] = MonetaryCalculator(totalAmount)
            .subtract(tip)
            .subtract(tax)
            .getValue();
        result[TenderConstants.MENU_DC_AMT] =
            MonetaryCalculator(_orderHistory!.getMenuDcAmt())
                .subtract(paid[TenderConstants.PAID_MENU_DC_AMT])
                .getValue();
        result[TenderConstants.ORDER_DC_AMT] =
            MonetaryCalculator(_orderHistory!.getOrderDcAmt())
                .subtract(paid[TenderConstants.PAID_ORDER_DC_AMT])
                .getValue();
      } else {
        double tip = MonetaryCalculator(_orderHistory!.getPaymentTipAmount())
            .multiply(ratio)
            .divide(100.0)
            .getValueCulture();
        Map<String, double> tipMap = await _getTip(tip);
        result[TenderConstants.TIP] =
            MonetaryCalculator(tipMap[TenderConstants.TIP]).getValue();
        result[TenderConstants.TIP_TAX] =
            MonetaryCalculator(tipMap[TenderConstants.TIP_TAX]).getValue();
        result[TenderConstants.SUM_TIP] = tip;

        result[TenderConstants.AMOUNT] = MonetaryCalculator(totalAmount)
            .subtract(tip)
            .subtract(tax)
            .getValue();

        double menuDc = MonetaryCalculator(_orderHistory!.getMenuDcAmt())
            .multiply(ratio)
            .divide(100)
            .getValue();
        double orderDc = MonetaryCalculator(_orderHistory!.getOrderDcAmt())
            .multiply(ratio)
            .divide(100)
            .getValue();
        result[TenderConstants.MENU_DC_AMT] = menuDc;
        result[TenderConstants.ORDER_DC_AMT] = orderDc;
        result[TenderConstants.DC_AMT] =
            MonetaryCalculator(menuDc).add(orderDc).getValue();
      }
    } catch (e) {
      print('Exception: $e');
    }

    Log.d(
        TAG,
        "[calcAmtTaxTipToPay] amount (with tax): " +
            result[TenderConstants.TOT_AMT].toString() +
            " amount (without tax): " +
            result[TenderConstants.AMOUNT].toString() +
            " tax: " +
            result[TenderConstants.TAX].toString());
    Log.d(
        TAG,
        "[calcAmtTaxTipToPay] tip (with tax): " +
            result[TenderConstants.SUM_TIP].toString() +
            " tax (without tax): " +
            result[TenderConstants.TIP].toString() +
            " tip tax: " +
            result[TenderConstants.TIP_TAX].toString());
    Log.d(
        TAG,
        "[calcAmtTaxTipToPay] menu discount: " +
            result[TenderConstants.MENU_DC_AMT].toString() +
            " order discount: " +
            result[TenderConstants.ORDER_DC_AMT].toString());
    return result;
  }

  Future<Map<String, double>> _getPaidAmount() async {
    MonetaryCalculator supplyValue = MonetaryCalculator();
    MonetaryCalculator tipTotal = MonetaryCalculator();
    MonetaryCalculator tip = MonetaryCalculator();
    MonetaryCalculator tax = MonetaryCalculator();
    MonetaryCalculator tipTax = MonetaryCalculator();
    MonetaryCalculator menuDc = MonetaryCalculator();
    MonetaryCalculator orderDc = MonetaryCalculator();
    Map<String, double> result = Map();

    getOrderHistory()!.resetSalesAccountHistories();
    List<SalesAccountHistory> list =
        await _saleBL.getOrderSalesAccountHistoryList(
            _orderHistory!.getCommonDate(),
            _orderHistory!.getCommonSerialNumber());

    for (SalesAccountHistory i in list) {
      supplyValue.add(i.getSupplyValue());
      tipTotal.add(i.getPaymentTipTotalAmount());
      tip.add(i.getPaymentTipAmount());
      tax.add(i.getTaxAmount());
      tipTax.add(i.getPaymentTipTaxAmount());
      menuDc.add(i.getMenuDiscountAmount());
      orderDc.add(i.getOrderDiscountAmount());
    }

    result[TenderConstants.PAID_AMOUNT] = supplyValue.getValue();
    result[TenderConstants.PAID_STIP] =
        tipTotal.getValue(); //입력받은 Tip (세금계산전 입력받은 Tip)
    result[TenderConstants.PAID_TIP] = tip.getValue(); //세금 제외한 순수 팁
    result[TenderConstants.PAID_TAX] = tax.getValue();
    result[TenderConstants.PAID_TIP_TAX] = tipTax.getValue();
    result[TenderConstants.PAID_MENU_DC_AMT] = menuDc.getValue();
    result[TenderConstants.PAID_ORDER_DC_AMT] = orderDc.getValue();
    return result;
  }

  Future<void> setOrderDiscount(OrderHistoryDiscount dc) async {
    if (this._orderHistoryDiscounts!.length == 1) {
      _orderHistoryDiscounts![0] = dc;
    } else {
      _orderHistoryDiscounts!.add(dc);
    }

    // 주문 재계산
    await recalcOrder();
  }

  Future<void> _adaptOrderDiscountToItems(List<OrderHistoryItem> items) async {
    OperationBL operationBL = OperationBL();
    MonetaryCalculator tmp = MonetaryCalculator();

    for (OrderHistoryItem item in items) {
      if (item.isCanceled()) {
        continue;
      }

      tmp.add(item.getSupplyAmount());
    }

    double supplyAmount = tmp.getValue();
    double dcAmount = _getOrderDiscountTotalAmt();

    if (_orderHistoryDiscounts!.isNotEmpty) {
      OrderHistoryDiscount dc = _orderHistoryDiscounts![0];
      double? rate = dc.getDiscountRate();

      if (rate != null && rate > 0) {
        dcAmount = MonetaryCalculator(supplyAmount)
            .multiply(rate)
            .multiply(0.01)
            .getValue();

        if (await operationBL.getCurrencyName() == ("KRW")) {
          dcAmount = ((dcAmount / 10).round() * 10).toDouble(); // 1원 단위 절사
        }

        dc.setDiscountAmount(dcAmount);
      }
    }

    MonetaryCalculator sum = MonetaryCalculator();

    for (int i = 0; i < items.length; i++) {
      OrderHistoryItem item = items[i];
      double? itemSupplyAmount = item.getSupplyAmount();

      if (item.isCanceled()) {
        continue;
      }

      if (itemSupplyAmount == 0) {
        item.setOrderDiscountAmount(0); // 기존에 주문할인이 된 경우 초기화
        continue; //할인할 금액이 없는 아이템
      }

      double itemDc = 0;

      if (i < items.length - 1) {
        if (supplyAmount != 0) {
          itemDc = MonetaryCalculator(dcAmount)
              .multiply(itemSupplyAmount)
              .divide(supplyAmount)
              .amount();
        }
      } else {
        //last Item 에 할인 금액 나머지 적용
        itemDc = MonetaryCalculator(_getOrderDiscountTotalAmt())
            .subtract(sum.getValue())
            .amount();
      }

      sum.add(itemDc);
      item.setOrderDiscountAmount(itemDc);

      // 주문 할인이 포함된 경우 총 금액이 잘못 계산되는 경우 수정 (예: 상품 500 + 400 + 300 + 주문인상 2000)
      // 참고로 주문 할인 전의 금액은 supplyAmount + orderDiscountAmount 로 구할 수 있음
      double taxRatio = item.getTotalTax() / item.getSupplyAmount()!;
      double newSupplyAmount =
          MonetaryCalculator(item.getSupplyAmount()).subtract(itemDc).amount();
      double newTax =
          MonetaryCalculator(newSupplyAmount).multiply(taxRatio).amount();
      double newSupplyValue =
          MonetaryCalculator(newSupplyAmount).subtract(newTax).amount();
      item.setSupplyAmount(newSupplyAmount);
      item.setTaxAmount0(newTax);
      item.setSupplyValue(newSupplyValue);
    }
  }

  /// 주문화면에 표시되는 추가 할인 금액을 보여주기 위한 함수
  ///
  /// @return 현재 주문 할인 금액 합계
  double getTotalOrderDiscountAmt() {
    MonetaryCalculator total = MonetaryCalculator();

    for (OrderHistoryItem i in _currOrderHistoryItems!) {
      total.add(i.getOrderDiscountAmount());
    }

    return total.getValue();
  }

  /// 주문 변경 여부 확인 (금액, 수량, 주문옵션 체크)
  ///
  /// @return 변경 여부
  bool checkChangedOrderItemInList() {
    if (_oldOrderHistoryItems!.length != _currOrderHistoryItems!.length) {
      return true;
    }

    for (int i = 0; i < _currOrderHistoryItems!.length; i++) {
      OrderHistoryItem oldItem = _oldOrderHistoryItems![i];
      OrderHistoryItem curItem = _currOrderHistoryItems![i];

      if (!oldItem.isCanceled() && curItem.isCanceled()) {
        return true;
      }

      if (oldItem.getQuantity() != curItem.getQuantity()) {
        return true;
      }
      if (oldItem.getSupplyAmount() != curItem.getSupplyAmount()) {
        return true;
      }
      if (oldItem.getOrderHistoryKitchenMemoList()!.length !=
          curItem.getOrderHistoryKitchenMemoList()!.length) {
        return true;
      }
    }

    return false;
  }

  /// 주문 변경 여부 확인 (수량, 주문옵션 체크)
  ///
  /// @return 변경 여부
  bool checkChangedOrderItemInListExceptAmount() {
    if (_oldOrderHistoryItems!.length != _currOrderHistoryItems!.length) {
      return true;
    }

    for (int i = 0; i < _currOrderHistoryItems!.length; i++) {
      OrderHistoryItem oldItem = _oldOrderHistoryItems![i];
      OrderHistoryItem curItem = _currOrderHistoryItems![i];

      if (oldItem.getQuantity() != curItem.getQuantity()) {
        return true;
      }

      if (oldItem.getOrderHistoryKitchenMemoList()!.length !=
          curItem.getOrderHistoryKitchenMemoList()!.length) {
        return true;
      }
    }

    return false;
  }

  /// 이전 주문 상품 목록 대비 변경된 주문 상품 목록 반환
  ///
  /// @return 변경된 상품 목록
  List<OrderHistoryItem> getChangedOrderItems() {
    List<OrderHistoryItem> changedItems = [];
    List<OrderHistoryItem> newItems = List.from(_currOrderHistoryItems!);

    for (OrderHistoryItem oldItem in _oldOrderHistoryItems!) {
      bool found = false;

      for (OrderHistoryItem newItem in newItems) {
        if (newItem.getRelationKey() == oldItem) {
          //기존 주문 내역건인 경우
          if (newItem.isCanceled()) {
            if (!oldItem.isCanceled()) {
              OrderHistoryItem item = oldItem.clone();
              item.setQuantity(oldItem.getQuantity()! * -1);
              changedItems.add(item);
            }
          } else {
            double? newItemCount = newItem.getQuantity();
            double? oldItemCount = oldItem.getQuantity();
            int newMemoCount = newItem.getOrderHistoryKitchenMemoList()!.length;
            int oldMemoCount = oldItem.getOrderHistoryKitchenMemoList()!.length;

            if (newItemCount != oldItemCount || newMemoCount != oldMemoCount) {
              OrderHistoryItem changeItem = newItem.clone();
              changeItem.setQuantity(newItemCount! - oldItemCount!);
              changedItems.add(changeItem);
            }
          }

          found = true;
          newItems.remove(newItem);
          break;
        }
      }

      if (!found) {
        //기존 주문 내역이 삭제된 경우
        OrderHistoryItem item = oldItem.clone();
        item.setQuantity(item.getQuantity()! * -1);
        changedItems.add(item);
      }
    }

    for (OrderHistoryItem i in newItems) {
      if (!i.isCanceled()) {
        changedItems.add(i);
      }
    }

    if (changedItems.length > 0) {
      Log.d(TAG, "[[[[[ ORDER HISTORY : 변경 내역 ]]]]]");

      for (OrderHistoryItem i in changedItems) {
        Log.d(TAG,
            "${i.getItemName()}: count=${i.getQuantity()} amount=${i.getSupplyAmount()}");
      }

      Log.d(TAG, "-------------------------------------");
    }

    return changedItems;
  }

  void addMemoAboutChangedList() {
    for (int i = 0; i < _oldOrderHistoryItems!.length; i++) {
      OrderHistoryItem old = _oldOrderHistoryItems![i];
      OrderHistoryItem cur = _currOrderHistoryItems![i];

      if (old.getQuantity() != cur.getQuantity()) {
        String text = BaseBL.lang[LangCode.qty_change]!;
        text = text +
            ": " +
            (old.getQuantity()!.toInt().toString() +
                "->" +
                cur.getQuantity()!.toInt().toString());

        OrderHistoryKitchenMemo memo = OrderHistoryKitchenMemo();
        memo.setCommonDate(old.getCommonDate());
        memo.setCommonSerialNumber(old.getCommonSerialNumber());
        memo.setItemSerialNumber(old.getItemSerialNumber());
        memo.setKitchenMemoSerialNumber(
            old.getOrderHistoryKitchenMemoList()!.length);
        memo.setKitchenMemoId(ORDER_CHANGED_CONTENTS_ID);
        memo.setKitchenMemo(text);
        cur.addOrderHistoryOrderOptionList(memo);
      }
    }
  }

  void clearOrderList() {
    _oldOrderHistoryItems!.clear();
    _currOrderHistoryItems!.clear();
  }

  void clearOrderDiscount() {
    _orderHistoryDiscounts!.clear();
  }

  // @override
  OrderCheck clone() {
    OrderCheck clone = OrderCheck(this._orderHistory);
    clone._operationTypeCode = this._operationTypeCode;
    clone._busiSection = this._busiSection;
    clone._commonId = this._commonId;
    clone._orderHistory = this._orderHistory;
    if (this._oldOrderHistoryItems!.isNotEmpty)
      clone._oldOrderHistoryItems!.addAll(this._oldOrderHistoryItems!);
    if (this._currOrderHistoryItems!.isNotEmpty)
      clone._currOrderHistoryItems!.addAll(this._currOrderHistoryItems!);
    if (this._orderHistoryDiscounts!.isNotEmpty)
      clone._orderHistoryDiscounts!.addAll(this._orderHistoryDiscounts!);
    return clone;
  }

  //카드번호 마스킹 로직 재정의
  static String maskCreditCard(String? cardNo) {
    if (cardNo == null) {
      return "";
    } else if (cardNo.trim().length < 12) {
      return cardNo.trim();
    } else {
      //카드번호가.. 14~16자리까지 있습니다.
      return cardNo.substring(0, 6) + "******" + cardNo.substring(12);
    }
  }

  static String maskTelNo(String? telNo) {
    if (telNo == null) {
      return '';
    }

    String part1 = telNo.length >= 3 ? telNo.substring(0, 3) : telNo;
    String part3 = telNo.length >= 7 ? telNo.substring(7) : '';
    return '$part1****$part3';
  }

  OrderHistoryItem? getOrderHistoryItem(
      String? id, int? itemSerialNumber, int? upperItemSerialNumber) {
    for (OrderHistoryItem i in _currOrderHistoryItems ?? []) {
      if (i.getId() != null) {
        if (i.getId() == id) {
          return i;
        }
      } else {
        if ((i.getItemSerialNumber() ?? 0) == (itemSerialNumber ?? 0) &&
            (i.getUpperItemSerialNumber() ?? 0) ==
                (upperItemSerialNumber ?? 0)) {
          return i;
        }
      }
    }

    return null;
  }

  bool isNotCatOrder() {
    return _orderHistory?.getTableId() != '9999'; // CartState.CAT_PAYMENT_CODE
  }

  bool isNotTakeoutOrder() {
    return !TableBL().isTakeoutTable(_orderHistory?.tableId);
  }

  int? getPagerNumber() {
    return _orderHistory?.getPagerNumber();
  }

  Future<void> setPagerNumber(int pagerNumber) async {
    _orderHistory?.setPagerNumber(pagerNumber);
  }

  String? getMemo() {
    return _orderHistory?.getMemo();
  }

  void setMemo(String memo) {
    _orderHistory?.setMemo(memo);
  }
}

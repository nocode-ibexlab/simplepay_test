import 'package:simple_pay_api/src/Database/BusinessLogic/us/BasBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/ItemBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/OperationBL.dart';
import 'package:simple_pay_api/src/Database/Entity/OrderHistoryItem.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import 'BuildConfig.dart';
import 'CommonUtil.dart';
import 'Log.dart';
import 'MonetaryCalculator.dart';
import 'OrderCheck.dart';
import 'TenderConstants.dart';

class TaxCalculator {
  static const String TAG = "TaxCalculator";
  static const String TAX0_CODE = "CF101";
  static const String TAX1_CODE = "CF102";
  static const String TAX2_CODE = "CF103";
  static const String TAX4_CODE = "CF105";

  static const String TaxFree = "0"; //비과세 상품
  static const String ExcludeTax = "1"; //상품가격에 Tax 미포함, Tax 추가 계산 필요
  static const String IncludeTax = "2"; //상품가격에 Tax 포함

  static const String DcTypeItem = "0";
  static const String DcTypeLine = "1";

  static const String DcTypeRate = "0";
  static const String DcTypeCash = "1";

  Item? _item;
  OrderHistoryItem? _orderItem;
  double _tax0 = 0;
  double _tax1 = 0;
  double _tax2 = 0;
  double? _supplyValue = 0;
  double _menuDiscountAmt = 0;
  double _orderAmount = 0;

  // TaxCalculator(Item item) {    //단일 Item 세금, 공급가 계산
  //     this._item = item;
  //
  //     _orderItem = null;
  //     calcTax();
  // }

  TaxCalculator();

  Future<void> init(OrderHistoryItem? orderItem, {Item? item}) async {
    //주문 Items 세금, 공급가, 메뉴할인 계산
    if (item != null) {
      this._item = item;
      _orderItem = null;
      calcTax();
    } else {
      this._orderItem = orderItem;
      await setItem(orderItem!);
      await _calcTaxWithMenuDc();
    }
  }

  Future<void> setItem(OrderHistoryItem orderItem) async {
    ItemBL itemBL = ItemBL();
    _item = await itemBL.getItemById(orderItem.getItemId());
  }

  /// 단일 Item 의 세금과 공급가 계산: getApplyTax0Yn 에 대한 계산만 고려하여 사용하도록 함
  Future<void> calcTax() async {
    double ratio = await getTaxRatio0();
    if ("KZ" == (BuildConfig.SERVER_REGION)) {
      OperationBL operationBL = OperationBL();
      bool isTaxFreeStore = await operationBL.getIsTaxFree();

      if (!isTaxFreeStore) {
        //과세상점
        _supplyValue = MonetaryCalculator(_item!.getSellingPrice())
            .divide(1 + ratio / 100)
            .getValueCulture();
        _tax0 = MonetaryCalculator(_item!.getSellingPrice())
            .subtract(_supplyValue)
            .getValue();
      } else {
        //비과세 상점
        _supplyValue = _item!.getSellingPrice();
        _tax0 = 0;
      }
    } else {
      if (IncludeTax == (_item!.getApplyTax0Yn())) {
        //상품가격에 Tax 포함
        _supplyValue = MonetaryCalculator(_item!.getSellingPrice())
            .divide(1 + ratio / 100)
            .getValueCulture();
        _tax0 = MonetaryCalculator(_item!.getSellingPrice())
            .subtract(_supplyValue)
            .getValue();
      }

      if (ExcludeTax == (_item!.getApplyTax0Yn())) {
        //상품가격에 Tax 미포함, 추가 Tax
        _supplyValue = _item!.getSellingPrice();
        _tax0 = MonetaryCalculator(_item!.getSellingPrice())
            .multiply(ratio / 100)
            .getValueCulture();
      }

      if (TaxFree == (_item!.getApplyTax0Yn()) ||
          _item!.getApplyTax0Yn() == null ||
          _item!.getApplyTax0Yn()!.isEmpty) {
        //비과세
        _supplyValue = _item!.getSellingPrice();
        _tax0 = 0;
      }

      // TODO:
      //  다중 TAX 적용은 TAX 부과 방식 확인 후 재계산 적용 필요
      //  TAX2, TAX3 은 ITEM SellingPrice 를 기준으로 계산하는게 맞는지 또는 TAX1 계산 후 공급가를 기준으로 부과하는지 계산 방식 확인 필요
    }
  }

  /// 메뉴할인을 적용한 주문 Items 의 세금과 공급가 계산: getApplyTax0Yn 에 대한 계산만 고려하여 사용하도록 함
  Future<void> _calcTaxWithMenuDc() async {
    double? qty = _orderItem!.getQuantity();
    double ratio = await getTaxRatio0();
    if ("KZ" == (BuildConfig.SERVER_REGION)) {
      OperationBL operationBL = OperationBL();
      bool isTaxFreeStore = await operationBL.getIsTaxFree();
      _menuDiscountAmt = await _calcMenuDiscountAmt(); // 메뉴할인금액

      if (!isTaxFreeStore) {
        //과세상점
        _orderAmount =
            MonetaryCalculator(_orderItem!.getPrice()).multiply(qty).getValue();

        if (_orderAmount >= 0) {
          if (_orderAmount < _menuDiscountAmt) {
            _menuDiscountAmt = _orderAmount;
          }
        } else {
          _menuDiscountAmt = 0;
        }

        double supplyAmount = MonetaryCalculator(_orderAmount)
            .subtract(_menuDiscountAmt)
            .getValue();
        double tmp = MonetaryCalculator(supplyAmount)
            .divide(1 + ratio / 100)
            .getValueCulture();
        _tax0 =
            MonetaryCalculator(supplyAmount).subtract(tmp).getValueCulture();
        _supplyValue = MonetaryCalculator(_orderAmount)
            .subtract(_tax0)
            .subtract(_menuDiscountAmt)
            .getValueCulture();
      } else {
        //비과세 상점
        _orderAmount =
            MonetaryCalculator(_orderItem!.getPrice()).multiply(qty).getValue();

        if (_orderAmount >= 0) {
          if (_orderAmount < _menuDiscountAmt) {
            _menuDiscountAmt = _orderAmount;
          }
        } else {
          _menuDiscountAmt = 0;
        }

        _tax0 = 0;
        _supplyValue = MonetaryCalculator(_orderAmount)
            .subtract(_menuDiscountAmt)
            .getValueCulture();
      }
    } else {
      _menuDiscountAmt = await _calcMenuDiscountAmt(); // 메뉴할인금액

      if (IncludeTax == (_item!.getApplyTax0Yn())) {
        //상품가격에 Tax 포함
        _orderAmount =
            MonetaryCalculator(_orderItem!.getPrice()).multiply(qty).getValue();

        if (_orderAmount >= 0) {
          if (_orderAmount < _menuDiscountAmt) {
            _menuDiscountAmt = _orderAmount;
          }
        } else {
          _menuDiscountAmt = 0;
        }

        double supplyAmount = MonetaryCalculator(_orderAmount)
            .subtract(_menuDiscountAmt)
            .getValue();
        double tmp = MonetaryCalculator(supplyAmount)
            .divide(1 + ratio / 100)
            .getValueCulture();
        _tax0 =
            MonetaryCalculator(supplyAmount).subtract(tmp).getValueCulture();
        _supplyValue = MonetaryCalculator(_orderAmount)
            .subtract(_tax0)
            .subtract(_menuDiscountAmt)
            .getValueCulture();
      }

      if (ExcludeTax == (_item!.getApplyTax0Yn())) {
        //상품가격에 Tax 미포함, 추가 Tax
        _orderAmount = MonetaryCalculator(_orderItem!.getPrice())
            .multiply(qty)
            .multiply(1 + ratio / 100)
            .getValueCulture(); // 메뉴할인 전 Supply Amount

        if (_orderAmount >= 0) {
          if (_orderAmount < _menuDiscountAmt) {
            _menuDiscountAmt = _orderAmount;
          }
        } else {
          _menuDiscountAmt = 0;
        }

        double supplyAmount = MonetaryCalculator(_orderAmount)
            .subtract(_menuDiscountAmt)
            .getValue();
        double tmp = MonetaryCalculator(supplyAmount)
            .divide(1 + ratio / 100)
            .getValueCulture();
        _tax0 =
            MonetaryCalculator(supplyAmount).subtract(tmp).getValueCulture();
        _supplyValue = MonetaryCalculator(_orderAmount)
            .subtract(_tax0)
            .subtract(_menuDiscountAmt)
            .getValueCulture();
      }

      if (TaxFree == (_item!.getApplyTax0Yn()) ||
          _item!.getApplyTax0Yn() == null ||
          _item!.getApplyTax0Yn()!.isEmpty) {
        //비과세
        _orderAmount =
            MonetaryCalculator(_orderItem!.getPrice()).multiply(qty).getValue();

        if (_orderAmount >= 0) {
          if (_orderAmount < _menuDiscountAmt) {
            _menuDiscountAmt = _orderAmount;
          }
        } else {
          _menuDiscountAmt = 0;
        }

        _tax0 = 0;
        _supplyValue = MonetaryCalculator(_orderAmount)
            .subtract(_menuDiscountAmt)
            .getValueCulture();
      }

      // TODO:
      //  다중 TAX 적용은 TAX 부과 방식 확인 후 재계산 적용 필요
      //  TAX2, TAX3 은 ITEM SellingPrice 를 기준으로 계산하는게 맞는지 또는 TAX1 계산 후 공급가를 기준으로 부과하는지 계산 방식 확인 필요
    }
  }

  /// 주문금액 : 상품판매가. 단, ExcludeTax 아이템은 세금이 포함됨
  double getOrderAmount() {
    return _orderAmount;
  }

  double _getTaxAll() {
    return MonetaryCalculator(_tax0).add(_tax1).add(_tax2).getValue();
  }

  double getTax0() {
    return _tax0;
  }

  double _getTax1() {
    return _tax1;
  }

  double _getTax2() {
    return _tax2;
  }

  /// Item, OrderHistoryItem(수량포함), 주문 상품의 공급가
  ///
  /// @return double
  double? getSupplyValue() {
    return _supplyValue;
  }

  /// Item, OrderHistoryItem(수량포함), 주문 상품의 판매가
  ///
  /// @return double
  double getSupplyAmount() {
    return getSupplyValue()! + _getTaxAll();
  }

  /// OrderHistoryItem, 주문 상품의 공급가
  ///
  /// @return double
  double getMenuDiscountAmt() {
    return _menuDiscountAmt;
  }

  /// Menu Item Discount 계산 (메뉴할인금액)
  ///
  /// @return double
  Future<double> _calcMenuDiscountAmt() async {
    if (_orderItem == null) {
      Log.d(TAG, "Order item is null");
      return 0;
    }

    BasBL basBL = BasBL();
    OperationBL operationBL = OperationBL();
    double discount = 0;

    if (_orderItem!.getDiscountSectionCode() != null &&
        _orderItem!.getOrderOptionCode() !=
            OrderCheck.ORDER_OPTION_DISCOUNT_STORNO_ORDER) {
      bool isRate;
      double? amount;

      if (BasBL.USER_INPUT_DISCOUNT_CODE ==
          (_orderItem!.getDiscountSectionCode())) {
        //User Input (사용자 정의)
        isRate = _orderItem!.getDiscountRate() != null;
        amount = isRate
            ? _orderItem!.getDiscountRate()
            : _orderItem!.getDiscountAmount();
      } else {
        BasicDataItem? dc = await basBL
            .getBasicDataItemById(_orderItem!.getDiscountSectionCode());
        isRate = DcTypeRate == (dc?.getData3());
        if (dc != null) {
          amount =
              CommonUtil.stringToDouble(isRate ? dc.getData1() : dc.getData2());
        }
      }

      // DC %
      if (isRate) {
        // Discount Rate
        amount = MonetaryCalculator(amount).multiply(0.01).getValue();

        //MENU 할인을 상품단가에 할인 (세금미포함 과세 상품의 경우 세금적용전 단가에 할인 적용되어 세금이 추가로 할인된다)
        //MENU 할인을 세금 포함한 금액에서 할인 (총액에서 할인)
        TaxCalculator itemTaxCalculator = TaxCalculator();
        await itemTaxCalculator.init(null, item: _item);
        double supplyAmount = itemTaxCalculator.getSupplyValue()! +
            itemTaxCalculator._getTaxAll();

        // Item Discount (단품할인)
        if (DcTypeItem == (_orderItem!.getDiscountTypeCode())) {
          discount = MonetaryCalculator(supplyAmount)
              .multiply(amount)
              .getValueCulture();
        } else if (DcTypeLine == (_orderItem!.getDiscountTypeCode())) {
          // Line Discount (품목할인)
          double tmp = MonetaryCalculator(supplyAmount)
              .multiply(_orderItem!.getQuantity())
              .getValue();
          discount = MonetaryCalculator(tmp).multiply(amount).getValueCulture();
        }

        if (await operationBL.getCurrencyName() == ("KRW")) {
          double tmp =
              ((supplyAmount - discount).round()) / 10 * 10; // 1원 단위 절사
          discount =
              MonetaryCalculator(supplyAmount).subtract(tmp).getValueCulture();
        }
      } else {
        // DC cash
        // discount 부호 결정
        double sign = _orderItem!.getQuantity()! < 0 ? -1 : 1;

        // Discount 계산
        if (DcTypeItem == (_orderItem!.getDiscountTypeCode())) {
          //단품할인 (Item Discount)
          discount = MonetaryCalculator(amount)
              .multiply(sign)
              .multiply(_orderItem!.getQuantity())
              .getValueCulture();
        } else {
          //품목할인 (Line Discount)
          discount =
              MonetaryCalculator(amount).multiply(sign).getValueCulture();
        }
      }
    }

    return discount;
  }

  /// 받은 금액으로 세금, 공급가를 계산, for CAT
  ///
  /// @param taxIncluded 과세 금액
  /// @param taxFree     비과세 금액
  /// @return 세금/공급가
  static Future<Map<String, double>> getIncludeTax(
      double taxIncluded, double? taxFree) async {
    double ratio = await getTaxRatio0();
    double tmp =
        MonetaryCalculator(taxIncluded).divide(1 + ratio / 100).getValue();
    double tax =
        MonetaryCalculator(taxIncluded).subtract(tmp).getValueCulture();
    double supplyValue = MonetaryCalculator(taxIncluded)
        .add(taxFree)
        .subtract(tax)
        .getValueCulture();

    Map<String, double> result = Map();
    result[TenderConstants.SUPPLY_VALUE] = supplyValue;
    result[TenderConstants.TAX] = tax;
    return result;
  }

  static Future<double> _getTaxRatio(String taxCode) async {
    BasBL basBL = BasBL();
    BasicDataItem? data = await basBL.getBasicDataItemById(taxCode);
    return data != null ? CommonUtil.stringToDouble(data.getData2()) : 0;
  }

  /// BA1_BAS_DAT_ITM, CF101, TAX1, DAT_2 데이터 반환
  static Future<double> getTaxRatio0() async {
    return await _getTaxRatio(TAX0_CODE);
  }

  static Future<double> getTaxRatio1() async {
    return await _getTaxRatio(TAX1_CODE);
  }

  static Future<double> getTaxRatio2() async {
    return await _getTaxRatio(TAX2_CODE);
  }

  static Future<double> getTaxRatio4() async {
    return await _getTaxRatio(TAX4_CODE);
  }

  static Future<double> getDcTaxAmt0(double dcAmt) async {
    return dcAmt -
        MonetaryCalculator(dcAmt)
            .divide(1 + await getTaxRatio0() / 100)
            .getValueCulture();
  }

  static Future<double> getDcTaxAmt1(double dcAmt) async {
    return dcAmt -
        MonetaryCalculator(dcAmt)
            .divide(1 + await getTaxRatio1() / 100)
            .getValueCulture();
  }

  static Future<double> getDcTaxAmt2(double dcAmt) async {
    return dcAmt -
        MonetaryCalculator(dcAmt)
            .divide(1 + await getTaxRatio2() / 100)
            .getValueCulture();
  }
}

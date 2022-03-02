import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "OD1_ODR_HIS_CNCL_ITM", indices: const [
  Index(value: ["COM_DT", "COM_SNO", "ITM_SNO"], unique: true)
])
class OrderHistoryCancelItem {
  @primaryKey
  @ColumnInfo(name: "ID")
  String? id;

  @ColumnInfo(name: "COM_DT")
  String? commonDate;

  @ColumnInfo(name: "COM_SNO")
  int? commonSerialNumber;

  @ColumnInfo(name: "ITM_SNO")
  int? itemSerialNumber;

  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  @ColumnInfo(name: "STR_TRM_ID")
  String? storeTerminalId;

  @ColumnInfo(name: "QTY")
  double? quantity;

  @ColumnInfo(name: "PRICE")
  double? price;

  @ColumnInfo(name: "SPLY_VAL")
  double? supplyValue;

  @ColumnInfo(name: "DC_SEC_CD")
  String? discountSectionCode;

  @ColumnInfo(name: "MENU_DC_AMT")
  double? menuDiscountAmount;

  @ColumnInfo(name: "SPLY_AMT")
  double? supplyAmount;

  @ColumnInfo(name: "CNCL_EMP_ID")
  String? cancelEmployeeId;

  @ColumnInfo(name: "CNCL_RESN")
  String? cancelReason;

  @ColumnInfo(name: "CNCL_DT")
  DateTime? cancelDate;

  @ColumnInfo(name: "ODR_DT")
  DateTime? orderDate;

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  //todo @Generated(hash = 569154471)
  // OrderHistoryCancelItem() {
  // }

  //todo @Generated(hash = 756001306)
  OrderHistoryCancelItem(
      {String? id,
      String? commonDate,
      int? commonSerialNumber,
      int? itemSerialNumber,
      String? itemId,
      String? storeTerminalId,
      double? quantity,
      double? price,
      double? supplyValue,
      String? discountSectionCode,
      double? menuDiscountAmount,
      double? supplyAmount,
      String? cancelEmployeeId,
      String? cancelReason,
      DateTime? cancelDate,
      DateTime? orderDate,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.id = id;
    this.commonDate = commonDate;
    this.commonSerialNumber = commonSerialNumber;
    this.itemSerialNumber = itemSerialNumber;
    this.itemId = itemId;
    this.storeTerminalId = storeTerminalId;
    this.quantity = quantity;
    this.price = price;
    this.supplyValue = supplyValue;
    this.discountSectionCode = discountSectionCode;
    this.menuDiscountAmount = menuDiscountAmount;
    this.supplyAmount = supplyAmount;
    this.cancelEmployeeId = cancelEmployeeId;
    this.cancelReason = cancelReason;
    this.cancelDate = cancelDate;
    this.orderDate = orderDate;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getId() {
    return id;
  }

  void setId(String id) {
    this.id = id;
  }

  String? getCommonDate() {
    return commonDate;
  }

  void setCommonDate(String? commonDate) {
    this.commonDate = commonDate;
  }

  int? getCommonSerialNumber() {
    return commonSerialNumber;
  }

  void setCommonSerialNumber(int? commonSerialNumber) {
    this.commonSerialNumber = commonSerialNumber;
  }

  int? getItemSerialNumber() {
    return itemSerialNumber;
  }

  void setItemSerialNumber(int? itemSerialNumber) {
    this.itemSerialNumber = itemSerialNumber;
  }

  String? getItemId() {
    return itemId;
  }

  void setItemId(String? itemId) {
    this.itemId = itemId;
  }

  String? getStoreTerminalId() {
    return storeTerminalId;
  }

  void setStoreTerminalId(String? storeTerminalId) {
    this.storeTerminalId = storeTerminalId;
  }

  double? getQuantity() {
    return quantity;
  }

  void setQuantity(double quantity) {
    this.quantity = quantity;
  }

  double? getPrice() {
    return price;
  }

  void setPrice(double? price) {
    this.price = price;
  }

  double? getSupplyValue() {
    return supplyValue;
  }

  void setSupplyValue(double supplyValue) {
    this.supplyValue = supplyValue;
  }

  String? getDiscountSectionCode() {
    return discountSectionCode;
  }

  void setDiscountSectionCode(String? discountSectionCode) {
    this.discountSectionCode = discountSectionCode;
  }

  double? getMenuDiscountAmount() {
    return menuDiscountAmount;
  }

  void setMenuDiscountAmount(double? menuDiscountAmount) {
    this.menuDiscountAmount = menuDiscountAmount;
  }

  double? getSupplyAmount() {
    return supplyAmount;
  }

  void setSupplyAmount(double supplyAmount) {
    this.supplyAmount = supplyAmount;
  }

  String? getCancelEmployeeId() {
    return cancelEmployeeId;
  }

  void setCancelEmployeeId(String? cancelEmployeeId) {
    this.cancelEmployeeId = cancelEmployeeId;
  }

  String? getCancelReason() {
    return cancelReason;
  }

  void setCancelReason(String? cancelReason) {
    this.cancelReason = cancelReason;
  }

  DateTime? getCancelDate() {
    return cancelDate;
  }

  void setCancelDate(DateTime cancelDate) {
    this.cancelDate = cancelDate;
  }

  DateTime? getOrderDate() {
    return orderDate;
  }

  void setOrderDate(DateTime orderDate) {
    this.orderDate = orderDate;
  }

  void setOrderDateString(String orderDate) {
    setOrderDate(CommonUtil.convertStringToDate(orderDate));
  }

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

  void createId() {
    NumberFormat df = NumberFormat("00000");
    id = commonDate! +
        "_" +
        commonSerialNumber.toString() +
        "_" +
        df.format(itemSerialNumber);
  }
}

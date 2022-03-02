import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "IT1_ITM", indices: const [
  Index(value: ["ITM_NM", "BARCD"])
])
class Item {
  static String PRICE_TYPE_LIST = "L";
  static String PRICE_TYPE_WEIGHT = "W";
  static String PRICE_TYPE_OPEN = "O";
  static String SALE_TYPE_NORMAL = "X";
  static String SALE_TYPE_SET_MENU = "S";
  static String SALE_TYPE_OPTION = "M";
  static String SALE_TYPE_CAT = "C";
  static String LINK_CODE_ITEM_TRIGGER_CODE = "00000000000000000000";

  @primaryKey
  @ColumnInfo(name: "ITM_ID")
  String? itemId;

  @ColumnInfo(name: "ITM_GRP_ID")
  String? itemGroupId;

  @ColumnInfo(name: "ITM_CD")
  String? itemCode;

  @ColumnInfo(name: "ITM_NM")
  String? itemName;

  @ColumnInfo(name: "OPR_TP_CD")
  String? operationTypeCode;

  @ColumnInfo(name: "SLS_TP_CD")
  String? saleTypeCode;

  @ColumnInfo(name: "PRICE_TP_CD")
  String? priceTypeCode;

  @ColumnInfo(name: "COST")
  double? cost;

  @ColumnInfo(name: "SELL_PRICE")
  double? sellingPrice;

  @ColumnInfo(name: "BARCD")
  String? barcode;

  @ColumnInfo(name: "APLY_TAX_0_YN")
  String? applyTax0Yn;

  @ColumnInfo(name: "APLY_TAX_1_YN")
  String? applyTax1Yn;

  @ColumnInfo(name: "APLY_TAX_2_YN")
  String? applyTax2Yn;

  @ColumnInfo(name: "APLY_DC_YN")
  bool? applyDiscountYn;

  @ColumnInfo(name: "HIDE_YN")
  bool? hidingYn;

  @ColumnInfo(name: "INV_QTY")
  double? inventoryQuantity;

  @ColumnInfo(name: "KTCHN_PRNTR_OUTPUT_YN")
  bool? kitchenPrinterOutputYn;

  @ColumnInfo(name: "OPT_USE_TP_CD")
  String? optionUseTypeCode;

  @ColumnInfo(name: "RECMND_ITM_YN")
  bool? recommendedItemYn;

  @ColumnInfo(name: "PACK_PSBL_YN")
  bool? packingPossibleYn;

  @ColumnInfo(name: "ONLINE_SLS_YN")
  bool? onlineSaleYn;

  @ColumnInfo(name: "SOLD_OUT_YN")
  bool? soldOutYn;

  @ColumnInfo(name: "IMG_URL")
  String? imageUrl;

  @ColumnInfo(name: "LNK_CODE")
  String? linkCode;

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

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

  //todo @ToOne(joinProperty = "itemGroupId")
  @ignore
  ItemGroup? itemGroup;

  //todo @Transient
  @ignore
  double? qty;

  /** Used to resolve relations */
  //todo @Generated(hash = 2040040024)
  // transient DaoSession daoSession;

  /** Used for active entity operations. */
  //todo @Generated(hash = 182764869)
  // transient ItemDao myDao;

  //todo @Generated(hash = 1470900980)
  // Item() {
  // }

  //todo @Generated(hash = 648061040)
  Item(
      {String? itemId,
      String? itemGroupId,
      String? itemCode,
      String? itemName,
      String? operationTypeCode,
      String? saleTypeCode,
      String? priceTypeCode,
      double? cost,
      double? sellingPrice,
      String? barcode,
      String? applyTax0Yn,
      String? applyTax1Yn,
      String? applyTax2Yn,
      bool? applyDiscountYn,
      bool? hidingYn,
      double? inventoryQuantity,
      bool? kitchenPrinterOutputYn,
      String? optionUseTypeCode,
      bool? recommendedItemYn,
      bool? packingPossibleYn,
      bool? onlineSaleYn,
      bool? soldOutYn,
      String? imageUrl,
      String? linkCode,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.itemId = itemId;
    this.itemGroupId = itemGroupId;
    this.itemCode = itemCode;
    this.itemName = itemName;
    this.operationTypeCode = operationTypeCode;
    this.saleTypeCode = saleTypeCode;
    this.priceTypeCode = priceTypeCode;
    this.cost = cost;
    this.sellingPrice = sellingPrice;
    this.barcode = barcode;
    this.applyTax0Yn = applyTax0Yn;
    this.applyTax1Yn = applyTax1Yn;
    this.applyTax2Yn = applyTax2Yn;
    this.applyDiscountYn = applyDiscountYn;
    this.hidingYn = hidingYn;
    this.inventoryQuantity = inventoryQuantity;
    this.kitchenPrinterOutputYn = kitchenPrinterOutputYn;
    this.optionUseTypeCode = optionUseTypeCode;
    this.recommendedItemYn = recommendedItemYn;
    this.packingPossibleYn = packingPossibleYn;
    this.onlineSaleYn = onlineSaleYn;
    this.soldOutYn = soldOutYn;
    this.imageUrl = imageUrl;
    this.linkCode = linkCode;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  //todo @Generated(hash = 183655407)
  // transient String itemGroup__resolvedKey;

  String? getItemId() {
    return itemId;
  }

  void setItemId(String itemId) {
    this.itemId = itemId;
  }

  void createId() {
    // String id;
    // BasicKeyGenerator basic_id = BasicKeyGenerator();
    // id = basic_id.generate(BasicKeyGenerator.TableEnum.Item, "Item").toString();
    // setItemId(id);

    print("please check Item createId");
  }

  String? getItemGroupId() {
    return itemGroupId;
  }

  void setItemGroupId(String itemGroupId) {
    this.itemGroupId = itemGroupId;
  }

  String? getItemName() {
    return itemName;
  }

  void setItemName(String itemName) {
    this.itemName = itemName;
  }

  String? getSaleTypeCode() {
    return saleTypeCode;
  }

  void setSaleTypeCode(String saleTypeCode) {
    this.saleTypeCode = saleTypeCode;
  }

  String? getPriceTypeCode() {
    return priceTypeCode;
  }

  void setPriceTypeCode(String priceTypeCode) {
    this.priceTypeCode = priceTypeCode;
  }

  double? getCost() {
    return cost;
  }

  void setCost(double cost) {
    this.cost = cost;
  }

  double? getSellingPrice() {
    return sellingPrice;
  }

  void setSellingPrice(double? sellingPrice) {
    this.sellingPrice = sellingPrice;
  }

  String? getBarcode() {
    return barcode;
  }

  void setBarcode(String barcode) {
    this.barcode = barcode;
  }

  String? getApplyTax0Yn() {
    return applyTax0Yn;
  }

  void setApplyTax0Yn(String applyTax0Yn) {
    this.applyTax0Yn = applyTax0Yn;
  }

  String? getApplyTax1Yn() {
    return applyTax1Yn;
  }

  void setApplyTax1Yn(String applyTax1Yn) {
    this.applyTax1Yn = applyTax1Yn;
  }

  String? getApplyTax2Yn() {
    return applyTax2Yn;
  }

  void setApplyTax2Yn(String applyTax2Yn) {
    this.applyTax2Yn = applyTax2Yn;
  }

  bool? getApplyDiscountYn() {
    return applyDiscountYn;
  }

  void setApplyDiscountYn(bool applyDiscountYn) {
    this.applyDiscountYn = applyDiscountYn;
  }

  bool? getHidingYn() {
    return hidingYn;
  }

  void setHidingYn(bool hidingYn) {
    this.hidingYn = hidingYn;
  }

  double? getInventoryQuantity() {
    return inventoryQuantity;
  }

  void setInventoryQuantity(double inventoryQuantity) {
    this.inventoryQuantity = inventoryQuantity;
  }

  bool? getKitchenPrinterOutputYn() {
    return kitchenPrinterOutputYn;
  }

  void setKitchenPrinterOutputYn(bool kitchenPrinterOutputYn) {
    this.kitchenPrinterOutputYn = kitchenPrinterOutputYn;
  }

  String? getOptionUseTypeCode() {
    return optionUseTypeCode;
  }

  void setOptionUseTypeCode(String optionUseTypeCode) {
    this.optionUseTypeCode = optionUseTypeCode;
  }

  bool? getRecommendedItemYn() {
    return recommendedItemYn;
  }

  void setRecommendedItemYn(bool recommendedItemYn) {
    this.recommendedItemYn = recommendedItemYn;
  }

  bool? getPackingPossibleYn() {
    return packingPossibleYn;
  }

  void setPackingPossibleYn(bool packingPossibleYn) {
    this.packingPossibleYn = packingPossibleYn;
  }

  bool? getOnlineSaleYn() {
    return onlineSaleYn;
  }

  void setOnlineSaleYn(bool onlineSaleYn) {
    this.onlineSaleYn = onlineSaleYn;
  }

  bool? getSoldOutYn() {
    return soldOutYn;
  }

  void setSoldOutYn(bool soldOutYn) {
    this.soldOutYn = soldOutYn;
  }

  String? getImageUrl() {
    return imageUrl;
  }

  void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
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

  double? getQty() {
    return qty;
  }

  void setQty(double? qty) {
    this.qty = qty;
  }

  String? getLinkCode() {
    return linkCode;
  }

  void setLinkCode(String linkCode) {
    this.linkCode = linkCode;
  }

  /** To-one relationship, resolved on first access. */
  //todo @Generated(hash = 2116809615)
  // ItemGroup getItemGroup() {
  //     String __key = this.itemGroupId;
  //     if (itemGroup__resolvedKey == null || itemGroup__resolvedKey != __key) {
  //         DaoSession daoSession = this.daoSession;
  //         if (daoSession == null) {
  //             throw DaoException("Entity is detached from DAO context");
  //         }
  //         ItemGroupDao targetDao = daoSession.getItemGroupDao();
  //         ItemGroup itemGroupNew = targetDao.load(__key);
  //         synchronized (this) {
  //             itemGroup = itemGroupNew;
  //             itemGroup__resolvedKey = __key;
  //         }
  //     }
  //     return itemGroup;
  // }
  Future<ItemGroup?> getItemGroup() async {
    return await Common.db!.itemGroupDao.findById(itemGroupId!);
  }

  //
  // /** called by internal mechanisms, do not call yourself. */
  // //todo @Generated(hash = 1964228920)
  // void setItemGroup(ItemGroup itemGroup) {
  //     synchronized (this) {
  //         this.itemGroup = itemGroup;
  //         itemGroupId = itemGroup == null ? null : itemGroup.getItemGroupId();
  //         itemGroup__resolvedKey = itemGroupId;
  //     }
  // }
  //
  // /**
  //  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#delete(Object)}.
  //  * Entity must attached to an entity context.
  //  */
  // //todo @Generated(hash = 128553479)
  // void delete() {
  //     if (myDao == null) {
  //         throw DaoException("Entity is detached from DAO context");
  //     }
  //     myDao.delete(this);
  // }
  //
  // /**
  //  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#refresh(Object)}.
  //  * Entity must attached to an entity context.
  //  */
  // //todo @Generated(hash = 1942392019)
  // void refresh() {
  //     if (myDao == null) {
  //         throw DaoException("Entity is detached from DAO context");
  //     }
  //     myDao.refresh(this);
  // }
  //
  // /**
  //  * Convenient call for {@link org.greenrobot.greendao.AbstractDao#update(Object)}.
  //  * Entity must attached to an entity context.
  //  */
  // //todo @Generated(hash = 713229351)
  // void update() {
  //     if (myDao == null) {
  //         throw DaoException("Entity is detached from DAO context");
  //     }
  //     myDao.update(this);
  // }

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());
    synchronizedYn = false;

    if (firstRegistrantId == null) {
      firstRegistrantId = BaseBL.employeeId;
    }

    if (firstRegistrationDatetime == null) {
      firstRegistrationDatetime = now;
    }

    lastReviserId = BaseBL.employeeId;
    lastRevisionDatetime = now;

    if (stateCode == null) {
      stateCode = "00";
    }
  }

  bool isListPrice() {
    return PRICE_TYPE_LIST == (priceTypeCode);
  }

  bool isWeightPrice() {
    return PRICE_TYPE_WEIGHT == (priceTypeCode);
  }

  bool isOpenPrice() {
    return PRICE_TYPE_OPEN == (priceTypeCode);
  }

  bool isNormal() {
    return SALE_TYPE_NORMAL == (saleTypeCode);
  }

  bool isOption() {
    return SALE_TYPE_OPTION.endsWith(saleTypeCode!);
  }

  bool isSetMenu() {
    return SALE_TYPE_SET_MENU == (saleTypeCode);
  }

  bool isCatItem() {
    return SALE_TYPE_CAT == (saleTypeCode);
  }

  String? getOperationTypeCode() {
    return this.operationTypeCode;
  }

  void setOperationTypeCode(String operationTypeCode) {
    this.operationTypeCode = operationTypeCode;
  }

  String? getItemCode() {
    return this.itemCode;
  }

  void setItemCode(String itemCode) {
    this.itemCode = itemCode;
  }

  bool isMarking() {
    if (linkCode == null || linkCode!.isEmpty) {
      linkCode = LINK_CODE_ITEM_TRIGGER_CODE;
    }
    String isMarking = linkCode!.substring(0, 2);
    if (isMarking == ("01")) return true;
    return false;
  }

/** called by internal mechanisms, do not call yourself. */
//todo @Generated(hash = 881068859)
// void __setDaoSession(DaoSession daoSession) {
//     this.daoSession = daoSession;
//     myDao = daoSession != null ? daoSession.getItemDao() : null;
// }
}

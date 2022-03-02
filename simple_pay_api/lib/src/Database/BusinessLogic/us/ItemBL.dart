import 'package:simple_pay_api/src/Database/Util/StringUtils.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';

/// Item 관련 로직
class ItemBL extends BaseBL {
  static const String OPTION_USE_PARTIAL = "P";
  static const String OPTION_USE_FULL = "T";

  //X : 일반 판매, M :  Modifier 판매, S : Set 메뉴 판매,C : CAT 결제 전용 상품, V : 수기취소승인, D : 주문할인
  static const String SALE_TYPE_NORMAL = "X";
  static const String SALE_TYPE_SET = "S";
  static const String SALE_TYPE_CAT = "C";
  static const String SALE_TYPE_VOID = "V";
  static const String SALE_TYPE_DISCOUNT = "D";

  static final ItemBL _singleton = ItemBL._internal();

  factory ItemBL() => _singleton;

  ItemBL._internal();

  Future<ItemGroup?> getItemGroupById(String? itemId) async {
    // 의도적으로 STATE_DELETE 검사 안함
    return await itemGroupDao!.findById(itemId!);
  }

  Future<List<ItemGroup>> getCATItemGroupList(String? oprTpCode) async {
    return await getItemGroupList(oprTpCode, SALE_TYPE_CAT);
  }

  Future<List<ItemGroup>> getItemGroupList(String? oprTpCode, String type,
      [bool? isRecommended, String name = ""]) async {
    if (isRecommended ?? false) {
      return await itemGroupDao!
          .findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndItemGroupNameAndRecommended(
              BaseBL.STATE_DELETE, oprTpCode!, type, "%$name%", true);
    } else {
      return await itemGroupDao!
          .findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndItemGroupName(
              BaseBL.STATE_DELETE, oprTpCode!, type, "%$name%");
    }
  }

  Future<List<ItemGroup>> getCATItemGroupListHidden(String? oprTpCode) async {
    return await getItemGroupListHidden(oprTpCode, SALE_TYPE_CAT);
  }

  Future<List<ItemGroup>> getItemGroupListHidden(
      String? oprTpCode, String type) async {
    return await itemGroupDao!
        .findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndHidingYn(
            BaseBL.STATE_DELETE, oprTpCode!, type);
  }

  Future<List<Item>> getCATItemListByName(String groupId) async {
    List<String> saleTypeCodes = [];
    saleTypeCodes.add(SALE_TYPE_NORMAL);
    saleTypeCodes.add(SALE_TYPE_CAT);
    saleTypeCodes.add(SALE_TYPE_SET);

    if (!StringUtils.isEmpty(groupId)) {
      return await itemDao!
          .findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYn(
              saleTypeCodes, BaseBL.STATE_DELETE, groupId, false);
    } else {
      return await itemDao!.findAllBySaleTypeCodeInAndStateCodeAndHidingYn(
          saleTypeCodes, BaseBL.STATE_DELETE, false);
    }
  }

  Future<List<Item>> getCATItemListByNameHidden(String groupId) async {
    List<String> saleTypeCodes = [];
    saleTypeCodes.add(SALE_TYPE_NORMAL);
    saleTypeCodes.add(SALE_TYPE_CAT);
    saleTypeCodes.add(SALE_TYPE_SET);

    if (!StringUtils.isEmpty(groupId)) {
      return await itemDao!
          .findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYn(
              saleTypeCodes, BaseBL.STATE_DELETE, groupId, true);
    } else {
      return await itemDao!.findAllBySaleTypeCodeInAndStateCodeAndHidingYn(
          saleTypeCodes, BaseBL.STATE_DELETE, true);
    }
  }

  Future<List<Item>> getItemListRecentlyUsedList() async {
    List<Item> itemList = await itemDao!.findAllByRecentlyUsedList();
    return itemList;
  }

  Future<List<Item>> getItemListByName(
    String? groupId,
    String name,
    bool recommended, [
    int offset = 0,
    int limit = 500,
  ]) async {
    var saleTypeCodes = [SALE_TYPE_NORMAL, SALE_TYPE_SET];

    if (groupId?.isNotEmpty ?? false) {
      if (recommended) {
        return await itemDao!
            .findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYnAndItemNameLikeAndRecommendedLimitOffset(
          saleTypeCodes,
          BaseBL.STATE_DELETE,
          groupId!,
          false,
          '%$name%',
          recommended,
          limit,
          offset,
        );
      } else {
        return await itemDao!
            .findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYnAndItemNameLikeLimitOffset(
          saleTypeCodes,
          BaseBL.STATE_DELETE,
          groupId!,
          false,
          '%$name%',
          limit,
          offset,
        );
      }
    } else {
      return await itemDao!
          .findAllBySaleTypeCodeInAndStateCodeAndHidingYnAndItemNameLikeLimitOffset(
              saleTypeCodes,
              BaseBL.STATE_DELETE,
              false,
              '%$name%',
              limit,
              offset);
    }
  }

  /// Item Code 로 Item 조회
  ///
  /// @param itemId Item Code
  /// @return Item
  Future<Item?> getItemById(String? itemId) async {
    // 의도적으로 BaseBL.STATE_DELETE 검사 안함
    return await itemDao!.findById(itemId!);
  }

  Future<Item?> getItemByBarcode(String barcode,
      [bool favorite = false]) async {
    List<Item> itemList = await getItemListByBarcode(barcode, favorite);
    return itemList.isNotEmpty ? itemList.first : null;
  }

  Future<List<Item>> getItemListByBarcode(String barcode,
      [bool recommended = false, int offset = 0, int limit = 500]) async {
    return await itemDao!
        .findAllByBarcodeLikeAndStateCodeAndHidingYnLimitOffset("%$barcode%",
            recommended, BaseBL.STATE_DELETE, false, limit, offset);
  }

  /// Menu Group 데이터 조회
  ///
  /// @param busiSection BusinessSectionCode
  /// @param page        Page Number
  /// @return ItemGroup List
  Future<List<MenuGroup>> getMenuGroupList(String busiSection,
      [int page = -1]) async {
    // MenuGroupUse 조회
    List<MenuGroupUse> menuGroupUse = await menuGroupUseDao!
        .findAllByBusinessSectionCodeAndUseYnAndStateCode(
            busiSection, true, BaseBL.STATE_DELETE);
    List<String> menuGroupIdList = [];
    for (MenuGroupUse _menuGroupUse in menuGroupUse) {
      String? menuGroupId = _menuGroupUse.getMenuGroupId();
      if (menuGroupId != null) {
        menuGroupIdList.add(menuGroupId);
      }
    }
    // MenuGroupUse에 조회된 MenuGroupCode만 조회
    if (page == -1) {
      return await menuGroupDao!.findAllByMenuGroupIdInAndStateCode(
          menuGroupIdList, BaseBL.STATE_DELETE);
    } else {
      return await menuGroupDao!.findAllByMenuGroupIdInAndStateCodeAndLocationZ(
          menuGroupIdList, BaseBL.STATE_DELETE, page - 1);
    }
  }

  Future<MenuGroup?> getMenuGroupById(String itemId) async {
    // 의도적으로 STATE_DELETE 검사 안함
    return await menuGroupDao!.findById(itemId);
  }

  Future<MenuItem?> getMenuItemById(String itemId) async {
    // 의도적으로 STATE_DELETE 검사 안함
    return await menuItemDao!.findById(itemId);
  }

  /// Menu Group 별 All Page Item list 조회
  ///
  /// @param menuGroupId Item Group id
  /// @return Item List
  Future<List<MenuItem>> getMenuItemListByMenuGroupId(
      String? menuGroupId) async {
    return await menuItemDao!
        .findAllByMenuGroupIdAndStateCode(menuGroupId!, BaseBL.STATE_DELETE);
  }

  Future<Item?> getCatItem(BaseBL_OPR_TP_CD oprTpCd) async {
    List<Item> items = await itemDao!
        .findAllBySaleTypeCodeAndStateCodeJoinItemGroup(SALE_TYPE_CAT,
            BaseBL.STATE_DELETE, oprTpCd.getCode(), SALE_TYPE_CAT);
    return items.length > 0 ? items.first : null;
  }

  Future<Item?> getManualVoidItem() async {
    List<String> saleTypeCodes = [];
    saleTypeCodes.add(SALE_TYPE_VOID);
    List<Item> items = await itemDao!
        .findAllBySaleTypeCodeInAndStateCodeAndHidingYn(
            saleTypeCodes, BaseBL.STATE_DELETE, false);
    return items.length > 0 ? items.first : null;
  }

  /// Self Menu Group 데이터 조회
  ///
  /// @return SelfMenuGroup List
  // private QueryBuilder<SelfMenuGroup> getSelfMenuGroupListQry() {
  //     return selfMenuGroupDao;
  // }
  Future<List<SelfMenuGroup>> getSelfMenuGroupList([int page = -1]) async {
    return await selfMenuGroupDao!
        .findAllByMenuGroupIdInAndStateCode(BaseBL.STATE_DELETE);
  }

  Future<SelfMenuGroup?> getSelfMenuGroupById(String itemId) async {
    // 의도적으로 STATE_DELETE 검사 안함
    return await selfMenuGroupDao!.findById(itemId);
  }

  Future<SelfMenuItem?> getSelfMenuItemById(String itemId) async {
    // 의도적으로 STATE_DELETE 검사 안함
    return await selfMenuItemDao!.findById(itemId);
  }

  Future<List<SelfMenuItem>> getSelfMenuItemListBySelfMenuGroupId(
      String? menuGroupId) async {
    return await selfMenuItemDao!.findAllBySelfMenuGroupIdAndStateCode(
        menuGroupId!, BaseBL.STATE_DELETE);
  }

  Future<TemplateItem?> getTemplateItem(String templateItemId) async {
    List<TemplateItem> list = await templateItemDao!
        .findAllByTemplateItemIdAndStateCode(
            templateItemId, BaseBL.STATE_DELETE);
    return list.length > 0 ? list.first : null;
  }

  Future<TemplateItem?> getTemplateItemByName(String templateName) async {
    List<TemplateItem> list = await templateItemDao!
        .findAllByNameAndStateCode(templateName, BaseBL.STATE_DELETE);
    return list.length > 0 ? list.first : null;
  }

  //////////////////////////////////////////////////////////
  // Item Insert
  //////////////////////////////////////////////////////////

  /// ItemGroup 데이터 insert
  ///
  /// @param list ItemGroup 데이터
  Future<void> insertItemGroupList(List<ItemGroup> list) async {
    if (list == null) {
      return;
    }

    for (ItemGroup i in list) {
      // itemGroupDao.insertOrReplace(i);
      ItemGroup? itemGroup = await itemGroupDao!.findById(i.getItemGroupId()!);
      if (itemGroup == null) {
        await itemGroupDao!.insertOne(i);
      } else {
        await itemGroupDao!.updateOne(i);
      }
    }
  }

  Future<void> insertItemList(List<Item> list) async {
    if (list == null) {
      return;
    }

    for (Item i in list) {
      Item? old = await itemDao!.findById(i.getItemId()!);

      if (old == null) {
        await itemDao!.insertOne(i);
      } else if (old.getSynchronizedYn()!) {
        await itemDao!.updateOne(i);
      }
    }
  }

  Future<List<SetEntity>> getSetEntity(String? itemId) async {
    return await setEntityDao!
        .findAllBySetItemIdAndStateCodeOrderBySetEntitySerialNumber(
            itemId!, BaseBL.STATE_DELETE);
  }

  Future<bool> hasItemOptions(String itemId) async {
    Item? item = await itemDao!.findById(itemId);

    if (item != null) {
      if (OPTION_USE_PARTIAL == (item.getOptionUseTypeCode())) {
        List<ItemOption> list =
            await itemOptionDao!.findAllByItemId(itemId, BaseBL.STATE_DELETE);
        return list.length > 0;
      } else if (OPTION_USE_FULL == (item.getOptionUseTypeCode())) {
        List<ItemOption> list = await itemOptionDao!.findAll();
        return list.length > 0;
      }
    }

    return false;
  }

  /// 메뉴에서 옵션 위치를 찾음
  ///
  /// @param itemId   옵션 추가가 되는 상품 식별자
  /// @param optionId 옵션 식별자
  /// @param col      옵션 메뉴 그룹 가로 크기
  /// @param row      옵션 메뉴 그룹 세로 크기
  /// @return 찾은 위치를 Object[3]으로 돌려줌
  ///          옵션 메뉴 그룹의 페이지 번호 (0부터 시작), 옵션 메뉴 그룹 식별자, 옵션 메뉴의 페이지 번호 (0부터 시작)
  Future<List<ItemOption>> findOptionEntity(String itemId) async {
    Item? item = await itemDao!.findById(itemId);

    if (item == null) {
      return [];
    }

    List<ItemOption> list = [];

    if (OPTION_USE_PARTIAL == (item.getOptionUseTypeCode())) {
      list = await itemOptionDao!.findAllByItemId(itemId, BaseBL.STATE_DELETE);
    } else if (OPTION_USE_FULL == (item.getOptionUseTypeCode())) {
      list = await itemOptionDao!.findAll();
    }

    return list;
  }

  Future<List<OptionGroup>> findOptionGroup(String itemId) async {
    Item? item = await itemDao!.findById(itemId);

    if (item == null) {
      return [];
    }
    List<OptionGroup> optionGroupList = [];
    if (OPTION_USE_PARTIAL == (item.getOptionUseTypeCode())) {
      optionGroupList = await optionGroupDao!
          .findAllItemOptionByItemId(itemId, BaseBL.STATE_DELETE);
    } else if (OPTION_USE_FULL == (item.getOptionUseTypeCode())) {
      optionGroupList = await optionGroupDao!.findAllItemOption();
    }

    return optionGroupList;
  }

  Future<List<OptionEntity>> getOptionEntityList(String groupId) async {
    return await optionEntityDao!
        .findByItemIdAndStateCode(groupId, BaseBL.STATE_DELETE);
  }
}

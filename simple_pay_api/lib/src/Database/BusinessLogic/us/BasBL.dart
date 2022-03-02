import 'package:floor/floor.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/Util/StringUtils.dart';
import 'package:simple_pay_api/src/Database/db.dart';

import '../BaseBL.dart';
import 'OperationBL.dart';

/// Bas Code 관련 로직

class BasBL extends BaseBL {
  static const String TAG = "BasBL";
  static const String LONG_AGO = "0";
  static const int DC_UNIT_PER_PAGE = 11;
  static const String USER_INPUT_DISCOUNT_CODE = "DT100";
  static const String READONLY = "@@";

  static final BasBL _singleton = BasBL._internal();

  factory BasBL() => _singleton;

  BasBL._internal();

  Future<String> getCommonDate([DateTime? date]) async {
    DateTime _date = date ?? DateTime.now();

    Store? store = await getStore();

    String? closeTime;
    if (store == null) {
      closeTime = "0000";
    } else {
      closeTime = store.getCloseBusinessTime();
    }

    // 마감시간 설정이 0000 일 경우 현재 날짜가 영업 기준일
    if ("0000" != (closeTime)) {
      DateTime close = DateTime(
          _date.year,
          _date.month,
          _date.day,
          int.parse(closeTime!.substring(0, 2)),
          int.parse(closeTime.substring(2, 4)));
      DateTime now = _date;
      if (now.compareTo(close) < 0) {
        now = now.subtract(Duration(days: 1));
      }
      return DateFormat('yyyyMMdd').format(now);
    }
    return DateFormat('yyyyMMdd').format(_date);
  }

  String getToday() {
    return DateFormat('yyyyMMdd').format(DateTime.now());
  }

  /// BasicDataItem 에서 Culture Info 정보 조회
  /// @return BasicDataItem
  Future<BasicDataItem?> getCultureInfo() async {
    BasicDataItem? basicDataItem = await getBasicDataItemById("CI100");

    // 문화권 설정이 안되어 있을 경우 null을 반환
    if (basicDataItem != null && "1" != (basicDataItem.getData1())) {
      basicDataItem = null;
    }
    return basicDataItem;
  }

  // BasicDataItem 에서 Cash Receipt 발급처 조회
  //
  // @return Cash Receipt Agent
  Future<String?> getCashReceiptAgent() async {
    BasicDataItem? basicDataItem = await getBasicDataItemById("CA100");

    return basicDataItem?.getData1();
  }

  Future<BasicDataItem?> getBasicDataItemById(
      String? basicDataItemCodeName) async {
    return basicDataItemDao!
        .findByBasicDataItemCodeName(basicDataItemCodeName!);
  }

  Future<BasicDataItem?> getBasicDataItem(
      String groupCode, String? itemCode) async {
    return basicDataItemDao!
        .findByBasicDataItemCodeNameAndBasicDataCodeName(groupCode, itemCode!);
  }

  Future<List<BasicDataItem>> getBasicDataItems(String groupCode) async {
    return basicDataItemDao!.findAllByBasicDataCodeName(groupCode);
  }

  Future<StoreTerminalBasicDataItem?> getStoreTerminalBasicDataItem(
      String groupCode, String? itemCode) async {
    return storeTerminalBasicDataItemDao!
        .findByStoreTerminalBasicDataCodeNameAndStoreTerminalBasicDataItemCodeName(
            groupCode, itemCode!);
  }

  Future<List<StoreTerminalBasicDataItem>> getStoreTerminalBasicDataItems(
      String groupCode) async {
    return storeTerminalBasicDataItemDao!
        .findAllByStoreTerminalBasicDataCodeName(groupCode);
  }

  Future<void> saveStoreTerminalBasicDataItem(
      StoreTerminalBasicDataItem item) async {
    item.updateTime();
    // storeTerminalBasicDataItemDao.save(item);
    StoreTerminalBasicDataItem? storeTerminalBasicDataItem =
        await storeTerminalBasicDataItemDao!
            .findById(item.getStoreTerminalBasicDataItemId()!);
    if (storeTerminalBasicDataItem == null) {
      await storeTerminalBasicDataItemDao!.insertOne(item);
    } else {
      await storeTerminalBasicDataItemDao!.updateOne(item);
    }
  }

  /// Get CashUnit List
  ///
  /// @return List<BasicDataItem>
  Future<List<BasicDataItem>> getCashUnitList() async {
    return await basicDataItemDao!
        .findAllByBasicDataCodeNameLikeAndData1NotNull();
  }

  /// Get Cash Drawer List
  /// @return List<BasicDataItem>
  Future<List<BasicDataItem>> getCashDrawerList() async {
    return await basicDataItemDao!.findAllByBasicDataCodeNameLike();
  }

  /// StoreTerminal Info 조회
  ///
  /// @param storeTerminalId storeTerminalId
  /// @return StoreTerminal info
  Future<StoreTerminal?> getStoreTerminalById(String? storeTerminalId) async {
    return await storeTerminalDao!.findById(storeTerminalId!);
  }

  Future<List<StoreTerminal>> getStoreTerminals() async {
    return await storeTerminalDao!.findAll();
  }

  /// KitchenMemoGroup list 조회(Hide된 데이터 제외)
  ///
  /// @return List<KitchenMemoGroup>
  Future<List<KitchenMemoGroup>> getKitchenMemoGroupList() async {
    return await kitchenMemoGroupDao!.findAllByHideNot();
  }

  /// KitchenMemo list 조회(Hide된 데이터 제외)
  ///
  /// @return List<KitchenMemo>
  Future<List<KitchenMemo>> getKitchenMemoList(
      String kitchenmemoGrpCode) async {
    return await kitchenMemoDao!
        .findAllByHideNotAndKitchenMemoGroupId(kitchenmemoGrpCode);
  }

  //////////////////////////////////////
  // Insert method
  //////////////////////////////////////

  ///
  /// BasicData 데이터 insert
  ///
  Future<void> insertBasicDataList(List<BasicData> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await basicDataDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await basicDataDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// BasicDataItem 데이터 insert
  ///
  Future<void> insertBasicDataItemList(List<BasicDataItem> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await basicDataItemDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await basicDataItemDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// StoreTerminalBasicData 데이터 insert
  ///
  Future<void> insertStoreTerminalBasicDataList(
      List<StoreTerminalBasicData> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await storeTerminalBasicDataDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await storeTerminalBasicDataDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// StoreTerminalBasicDataItem 데이터 insert
  ///
  Future<void> insertStoreTerminalBasicDataItemList(
      List<StoreTerminalBasicDataItem> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    var notSynced = (await storeTerminalBasicDataItemDao!.findNotSynced())
        .map((i) => i.storeTerminalBasicDataItemId)
        .toList();
    await storeTerminalBasicDataItemDao!.deleteAll(list
        .where((i) =>
            !notSynced.contains(i.storeTerminalBasicDataItemId) &&
            i.stateCode == BaseBL.STATE_DELETE)
        .toList());
    await storeTerminalBasicDataItemDao!.insertAll(list
        .where((i) =>
            !notSynced.contains(i.storeTerminalBasicDataItemId) &&
            i.stateCode != BaseBL.STATE_DELETE)
        .toList());
  }

  ///
  /// I18NTerm 데이터 insert
  ///
  Future<void> insertI18NTermList(List<I18NTerm> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await i18NTermDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await i18NTermDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// AccountSubject 데이터 insert
  ///
  Future<void> insertAccountList(List<AccountSubject> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await accountSubjectDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await accountSubjectDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// MenuGroupUse 데이터 insert
  ///
  Future<void> insertMenuGroupUseList(List<MenuGroupUse> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await menuGroupUseDao!.insertAll(list);
  }

  ///
  /// MenuGroup 데이터 insert
  ///
  Future<void> insertMenuGroupList(final List<MenuGroup> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await menuGroupDao!.insertAll(list);
  }

  ///
  /// MenuItem 데이터 insert
  ///
  Future<void> insertMenuItemList(List<MenuItem> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    var notSynced =
        (await menuItemDao!.findNotSynced()).map((i) => i.menuItemId).toList();
    await menuItemDao!.insertAll(
        list.where((i) => !notSynced.contains(i.menuItemId)).toList());
  }

  ///
  /// KitchenMemoGroup 데이터 insert
  ///
  Future<void> insertKitchenMemoGroupList(List<KitchenMemoGroup> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await kitchenMemoGroupDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await kitchenMemoGroupDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// KitchenMemo 데이터 insert
  ///
  Future<void> insertKitchenMemoList(List<KitchenMemo> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await kitchenMemoDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await kitchenMemoDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  ///
  /// Notice 데이터 insert
  ///
  Future<void> insertNoticeList(List<Notice> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await noticeDao!.truncate();
    await noticeDao!.insertAll(list);
  }

  ///
  /// Store 데이터 insert
  ///
  Future<void> insertStoreList(List<Store> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    for (var i in list) {
      Store? old = await storeDao!.findById(i.storeId!);

      if (old != null) {
        if (old.synchronizedYn!) {
          if (i.stateCode == BaseBL.STATE_DELETE) {
            await storeDao!.deleteOne(old);
          } else {
            await storeDao!.updateOne(i);
          }
        }
      } else {
        await storeDao!.insertOne(i);
      }
    }
  }

  ///
  /// 상점단말기 DB 저장
  ///
  Future<void> insertStoreTerminalList(List<StoreTerminal> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    for (var i in list) {
      StoreTerminal? old = await storeTerminalDao!.findById(i.storeId!);

      if (old != null) {
        if (old.synchronizedYn!) {
          if (i.stateCode == BaseBL.STATE_DELETE) {
            await storeTerminalDao!.deleteOne(old);
          } else {
            await storeTerminalDao!.updateOne(i);
          }
        }
      } else {
        await storeTerminalDao!.insertOne(i);
      }
    }
  }

  ///
  /// SelfMenuGroup 데이터 insert
  ///
  Future<void> insertSelfMenuGroupList(final List<SelfMenuGroup> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await selfMenuGroupDao!.insertAll(list);
  }

  ///
  /// SelfMenuItem 데이터 insert
  ///
  Future<void> insertSelfMenuItemList(List<SelfMenuItem> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    var notSynced = (await selfMenuItemDao!.findNotSynced())
        .map((i) => i.selfMenuItemId)
        .toList();
    await selfMenuItemDao!.insertAll(
        list.where((i) => !notSynced.contains(i.selfMenuItemId)).toList());
  }

  ///
  /// 프린터 텝플릿 DB 저장
  ///
  Future<void> insertTemplateItemList(List<TemplateItem> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    var notSynced = (await templateItemDao!.findNotSynced())
        .map((i) => i.templateItemId)
        .toList();
    await templateItemDao!.deleteAll(list
        .where((i) =>
            !notSynced.contains(i.templateItemId) &&
            i.stateCode == BaseBL.STATE_DELETE)
        .toList());
    await templateItemDao!.insertAll(list
        .where((i) =>
            !notSynced.contains(i.templateItemId) &&
            i.stateCode != BaseBL.STATE_DELETE)
        .toList());
  }

  ///
  /// 창고 DB 저장
  ///
  Future<void> insertStorePlaceList(List<StorePlace> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    var notSynced = (await storePlaceDao!.findNotSynced())
        .map((i) => i.storePlaceId)
        .toList();
    await storePlaceDao!.deleteAll(list
        .where((i) =>
            !notSynced.contains(i.storePlaceId) &&
            i.stateCode == BaseBL.STATE_DELETE)
        .toList());
    await storePlaceDao!.insertAll(list
        .where((i) =>
            !notSynced.contains(i.storePlaceId) &&
            i.stateCode != BaseBL.STATE_DELETE)
        .toList());
  }

  Future<Store?> getStore() async {
    List<Store> storeList = await storeDao!.findAll();
    return storeList.length == 0 ? null : storeList.first;
  }

  Future<void> setStore(Store store) async {
    store.updateTime();
    store.setSynchronizedYn(false);
    // storeDao.save(store);
    Store? savedStore = await storeDao!.findById(store.getStoreId()!);
    if (savedStore == null) {
      await storeDao!.insertOne(store);
    } else {
      await storeDao!.updateOne(store);
    }
  }

  @transaction
  Future<void> deleteAllOrderAndSaleData() async {
    await orderHistoryDao!.truncate();
    await orderHistoryItemDao!.truncate();
    await orderKitchenMemoDao!.truncate();
    await orderHistoryDiscountDao!.truncate();
    await orderHistoryCancelItemDao!.truncate();
    await saleHDao!.truncate();
    await salesHistoryDiscountDao!.truncate();
    await saleItemDao!.truncate();
    await saleACDao!.truncate();
    await saleTipDao!.truncate();
    await saleACDetailDao!.truncate();
  }

  Future<void> insertAdminUserList(List<AdminUser> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await adminUserDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await adminUserDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  /// EmployeeAuthority 데이터 insert
  ///
  /// @param list EmployeeAuthority 데이터
  Future<void> insertEmployeeAuthorityList(List<EmployeeAuthority> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    await employeeAuthorityDao!.deleteAll(
        list.where((i) => i.stateCode == BaseBL.STATE_DELETE).toList());
    await employeeAuthorityDao!.insertAll(
        list.where((i) => i.stateCode != BaseBL.STATE_DELETE).toList());
  }

  Future<List<BasicDataItem>> getBasicDataItemToUpload() async {
    return await basicDataItemDao!.findNotSynced();
  }

  Future<List<StoreTerminalBasicDataItem>>
      getStoreTerminalBasicDataItemToUpload() async {
    return await storeTerminalBasicDataItemDao!.findNotSynced();
  }

  Future<void> syncStore(String id, String time, String newTime) async {
    Store? entity = await storeDao!.findById(id);

    if (entity != null && entity.getLastRevisionDatetime() == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await storeDao!.updateOne(entity);
    }
  }

  Future<void> syncStoreTerminalBasicDataItem(
      String id, String time, String newTime) async {
    StoreTerminalBasicDataItem? entity =
        await storeTerminalBasicDataItemDao!.findById(id);
    if (entity != null && entity.getLastRevisionDatetime() == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await storeTerminalBasicDataItemDao!.updateOne(entity);
    }
  }

  Future<void> syncStoreTerminal(String id, String time, String newTime) async {
    StoreTerminal? entity = await storeTerminalDao!.findById(id);

    if (entity != null && entity.getLastRevisionDatetime() == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await storeTerminalDao!.updateOne(entity);
    }
  }

  Future<void> syncBasicDataItem(String id, String time, String newTime) async {
    BasicDataItem? entity = await basicDataItemDao!.findById(id);

    if (entity != null && entity.getLastRevisionDatetime() == time) {
      entity.setSynchronizedYn(true);
      entity.setLastRevisionDatetime(newTime);
      await basicDataItemDao!.updateOne(entity);
    }
  }

  Future<List<String?>> getBasicDataItemNames(String groupCode) async {
    BasBL basBL = BasBL();
    List<BasicDataItem> data = await getBasicDataItems(groupCode);
    List<String?> names = List<String?>.filled(data.length, "");

    for (int i = 0; i < names.length; i++) {
      names[i] = await basBL.getString(data.elementAt(i).getI18nTermId(),
          data.elementAt(i).getBasicDataItemName());
    }

    return names;
  }

  Future<List<String?>> getBasicDataItemCodes(String groupCode) async {
    List<BasicDataItem> data = await getBasicDataItems(groupCode);
    List<String?> codes = List<String?>.filled(data.length, "");

    for (int i = 0; i < codes.length; i++) {
      codes[i] = data.elementAt(i).getBasicDataItemCodeName();
    }

    return codes;
  }

  Future<String> getBasicDataItemCode(String groupCode, int pos) async {
    List<BasicDataItem> items = await getBasicDataItems(groupCode);
    return pos >= 0 && pos < items.length
        ? items.elementAt(pos).getBasicDataItemCodeName() ?? ""
        : "";
  }

  Future<int> getBasicDataItemPos(String groupCode, String code) async {
    int i = 0;
    List<BasicDataItem> items = await getBasicDataItems(groupCode);

    for (BasicDataItem item in items) {
      if (item.getBasicDataItemCodeName() == (code)) {
        return i;
      }

      i++;
    }

    return -1;
  }

  Future<String?> getBasicDataItemNameByCode(
      String groupCode, String? code) async {
    String? result = null;
    List<BasicDataItem> items = await getBasicDataItems(groupCode);

    for (BasicDataItem item in items) {
      if (item.getBasicDataItemCodeName() == (code)) {
        return getString(item.getI18nTermId(), item.getBasicDataItemName());
      }
    }

    return null;
  }

  Future<void> insertOptionGroupList(List<OptionGroup> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    for (OptionGroup i in list) {
      // optionGroupDao.insertOrReplace(i);
      OptionGroup? optionGroup =
          await optionGroupDao!.findById(i.getOptionGroupId()!);
      if (optionGroup == null) {
        await optionGroupDao!.insertOne(i);
      } else {
        await optionGroupDao!.updateOne(i);
      }
    }
  }

  Future<void> insertOptionEntityList(List<OptionEntity> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    for (OptionEntity i in list) {
      // optionEntityDao.insertOrReplace(i);
      OptionEntity? optionEntity =
          await optionEntityDao!.findById(i.getOptionGroupId()!);
      if (optionEntity == null) {
        await optionEntityDao!.insertOne(i);
      } else {
        await optionEntityDao!.updateOne(i);
      }
    }
  }

  Future<void> insertSetEntityList(List<SetEntity> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    for (SetEntity i in list) {
      // setEntityDao.insertOrReplace(i);
      SetEntity? setEntity = await setEntityDao!.findById(i.getSetIEntityId()!);
      if (setEntity == null) {
        await setEntityDao!.insertOne(i);
      } else {
        await setEntityDao!.updateOne(i);
      }
    }
  }

  Future<void> insertItemOptionList(List<ItemOption> list) async {
    if (list == null || list.length == 0) {
      return;
    }

    for (ItemOption i in list) {
      // itemOptionDao.insertOrReplace(i);
      ItemOption? itemOption =
          await itemOptionDao!.findById(i.getItemOptionId()!);
      if (itemOption == null) {
        await itemOptionDao!.insertOne(i);
      } else {
        await itemOptionDao!.updateOne(i);
      }
    }
  }

  Future<void> updateItem(BasicDataItem item) async {
    if (item != null) {
      item.updateTime();
      item.setSynchronizedYn(false);
      await basicDataItemDao!.updateOne(item);
    }
  }

  Future<String> getLastModified(String tableName) async {
    String? time;

    switch (tableName) {
      case "AccountSubject":
        time = (await accountSubjectDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "BasicData":
        time = (await basicDataDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "BasicDataItem":
        time = (await basicDataItemDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "StoreTerminalBasicData":
        time =
            (await storeTerminalBasicDataDao!.findOrderByLastRevisionDatetime())
                ?.getLastRevisionDatetime();
        break;
      case "StoreTerminalBasicDataItem":
        time = (await storeTerminalBasicDataItemDao!
                .findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "I18NTerm":
        time = (await i18NTermDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "EmployeeGroup":
        time = (await employeeGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "Employee":
        time = (await employeeDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "TableGroup":
        time = (await tableGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "Table":
        time = (await tableDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "TableDetail":
        time = (await tableDetailDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "KitchenMemoGroup":
        time = (await kitchenMemoGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "KitchenMemo":
        time = (await kitchenMemoDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "ItemGroup":
        time = (await itemGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "Item":
        time = (await itemDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "MenuGroup":
        time = (await menuGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "MenuGroupUse":
        time = (await menuGroupUseDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "MenuItem":
        time = (await menuItemDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "Store":
        time = (await storeDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "AdminUser":
        time = (await adminUserDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "StoreTerminal":
        time = (await storeTerminalDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "EmployeeAuthority":
        time = (await employeeAuthorityDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "OptionGroup":
        time = (await optionGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "OptionEntity":
        time = (await optionEntityDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "SetEntity":
        time = (await setEntityDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "ItemOption":
        time = (await itemOptionDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "TemplateItem":
        time = (await templateItemDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "SelfMenuGroup":
        time = (await selfMenuGroupDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case "SelfMenuItem":
        time = (await selfMenuItemDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
      case 'StorePlace':
        time = (await storePlaceDao!.findOrderByLastRevisionDatetime())
            ?.getLastRevisionDatetime();
        break;
    }

    return time ?? LONG_AGO;
  }

  Future<List<String>> getPaymentList() async {
    List<String> list = [];
    List<StoreTerminalBasicDataItem> storeTerminalBasicDataItemList =
        await getStoreTerminalBasicDataItems("PAY");

    for (StoreTerminalBasicDataItem posPayment
        in storeTerminalBasicDataItemList) {
      if (posPayment.getData1() == '1') {
        BasicDataItem? storePayment = await getStorePayment(
            posPayment.getStoreTerminalBasicDataItemCodeName());

        if (storePayment != null && storePayment.getData1() == '1') {
          list.add(storePayment.getBasicDataItemId()!);
        }
      }
    }

    return list;
  }

  Future<bool> isPaymentEnabled(String paymentMethodCode) async {
    BasicDataItem? storePayment = await getStorePayment(paymentMethodCode);
    StoreTerminalBasicDataItem? posPayment =
        await getStoreTerminalPayment(paymentMethodCode);
    return storePayment != null &&
        posPayment != null &&
        "1" == (storePayment.getData1()) &&
        "1" == (posPayment.getData1());
  }

  Future<String?> getPaymentType(String? paymentMethodCode) async {
    BasicDataItem? storePayment = await getStorePayment(paymentMethodCode);
    return storePayment?.getBasicDataItemCodeName();
  }

  Future<Map<String, String?>> getPaymentProperties(
      String? paymentMethodCode) async {
    Map<String, String?> properties = Map();
    BasicDataItem? payment = await getStorePayment(paymentMethodCode);

    if (payment == null) {
      return properties;
    }

    List<String> names = await getPaymentPropertyNames(paymentMethodCode);
    List<String?> values = [
      payment.getData3(),
      payment.getData4(),
      payment.getData5(),
      payment.getData6(),
      payment.getData7(),
      payment.getData8(),
      payment.getData9(),
      payment.getData10(),
      payment.getData11(),
      payment.getData12(),
      payment.getData13(),
      payment.getData14(),
      payment.getData15(),
      payment.getData16(),
      payment.getData17(),
      payment.getData18(),
      payment.getData19(),
      payment.getData20()
    ];

    for (int i = 0; i < names.length && i < values.length; i++) {
      properties[names.elementAt(i)] = values[i];
    }

    return properties;
  }

  Future<List<String>> getPaymentPropertyNames(
      String? paymentMethodCode) async {
    List<String> names = [];
    BasicDataItem? payment = await getStorePayment(paymentMethodCode);

    if (payment == null || payment.getData2() == null) {
      return names;
    }
    List<String> list = payment.getData2()!.split("|");
    for (String i in list) {
      names.add(i.endsWith(READONLY)
          ? i.substring(0, i.length - READONLY.length)
          : i);
    }

    return names;
  }

  Future<BasicDataItem?> getStorePayment(String? paymentMethodCode) async {
    return await basicDataItemDao!.findById(paymentMethodCode!);
  }

  Future<StoreTerminalBasicDataItem?> getStoreTerminalPayment(
      String? paymentMethodCode) async {
    return await storeTerminalBasicDataItemDao!
        .findByStoreTerminalBasicDataCodeNameAndStoreTerminalBasicDataItemCodeName(
            "PAY", paymentMethodCode!);
  }

  Future<String?> getStoreTerminalData1(String key) async {
    if (storeTerminalDao == null) {
      return null;
    }

    StoreTerminal? storeTerminal =
        await getStoreTerminalById(BaseBL.storeTerminalId);

    if (storeTerminal == null) {
      return null;
    }

    String? data1 = storeTerminal.getData1();

    if (data1 == null) {
      return null;
    }

    for (String i in data1.split(";")) {
      if (i == (key) || i.startsWith(key + "=")) {
        return i;
      }
    }

    return null;
  }

  Future<List<StorePlace>> getStorePlaceList() async {
    return await storePlaceDao!
        .findAllOrderByIsDefaultAndLastRevisionDatetime();
  }

  Future<List<I18NTerm>> getI18NTermList() async {
    return await i18NTermDao!.findAll();
  }

  Future<Map<int, String?>> getI18NTermSparseArrayForApp(
      String langColumnName) async {
    Map<int, String?> langMap = Map<int, String?>();

    List<I18NTerm> list = await i18NTermDao!.findAllByLangCode();
    for (I18NTerm item in list) {
      String id = item.getI18nTermId()!;
      int? index = int.tryParse(id);
      if (index == null) {
        continue;
      }
      String? str = "";
      switch (langColumnName) {
        case "ENG":
          str = StringUtils.defaultString(item.getEnglish());
          break;
        case "KAZ":
          str = StringUtils.defaultString(
              item.getKazakhstan(), item.getEnglish());
          break;
        case "JPN":
          str =
              StringUtils.defaultString(item.getJapanese(), item.getEnglish());
          break;
        case "CHI":
          str = StringUtils.defaultString(item.getChinese(), item.getEnglish());
          break;
        case "GER":
          str = StringUtils.defaultString(item.getGerman(), item.getEnglish());
          break;
        case "SPA":
          str = StringUtils.defaultString(item.getSpanish(), item.getEnglish());
          break;
        case "POR":
          str = StringUtils.defaultString(
              item.getPortuguese(), item.getEnglish());
          break;
        case "VIE":
          str = StringUtils.defaultString(
              item.getVietnameInDbse(), item.getEnglish());
          break;
        case "FRA":
          str = StringUtils.defaultString(item.getFrench(), item.getEnglish());
          break;
        case "RUS":
          str = StringUtils.defaultString(item.getRussian(), item.getEnglish());
          break;
        case "ARA":
          str = StringUtils.defaultString(item.getArabic(), item.getEnglish());
          break;
        case "THA":
          str = StringUtils.defaultString(item.getThai(), item.getEnglish());
          break;
        case "KOR":
          str = StringUtils.defaultString(item.getKorean(), item.getEnglish());
          break;
        default:
          str = StringUtils.defaultString(item.getEnglish(), item.getEnglish());
          break;
      }
      langMap[index] = str;
    }
    return langMap;
  }

  Future<String?> getEngString(String? code, String? defaultString) async {
    I18NTerm? item = await i18NTermDao!.findById(code!);
    String? str = null;

    if (item != null) {
      str = item.getEnglish();
    }

    // if (Feature.USE_SHOW_CODE) {
    bool? isShow = await OperationBL().isShowCode();

    if (str != null && isShow!) {
      str = "[$code]$str";
    }
    // }

    return str != null ? str : defaultString;
  }

  Future<String?> getUserInputString(
      String? userInput, String? defaultString) async {
    I18NTerm? item = await i18NTermDao!
        .findByUserInputAndStateCode(userInput!, BaseBL.STATE_DELETE);
    if (item == null) {
      return defaultString;
    }

    return await getString(item.getI18nTermId(), defaultString);
  }

  Future<String?> getString(String? code, String? defaultString) async {
    I18NTerm? item = await i18NTermDao!.findById(code!);
    String? str = null;

    if (item != null) {
      String language = await OperationBL().getLanguage();

      switch (language) {
        case "ENG":
          str = StringUtils.defaultString(item.getEnglish());
          break;

        case "KAZ":
          str = StringUtils.defaultString(item.getKazakhstan());
          break;

        case "JPN":
          str = StringUtils.defaultString(item.getJapanese());
          break;

        case "CHI":
          str = StringUtils.defaultString(item.getChinese());
          break;

        case "GER":
          str = StringUtils.defaultString(item.getGerman());
          break;

        case "SPA":
          str = StringUtils.defaultString(item.getSpanish());
          break;

        case "POR":
          str = StringUtils.defaultString(item.getPortuguese());
          break;

        case "VIE":
          str = StringUtils.defaultString(item.getVietnameInDbse());
          break;

        case "FRA":
          str = StringUtils.defaultString(item.getFrench());
          break;

        case "RUS":
          str = StringUtils.defaultString(item.getRussian());
          break;

        case "ARA":
          str = StringUtils.defaultString(item.getArabic());
          break;

        case "THA":
          str = StringUtils.defaultString(item.getThai());
          break;

        case "KOR":
          str = StringUtils.defaultString(item.getKorean());
          break;
        default:
          str = StringUtils.defaultString(item.getEnglish());
          break;
      }
    }

    bool? isShow = await OperationBL().isShowCode();
    if (str != null && isShow!) {
      str = "[$code]$str";
    }

    return str != null ? str : defaultString;
  }
}

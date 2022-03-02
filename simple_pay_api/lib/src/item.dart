import 'dart:io';
import 'dart:typed_data';

import 'package:simple_pay_api/src/Database/BusinessLogic/bl.dart';

import 'Database/Util/BuildConfig.dart';
import 'Database/Util/Security.dart';
import 'Database/Util/TaxCalculator.dart';
import 'Database/db.dart' as db;
import 'Util/Common/Common.dart';
import 'exception.dart';
import 'grpc/s3client.dart';
import 'utils.dart';

class Item with Utils {
  static const _tag = 'Item';

  static final Item _singleton = Item._internal();

  factory Item() => _singleton;

  Item._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'listGroups':
        return listGroups(data?['isRecommended']);
      case 'listItems':
        return listItems(
          data?['groupId'],
          data?['name'],
          data?['isRecommended'],
        );
      case 'listRecentlyUsedItems':
        return listRecentlyUsedItems(data?['itemId']);
      case 'getItem':
        return getItem(data);
      case 'downloadImage':
        return downloadImage(data?['key']);
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> listGroups(bool? isRecommended) async {
    final itemBL = ItemBL();
    List<db.ItemGroup> groups = await itemBL.getItemGroupList(
        BaseBL_OPR_TP_CD.OPERATION_TYPE_SELL.getCode(), 'S', isRecommended);

    List<Map> list = groups
        .map((i) => {
              'id': i.getItemGroupId(),
              'name': i.getItemGroupName(),
            })
        .toList();

    return bizResponse(200, 'success', list);
  }

  Future<Map> listItems(
    String? groupId,
    String? name,
    bool? isRecommended,
  ) async {
    final itemBL = ItemBL();
    List<db.Item> items = await itemBL.getItemListByName(
      groupId,
      name ?? '',
      isRecommended ?? false,
    );
    return bizResponse(200, 'success', await _itemsToMap(items));
  }

  /// 최근 사용한 상품 목록
  ///
  /// 1. 최근 사용 상품
  /// 2, 신규 추가 아이템 (itemId)
  /// 3. 목록 내에 CAT 상품이 없는 경우 CAT 상품 추가
  Future<Map> listRecentlyUsedItems(String? itemId) async {
    final itemBL = ItemBL();
    List<db.Item> items = await itemBL.getItemListRecentlyUsedList();

    if (itemId != null) {
      db.Item? item = await itemBL.getItemById(itemId);

      if (item != null) {
        if (!items.any((i) => i.getItemId() == itemId)) {
          items.add(item);
        }
      }
    }

    if (!items.any((i) => i.getSaleTypeCode() == ItemBL.SALE_TYPE_CAT)) {
      db.Item? item =
          await itemBL.getCatItem(BaseBL_OPR_TP_CD.OPERATION_TYPE_SELL);
      if (item != null) {
        items.add(item);
      }
    }

    return bizResponse(200, "success", await _itemsToMap(items));
  }

  Future<Map> getItem(Map? params) async {
    final itemBL = ItemBL();
    String? id = params?['itemId'];
    String? barcode = params?['barcode'];
    db.Item? item;

    if (id != null) {
      item = await itemBL.getItemById(id);
    } else if (barcode != null) {
      item = await itemBL.getItemByBarcode(barcode);
    } else {
      throw ApiException(400, 'Missing parameters');
    }

    if (item == null) {
      throw ApiException(404, 'Item not found');
    }

    return bizResponse(200, 'success', await _itemToMap(item));
  }

  Future<List<Map>> _itemsToMap(List<db.Item> items) async {
    List<Map> list = <Map>[];

    for (db.Item i in items) {
      list.add(await _itemToMap(i));
    }

    return list;
  }

  Future<Map> _itemToMap(db.Item item) async {
    final opBL = OperationBL();
    String? taxApplied;

    if (BuildConfig.SERVER_REGION == 'KZ') {
      bool isTaxFreeStore = await opBL.getIsTaxFree();

      if (!isTaxFreeStore) {
        // 과세상점
        taxApplied = TaxCalculator.IncludeTax;
      } else {
        //비과세 상점
        taxApplied = TaxCalculator.TaxFree;
      }
    } else {
      taxApplied = item.getApplyTax0Yn();
    }

    return {
      'itemId': item.getItemId(),
      'groupId': item.getItemGroupId(),
      'name': item.getItemName(),
      'price': item.getSellingPrice(),
      'barcode': item.getBarcode(),
      'taxApplied': taxApplied,
      'imageUri': item.getImageUrl(),
      'isRecommended': item.getRecommendedItemYn(),
    };
  }

  Future<Map> downloadImage(String? key) async {
    if (key == null) {
      throw ApiException(400, 'Key is missing');
    }

    String path = Common.imageDir + key;
    String? etag = await Security.md5File(path);
    Uint8List? content = await S3Client.instance.downloadImage(key, etag);

    if (content == null) {
      print('$_tag: [$key] not modified or found');

      if (File(path).existsSync()) {
        return bizResponse(200, 'Not modified', {'path': path});
      } else {
        throw ApiException(404, 'Not found');
      }
    }

    await _writeFile(path, content);
    print('$_tag: [$key] downloaded');
    return bizResponse(200, 'Downloaded', {'path': path});
  }

  Future<void> _writeFile(String path, Uint8List content) async {
    var file = File(path);

    if (!await file.parent.exists()) {
      await Directory(file.parent.path).create(recursive: true);
    }

    if (await file.exists()) {
      await file.delete();
    }

    await file.writeAsBytes(content);
  }
}

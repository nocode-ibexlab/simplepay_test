import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';

import 'exception.dart';
import 'utils.dart';

class Inventory with Utils {
  static final Inventory _singleton = Inventory._internal();

  factory Inventory() => _singleton;

  Inventory._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'balanceItems':
        return balanceItems(data);
      case 'listAcceptanceItems':
        return listAcceptanceItems(data);
      case 'addAcceptanceItem':
        return addAcceptanceItem(data);
      case 'updateAcceptanceItem':
        return updateAcceptanceItem(data);
      case 'deleteAcceptanceItem':
        return deleteAcceptanceItem(data);
      case 'detailAcceptanceItem':
        return detailAcceptanceItem(data);
      case 'listSupplier':
        return listSupplier(data);
      case 'addSupplier':
        return addSupplier(data);
      case 'updateSupplier':
        return updateSupplier(data);
      case 'deleteSupplier':
        return deleteSupplier(data);
      case 'listRevisionItems':
        return listRevisionItems(data);
      case 'addRevisionItems':
        return addRevisionItems(data);
      case 'detailRevisionItems':
        return detailRevisionItems(data);
    }
    throw ApiException(501, 'Not implemented');
  }

  Future<Map> balanceItems(Map? data) async {
    String itemGroupId = data?['itemGroupId'] ?? '';
    String name = data?['name'] ?? '';
    String barcode = data?['barcode'] ?? '';
    int pageIndex = data?['pageIndex'] ?? 1;
    int pageSize = data?['pageSize'] ?? -1;
    Map result = await gRpcClient.balanceItems(
        itemGroupId, name, barcode, pageIndex, pageSize);
    return bizResponse(200, 'success', result);
  }

  Future<Map> listAcceptanceItems(Map? data) async {
    String startDate = data?['startDate'] ?? '';
    String endDate = data?['endDate'] ?? '';
    String type = data?['type'] ?? 'C';
    int pageIndex = data?['pageIndex'] ?? 1;
    int pageSize = data?['pageSize'] ?? -1;

    DateTime today = DateTime.now();
    DateTime startDateDateTime = today.subtract(const Duration(days: 1));
    if (startDate.isEmpty) {
      startDate = CommonUtil.convertDateFormDateOnly(startDateDateTime);
    }
    if (endDate.isEmpty) {
      endDate = CommonUtil.convertDateFormDateOnly(today);
    }

    Map result = await gRpcClient.listAcceptanceItems(
        startDate, endDate, type, pageIndex, pageSize);
    return bizResponse(200, 'success', result);
  }

  Future<Map> addAcceptanceItem(Map? data) async {
    String type = data?['type'] ?? 'D';
    String name = data?['name'] ?? '';
    String supplierId = data?['supplierId'] ?? '';
    List<Map> items = data?['items'] ?? [];

    if (items.isEmpty) {
      throw ApiException(404, 'items_empty');
    }
    //
    // DateTime today = DateTime.now();
    // if (date.isEmpty) {
    //   date = CommonUtil.convertDateFormDateOnly(today);
    // }

    Map result =
        await gRpcClient.addAcceptanceItem(type, name, supplierId, items);
    return bizResponse(200, 'success', result);
  }

  Future<Map> updateAcceptanceItem(Map? data) async {
    String acceptanceItemsId = data?['acceptanceItemsId'] ?? '';
    String type = data?['type'] ?? 'D';
    String name = data?['name'] ?? '';
    String supplierId = data?['supplierId'] ?? '';

    List<Map> items = data?['items'] ?? [];

    Map result = await gRpcClient.updateAcceptanceItem(
        acceptanceItemsId, type, name, supplierId, items);
    return bizResponse(200, 'success', result);
  }

  Future<Map> deleteAcceptanceItem(Map? data) async {
    String acceptanceItemsId = data?['acceptanceItemsId'] ?? '';
    Map result = await gRpcClient.deleteAcceptanceItem(acceptanceItemsId);
    return bizResponse(200, 'success', result);
  }

  Future<Map> detailAcceptanceItem(Map? data) async {
    String acceptanceItemsId = data?['acceptanceItemsId'] ?? '';

    Map result = await gRpcClient.detailAcceptanceItem(acceptanceItemsId);
    return bizResponse(200, 'success', result);
  }

  Future<Map> listSupplier(Map? data) async {
    Map result = await gRpcClient.listSupplier();
    return bizResponse(200, 'success', result);
  }

  Future<Map> addSupplier(Map? data) async {
    String name = data?['name'] ?? '';
    if (name.isEmpty) {
      throw ApiException(400, 'name_empty');
    }
    Map result = await gRpcClient.addSupplier(
      name,
    );
    return bizResponse(200, 'success', result);
  }

  Future<Map> updateSupplier(Map? data) async {
    String supplierId = data?['supplierId'] ?? '';
    String name = data?['name'] ?? '';
    Map result = await gRpcClient.updateSupplier(
      supplierId,
      name,
    );
    return bizResponse(200, 'success', result);
  }

  Future<Map> deleteSupplier(Map? data) async {
    String supplierId = data?['supplierId'] ?? '';
    Map result = await gRpcClient.deleteSupplier(supplierId);
    return bizResponse(200, 'success', result);
  }

  Future<Map> listRevisionItems(Map? data) async {
    String startDate = data?['startDate'] ?? '';
    String endDate = data?['endDate'] ?? '';
    int pageIndex = data?['pageIndex'] ?? 1;
    int pageSize = data?['pageSize'] ?? -1;

    DateTime today = DateTime.now();
    DateTime startDateDateTime = today.subtract(const Duration(days: 1));
    if (startDate.isEmpty) {
      startDate = CommonUtil.convertDateFormDateOnly(startDateDateTime);
    }
    if (endDate.isEmpty) {
      endDate = CommonUtil.convertDateFormDateOnly(today);
    }
    Map result = await gRpcClient.listRevisionItems(
        startDate, endDate, pageIndex, pageSize);
    return bizResponse(200, 'success', result);
  }

  Future<Map> addRevisionItems(Map? data) async {
    String date = data?['date'] ?? '';
    String name = data?['name'] ?? '';
    List<Map> items = data?['items'] ?? [];
    Map result = await gRpcClient.addRevisionItems(date, name, items);
    return bizResponse(200, 'success', result);
  }

  Future<Map> detailRevisionItems(Map? data) async {
    String revisionItemsId = data?['revisionItemsId'] ?? '';
    Map result = await gRpcClient.detailRevisionItems(revisionItemsId);
    return bizResponse(200, 'success', result);
  }
}

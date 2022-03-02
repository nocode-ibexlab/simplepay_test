import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';
import 'package:simple_pay_api/src/Database/Util/OrderCheck.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/grpc/grpc.dart';

import '../BaseBL.dart';
import 'BasBL.dart';
import 'OperationBL.dart';
import 'OrderBL.dart';

class TableBL extends BaseBL {
  static const String _TAG = "TableBL";

  static const int TABLE_WIDTH = 187;
  static const int TABLE_HEIGHT = 145;
  static const int TABLE_WIDTH2 = 177;
  static const int TABLE_HEIGHT2 = 135;
  static const int TABLE_WIDTH3 = 207;
  static const int TABLE_HEIGHT3 = 155;

  static final TableBL _singleton = TableBL._internal();

  factory TableBL() => _singleton;

  TableBL._internal() {
    _basBL = BasBL();
    _orderBL = OrderBL();
  }

  late BasBL _basBL;
  late OrderBL _orderBL;

  ///
  /// 전체 주문리스트
  ///
  Future<List<OrderHistory>> getOrderHListAll() {
    return orderHistoryDao!.findAll();
  }

  ///
  /// 현재 테이블 가져옴
  ///
  Future<Table?> getTabByTabCode(String? id) {
    return tableDao!.findById(id!);
  }

  Future<String?> getTableName(String id) async {
    Table? table = await tableDao!.findById(id);
    return table != null ? table.getTableName() : '';
  }

  ///
  /// 테이블 정보 조회
  ///
  Future<TableDetail?> getTableDetailByTableId(String id) {
    return tableDetailDao!.findById(id);
  }

  ///
  /// 전체 층 데이터 GET
  ///
  Future<List<TableGroup>> getTableGroupListAll() {
    return tableGroupDao!.findAll();
  }

  Future<List<TableGroup>> getTableGroupListAllOrdering() {
    return tableGroupDao!.findAllOrderByLocation();
  }

  ///
  /// 해당층에 해당하는 TABLE 목록
  ///
  Future<List<Table>> getTabListByCode(String code) {
    return tableDao!.findAllByGroupId(code);
  }

  Future<List<Table>> getTakeoutTabList() {
    return tableDao!.findAllByIdLike('900_');
  }

  bool isTakeoutTable(String? id) {
    return (id ?? '').startsWith('900');
  }

  ///
  /// 모든 TABLE 목록 GET
  ///
  Future<List<Table>> getAllTabList() {
    return tableDao!.findAll();
  }

  ///
  /// 테이블 이동
  ///
  @transaction
  Future<bool> executeMoveAndJoin(
      OrderHistory order, TableProcess source, TableProcess target) async {
    await orderHistoryDao!.updateOne(order);
    await tableProcessDao!.deleteOne(source);
    await tableProcessDao!.insertOne(target);
    return true;
  }

  ///
  /// 빈테이블로 이동함
  ///
  @transaction
  Future<bool> moveEmptyTable(List<OrderHistory> orders, Table table) async {
    Table? sourceTable = await orders[0].getTable();
    if (sourceTable == null) {
      Log.e(_TAG, 'moveEmptyTable, Table is null');
      return false;
    }
    // 기존 주문건의 테이블 상태
    TableProcess? sourceProcess = await sourceTable.getTableProcess();

    // 기존 테이블 상태 판단 후 전체 이동시에만 삭제
    int sourceOrderSize = (await sourceTable.getOrderHistories()).length;

    // 주문 이동
    for (OrderHistory i in orders) {
      i.setTableId(table.getTableId());
      i.updateTime();
      await orderHistoryDao!.updateOne(i);
    }

    Log.d(_TAG,
        '===============>sourceOrderHSize: $sourceOrderSize/${orders.length}');

    if (sourceOrderSize == orders.length) {
      await tableProcessDao!.deleteOne(sourceProcess!);
    }

    // 신규 테이블 상태 INSERT (테이블 청소가 안 된 경우 table process 남아 있음. insertOrReplace() 사용)
    sourceProcess = TableProcess(
      tableId: table.getTableId(),
      tableProcessStateCode: sourceProcess?.getTableProcessStateCode(),
      vipYn: sourceProcess?.getVipYn(),
    );
    await insertOrReplaceTableProcess(sourceProcess);

    if (OperationBL().useOrderSync()) {
      await GRpcClient.instance.putOrder();
    }

    return true;
  }

  ///
  /// 기존 주문 테이블 이동
  ///
  @transaction
  Future<void> moveExistTable(List<OrderHistory> orders, Table table) async {
    // 기존 테이블 상태
    TableProcess? sourceProcess =
        await (await orders[0].getTable())!.getTableProcess();

    // 신규 테이블 상태
    TableProcess? targetProcess = await table.getTableProcess();

    // 기존 테이블 상태 판단 후 전체 이동시에는 기존 테이블상태 삭제
    int sourceOrderSize =
        (await (await orders[0].getTable())!.getOrderHistories()).length;

    Log.d(_TAG,
        '===============>sourceOrderHSize: $sourceOrderSize/${orders.length}');

    if (sourceOrderSize == orders.length) {
      await tableProcessDao!.deleteOne(sourceProcess!);
    }

    // 주문 이동
    for (OrderHistory i in orders) {
      i.setTableId(table.getTableId());
      i.updateTime();
      await orderHistoryDao!.updateOne(i);
    }

    if (sourceProcess?.getTableProcessStateCode() ==
            TableProcess.SERVING_COMPLETE_STATE &&
        targetProcess!.getTableProcessStateCode() ==
            TableProcess.SERVING_COMPLETE_STATE) {
      // 신규 테이블 서빙완료
      targetProcess
          .setTableProcessStateCode(TableProcess.SERVING_COMPLETE_STATE);
    } else {
      // 신규테이블 주문완료
      targetProcess!
          .setTableProcessStateCode(TableProcess.ORDER_COMPLETE_STATE);
    }

    if (sourceProcess != null) {
      sourceProcess.setTableId(table.getTableId());
      await insertOrReplaceTableProcess(sourceProcess);
    }

    if (OperationBL().useOrderSync()) {
      await GRpcClient.instance.putOrder();
    }
  }

  ///
  /// 주문 결합
  ///
  @transaction
  Future<bool> combineExistTable(
      List<OrderHistory> sourceOrders, OrderHistory targetOrder) async {
    // 기존 테이블 상태
    TableProcess? sourceProcess =
        await (await sourceOrders[0].getTable())!.getTableProcess();

    // 신규 테이블 상태
    TableProcess? targetProcess =
        await (await targetOrder.getTable())!.getTableProcess();

    // target OrderHistory OrderCheck로 변환
    OrderCheck targetCheck = OrderCheck(targetOrder);
    await targetCheck.setCurrentOrderItemList();

    // source OrderHistory list OrderCheck list 로 변환
    List<OrderCheck> sourceChecks = <OrderCheck>[];

    for (OrderHistory i in sourceOrders) {
      OrderCheck check = OrderCheck(i);
      await check.setCurrentOrderItemList();
      sourceChecks.add(check);
    }

    // COMBINE Action
    await _orderBL.joinOrderCheck(targetCheck, sourceChecks);

    // 신규 테이블 상태 업데이트
    if (sourceProcess?.getTableProcessStateCode() ==
            TableProcess.SERVING_COMPLETE_STATE &&
        targetProcess!.getTableProcessStateCode() ==
            TableProcess.SERVING_COMPLETE_STATE) {
      targetProcess.setTableProcessStateCode(
          TableProcess.SERVING_COMPLETE_STATE); // 서빙완료
    } else {
      targetProcess!
          .setTableProcessStateCode(TableProcess.ORDER_COMPLETE_STATE); // 주문완료
    }

    await tableProcessDao!.updateOne(targetProcess);

    // 기존 테이블 상태 업데이트
    int sourceOrderSize =
        (await (await sourceOrders[0].getTable())!.getOrderHistories()).length;
    Log.d(_TAG, '===============>이동: $sourceOrderSize/${sourceOrders.length}');

    if (sourceOrderSize == sourceOrders.length) {
      TableProcess? tableProcess =
          await (await sourceOrders[0].getTable())!.getTableProcess();
      if (tableProcess != null) {
        await tableProcessDao!.deleteOne(tableProcess);
      }
    }

    return true;
  }

  ///
  /// 해당테이블 링크
  ///
  Future<bool> insertTableLink(List<TableLink> tableLinks) async {
    await tableLinkDao!.insertAll(tableLinks);
    return true;
  }

  ///
  /// 테이블 링크 변경
  ///
  @transaction
  Future<bool> updateTableLink(
      List<TableLink> deletingLinks, List<TableLink> insertingLinks) async {
    await tableLinkDao!.deleteAll(deletingLinks);
    await tableLinkDao!.insertAll(insertingLinks);
    return true;
  }

  ///
  /// 해당 링크 삭제
  ///
  Future<bool> deleteTableLink(List<TableLink> deletingLinks) async {
    await tableLinkDao!.deleteAll(deletingLinks);
    return true;
  }

  Future<void> updateTableLinkAfterSale(String? tableId) async {
    List<TableLink> links = await tableLinkDao!.findAllByTableId(tableId!);

    // 메인 테이블에서 결제가 일어난 경우 연결된 다른 테이블을 메인 테이블로 변경
    // 서브 테이블에서 결제가 일어난 경우 해당 링크만 삭제
    if (links.length > 0) {
      String? mainTableId = links[0].getLinkedTableId();
      await tableLinkDao!.deleteOne(links[0]);

      for (int i = 1; i < links.length; i++) {
        links[i].setTableId(mainTableId);
        await tableLinkDao!.updateOne(links[i]);
      }
    } else {
      await tableLinkDao!
          .deleteAll(await tableLinkDao!.findAllByLinkedTableId(tableId));
    }
  }

  ///
  /// 해당 테이블 상태 변경
  ///
  Future<bool> insertOrReplaceTableProcess(TableProcess process) async {
    if (await tableProcessDao!.findById(process.getTableId()!) != null) {
      await tableProcessDao!.updateOne(process);
    } else {
      await tableProcessDao!.insertOne(process);
    }

    return true;
  }

  ///
  /// HNO 가져오기
  ///
  Future<String> getHDate() async {
    return await _basBL.getCommonDate();
  }

  ///
  /// 테이블 그룹 저장
  ///
  Future<void> insertTableGroupList(List<TableGroup> list) async {
    if (list == null) {
      return;
    }

    for (TableGroup i in list) {
      if (BaseBL.STATE_DELETE == i.getStateCode()) {
        await tableGroupDao!.deleteOne(i);
      } else {
        if (await tableGroupDao!.findById(i.getTableGroupId()!) != null) {
          await tableGroupDao!.updateOne(i);
        } else {
          await tableGroupDao!.insertOne(i);
        }
      }
    }
  }

  ///
  /// 테이블 저장
  ///
  Future<void> insertTableList(List<Table> list) async {
    if (list == null) {
      return;
    }

    for (Table i in list) {
      if (BaseBL.STATE_DELETE == i.getStateCode()) {
        await tableDao!.deleteOne(i);
      } else {
        if (await tableDao!.findById(i.getTableId()!) != null) {
          await tableDao!.updateOne(i);
        } else {
          await tableDao!.insertOne(i);
        }
      }
    }
  }

  ///
  /// 테이블 상세 저장
  ///
  Future<void> insertTableDetailList(List<TableDetail> list) async {
    if (list == null) {
      return;
    }

    for (TableDetail i in list) {
      if (BaseBL.STATE_DELETE == i.getStateCode()) {
        await tableDetailDao!.deleteOne(i);
      } else {
        if (await tableDetailDao!.findById(i.getTableId()!) != null) {
          await tableDetailDao!.updateOne(i);
        } else {
          await tableDetailDao!.insertOne(i);
        }
      }
    }
  }

  Future<String?> getLocalTableId(String serverTableId) async {
    Table? table = await tableDao!.findByServerTableId(serverTableId);
    return table?.getTableId();
  }

  Future<String?> getServerTableId(String tableId) async {
    Table? table = await tableDao!.findById(tableId);
    return table?.getServerTableId();
  }
}

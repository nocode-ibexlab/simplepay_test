import 'package:floor/floor.dart';

@Entity(tableName: 'SY1_TRACE_LOG')
class TraceLog {
  @primaryKey
  @ColumnInfo(name: 'ID')
  int? id;

  @ColumnInfo(name: 'LOG')
  String? log;

  @ColumnInfo(name: 'STR_ID')
  String? storeId;

  @ColumnInfo(name: 'STR_TRM_ID')
  String? storeTerminalId;

  @ColumnInfo(name: 'LAST_REV_DTTM')
  String? lastRevisionDatetime;

  @ColumnInfo(name: 'SYNCD_YN')
  bool? synchronizedYn;

  TraceLog(
      {this.id,
      this.log,
      this.storeId,
      this.storeTerminalId,
      this.lastRevisionDatetime,
      this.synchronizedYn});
}

@DatabaseView('SELECT COUNT(*) AS count FROM SY1_TRACE_LOG',
    viewName: 'SY1_TRACE_LOG_COUNT')
class TraceLogCount {
  int? count;

  TraceLogCount({this.count});
}

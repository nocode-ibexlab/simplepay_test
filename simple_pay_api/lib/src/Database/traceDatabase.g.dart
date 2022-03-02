// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traceDatabase.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorTraceDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$TraceDatabaseBuilder databaseBuilder(String name) =>
      _$TraceDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$TraceDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$TraceDatabaseBuilder(null);
}

class _$TraceDatabaseBuilder {
  _$TraceDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$TraceDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$TraceDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<TraceDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$TraceDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$TraceDatabase extends TraceDatabase {
  _$TraceDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  TraceLogDao? _traceLogDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SY1_TRACE_LOG` (`ID` INTEGER, `LOG` TEXT, `STR_ID` TEXT, `STR_TRM_ID` TEXT, `LAST_REV_DTTM` TEXT, `SYNCD_YN` INTEGER, PRIMARY KEY (`ID`))');

        await database.execute(
            'CREATE VIEW IF NOT EXISTS `SY1_TRACE_LOG_COUNT` AS SELECT COUNT(*) AS count FROM SY1_TRACE_LOG');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  TraceLogDao get traceLogDao {
    return _traceLogDaoInstance ??= _$TraceLogDao(database, changeListener);
  }
}

class _$TraceLogDao extends TraceLogDao {
  _$TraceLogDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _traceLogInsertionAdapter = InsertionAdapter(
            database,
            'SY1_TRACE_LOG',
            (TraceLog item) => <String, Object?>{
                  'ID': item.id,
                  'LOG': item.log,
                  'STR_ID': item.storeId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0)
                }),
        _traceLogUpdateAdapter = UpdateAdapter(
            database,
            'SY1_TRACE_LOG',
            ['ID'],
            (TraceLog item) => <String, Object?>{
                  'ID': item.id,
                  'LOG': item.log,
                  'STR_ID': item.storeId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0)
                }),
        _traceLogDeletionAdapter = DeletionAdapter(
            database,
            'SY1_TRACE_LOG',
            ['ID'],
            (TraceLog item) => <String, Object?>{
                  'ID': item.id,
                  'LOG': item.log,
                  'STR_ID': item.storeId,
                  'STR_TRM_ID': item.storeTerminalId,
                  'LAST_REV_DTTM': item.lastRevisionDatetime,
                  'SYNCD_YN': item.synchronizedYn == null
                      ? null
                      : (item.synchronizedYn! ? 1 : 0)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TraceLog> _traceLogInsertionAdapter;

  final UpdateAdapter<TraceLog> _traceLogUpdateAdapter;

  final DeletionAdapter<TraceLog> _traceLogDeletionAdapter;

  @override
  Future<TraceLog?> findById(int id) async {
    return _queryAdapter.query('SELECT * FROM SY1_TRACE_LOG WHERE ID = ?1',
        mapper: (Map<String, Object?> row) => TraceLog(
            id: row['ID'] as int?,
            log: row['LOG'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0),
        arguments: [id]);
  }

  @override
  Future<List<TraceLog>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM SY1_TRACE_LOG',
        mapper: (Map<String, Object?> row) => TraceLog(
            id: row['ID'] as int?,
            log: row['LOG'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            synchronizedYn: row['SYNCD_YN'] == null
                ? null
                : (row['SYNCD_YN'] as int) != 0));
  }

  @override
  Future<List<TraceLog>> findAllOld(int size) async {
    return _queryAdapter.queryList(
        'SELECT * FROM SY1_TRACE_LOG ORDER BY LAST_REV_DTTM ASC LIMIT ?1',
        mapper: (Map<String, Object?> row) => TraceLog(
            id: row['ID'] as int?,
            log: row['LOG'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            synchronizedYn:
                row['SYNCD_YN'] == null ? null : (row['SYNCD_YN'] as int) != 0),
        arguments: [size]);
  }

  @override
  Future<List<TraceLog>> findNotSynced() async {
    return _queryAdapter.queryList(
        'SELECT * FROM SY1_TRACE_LOG WHERE SYNCD_YN = 0 ORDER BY LAST_REV_DTTM ASC',
        mapper: (Map<String, Object?> row) => TraceLog(
            id: row['ID'] as int?,
            log: row['LOG'] as String?,
            storeId: row['STR_ID'] as String?,
            storeTerminalId: row['STR_TRM_ID'] as String?,
            lastRevisionDatetime: row['LAST_REV_DTTM'] as String?,
            synchronizedYn: row['SYNCD_YN'] == null
                ? null
                : (row['SYNCD_YN'] as int) != 0));
  }

  @override
  Future<TraceLogCount?> count() async {
    return _queryAdapter.query('SELECT * FROM SY1_TRACE_LOG_COUNT',
        mapper: (Map<String, Object?> row) =>
            TraceLogCount(count: row['count'] as int?));
  }

  @override
  Future<void> insertOne(TraceLog item) async {
    await _traceLogInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertAll(List<TraceLog> items) async {
    await _traceLogInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateOne(TraceLog item) async {
    await _traceLogUpdateAdapter.update(item, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAll(List<TraceLog> items) async {
    await _traceLogUpdateAdapter.updateList(items, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteOne(TraceLog item) async {
    await _traceLogDeletionAdapter.delete(item);
  }

  @override
  Future<void> deleteAll(List<TraceLog> items) async {
    await _traceLogDeletionAdapter.deleteList(items);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();

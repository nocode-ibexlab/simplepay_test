import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'Dao/TraceLogDao.dart';
import 'Entity/TraceLog.dart';
import 'Util/DateTimeConverter.dart';

part 'traceDatabase.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [TraceLog], views: [TraceLogCount])
abstract class TraceDatabase extends FloorDatabase {
  TraceLogDao get traceLogDao;
}

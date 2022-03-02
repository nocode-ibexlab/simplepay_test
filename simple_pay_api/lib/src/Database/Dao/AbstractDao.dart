import 'package:floor/floor.dart';

abstract class AbstractDao<T> {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertOne(T item);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAll(List<T> items);

  @update
  Future<void> updateOne(T item);

  @update
  Future<void> updateAll(List<T> items);

  @delete
  Future<void> deleteOne(T item);

  @delete
  Future<void> deleteAll(List<T> items);
}

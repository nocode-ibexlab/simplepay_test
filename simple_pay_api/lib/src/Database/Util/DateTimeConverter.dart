import 'package:floor/floor.dart';

class DateTimeConverter extends TypeConverter<DateTime?, int?> {
  @override
  DateTime? decode(int? value) {
    return DateTime.fromMillisecondsSinceEpoch(value ?? 0);
  }

  @override
  int? encode(DateTime? value) {
    return (value?.millisecondsSinceEpoch) ?? 0;
  }
}

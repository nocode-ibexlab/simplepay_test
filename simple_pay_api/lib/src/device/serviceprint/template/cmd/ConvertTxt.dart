import 'dart:collection';

abstract class ConvertTxt {
  Future<String?> convert(
      Map<String, Object?> data, HashMap<String, String> params, Iterator em);
}

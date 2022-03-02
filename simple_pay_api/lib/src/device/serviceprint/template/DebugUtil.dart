import 'package:simple_pay_api/src/Database/Util/Log.dart';

class DebugUtil {
  static final String TAG = "DebugUtil";
  static final bool DEBUG = false;

  static void printList(List retList) {
    if (DEBUG) {
      for (var item in retList) Log.d(TAG, item.toString());
    }
  }

  static void printMap(Map<String, Object?> map) {
    if (DEBUG) {
      Iterable<String> set = map.keys;

      for (String key in set) {
        Object? value = map[key];
        Log.d(TAG, "$key : $value");
      }
    }
  }
}

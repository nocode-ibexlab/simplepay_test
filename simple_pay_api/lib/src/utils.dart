import 'Database/Util/CommonUtil.dart';

mixin Utils {
  Map bizResponse(int resCode, String? message, [dynamic result]) {
    return {
      'common': {'resCode': resCode, 'resMessage': message},
      'content': result ?? {}
    };
  }

  bool isHttpOK(int code) => code ~/ 100 == 2;

  bool isHttpError(int code) => code ~/ 100 != 2;

  int httpStatusCode(int resCode) =>
      resCode >= 0 ? 200 + resCode : 499 - resCode;

  DateTime parseSearchDate(String? date, bool isStart, [int days = 0]) {
    DateTime today = DateTime.now();
    return date != null && date.isNotEmpty
        ? CommonUtil.convertStringToDate(date)
        : (isStart
            ? DateTime(today.year, today.month, today.day, 0, 0, 0)
                .subtract(Duration(days: days))
            : DateTime(today.year, today.month, today.day, 23, 59, 59)
                .add(Duration(days: days)));
  }
}

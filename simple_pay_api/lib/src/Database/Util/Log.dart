import 'package:flutter/material.dart';

class Log {
  static d(String tag, String message) {
    logPrint("D:[$tag]  $message");
  }

  static w(String tag, String message) {
    logPrint("W:[$tag]  $message");
  }

  static e(String tag, String message) {
    logPrint("E:[$tag]  $message");
  }

  static i(String tag, String message) {
    logPrint("I:[$tag]  $message");
  }

  static void logPrint(String log) async {
    int defaultPrintLength = 900;

    if (log.toString().length <= defaultPrintLength) {
      print(log);
    } else {
      int start = 0;
      int endIndex = defaultPrintLength;
      int logLength = log.length;
      int tmpLogLength = log.length;
      while (endIndex < logLength) {
        print(log.substring(start, endIndex));
        endIndex += defaultPrintLength;
        start += defaultPrintLength;
        tmpLogLength -= defaultPrintLength;
      }
      if (tmpLogLength > 0) {
        debugPrint(log.substring(start, logLength));
      }
    }
  }
}

import 'package:flutter/foundation.dart';

class BuildConfig {
  static const DEBUG = !kReleaseMode;
  static const IS_TABLET = false;
  static const APP_DISTINCT_KEYWORD =
      IS_TABLET ? 'YOSHOP_POS_TB' : 'YOSHOP_POS_HH';
  static const String APP_PKG_DISTINCT_KEYWORD =
      kReleaseMode ? 'RELEASE_1' : 'DEV_1';
  static const SERVER_REGION = 'ALL';
  static const CHECK_INTEGRITY = false;
  static const USE_PAY_APP = !IS_TABLET;
  static const IS_KIOSK = false;

  // http://pms.ibexlab.com/confluence/pages/viewpage.action?pageId=25068334
  // NNN (지역코드) + NN (사용구분) + NN (기능구분1) + NN (기능구분2) + NNN (예비)
  static const CLIENT_TYPE = '000' + '10' + '10' + '10' + '000';
}

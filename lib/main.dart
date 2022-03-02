import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easylogger/flutter_logger.dart';
import 'package:simple_pay_flutter/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.init(true,
      isShowFile: false, isShowTime: false, isShowNavigation: false);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // // hide bottom bar only:
  //   SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
  //
  // // hide status bar only:
  //   SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
  //
  // // go full screen:
  //   SystemChrome.setEnabledSystemUIOverlays ([]);
  //
  // // return to regular display
  //   SystemChrome.setEnabledSystemUIOverlays(
  //       SystemUiOverlay.values);

  runApp(const SimplePayApp());
}

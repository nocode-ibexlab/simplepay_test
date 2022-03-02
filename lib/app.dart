import 'package:flutter_redux/flutter_redux.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/constants.dart';
import 'utils/localization/get_localization/GetLocalization.dart';

class SimplePayApp extends StatefulWidget {
  const SimplePayApp({Key? key}) : super(key: key);

  @override
  _SimplePayAppState createState() => _SimplePayAppState();
}

class _SimplePayAppState extends State<SimplePayApp> {
  Locale locale = Locales().RuLocale;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: appStore,
        child: ScreenUtilInit(
          designSize: const Size(
              ThemeSizeStyle.screenWidth, ThemeSizeStyle.screenHeight),
          builder: () => GetMaterialApp(
              builder: (context, child) => MediaQuery(
                  child: child!,
                  data:
                      MediaQuery.of(context).copyWith(textScaleFactor: 1.0.sp)),
              title: Constants.appTitle,
              debugShowCheckedModeBanner: Constants.isDebugMode,
              navigatorKey: Get.key,
              initialRoute: AppRoutes.RouteToSPLASH_SCREEN_00_001,
              theme: MainTheme.mainThemeOrangeSimplePay,
              routes: AppRoutes.getRoutes(),
              navigatorObservers: [
                AppRouterObserver(),
                defaultLifecycleObserver
              ],
              translations: GetLocalization(),
              locale: locale),
        ));
  }
}

class AppRouterObserver extends RouteObserver<Route<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    appStore.dispatch(UpdateNavigationAction(
        name: route.settings.name, isPage: route is PageRoute, method: 'push'));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    appStore.dispatch(UpdateNavigationAction(
        name: (previousRoute?.settings.name) ?? "",
        isPage: previousRoute is PageRoute,
        method: 'pop'));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    appStore.dispatch(UpdateNavigationAction(
        name: newRoute!.settings.name,
        isPage: newRoute is PageRoute,
        method: 'replace'));
  }
}

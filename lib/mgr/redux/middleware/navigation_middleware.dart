import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/navigation/routes.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/mgr/redux/states/nav_state.dart';
import 'package:simple_pay_flutter/utils/common/global_widgets.dart';

/* GetX Navigation Information => https://mukhtharcm.com/getx-navigation-basics/ */

class NavigationMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    if (action is NavigateToAction) {
      return _navigate(store, action);
    } else if (action is ShowPopupAction) {
      return _showPopup(store.state.navigationState, action);
    } else if (action is DismissPopupAction) {
      return _dismissPopup(store.state.navigationState, action);
    } else {
      return next(action);
    }
  }

  // 의도적으로 next() 하지 않음
  void _navigate(Store<AppState> store, NavigateToAction action) {
    var history = store.state.navigationState.history;
    var pages = history.where((v) => v.isPage).map((v) => v.name).toList();

    if (action.to == 'up') {
      String? parentPage =
          pages.length > 1 ? pages[pages.length - 2] : AppRoutes.RouteToHOME;
      if (parentPage == null || parentPage.isEmpty) {
        _dismissAllPopups(store.state.navigationState);
        Get.back();
        // Global.navState!.pop();
      } else {
        Get.until(ModalRoute.withName(parentPage));
        // Global.navState!.popUntil(ModalRoute.withName(parentPage));
      }
      if (parentPage == AppRoutes.RouteToHOME) {
        Get.appUpdate();
        // GlobalWidgets().reload(AppRoutes.RouteToHome);
      }
    } else if (action.to != null && action.to!.startsWith('#')) {
      int? index = int.tryParse(action.to!.substring(1));

      if (index != null && index < history.length) {
        for (int i = 0; i < history.length - index - 1; i++) {
          Get.back();
          // Global.navState!.pop();
        }
      }
    } else if (action.to != null && pages.contains(action.to)) {
      Get.until(ModalRoute.withName(action.to!));
      // Global.navState!.popUntil(ModalRoute.withName(action.to!));
      if (action.to == AppRoutes.RouteToHOME) {
        Get.appUpdate();
        // GlobalWidgets().reload(AppRoutes.RouteToHome);
      }

      if (action.reload) {
        Get.appUpdate();
        // GlobalWidgets().reload(action.to);
      }
    } else if (action.to != null) {
      _navigateTo(store, action);
    }
  }

  void _navigateTo(Store<AppState> store, NavigateToAction action) {
    _navigateTo2(store, action);
  }

  Future<void> _navigateTo2(
      Store<AppState> store, NavigateToAction action) async {
    var navState = store.state.navigationState;
    if (!action.isStayPopup) {
      _dismissAllPopups(navState);
    }
    _pushOrReplaceNamed(action.to, action, store);
  }

  void _pushOrReplaceNamed(
      String? to, NavigateToAction action, Store<AppState> store) {
    if (action.pushAndRemoveUntil != null) {
      _pushAndRemoveUntil(action);
      return;
    }
    if (action.removeUntilPage != null) {
      _removeUntil(action);
      return;
    }
    if (action.replace) {
      _pushReplacement(action);
      return;
    } else {
      _push(action);
      return;
    }
  }

  _push(NavigateToAction action) async {
    Get.toNamed(action.to!);
    // Global.navState!.push(PageRouteBuilder(
    //     pageBuilder: (context, animation, secondaryAnimation) => page,
    //     transitionDuration: const Duration(milliseconds: 200),
    //     reverseTransitionDuration: const Duration(milliseconds: 200),
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //       // return FadeTransition(opacity: animation, child: child);
    //       // const begin = Offset(0.0, 1.0);
    //       // const end = Offset.zero;
    //       // final tween = Tween(begin: begin, end: end);
    //       // final offsetAnimation = animation.drive(tween);
    //       // return SlideTransition(
    //       //   position: offsetAnimation,
    //       //   child: child,
    //       // );
    //       return CupertinoPageTransition(
    //           linearTransition: true,
    //           primaryRouteAnimation: animation,
    //           secondaryRouteAnimation: secondaryAnimation,
    //           child: child);
    //     },
    //     settings: RouteSettings(name: action.to, arguments: action.arguments)));
  }

  _pushReplacement(NavigateToAction action) async {
    Get.offNamed(action.to!);
    // Global.navState!.pushReplacement(PageRouteBuilder(
    //     pageBuilder: (context, animation, secondaryAnimation) => page,
    //     transitionDuration: const Duration(milliseconds: 200),
    //     reverseTransitionDuration: const Duration(milliseconds: 200),
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
    //         FadeTransition(opacity: animation, child: child),
    //     settings: RouteSettings(name: action.to, arguments: action.arguments)));
  }

  _pushAndRemoveUntil(NavigateToAction action) async {
    Get.offNamedUntil(action.to!, (route) => false);
    // appStore.dispatch(UpdateNavigationAction(restart: true));
    // Global.navState!.pushAndRemoveUntil(
    //     PageRouteBuilder(
    //         pageBuilder: (context, animation, secondaryAnimation) => page,
    //         transitionDuration: const Duration(milliseconds: 200),
    //         reverseTransitionDuration: const Duration(milliseconds: 200),
    //         transitionsBuilder:
    //             (context, animation, secondaryAnimation, child) =>
    //                 FadeTransition(opacity: animation, child: child),
    //         settings:
    //             RouteSettings(name: action.to, arguments: action.arguments)),
    //     (route) => false);
  }

  _removeUntil(NavigateToAction action) async {
    Get.until((route) => route.settings.name == action.removeUntilPage);
    // Global.navState!.popUntil((route) {
    //   return route.settings.name == action.removeUntilPage;
    // });
    _push(action);
  }

  _showPopup(NavigationState state, ShowPopupAction action) {
    if (action.dismissAll) {
      _dismissAllPopups(state);
    }
    return action.show(Global.appContext!);
  }

  void _dismissPopup(NavigationState state, DismissPopupAction action) {
    if (action.all) {
      _dismissAllPopups(state);
    } else {
      if (state.history.isNotEmpty && !state.history.last.isPage) {
        Get.back();
        // Global.navState!.pop(action.result);
      }
    }
  }

  // 현재 페이지 위에 떠 있는 팝업 닫기
  void _dismissAllPopups(NavigationState state) {
    if (state.history.isNotEmpty && !state.history.last.isPage) {
      var popupCount = state.history.length -
          state.history.lastIndexWhere((i) => i.isPage) -
          1;

      for (var i = 0; i < popupCount; i++) {
        Get.back();
        // Global.navState!.pop();
      }
    }
  }
}

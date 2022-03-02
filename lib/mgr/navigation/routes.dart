import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class AppRoutes {
  static const RouteToHOME = "/HOME";
  static const RouteToSPLASH_SCREEN_00_001 = "/SPLASH_SCREEN_00_001";
  static const RouteToHOME_2 = "/HOME_2";
  static const RouteToSALE_EMPTY_00_001 = "/SALE_EMPTY_00_001";
  static const RouteToSALE_05_001 = "/SALE_05_001";
  static const RouteToPAYMENT_PAGE = "/paymentPage";
  static const RouteToHOME_001 = "/home_00_001";
  static const RouteToCALC_00_001 = "/CALC_00_001";
  static const RouteToSALE_02_001 = "/SALE_02_001";
  static const RouteToSALE_03_001 = "/SALE_03_001";
  static const RouteToSALE_06_001 = "/SALE_06_001";
  static const RouteToREPT_00_001 = "/REPT_00_001";
  static const RouteToRETN_00_001 = "/RETN_00_001";
  static const RouteToSALE_PAYMENT_00_003 = "/SALE_PAYMENT_00_003";
  static const RouteToRETN_02_001 = "/RETN_02_001";
  static const RouteToDATE_00_001 = "/DATE_00_001";
  static const RouteToWARE_04_001 = "/WARE_04_001";
  static const RouteToWARE_00_001 = "/WARE_00_001";
  static const RouteToSETG_00_001 = '/SETG_00_001';
  static const RouteToSETG_00_002 = '/SETG_00_002';
  static const RouteToSETG_00_003 = '/SETG_00_003';
  static const RouteToENRY_00_001 = '/ENRY_00_001';
  static const RouteToENRY_02_001 = '/ENRY_02_001';
  static const RouteToCHCK_00_001 = '/CHCK_00_001';
  static const RouteToREVN_00_001 = '/REVN_00_001';
  static const RouteToREVN_03_001 = '/REVN_03_001';
  static const RouteToREVN_03_004 = '/REVN_03_004';
  static const RouteToREVN_02_001 = '/REVN_02_001';
  static const RouteToWARE_03_003 = '/WARE_03_003';
  static const RouteToWARE_03_001 = '/WARE_03_001';
  static const RouteToWARE_02_002 = '/WARE_02_002';
  static const RouteToREPT_01_002 = '/REPT_01_002';
  static const RouteToWIDR_00_001 = '/WIDR_00_001';
  static const RouteToSALE_00_001 = '/SALE_00_001';
  static const RouteToREPT_00_002 = '/REPT_00_002';
  static const RouteToLOGIN_00_001 = '/login_00_001';
  static const RouteToREGISTER_00_001 = '/register_00_001';
  static const RouteToREGISTER_00_002 = '/register_00_002';

  static Map<String, WidgetBuilder> getRoutes() {
    Map<String, WidgetBuilder> base = {
      AppRoutes.RouteToREPT_00_002: (BuildContext context) => REPT_00_002(),
      AppRoutes.RouteToSPLASH_SCREEN_00_001: (BuildContext context) =>
          SPLASH_SCREEN_00_001(),
      AppRoutes.RouteToSALE_EMPTY_00_001: (BuildContext context) =>
          SALE_EMPTY_00_001(),
      AppRoutes.RouteToSALE_05_001: (BuildContext context) => SALE_05_001(),
      AppRoutes.RouteToHOME_001: (BuildContext context) => HOME_00_001(),
      AppRoutes.RouteToCALC_00_001: (BuildContext context) => CALC_00_001(),
      AppRoutes.RouteToSALE_02_001: (BuildContext conext) => SALE_02_001(),
      AppRoutes.RouteToSALE_03_001: (BuildContext conext) => SALE_03_001(),
      AppRoutes.RouteToSALE_06_001: (BuildContext conext) => SALE_06_001(),
      AppRoutes.RouteToREPT_00_001: (BuildContext conext) => REPT_00_001(),
      AppRoutes.RouteToRETN_00_001: (BuildContext conext) => RETN_00_001(),
      AppRoutes.RouteToSALE_PAYMENT_00_003: (BuildContext conext) =>
          SALE_PAYMENT_00_003(),
      AppRoutes.RouteToRETN_02_001: (BuildContext conext) => RETN_02_001(),
      AppRoutes.RouteToDATE_00_001: (BuildContext conext) => DATE_00_001(),
      AppRoutes.RouteToWARE_04_001: (BuildContext conext) => WARE_04_001(),
      AppRoutes.RouteToWARE_00_001: (BuildContext conext) => WARE_00_001(),
      AppRoutes.RouteToSETG_00_001: (BuildContext conext) => SETG_00_001(),
      AppRoutes.RouteToSETG_00_002: (BuildContext conext) => SETG_00_002(),
      AppRoutes.RouteToSETG_00_003: (BuildContext conext) => SETG_00_003(),
      AppRoutes.RouteToENRY_00_001: (BuildContext conext) => ENRY_00_001(),
      AppRoutes.RouteToENRY_02_001: (BuildContext conext) => ENRY_02_001(),
      AppRoutes.RouteToCHCK_00_001: (BuildContext conext) => CHCK_00_001(),
      AppRoutes.RouteToREVN_00_001: (BuildContext conext) => REVN_00_001(),
      AppRoutes.RouteToREVN_03_001: (BuildContext conext) => REVN_03_001(),
      AppRoutes.RouteToREVN_03_004: (BuildContext conext) => REVN_03_004(),
      AppRoutes.RouteToREVN_02_001: (BuildContext conext) => REVN_02_001(),
      AppRoutes.RouteToWARE_03_003: (BuildContext conext) => WARE_03_003(),
      AppRoutes.RouteToREPT_01_002: (BuildContext conext) => REPT_01_002(),
      AppRoutes.RouteToWARE_03_001: (BuildContext conext) =>
          const WARE_03_001(),
      AppRoutes.RouteToWARE_02_002: (BuildContext conext) => WARE_02_002(),
      AppRoutes.RouteToWIDR_00_001: (BuildContext conext) => WIDR_00_001(),
      AppRoutes.RouteToSALE_00_001: (BuildContext conext) => SALE_00_001(),
      AppRoutes.RouteToLOGIN_00_001: (BuildContext conext) => LOGIN_00_001(),
      AppRoutes.RouteToREPT_00_002: (BuildContext context) => REPT_00_002(),
      AppRoutes.RouteToREGISTER_00_001: (BuildContext context) =>
          REGISTER_00_001(),
      AppRoutes.RouteToREGISTER_00_002: (BuildContext context) =>
          REGISTER_00_002(),
    };

    return base;
  }
}

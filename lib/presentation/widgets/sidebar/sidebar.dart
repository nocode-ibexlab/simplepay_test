import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/widgets/banner/info_banner.dart';
import 'package:simple_pay_flutter/presentation/widgets/sidebar/sidebar_tab.dart';
import '../../template/base/template.dart';

class SideBarVertical extends StatefulWidget {
  String textUpperInfoBanner;
  String textLowerInfoBanner;
  String? imageUrl;

  AppState state;

  SideBarVertical({
    this.textUpperInfoBanner = 'Good morning',
    this.textLowerInfoBanner = 'username@mail.com',
    this.imageUrl,
    required this.state,
  });

  @override
  State<SideBarVertical> createState() => _SideBarVerticalState();
}

class _SideBarVerticalState extends State<SideBarVertical> {
  @override
  Widget build(BuildContext context) {
    NavigationState navState = widget.state.navigationState;
    return Container(
      width: 480.w,
      color: ThemeColors.white,
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(
                  left: 19.w,
                  //39.h + MediaQuery.of(context).padding.top
                  top: Get.statusBarHeight.h,
                  bottom: 48.h),
              child: InfoBanner(
                  imageUrl: widget.imageUrl,
                  topText: widget.textUpperInfoBanner,
                  bottomText: widget.textLowerInfoBanner)),
          SidebarTab(
            text: mainRu,
            icon: PayIcons.home,
            isActive: _getIsCurrentTab(
                AppRoutes.RouteToHOME_001, navState.current.toString()),
            onTap: () => _goTo(AppRoutes.RouteToHOME_001),
          ),
          SidebarTab(
            text: sale,
            icon: PayIcons.shoppingCart,
            isActive: _getIsCurrentTab(
                AppRoutes.RouteToSALE_00_001, navState.current.toString()),
            onTap: () => _goTo(AppRoutes.RouteToSALE_00_001),
          ),
          SidebarTab(
            text: reports,
            icon: PayIcons.chartBar,
            isActive: _getIsCurrentTab(
                AppRoutes.RouteToREPT_00_001, navState.current.toString()),
            onTap: () => _goTo(AppRoutes.RouteToREPT_00_001),
          ),
          SidebarTab(
            text: warehouse,
            icon: PayIcons.database,
            isActive: _getIsCurrentTab(
                AppRoutes.RouteToWARE_00_001, navState.current.toString()),
            onTap: () => _goTo(AppRoutes.RouteToWARE_00_001),
          ),
          SidebarTab(
            text: refund,
            icon: PayIcons.receiptRefund,
            isActive: _getIsCurrentTab(
                AppRoutes.RouteToRETN_00_001, navState.current.toString()),
            onTap: () => _goTo(AppRoutes.RouteToRETN_00_001),
          ),
          SidebarTab(
              text: entryOrWithdrawal,
              icon: PayIcons.moneySp,
              isActive: _getIsCurrentTab(
                  AppRoutes.RouteToENRY_00_001, navState.current.toString()),
              onTap: () => _goTo(AppRoutes.RouteToENRY_00_001)),
          SidebarTab(
            text: settings,
            icon: PayIcons.settingsSp,
            isActive: _getIsCurrentTab(
                AppRoutes.RouteToSETG_00_001, navState.current.toString()),
            onTap: () => _goTo(AppRoutes.RouteToSETG_00_001),
          ),
          SidebarTab(
            text: quit,
            icon: PayIcons.logout,
            onTap: () {
              showSimpleDialog(
                paddingTop: 40,
                paddingBottom: 40,
                borderRadius: 24,
                body: const MainExitPopup(),
              );
            },
          ),
        ],
      ),
    );
  }

  bool _getIsCurrentTab(String route, String currentRoute) {
    return currentRoute == route;
  }

  _goTo(String route) {
    Get.back();
    appStore.dispatch(NavigateToAction(to: route));
  }
}

const String mainRu = 'Главная';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_flutter/mgr/fsm/search_fsm.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/presentation/widget_utils/search_page.dart';

class DefaultHeader extends StatelessWidget implements PreferredSizeWidget {
  String? titleText;
  bool showLeadingBack;
  bool showTitleDate;
  bool showLeadingMenuBtn;
  VoidCallback? showLeadingX;
  VoidCallback? showActionExit;
  VoidCallback? showActionAdd;
  VoidCallback? showActionSearch;
  VoidCallback? showActionQr;
  VoidCallback? showActionPrint;
  VoidCallback? showActionCalendar;
  VoidCallback? showActionClear;
  VoidCallback? showActionSend;
  VoidCallback? showActionClock;
  VoidCallback? showActionSettings;
  VoidCallback? showActionDelete;
  DefaultHeader(
      {this.showLeadingBack = false,
      this.showTitleDate = false,
      this.showLeadingMenuBtn = false,
      this.showLeadingX,
      this.showActionExit,
      this.showActionAdd,
      this.showActionSearch,
      this.showActionQr,
      this.showActionPrint,
      this.showActionCalendar,
      this.showActionClear,
      this.showActionSend,
      this.showActionClock,
      this.showActionSettings,
      this.titleText,
      this.showActionDelete});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
      centerTitle: showTitleDate,
      title: _buildTitleText(),
      leading: _buildLeading(),
      actions: _buildActions(),
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, ThemeSizeStyle.appBarHeight.h);

  List<Widget>? _buildActions() {
    return [
      if (showActionExit != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionExit,
            icon: SimplePayIcon(PayIcons.logout, size: 52.h)),
      if (showActionAdd != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionAdd,
            icon: SimplePayIcon(PayIcons.plusSm, size: 62.h)),
      if (showActionSearch != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: _showSearch,
            icon: SimplePayIcon(PayIcons.search, size: 48.h)),
      if (showActionQr != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionQr,
            icon: SimplePayIcon(PayIcons.scanSp, size: 44.h)),
      if (showActionPrint != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionPrint,
            icon: SimplePayIcon(PayIcons.printer, size: 66.h)),
      if (showActionCalendar != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionCalendar,
            icon: SimplePayIcon(PayIcons.calendar, size: 48.h)),
      if (showActionSend != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionSend,
            icon: SimplePayIcon(PayIcons.upload, size: 48.h)),
      if (showActionClear != null)
        TextButton(
            onPressed: showActionClear,
            child: const SizedText(
                text: 'Сбросить', textStyle: ThemeTextRegular.lg5)),
      if (showActionClock != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionClock,
            icon: SimplePayIcon(PayIcons.clock, size: 48.h)),
      if (showActionSettings != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionSettings,
            icon: SimplePayIcon(PayIcons.adjustments, solid: true, size: 48.h)),
      if (showActionDelete != null)
        IconButton(
            alignment: Alignment.centerLeft,
            onPressed: showActionDelete,
            icon: SimplePayIcon(PayIcons.trash, size: 48.h)),
    ];
  }

  Widget? _buildTitleText() {
    if (titleText != null) {
      return SizedText(
        text: titleText!,
        textStyle: ThemeTextSemibold.xl3,
      );
    }
    if (showTitleDate) {
      //TODO: SHOH Add Main screen Date time text style
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedText(
                  text: 'Откр.смены: ', textStyle: ThemeTextRegular.lg3),
              SizedText(text: dateFormat(), textStyle: ThemeTextBold.lg3),
            ],
          ),
          SizedText(text: timeFormat(), textStyle: ThemeTextBold.lg3)
        ],
      );
    }
  }

  String dateFormat() {
    return DateFormat.yMMMd('ru').format(DateTime.now());
  }

  String timeFormat() {
    return DateFormat.jm('ru').format(DateTime.now());
  }

  Widget? _buildLeading() {
    if (showLeadingBack) {
      return IconButton(
        onPressed: _onBackTap,
        icon: SimplePayIcon(PayIcons.chevronLeft, size: 46.h),
      );
    }
    if (showLeadingMenuBtn) {
      return Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: SimplePayIcon(PayIcons.menu, size: 48.h),
        );
      });
    }
    if (showLeadingX != null) {
      return IconButton(
        onPressed: showLeadingX,
        icon: SimplePayIcon(PayIcons.x, size: 46.h),
      );
    }
  }

  _onBackTap() {
    appStore.dispatch(NavigateToAction(to: 'up'));
  }

  _showSearch() async {
    appStore.dispatch(GetInitSearchAction());
    // appStore.dispatch(UpdateSearchAction(searchType: SearchType.WARE_SEARCH));
    //
    await showSearch(context: Get.context!, delegate: SearchPage());

    showActionSearch!();
  }
}

const searchByBarcode = 'Поиск по называнию, штрихкоду';

import 'dart:developer';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/presentation/widgets/sidebar/sidebar.dart';
import 'package:simple_pay_flutter/utils/common/global_widgets.dart';

class DefaultBody extends StatelessWidget {
  Widget child;
  Widget? footer;
  double footerHeight;
  String? titleText;
  bool showLeadingBack;
  bool showLeadingMenuBtn;
  VoidCallback? showLeadingX;
  bool showTitleDate;
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
  VoidCallback? showActionFAB;
  bool connectAppBarWithBody;
  double paddingTop;
  double paddingBottom;
  double paddingHorizontal;
  Color? bgColor;
  VoidCallback? showActionDelete;

  DefaultBody(
      {required this.child,
      this.footer,
      this.footerHeight = ThemeSizeStyle.footerHeight,
      this.showLeadingBack = false,
      this.showLeadingMenuBtn = false,
      this.showLeadingX,
      this.showTitleDate = false,
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
      this.connectAppBarWithBody = false,
      this.titleText,
      this.paddingBottom = 0,
      this.showActionFAB,
      this.paddingHorizontal = 31,
      this.paddingTop = 34,
      this.bgColor,
      this.showActionDelete});

  double get calcBottomPadding =>
      footer == null ? paddingBottom : paddingBottom + footerHeight;

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Scaffold(
            drawer: SideBarVertical(state: state),
            backgroundColor: bgColor,
            floatingActionButton: showActionFAB != null
                ? showFab
                    ? FloatingActionButton(
                        backgroundColor: ThemeColors.orange500,
                        onPressed: showActionFAB,
                        child: SimplePayIcon(PayIcons.plusSm, size: 80.h),
                      )
                    : null
                : null,
            resizeToAvoidBottomInset: true,
            extendBodyBehindAppBar: connectAppBarWithBody,
            drawerEnableOpenDragGesture: false,
            appBar: DefaultHeader(
              showLeadingBack: showLeadingBack,
              showLeadingMenuBtn: showLeadingMenuBtn,
              showActionClock: showActionClock,
              showLeadingX: showLeadingX,
              showTitleDate: showTitleDate,
              showActionExit: showActionExit,
              showActionAdd: showActionAdd,
              showActionSearch: showActionSearch,
              showActionQr: showActionQr,
              showActionPrint: showActionPrint,
              showActionCalendar: showActionCalendar,
              showActionClear: showActionClear,
              showActionSend: showActionSend,
              showActionSettings: showActionSettings,
              titleText: titleText,
              showActionDelete: showActionDelete,
            ),
            bottomSheet: _buildFooter(),
            body: Padding(
              padding: EdgeInsets.only(
                  right: paddingHorizontal.w,
                  left: paddingHorizontal.w,
                  bottom: calcBottomPadding.h,
                  top: connectAppBarWithBody ? 146.h : 0 + paddingTop.h),
              child: child,
            )));
  }

  Widget? _buildFooter() {
    if (footer != null) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
        decoration: BoxDecoration(
            color: ThemeColors.white,
            boxShadow: ThemeShadows.shadow,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r))),
        width: double.infinity,
        height: footerHeight.h,
        child: footer,
      );
    }
  }
}

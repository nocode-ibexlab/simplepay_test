import 'dart:developer';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/presentation/widgets/sidebar/sidebar.dart';
import 'package:simple_pay_flutter/utils/common/global_widgets.dart';

class SearchDefaultBody extends StatelessWidget {
  Widget child;
  Widget? footer;
  double footerHeight;
  double paddingTop;
  double paddingBottom;
  double paddingHorizontal;
  Color? bgColor;

  SearchDefaultBody(
      {required this.child,
      this.footer,
      this.footerHeight = ThemeSizeStyle.footerHeight,
      this.paddingBottom = 0,
      this.paddingHorizontal = 31,
      this.paddingTop = 34,
      this.bgColor});

  double get calcBottomPadding =>
      footer == null ? paddingBottom : paddingBottom + footerHeight;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Scaffold(
            backgroundColor: bgColor,
            resizeToAvoidBottomInset: true,
            drawerEnableOpenDragGesture: false,
            bottomSheet: _buildFooter(),
            body: Padding(
              padding: EdgeInsets.only(
                  right: paddingHorizontal.w,
                  left: paddingHorizontal.w,
                  bottom: calcBottomPadding.h,
                  top: paddingTop.h),
              child: child,
            )));
  }

  Widget? _buildFooter() {
    if (footer != null) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
        decoration: BoxDecoration(
            color: ThemeColors.white,
            boxShadow: ThemeShadows.shadowSm,
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

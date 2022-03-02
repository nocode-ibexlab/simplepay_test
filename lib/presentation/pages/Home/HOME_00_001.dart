import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class HOME_00_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => DefaultBody(
          paddingHorizontal: 0,
          paddingTop: 0,
          bgColor: ThemeColors.coolgray50,
          connectAppBarWithBody: true,
          showLeadingMenuBtn: true,
          showActionExit: () {
            showSimpleDialog(
              paddingTop: 0,
              paddingBottom: 0,
              borderRadius: 24,
              body: const MainExitPopup(),
            );
          },
          showTitleDate: true,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    _buildHead(state),
                    SizedBox(height: 152.h),
                    _buildBody(),
                  ],
                ),
                Positioned(
                    top: 146.h,
                    left: 32.w,
                    child: const HomePageMiddleWidget()),
              ],
            ),
          )),
    );
  }

  Widget _buildHead(AppState state) {
    return Container(
      height: 230.h,
      padding: EdgeInsets.only(right: 32.w, left: 32.w, top: 20.h),
      width: double.infinity,
      color: ThemeColors.orange500,
      child: SpacedColumn(
        verticalSpace: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedText(
                text: cashBalance,
                textStyle:
                    ThemeTextRegular.lg5.copyWith(color: ThemeColors.white),
              ),
              SizedText(
                text: state.storeState.cashBalance.getPriceMap.formattedVer,
                textStyle: ThemeTextBold.xl4.copyWith(color: ThemeColors.white),
              ),
            ],
          ),
          Row(
            children: [
              SizedText(
                  text: cashier,
                  textStyle:
                      ThemeTextRegular.lg5.copyWith(color: ThemeColors.white)),
              SizedText(
                  text: state.storeState.cashierName,
                  textStyle:
                      ThemeTextBold.xl2.copyWith(color: ThemeColors.white)),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 48.h,
          spacing: 32.w,
          children: [
            _buildButton(
              sale,
              PayIcons.shoppingCart,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToSALE_00_001));
              },
            ),
            _buildButton(
              warehouse,
              PayIcons.database,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToWARE_00_001));
              },
            ),
            _buildButton(
              reports,
              PayIcons.chartBar,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToREPT_00_001));
              },
            ),
            _buildButton(
              refund,
              PayIcons.receiptRefund,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToRETN_00_001));
              },
            ),
            _buildButton(
              revisions,
              PayIcons.checkList3Sp,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToREVN_00_001));
              },
            ),
            _buildButton(
              entryOrWithdrawal,
              PayIcons.moneySp,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToENRY_00_001));
              },
            ),
            _buildButton(
              settings,
              PayIcons.settingsSp,
              onTap: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToSETG_00_001));
              },
            ),
            _buildButton(
              quit,
              PayIcons.logout,
              onTap: () {
                showSimpleDialog(
                  paddingTop: 0,
                  paddingBottom: 0,
                  borderRadius: 24,
                  body: const MainExitPopup(),
                );
              },
              isGrayIcon: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, PayIcons icon,
      {bool isGrayIcon = false, required VoidCallback onTap}) {
    return SecondaryButton(
      onPressed: onTap,
      icon: icon,
      labelText: text,
      isGrayIcon: isGrayIcon,
    );
  }
}

class HomePageMiddleWidget extends StatefulWidget {
  const HomePageMiddleWidget({Key? key}) : super(key: key);

  @override
  _HomePageMiddleWidgetState createState() => _HomePageMiddleWidgetState();
}

class _HomePageMiddleWidgetState extends State<HomePageMiddleWidget> {
  double _turns = 0.0;
  bool _rotating = false;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (_, state) =>
            RectangleFrame10(child: _buildMiddleWidgetBody(state)));
  }

  Widget _buildMiddleWidgetBody(AppState state) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: const Divider(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 13.h, bottom: 29.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              VerticalDivider(),
              VerticalDivider(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedText(
                text: sale,
                textStyle:
                    ThemeTextRegular.lg4.apply(color: ThemeColors.coolgray400),
              ),
              SizedText(
                text: 10.toString(),
                textStyle: ThemeTextRegular.xl5,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedText(
                text: synchronization,
                textStyle:
                    ThemeTextRegular.lg4.apply(color: ThemeColors.coolgray400),
              ),
              _buildCheckSyncStatus(state)
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedText(
                text: internet,
                textStyle:
                    ThemeTextRegular.lg4.apply(color: ThemeColors.coolgray400),
              ),
              _buildCheckNetworkStatus(state)
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCheckSyncStatus(AppState state) {
    bool _isSynced = state.syncState.getStatusRes.syncStatus;
    if (_isSynced) {
      return Material(
        color: Colors.transparent,
        child: AnimatedRotation(
          duration: const Duration(seconds: 1),
          turns: _turns,
          child: InkWell(
            borderRadius: BorderRadius.circular(20.r),
            onTap: !_rotating
                ? () async {
                    setState(() {
                      _rotating = true;
                      _turns = _turns == 1 ? 0 : 1;
                    });
                    await appStore.dispatch(GetStatusResAction);
                    await Future.delayed(const Duration(seconds: 1));
                    setState(() {
                      _rotating = false;
                    });
                  }
                : null,
            child: SimplePayIcon(PayIcons.cloudSync,
                size: 64.h, color: ThemeColors.lime500),
          ),
        ),
      );
    } else {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: !_rotating
              ? () async {
                  setState(() {
                    _rotating = true;
                    _turns = _turns == 1 ? 0 : 1;
                  });
                  await appStore.dispatch(GetStatusResAction);
                  await Future.delayed(const Duration(seconds: 1));
                  setState(() {
                    _rotating = false;
                  });
                }
              : null,
          child: SimplePayIcon(PayIcons.cloudSync,
              size: 64.h, color: ThemeColors.red500),
        ),
      );
    }
  }

  Widget _buildCheckNetworkStatus(AppState state) {
    bool _isSynced = state.syncState.getStatusRes.syncStatus;
    if (_isSynced) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: null,
          child: SimplePayIcon(PayIcons.checkCircle,
              size: 64.h, color: ThemeColors.lime500, solid: true),
        ),
      );
    } else {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: null,
          child: SimplePayIcon(PayIcons.xCircle,
              size: 64.h, color: ThemeColors.red500, solid: true),
        ),
      );
    }
  }
}

const cashBalance = 'Остаток в кассе:\t';
const cashier = 'Кассир:\t';
const synced = 'Синхронизация';
const internetAvailable = 'Интернет';
const warehouse = 'Склад';
const reports = 'Отчеты';
const refund = 'Возврат';
const refunds = 'Возвраты';
const revisions = 'Ревизия';
const entryOrWithdrawal = 'Внос/Вынос';
const settings = 'Настройки';
const quit = 'Выход';
const internet = 'Интернет';

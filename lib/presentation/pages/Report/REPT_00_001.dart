import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class REPT_00_001 extends StatefulWidget {
  @override
  State<REPT_00_001> createState() => _REPT_00_001State();
}

class _REPT_00_001State extends State<REPT_00_001> {
  List<Widget> tabPages = [REPT_00_001_SHIFT(), REPT_01_001_ANALYTICS()];
  int activeIndex = 0;
  List<Widget> get tabs => [
        TabsYollet(text: byShift, isActive: activeIndex == 0),
        TabsYollet(text: saleStatistics, isActive: activeIndex == 1)
      ];
  Widget currentPage = REPT_00_001_SHIFT();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onInit: (store) {},
        onDispose: _resetDate(),
        builder: (context, state) => DefaultBody(
              titleText: report,
              showLeadingBack: true,
              paddingTop: 0,
              paddingHorizontal: 0,
              paddingBottom: 0,
              showActionCalendar: () {
                appStore.dispatch(
                    NavigateToAction(to: AppRoutes.RouteToDATE_00_001));
              },
              child: SpacedColumn(
                children: [
                  DefaultTabController(
                      length: 2,
                      child: Container(
                        height: 90.h,
                        decoration: BoxDecoration(
                          color: ThemeColors.white,
                          boxShadow: ThemeShadows.tableDivider,
                        ),
                        child: TabBar(
                            indicatorColor: ThemeColors.orange500,
                            onTap: _changeTabPage,
                            tabs: tabs),
                      )),
                  currentPage,
                ],
              ),
            ));
  }

  _changeTabPage(int index) {
    setState(() {
      activeIndex = index;
      currentPage = tabPages[index];
    });
  }
}

class REPT_00_001_SHIFT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onDispose: (_) {},
        onInit: (store) async {
          await appStore.dispatch(GetListSalesByShiftAction);
        },
        builder: (context, state) => _dataTable(state));
  }

  Widget _dataTable(AppState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: SizedBox(
          height: 1280.h - 278.h,
          child: DefaultDatatable(
            bodyWidths: const [
              null,
              400,
              null,
            ],
            headNames: const [number, openCloseShift, saleTotalSum],
            bodyNames: [
              ["1", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["2", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["2", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["2", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["2", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["2", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
              ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
            ],
          ),
        ),
      ),
    );
  }

  Widget _dataTable1(AppState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: SizedBox(
          height: 1280.h - 278.h,
          child: DefaultDatatable(
            bodyWidths: const [
              null,
              400,
              null,
            ],
            headNames: const [number, openCloseShift, saleTotalSum],
            bodyNames: _buildList(state),

            // ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
            // ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
            // ["3", '16.11.2021 13:56:38 16.11.2021 13:56:38', "3000"],
          ),
        ),
      ),
    );
  }

  _buildList(state) {
    final groupList = state.reportState.tenderListSalesByShiftResList;
    return SpacedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalSpace: 16,
        children: groupList
            .map<Widget>(
              ((e) => [e, e.salesDate, e.totalAmount]),
            )
            .toList());
  }
}

class REPT_01_001_ANALYTICS extends StatefulWidget {
  @override
  State<REPT_01_001_ANALYTICS> createState() => _REPT_01_001_ANALYTICSState();
}

class _REPT_01_001_ANALYTICSState extends State<REPT_01_001_ANALYTICS> {
  List<String> items = [sales, refund];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onInit: (_) {
          appStore.dispatch(GetSummarizeAmountsAction);
          appStore.dispatch(GetSummarizeByItemGroupsAction);
        },
        onDispose: _resetDate(),
        builder: (context, state) => Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  child: SpacedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 32.h, top: 27.w),
                        child: SpacedRow(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            horizontalSpace: 23,
                            children: [
                              SimplePayIcon(
                                PayIcons.calendar,
                                size: 46.h,
                                color: ThemeColors.coolgray600,
                              ),
                              SizedText(
                                text:
                                    '${DateFormat("dd MMMM", "ru").format(DateTime.parse(state.calenderState.startDate))}  -  ${DateFormat("dd MMMM", "ru").format(DateTime.parse(state.calenderState.endDate))}',
                                textStyle: ThemeTextRegular.lg5,
                              )
                            ]),
                      ),
                      SpacedRow(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildStatisticContainer(
                              PayIcons.trendingUp,
                              ThemeColors.lime500,
                              128,
                              qty: state.reportState
                                  .simpleReportSummarizeAmountsRes.salesCount
                                  .toString(),
                              amount: state.reportState
                                  .simpleReportSummarizeAmountsRes.salesAmount
                                  .toString(),
                            ),
                            _buildStatisticContainer(
                              PayIcons.trendingDown,
                              ThemeColors.red500,
                              142,
                              qty: state.reportState
                                  .simpleReportSummarizeAmountsRes.refundCount
                                  .toString(),
                              amount: state.reportState
                                  .simpleReportSummarizeAmountsRes.refundAmount
                                  .toString(),
                            )
                          ]),
                      SizedBox(height: 32.h),
                      //////////////////////
                      // ! Button in Design
                      //////////////////////
                      InputFieldYolletappDropdown3(
                        hint: _hint(state),
                        listValues: items,
                        dropdownSize: DropdownSize.SIZE3,
                        onChanged: (value) {
                          setState(() {
                            logger(value);
                            selectedValue = value;
                          });
                          if (value == sales) {
                            appStore
                                .dispatch(UpdateReportAction(isSales: true));
                          } else {
                            appStore
                                .dispatch(UpdateReportAction(isSales: false));
                          }
                        },
                      ),
                      SizedBox(height: 24.h),

                      _buildCategoryList(),
                      // _buildList(state),
                      _buildList(state),

                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                ),
              ),
            ));
  }

  Widget _buildStatisticContainer(PayIcons icon, Color color, double height,
      {required String qty, required String amount}) {
    return Container(
      height: height.h,
      width: 320.w,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      decoration: BoxDecoration(
          color: ThemeColors.white,
          borderRadius: BorderRadius.all(Radius.circular(24.r))),
      child: SpacedRow(
        horizontalSpace: 32,
        children: [
          SimplePayIcon(icon, color: color, size: 80.h),
          SpacedColumn(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedText(
                text: qty,
                textStyle: ThemeTextRegular.xl2
                    .copyWith(color: ThemeColors.coolgray400)),
            SizedText(
                text: '$amount₸',
                textStyle: ThemeTextSemibold.xl4
                    .copyWith(color: ThemeColors.coolgray900))
          ])
        ],
      ),
    );
  }

  //delete later
  Widget _buildCategoryList() {
    return SpacedColumn(verticalSpace: 24, children: [
      _buildSingleCategory(() {
        appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToREPT_01_002));
      },
          icon: PayIcons.breadSp,
          categoryName: 'Хлебо-булочные',
          saleAmount: '72 % , 10 продаж',
          amount: '390000'),
      _buildSingleCategory(() {},
          icon: PayIcons.candySp,
          categoryName: 'Хлебо-булочные',
          saleAmount: '72 % , 10 продаж',
          amount: '390000'),
      _buildSingleCategory(() {},
          icon: PayIcons.drinksSp,
          categoryName: 'Хлебо-булочные',
          saleAmount: '72 % , 10 продаж',
          amount: '390000'),
      _buildSingleCategory(() {},
          icon: PayIcons.milkSp,
          categoryName: 'Хлебо-булочные',
          saleAmount: '72 % , 10 продаж',
          amount: '390000'),
      _buildSingleCategory(() {},
          icon: PayIcons.soapSp,
          categoryName: 'Хлебо-булочные',
          saleAmount: '72 % , 10 продаж',
          amount: '390000'),
    ]);
  }

  //TODO NISHAT
  Widget _buildList(state) {
    final groupList =
        state.reportState.simpleReportSummarizeByItemGroupsResList;
    return SpacedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalSpace: 16,
        children: groupList
            .map<Widget>(
              (e) => _buildSingleCategory(
                () {
                  appStore.dispatch(
                      (UpdateReportAction(itemGroupId: e.itemGroupId)));
                },
                icon: PayIcons.soapSp,
                categoryName: e.itemGroupName,
                saleAmount: e.qty.toString(),
                amount: e.amount.toString(),
              ),
            )
            .toList());
  }

  Widget _buildSingleCategory(
    VoidCallback onTap, {
    required PayIcons icon,
    required String categoryName,
    required String saleAmount,
    required String amount,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 16.w),
        decoration: BoxDecoration(
            border: Border.all(width: 1.w, color: ThemeColors.coolgray300),
            boxShadow: ThemeShadows.shadowSm,
            color: ThemeColors.white,
            borderRadius: BorderRadius.all(Radius.circular(24.r))),
        child: SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            horizontalSpace: 32,
            children: [
              SpacedRow(
                horizontalSpace: 24.w,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SimplePayIcon(icon, useDefaultColor: true, size: 90.h),
                  SpacedColumn(
                    verticalSpace: 8,
                    children: [
                      SizedText(
                        text: categoryName,
                        textStyle: ThemeTextRegular.lg4,
                      ),
                      SizedText(
                        text: saleAmount,
                        textStyle: ThemeTextRegular.lg4,
                      ),
                    ],
                  ),
                ],
              ),
              SizedText(
                text: '$amount ₸ ',
                textStyle: ThemeTextRegular.lg5,
              )
            ]),
      ),
    );
  }

  _hint(AppState state) {
    if (state.reportState.isSales == true) {
      return sales;
    } else if (state.reportState.isSales == false) {
      return refund;
    }
    return sales;
  }
}

_resetDate() {
  appStore.dispatch(
    UpdateReportAction(
        startDate: DateFormat('yyyyMMdd').format(DateTime.now()),
        endDate: DateFormat('yyyyMMdd')
            .format(DateTime.now().subtract(const Duration(days: 1)))),
  );
}

const number = '№';
const report = 'Отчеты';
const byShift = 'По сменам';
const saleStatistics = 'Статистика продаж';
const openCloseShift = 'Откр/ Закр.смены';
const saleTotalSum = 'Сумма';
const saleDropDown = 'Продажи';

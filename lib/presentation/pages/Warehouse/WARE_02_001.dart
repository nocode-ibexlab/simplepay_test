import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class WARE_02_001 extends StatefulWidget {
  const WARE_02_001({Key? key}) : super(key: key);

  @override
  _WARE_02_001State createState() => _WARE_02_001State();
}

class _WARE_02_001State extends State<WARE_02_001> {
  List<Widget> tabPages = [
    WARE_02_001_ACCEPTANCE_COMPLETED(),
    WARE_02_003_ACCEPTANCE_DRAFTED()
  ];

  List<String> menuItemList = ['Проведенные', 'Черновик'];
  int activeIndex = 0;
  Widget currentPage = WARE_02_001_ACCEPTANCE_COMPLETED();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        onInit: (store) async {
          if (store.state.calenderState.startDate !=
              DateFormat('yyyyMMdd').format(DateTime.now())) {
            appStore.dispatch(UpdateCalenderAction(
              startDate: DateFormat('yyyyMMdd').format(DateTime.now()),
              endDate: DateFormat('yyyyMMdd')
                  .format(DateTime.now().subtract(const Duration(days: 1))),
            ));
          }

          await appStore
              .dispatch(GetWarehouseInventoryListAcceptanceItemsCompleteAction);
          await appStore.dispatch(GetWarehouseInventoryListSupplierAction);
        },
        converter: (store) => store.state,
        builder: (context, state) => Flexible(
              child: SingleChildScrollView(
                child: SpacedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalSpace: 29,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 24.h),
                        child: DefaultTabController(
                            length: 2,
                            child: SpacedRow(
                              horizontalSpace: 24,
                              children: [
                                TabsYollet(
                                    onTap: () {
                                      _changeTabPage(0);
                                    },
                                    radius: 24,
                                    isActive: activeIndex == 0,
                                    bgColor: activeIndex == 0
                                        ? ThemeColors.orange500
                                        : null,
                                    text: menuItemList[0]),
                                TabsYollet(
                                    onTap: () {
                                      _changeTabPage(1);
                                    },
                                    radius: 24,
                                    isActive: activeIndex == 1,
                                    bgColor: activeIndex == 1
                                        ? ThemeColors.orange500
                                        : null,
                                    text: menuItemList[1]),
                              ],
                            )),
                      ),
                      currentPage,
                    ]),
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

//Completed acceptance ware 02 001
class WARE_02_001_ACCEPTANCE_COMPLETED extends StatefulWidget {
  WARE_02_001_ACCEPTANCE_COMPLETED({Key? key}) : super(key: key);

  @override
  _WARE_02_001_ACCEPTANCE_COMPLETEDState createState() =>
      _WARE_02_001_ACCEPTANCE_COMPLETEDState();
}

class _WARE_02_001_ACCEPTANCE_COMPLETEDState
    extends State<WARE_02_001_ACCEPTANCE_COMPLETED> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        onWillChange: (store, state) async {
          await appStore
              .dispatch(GetWarehouseInventoryListAcceptanceItemsCompleteAction);
        },
        converter: (store) => store.state,
        builder: (context, state) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CalendarContainer(),
                SizedBox(height: 22.h),
                SpacedColumn(
                  verticalSpace: 16,
                  children: [
                    for (int index = 0;
                        index <
                            state
                                .inventoryState
                                .inventoryListAcceptanceItemsCompleteResList
                                .length;
                        index++)
                      _CheckContainer(
                        index: index,
                        isCompleted: true,
                      ),
                  ],
                ),
              ],
            ));
  }
}

//Drafted acceptance ware 02 003
class WARE_02_003_ACCEPTANCE_DRAFTED extends StatefulWidget {
  WARE_02_003_ACCEPTANCE_DRAFTED({Key? key}) : super(key: key);

  @override
  _WARE_02_003_ACCEPTANCE_DRAFTEDState createState() =>
      _WARE_02_003_ACCEPTANCE_DRAFTEDState();
}

class _WARE_02_003_ACCEPTANCE_DRAFTEDState
    extends State<WARE_02_003_ACCEPTANCE_DRAFTED> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CalendarContainer(),
                SizedBox(height: 22.h),
                SpacedColumn(
                  verticalSpace: 16,
                  children: [
                    for (int index = 0;
                        index <
                            state
                                .inventoryState
                                .inventoryListAcceptanceItemsDraftResList
                                .length;
                        index++)
                      _CheckContainer(index: index, isCompleted: false),
                  ],
                ),
              ],
            ));
  }
}

//common widgets
class _CheckContainer extends StatelessWidget {
  final int index;
  final bool isCompleted;
  const _CheckContainer({
    Key? key,
    required this.index,
    required this.isCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          InventoryAcceptanceListProductItemRes checkInfo = state.inventoryState
              .inventoryListAcceptanceItemsCompleteResList[index];

          return Container(
            color: ThemeColors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: SpacedRow(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpacedColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalSpace: 8,
                  children: [
                    SizedText(
                      text: checkInfo.name,
                      textStyle: ThemeTextSemibold.xl
                          .copyWith(color: ThemeColors.coolgray900),
                    ),
                    SizedText(
                      text: currencyFormatter(checkInfo.price),
                      textStyle: ThemeTextRegular.xl
                          .copyWith(color: ThemeColors.coolgray900),
                    ),
                    SizedText(
                      text: checkInfo.date,
                      textStyle: ThemeTextRegular.xl
                          .copyWith(color: ThemeColors.coolgray600),
                    ),
                  ],
                ),
                if (!isCompleted)
                  SimplePayIcon(PayIcons.pencilAlt,
                      solid: false, size: 46.h, color: ThemeColors.coolgray600)
              ],
            ),
          );
        });
  }
}

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          String endDate = DateFormat.MMMMd("ru")
              .format(DateTime.parse(state.calenderState.endDate));
          String startDate = DateFormat.MMMMd("ru")
              .format(DateTime.parse(state.calenderState.startDate));
          return InkWell(
            onTap: () {
              appStore
                  .dispatch(NavigateToAction(to: AppRoutes.RouteToDATE_00_001));
            },
            child: Container(
              padding: EdgeInsets.only(left: 31.w),
              child: SpacedRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                horizontalSpace: 18,
                children: [
                  SimplePayIcon(
                    PayIcons.calendar,
                    size: 42.w,
                    color: ThemeColors.coolgray600,
                  ),
                  SizedText(
                    text: '$startDate - $endDate',
                    textStyle: ThemeTextRegular.lg4.copyWith(
                      color: ThemeColors.coolgray600,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

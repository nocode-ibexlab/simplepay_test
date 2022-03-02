import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class RETN_00_001 extends StatefulWidget {
  const RETN_00_001({Key? key}) : super(key: key);

  @override
  State<RETN_00_001> createState() => _RETN_00_001State();
}

class _RETN_00_001State extends State<RETN_00_001> {
  List<Widget> tabPages = [RETN_00_001_LEFT_TAB(), RETN_01_001()];
  int activeIndex = 0;
  List<Widget> get tabs => [
        TabsYollet(text: sales, isActive: activeIndex == 0),
        TabsYollet(text: refunds, isActive: activeIndex == 1)
      ];
  Widget currentPage = RETN_00_001_LEFT_TAB();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showActionCalendar: () {},
              showLeadingBack: true,
              paddingTop: 0,
              paddingHorizontal: 0,
              showActionSearch: () {},
              paddingBottom: 0,
              titleText: refund,
              child: SpacedColumn(
                children: [
                  DefaultTabController(
                      length: 2,
                      child: Container(
                        height: 90.h,
                        decoration: BoxDecoration(
                          color: ThemeColors.white,
                          boxShadow: ThemeShadows.shadowSm,
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

class RETN_00_001_LEFT_TAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Flexible(
              child: SingleChildScrollView(
                child: SpacedColumn(children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, bottom: 24.h, top: 24.h),
                    child: SpacedRow(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        horizontalSpace: 23,
                        children: [
                          SimplePayIcon(
                            PayIcons.calendar,
                            size: 46.h,
                            color: ThemeColors.coolgray600,
                          ),
                          const SizedText(
                            text: '14 Октября - 16 ноября',
                            textStyle: ThemeTextRegular.lg5,
                          )
                        ]),
                  ),
                  SpacedColumn(
                    verticalSpace: 16,
                    children: [
                      _buildList('№199', 3000, '16.11.2021 13:56:38'),
                      _buildList('№199', 3000, '16.11.2021 13:56:38'),
                      _buildList('№199', 3000, '16.11.2021 13:56:38'),
                      _buildList('№199', 3000, '16.11.2021 13:56:38'),
                      _buildList('№199', 3000, '16.11.2021 13:56:38'),
                      _buildList('№199', 3000, '16.11.2021 13:56:38'),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                ]),
              ),
            ));
  }

  Widget _buildList(String saleNumber, num amount, String timeDetails) {
    return GestureDetector(
      onTap: () {
        appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToRETN_02_001));
      },
      child: Container(
        height: 176.h,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        color: ThemeColors.white,
        child: SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpacedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedText(
                      text: saleNumber,
                      textStyle: ThemeTextSemibold.xl
                          .copyWith(color: ThemeColors.coolgray900)),
                  SizedText(
                    text: currencyFormatter(amount),
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray900),
                  ),
                  SizedText(
                    text: timeDetails,
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray600),
                  )
                ]),
            SpacedColumn(children: [
              SizedText(
                text: '#200: -600 ₸',
                textStyle:
                    ThemeTextRegular.lg2.copyWith(color: ThemeColors.red300),
              ),
              SizedText(
                text: '#201: -400 ₸',
                textStyle:
                    ThemeTextRegular.lg2.copyWith(color: ThemeColors.red300),
              ),
              SizedText(
                text: '#200: -200...',
                textStyle:
                    ThemeTextRegular.lg2.copyWith(color: ThemeColors.red300),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class RETN_01_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: SpacedColumn(children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 24.h, top: 24.h),
            child: SpacedRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                horizontalSpace: 23,
                children: [
                  SimplePayIcon(
                    PayIcons.calendar,
                    size: 46.h,
                    color: ThemeColors.coolgray600,
                  ),
                  const SizedText(
                    text: '16 Октября - 20 ноября',
                    textStyle: ThemeTextRegular.lg5,
                  )
                ]),
          ),
          SpacedColumn(
            verticalSpace: 16,
            children: [
              _buildList('№200', -3000, '16.11.2021 13:56:38'),
              _buildList('№201', -3000, '16.11.2021 13:56:38'),
              _buildList('№202', -3000, '16.11.2021 13:56:38'),
              _buildList('№203', -3000, '16.11.2021 13:56:38'),
              _buildList('№204', -3000, '16.11.2021 13:56:38'),
              _buildList('№206', -3000, '16.11.2021 13:56:38'),
              SizedBox(height: 20.h)
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildList(String saleNumber, num amount, String timeDetails) {
    return GestureDetector(
      onTap: () {
        appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToRETN_02_001));
      },
      child: Container(
        height: 176.h,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        color: ThemeColors.white,
        child: SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpacedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedText(
                      text: saleNumber,
                      textStyle: ThemeTextSemibold.xl
                          .copyWith(color: ThemeColors.coolgray900)),
                  SizedText(
                    text: currencyFormatter(amount),
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray900),
                  ),
                  SizedText(
                    text: timeDetails,
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray600),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}

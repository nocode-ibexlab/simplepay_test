import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class REVN_00_001 extends StatefulWidget {
  const REVN_00_001({Key? key}) : super(key: key);

  @override
  State<REVN_00_001> createState() => _REVN_00_001State();
}

class _REVN_00_001State extends State<REVN_00_001> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            showActionCalendar: () {},
            showActionSearch: () {},
            showLeadingBack: true,
            paddingTop: 0,
            paddingHorizontal: 0,
            showActionFAB: () {},
            paddingBottom: 0,
            titleText: revision,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 24.h, horizontal: 31.w),
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
                            text: '14 Октября - 16 ноября',
                            textStyle: ThemeTextRegular.lg5
                                .copyWith(color: ThemeColors.coolgray600),
                          )
                        ]),
                  ),
                  SpacedColumn(verticalSpace: 16, children: [
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    _buildList('№199', 3000, '16.11.2021 13:56:38'),
                    SizedBox(
                      height: 20.h,
                    )
                  ]),
                ],
              ),
            )));
  }

  Widget _buildList(String saleNumber, num amount, String timeDetails) {
    return GestureDetector(
      onTap: () {
        appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToREVN_03_001));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        color: ThemeColors.white,
        child: SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpacedColumn(
                verticalSpace: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
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

const revision = 'Ревизия';

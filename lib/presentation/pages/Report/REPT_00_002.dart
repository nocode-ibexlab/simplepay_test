import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class REPT_00_002 extends StatelessWidget {
  const REPT_00_002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            paddingTop: 0,
            paddingHorizontal: 0,
            paddingBottom: 0,
            titleText: 'Смена №1',
            child: SingleChildScrollView(child: _buildListOfContainers())));
  }

  Widget _buildListOfContainers() {
    List<Widget> widgets = [];
    for (int i = 0; i < 10; i++) {
      widgets.add(
        _checkContainer(itemNo: i + 1),
      );
    }
    return SingleChildScrollView(
      child: SpacedColumn(verticalSpace: 8, children: widgets),
    );
  }

  Widget _checkContainer({required num itemNo}) {
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
                text: '№$itemNo',
                textStyle: ThemeTextRegular.xl
                    .copyWith(color: ThemeColors.coolgray900),
              ),
              SizedText(
                text: currencyFormatter(1000),
                textStyle: ThemeTextSemibold.xl
                    .copyWith(color: ThemeColors.coolgray900),
              ),
              SizedText(
                text: '16.11.2021,   13:56:38',
                textStyle: ThemeTextRegular.xl
                    .copyWith(color: ThemeColors.coolgray600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

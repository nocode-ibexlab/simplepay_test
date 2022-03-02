import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class REPT_01_002 extends StatefulWidget {
  REPT_01_002({Key? key}) : super(key: key);

  @override
  State<REPT_01_002> createState() => _REPT_01_002State();
}

class _REPT_01_002State extends State<REPT_01_002> {
  List<String> menuItemList = [
    'Пшеничное',
    'Ржаное',
    'Пшенично-ржаное ',
    'Пшенично-ржаное ',
    'Пшенично-ржаное ',
    'Пшенично-ржаное ',
  ];

  int selectedMenuItem = 0;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onInit: (_) {
          appStore.dispatch(GetSummarizeByItemsAction);
        },
        builder: (context, state) => DefaultBody(
            titleText: breads,
            showLeadingBack: true,
            paddingTop: 0,
            paddingHorizontal: 0,
            child: Container(
              color: ThemeColors.white,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHorizontalMenu(),
                    _buildTopSection(),
                    SizedBox(height: 44.h),
                    SpacedColumn(
                      children: _buildList(state
                          .reportState.simpleReportSummarizeByItemsResList),
                    )
                  ],
                ),
              ),
            )));
  }

  Widget _buildHorizontalMenu() {
    List<Widget> widgets = [];
    for (int i = 0; i < menuItemList.length; i++) {
      widgets.add(
        TabsYollet(
            onTap: () {
              setState(() {
                selectedMenuItem = i;
              });
            },
            isActive: selectedMenuItem == i,
            bgColor: selectedMenuItem == i ? ThemeColors.orange400 : null,
            text: menuItemList[i]),
      );
    }
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: widgets),
      ),
    );
  }

  Widget _buildTopSection() {
    return SpacedRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedText(
              text: '72 % , 20 продаж',
              textStyle: ThemeTextRegular.xl2
                  .copyWith(color: ThemeColors.coolgray600)),
          SizedText(
            text: '5000 ₸ ',
            textStyle:
                ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
          )
        ]);
  }

//need to fix-2

  _buildList(List<SimpleReportSummarizeByItemsRes> productList) {
    List<Widget> widgets = productList
        .map<Widget>((e) => _buildProduct(
            productName: e.name,
            productPrice: e.price,
            productQty: e.qty,
            productAmount: e.amount,
            imageUri: e.imageUri!,
            barcode: e.barcode!))
        .toList();
    return widgets;
  }

  Widget _buildProduct({
    required String barcode,
    required String imageUri,
    required String productName,
    required double productPrice,
    required double productQty,
    required double productAmount,
  }) {
    return SizedBox(
      height: 116.h,
      width: 670.w,
      child: SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpacedRow(
              mainAxisAlignment: MainAxisAlignment.center,
              horizontalSpace: 24,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24.r),
                  child: Image.asset(
                    imageUri,
                    height: 116.h,
                    // width: 144.w,
                  ),
                ),
                SpacedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalSpace: 16,
                    children: [
                      SizedText(
                        text: productName,
                        textStyle: ThemeTextRegular.xl
                            .copyWith(color: ThemeColors.coolgray900),
                      ),
                      SizedText(
                        text: '$productAmount %, $productQty sales',
                        textStyle: ThemeTextRegular.lg5
                            .copyWith(color: ThemeColors.coolgray500),
                      )
                    ]),
              ],
            ),
            SizedText(
              text: '$productPrice',
              textStyle:
                  ThemeTextRegular.xl2.copyWith(color: ThemeColors.coolgray900),
            )
          ]),
    );
  }
}

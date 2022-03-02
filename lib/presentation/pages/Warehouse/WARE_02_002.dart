import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

// ? ///////////////////////////////////
// ? it is the RIGHT TAB of WARE_00_001
// ? ///////////////////////////////////

class WARE_02_002 extends StatefulWidget {
  const WARE_02_002({Key? key}) : super(key: key);

  @override
  State<WARE_02_002> createState() => _WARE_02_002State();
}

class _WARE_02_002State extends State<WARE_02_002> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showActionQr: () {},
              showActionSearch: () {},
              showActionAdd: () {},
              paddingBottom: 0,
              paddingHorizontal: 0,
              showLeadingBack: true,
              titleText: reception12,
              paddingTop: 24,
              footerHeight: 170,
              footer: _footer(),
              child: _getChild(),
            ));
  }

  Widget _getChild() => SpacedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalSpace: 24,
        children: [
          _topSection(), //do not know how to name it yet
          _dataTable(),
        ],
      );

  Widget _topSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SpacedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalSpace: 19,
        children: [
          SpacedRow(
            children: [
              SpacedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalSpace: 30,
                children: [
                  SizedText(
                      text: data,
                      textStyle: ThemeTextRegular.xl.copyWith(
                        color: ThemeColors.coolgray900,
                      )),
                  SizedText(
                      text: supplier,
                      textStyle: ThemeTextRegular.xl.copyWith(
                        color: ThemeColors.coolgray900,
                      )),
                ],
              ),
              Expanded(child: Container()),
              SpacedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalSpace: 30,
                children: [
                  SizedText(
                      text: '30.11.2021, 10:15',
                      textStyle: ThemeTextRegular.xl.copyWith(
                        color: ThemeColors.coolgray900,
                      )),
                  InputFieldYolletappDropdown3(
                    dropdownSize: DropdownSize.SIZE3,
                    hint: selectedValue != null
                        ? selectedValue as String
                        : 'FoodMaster',
                    listValues: items,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  )
                ],
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedText(
            text: reception12,
            textStyle:
                ThemeTextRegular.xl.copyWith(color: ThemeColors.coolgray400),
          )
        ],
      ),
    );
  }

  Widget _dataTable() {
    return Table(
      children: [
        _tableHeaderRow(),
        _tableDataRow('Казахстан', '48200...00016', '275', '20'),
        _tableSizedBox(8),
        _tableDataRow('Казахстан', '48200...00016', '275', '20'),
      ],
    );
  }

  TableRow _tableSizedBox(double heigth) {
    return TableRow(children: [
      SizedBox(
        height: heigth.h,
      )
    ]);
  }

  TableRow _tableDataRow(
      String title, String barcodeNo, String pricing, String remaining) {
    return TableRow(
      children: [
        RectangleFrame15(
            child: SpacedRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedText(
              text: title,
              textStyle:
                  ThemeTextRegular.lg5.copyWith(color: ThemeColors.coolgray900),
            ),
            SizedBox(width: 61.w),
            SizedText(
              text: barcodeNo,
              textStyle:
                  ThemeTextRegular.lg5.copyWith(color: ThemeColors.coolgray900),
            ),
            SizedBox(width: 21.w),
            SizedText(
              text: '$pricing  ₸',
              textStyle:
                  ThemeTextRegular.lg5.copyWith(color: ThemeColors.coolgray900),
            ),
            SizedBox(width: 100.w),
            SizedText(
              text: remaining,
              textStyle:
                  ThemeTextRegular.lg5.copyWith(color: ThemeColors.coolgray900),
            ),
          ],
        )),
      ],
    );
  }

  TableRow _tableHeaderRow() {
    return TableRow(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 24.h, bottom: 16.h, left: 24.w, right: 24.w),
          child: SpacedRow(
            horizontalSpace: 76,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedText(
                text: name,
                textStyle: ThemeTextRegular.lg4
                    .copyWith(color: ThemeColors.coolgray400),
              ),
              SizedText(
                text: barcode,
                textStyle: ThemeTextRegular.lg4
                    .copyWith(color: ThemeColors.coolgray400),
              ),
              SizedText(
                text: price,
                textStyle: ThemeTextRegular.lg4
                    .copyWith(color: ThemeColors.coolgray400),
              ),
              SizedText(
                text: remain,
                textStyle: ThemeTextRegular.lg4
                    .copyWith(color: ThemeColors.coolgray400),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _footer() {
    return SpacedColumn(
      verticalSpace: 24,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedText(
              text: '$total:',
              textStyle: ThemeTextSemibold.xl2
                  .copyWith(color: ThemeColors.coolgray900),
            ),
            SizedText(
              text: currencyFormatter(1300),
              textStyle: ThemeTextSemibold.xl3
                  .copyWith(color: ThemeColors.coolgray900),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedText(
              text: '$totalNumber:',
              textStyle:
                  ThemeTextRegular.xl.copyWith(color: ThemeColors.coolgray900),
            ),
            SizedText(
              text: '90',
              textStyle:
                  ThemeTextRegular.xl3.copyWith(color: ThemeColors.coolgray900),
            ),
          ],
        )
      ],
    );
  }
}

const reception12 = 'Приемка #12';
const totalNumber = 'Общее количество';

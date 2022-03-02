import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class REVN_03_004 extends StatelessWidget {
  // List<DataColumn> get _getTableCols => [
  //       _customDataColumn(name),
  //       _customDataColumn(barcode),
  //       _customDataColumn(price),
  //       _customDataColumn(remain),
  //     ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showActionSearch: () {},
              showActionQr: () {},
              paddingTop: 0,
              paddingHorizontal: 0,
              showLeadingBack: true,
              titleText: createRevision,
              child: _dataTableV2(),
              footerHeight: 268,
              footer: _buildFooter(),
            ));
  }
  //
  // Widget _dataTable() {
  //   return SingleChildScrollView(
  //     child: DataTable(
  //         dividerThickness: 0,
  //         horizontalMargin: 24.w,
  //         columnSpacing: 52.w,
  //         headingRowHeight: 79.h,
  //         dataRowHeight: 132.h,
  //         headingTextStyle:
  //             ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray400),
  //         dataTextStyle:
  //             ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray900),
  //         dataRowColor: MaterialStateProperty.all(ThemeColors.white),
  //         columns: _getTableCols,
  //         rows: [
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '4820000016', 1232, 20),
  //           _customDataRow('Казахстан', '4820000016', 275, 20),
  //           _customDataRow('Казахстан', '48200...00016', 275, 20),
  //         ]),
  //   );
  // }
  //
  // DataColumn _customDataColumn(String text) {
  //   return DataColumn(
  //     label: Expanded(
  //       child: SizedText(
  //         text: text,
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   );
  // }
  //
  // DataRow _customDataRow(
  //     String title, String barcodeNo, num price, num remaining) {
  //   return DataRow(cells: [
  //     DataCell(
  //       SizedText(
  //         width: double.infinity,
  //         textAlign: TextAlign.center,
  //         text: title,
  //         overflow: TextOverflow.ellipsis,
  //       ),
  //     ),
  //     DataCell(
  //       SizedText(
  //         width: double.infinity,
  //         textAlign: TextAlign.center,
  //         overflow: TextOverflow.ellipsis,
  //         text: barcodeNo,
  //       ),
  //     ),
  //     DataCell(
  //       SizedText(
  //         width: double.infinity,
  //         textAlign: TextAlign.center,
  //         text: currencyFormatter(price),
  //       ),
  //     ),
  //     DataCell(
  //       SizedText(
  //         width: double.infinity,
  //         textAlign: TextAlign.center,
  //         text: remaining.toString(),
  //       ),
  //     ),
  //   ]);
  // }

  Widget _dataTableV2() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: DefaultDatatable(
        bodyWidths: [200, 230, 140, 70],
        headNames: const [name, barcode, price, remain],
        bodyNames: const [
          ["Казахстан", '48200...0016', "2757 ₸", '20'],
          ["Казахстан", '48200...0016', "275 ₸", '20'],
          ["Казахстан", '48200...0016', "275 ₸", '20'],
          ["Казахстан", '48200...0016', "275 ₸", '20']
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return SpacedColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryButton(
          onPressed: () {},
          buttonText: carryOut,
        ),
        PrimaryButton(
          buttonType: ButtonType.Ghost,
          onPressed: () {},
          buttonText: cancel,
        )
      ],
    );
  }
}

const name = 'Название';
const barcode = 'Штрих код';
const price = 'Цена';
const remain = 'Остаток';
const carryOut = 'Провести';
const cancel = 'Отмена';

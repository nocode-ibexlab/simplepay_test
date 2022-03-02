import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class CHCK_00_001 extends StatelessWidget {
  const CHCK_00_001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              paddingTop: 0,
              paddingHorizontal: 32,
              showActionSend: () {},
              showLeadingBack: true,
              titleText: 'Чек №1',
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    const SizedText(
                      text: 'Детали чека',
                      textStyle: ThemeTextSemibold.xl2,
                    ),
                    SizedBox(height: 32.h),
                    SpacedColumn(
                      verticalSpace: 16,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildCheckDetailRow(
                          leftTitle: 'Предприятие',
                          leftBody: 'Ibexlab Ltd',
                          rightTitle: 'ЗНМ',
                          rightBody: '1234567891',
                        ),
                        _buildCheckDetailRow(
                          leftTitle: 'ИИН',
                          leftBody: '123456789101',
                          rightTitle: 'РНМ',
                          rightBody: '123456789101',
                        ),
                        _receiptDetailsColumn(
                            name: 'Адрес ',
                            value: 'г. Алматы, ул. Амангельды, 59а'),
                        _buildCheckDetailRow(
                          leftTitle: 'Способ оплаты',
                          leftBody: 'Наличные',
                          rightTitle: 'Дата',
                          rightBody: '24/11/2021, 19:25',
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    const SizedText(
                        text: 'Товары', textStyle: ThemeTextSemibold.xl2),
                    SizedBox(height: 32.h),
                    _productContainer(),

                    // //for the DATATABLE FUNC

                    // Container(
                    //   child: _dataTable(),
                    // )
                  ],
                ),
              ),
              footer: _buildFooter(),
              footerHeight: 168,
            ));
  }

  Widget _buildCheckDetailRow({
    required String leftTitle,
    required String leftBody,
    required String rightTitle,
    required String rightBody,
  }) {
    return SpacedRow(children: [
      Expanded(child: _receiptDetailsColumn(name: leftTitle, value: leftBody)),
      SizedBox(width: 161.w),
      Expanded(
          child: _receiptDetailsColumn(name: rightTitle, value: rightBody)),
    ]);
  }

  Widget _productContainer() {
    return SpacedColumn(
      verticalSpace: 56,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _productRowList(),
    );
  }

  List<SpacedRow> _productRowList() {
    List<SpacedRow> list = [];
    for (int i = 1; i <= 20; ++i) {
      String productName = 'Кефир 2,5%, 200 гр';
      int qty = 1;
      String price = currencyFormatter(350);
      list.add(
        SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 3,
                child: SizedText(
                    text: '$i.\t$productName',
                    textStyle: ThemeTextRegular.xl2)),
            Expanded(
                flex: 1,
                child: SizedText(
                    text: '$qty',
                    textAlign: TextAlign.center,
                    textStyle: ThemeTextRegular.xl2)),
            Expanded(
                flex: 1,
                child: SizedText(
                    text: price,
                    textAlign: TextAlign.right,
                    textStyle: ThemeTextRegular.xl2)),
          ],
        ),
      );
    }
    return list;
  }

  // Widget _dataTable() {
  //   return SizedBox(
  //     width: 700,
  //     child: DefaultDatatable(
  //       headNamesHeight: 0,
  //       bodyBgColor: ThemeColors.transparent,
  //       headNames: ['', '', ''],
  //       bodyTextMaxlines: [1],
  //       bodyNames: [
  //         ['1. Кефир 2,5%, 200 гр', '1', '350 T'],
  //         ['2. Кефир 2,5%, 200 гр', '1', '350 T'],
  //         ['3. Кефир 2,5%, 200 гр', '1', '350 T'],
  //       ],
  //     ),
  //   );
  // }

  Widget _receiptDetailsColumn({required String name, required String value}) {
    return SpacedColumn(
      verticalSpace: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedText(
          text: name,
          textStyle: ThemeTextRegular.xl.apply(color: ThemeColors.gray400),
        ),
        SizedText(
          text: value,
          textStyle: ThemeTextRegular.xl,
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return SpacedColumn(
      verticalSpace: 35,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedText(
              text: total,
              textStyle: ThemeTextSemibold.xl3,
            ),
            SizedText(
              text: currencyFormatter(400),
              textStyle: ThemeTextSemibold.xl3,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedText(
              text: 'Сумма с НДС 0%',
              textStyle:
                  ThemeTextRegular.xl.apply(color: ThemeColors.coolgray400),
            ),
            SizedText(
              text: currencyFormatter(730),
              textStyle:
                  ThemeTextRegular.xl.apply(color: ThemeColors.coolgray400),
            ),
          ],
        ),
      ],
    );
  }
}

const simplePayment = 'Простая оплата';
const commonGoods = 'Частые товары';
const queueSales = 'Продажи в очереди';
const sale = 'Продажа';
const sales = 'Продажи';
const clear = 'Очистить';
const total = 'ИТОГО';
const pay = 'ОПЛАТИТЬ';

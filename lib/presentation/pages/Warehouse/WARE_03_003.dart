import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class WARE_03_003 extends StatefulWidget {
  WARE_03_003({Key? key}) : super(key: key);

  @override
  State<WARE_03_003> createState() => _WARE_03_003State();
}

class _WARE_03_003State extends State<WARE_03_003> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8'
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
              showLeadingX: _onXPress,
              paddingBottom: 0,
              paddingHorizontal: 0,
              titleText: reception,
              paddingTop: 24,
              footerHeight: 268,
              footer: _footer(),
              child: _getChild(),
            ));
  }

  Widget _getChild() => SpacedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalSpace: 32,
        children: [
          _topSection(), //do not know how to name it yet
          _dataTable(),
        ],
      );

  Widget _topSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SpacedRow(
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
              ),
            ],
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _footer() {
    return SpacedColumn(
      verticalSpace: 24,
      children: [
        PrimaryButton(
          buttonText: 'Провести',
          onPressed: () {},
        ),
        PrimaryButton(
          buttonText: 'В черновик',
          onPressed: () {},
          buttonType: ButtonType.Secondary,
        ),
      ],
    );
  }

  Widget _dataTable() {
    return Flexible(
      child: DefaultDatatable(
        bodyWidths: const [198, 260, 240, 200],
        freezedColNumber: 1,
        isNumericCols: [false, false, false, true],
        headNames: const [name, barcode, price, quantity],
        bodyNames: const [
          ['Казахстан', '324324324324', '243324324 T', '1000000'],
          ['Казахстан', '324324324324', '243324324 T', '1000000'],
        ],
      ),
    );
  }

  _onXPress() {
    appStore.dispatch(NavigateToAction(to: 'up'));
  }
}

const reception = 'Приемка';
const data = 'Дата';
const supplier = 'Поставщик';

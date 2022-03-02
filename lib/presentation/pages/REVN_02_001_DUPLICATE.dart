import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class REVN_02_001 extends StatefulWidget {
  REVN_02_001({Key? key}) : super(key: key);

  @override
  _REVN_02_001State createState() => _REVN_02_001State();
}

class _REVN_02_001State extends State<REVN_02_001> {
  List<String> menuItemList = [
    'Хлебо-булочные',
    'Конфеты',
    'Напитки',
    'Конфеты',
    'Хлебо-булочные',
    'Напитки',
  ];

  int selectedMenuItem = 0;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              showActionQr: () {},
              showLeadingBack: true,
              paddingTop: 0,
              paddingHorizontal: 0,
              titleText: warehouse,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _horizontalMenu(),
                    _buildProducts(),
                  ],
                ),
              ),
            ));
  }

  Widget _horizontalMenu() {
    List<Widget> widgets = [];
    widgets.add(SizedBox(width: 16.w));
    for (int i = 0; i < menuItemList.length; i++) {
      widgets.add(
        TabsYollet(
            onTap: () {
              setState(() {
                selectedMenuItem = i;
              });
            },
            radius: 24,
            isActive: selectedMenuItem == i,
            bgColor: selectedMenuItem == i ? ThemeColors.orange500 : null,
            text: menuItemList[i]),
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 26.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: widgets),
      ),
    );
  }

  Widget _buildProducts() {
    return SpacedColumn(
      verticalSpace: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemDetailsCard(
            productIndex: 1,
            productImg: 'assets/icons/png/kazakhstan_chocolate_bar.png',
            productMarking: true,
            productBarCode: '1234134234',
            productQty: 10,
            productSellingPrice: 200,
            productDetails:
                'Шоколад Казахстан, черный, большой, синяя упаковка, фабрика Рахат',
            productPurchasePrice: 400),
        ItemDetailsCard(
            productIndex: 2,
            productImg: 'assets/icons/png/kitkat_icon.png',
            productMarking: false,
            productBarCode: '1234134234',
            productQty: 10,
            productSellingPrice: 200,
            productDetails:
                'Шоколад Казахстан, черный, большой, синяя упаковка, фабрика Рахат',
            productPurchasePrice: 400),
        ItemDetailsCard(
            productIndex: 3,
            productImg: 'assets/icons/png/kazakhstan_chocolate_bar.png',
            productMarking: true,
            productBarCode: '1234134234',
            productQty: 10,
            productSellingPrice: 200,
            productDetails:
                'Шоколад Казахстан, черный, большой, синяя упаковка, фабрика Рахат',
            productPurchasePrice: 400),
        ItemDetailsCard(
            productIndex: 4,
            productImg: 'assets/icons/png/kazakhstan_chocolate_bar.png',
            productMarking: false,
            productBarCode: '1234134234',
            productQty: 10,
            productSellingPrice: 200,
            productDetails:
                'Шоколад Казахстан, черный, большой, синяя упаковка, фабрика Рахат',
            productPurchasePrice: 400),
      ],
    );
  }
}

const photo = 'Фото';
const productName = 'Наименование';
const purchasePrice = 'Закупочная цена';
const sellingPrice = 'Продажная цена';
const quantity = 'Количество';

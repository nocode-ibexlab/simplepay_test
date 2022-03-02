import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/models/model_exporter.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

import '../../../mgr/models/inventory/inventory_balance_product_item_res.dart';

// ? ///////////////////////////////////
// ? it is the Left TAB of WARE_00_001
// ? ///////////////////////////////////

class WARE_00_001 extends StatefulWidget {
  const WARE_00_001({Key? key}) : super(key: key);

  @override
  _WARE_00_001State createState() => _WARE_00_001State();
}

class _WARE_00_001State extends State<WARE_00_001> {
  int activeIndex = 0;
  Widget currentPage = const WARE_00_001_LEFT_TAB();

  List<Widget> tabPages = const [WARE_00_001_LEFT_TAB(), WARE_02_001()];
  List<Widget> get tabs => [
        TabsYollet(text: remains, isActive: activeIndex == 0),
        TabsYollet(text: reception, isActive: activeIndex == 1)
      ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      onInit: (store) async {
        await appStore.dispatch(GetItemSearchListGroupsAction);
        await appStore.dispatch(GetWarehouseInventoryBalanceItemsAction);
      },
      onInitialBuild: (state) {},
      converter: (store) => store.state,
      builder: (context, state) => DefaultBody(
        showActionFAB: () {
          if (currentPage != tabPages[0]) {
            appStore
                .dispatch(NavigateToAction(to: AppRoutes.RouteToWARE_03_001));
          } else {
            appStore
                .dispatch(NavigateToAction(to: AppRoutes.RouteToWARE_04_001));
          }
        },
        showActionQr: () {},
        showActionAdd: () async {
          await showSimpleDialog(
              alignment: Alignment.topRight,
              borderRadius: 24,
              body: const CreateDialogContainer());
        },
        showActionSearch: () {},
        showLeadingBack: true,
        paddingTop: 0,
        paddingHorizontal: 0,
        titleText: warehouse,
        child: SpacedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  tabs: tabs,
                ),
              ),
            ),
            currentPage,
          ],
        ),
      ),
    );
  }

  _changeTabPage(int index) {
    setState(() {
      activeIndex = index;
      currentPage = tabPages[index];
    });
  }
}

class WARE_00_001_LEFT_TAB extends StatefulWidget {
  const WARE_00_001_LEFT_TAB({Key? key}) : super(key: key);

  @override
  State<WARE_00_001_LEFT_TAB> createState() => _WARE_00_001_LEFT_TABState();
}

class _WARE_00_001_LEFT_TABState extends State<WARE_00_001_LEFT_TAB> {
  int maxItemsCountInOneTime = 20;

  int maxLength = 0;

  int currentItemsLength = 0;

  int selectedMenuItem = 0;

  List<InventoryBalanceProductItemRes> inventoryBalanceItemsResList = [];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          inventoryBalanceItemsResList =
              state.inventoryState.inventoryBalanceItemsResList;
          maxLength = state.inventoryState.inventoryBalanceItemsResList.length;
          if (maxLength == 0) {
            if (maxLength > 20) {
              currentItemsLength = 20;
            } else {
              currentItemsLength = maxLength;
            }
          }

          return Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HorizontalMenu(),
                  Row(
                    children: [
                      SizedBox(width: 20.w),
                      SizedText(
                        text: maxLength != 0
                            ? "Показано $currentItemsLength $from $maxLength"
                            : "Нету товаров",
                        textStyle: ThemeTextRegular.lg5,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  _buildProducts(),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildProducts() {
    return SpacedColumn(
      verticalSpace: 16,
      children: [
        for (int i = 0; i < currentItemsLength; i++)
          ItemDetailsCard(
            productIndex: i,
            productImg: inventoryBalanceItemsResList[i].imageUrl,
            productMarking: inventoryBalanceItemsResList[i].isMarking,
            productBarCode: inventoryBalanceItemsResList[i].barcode,
            productQty: inventoryBalanceItemsResList[i].qty,
            productSellingPrice: inventoryBalanceItemsResList[i].salePrice,
            productDetails: inventoryBalanceItemsResList[i].name,
            productPurchasePrice: inventoryBalanceItemsResList[i].purchasePrice,
          ),
        if (maxLength > currentItemsLength)
          Column(
            children: [
              SizedBox(height: 20.h),
              PrimaryButton(
                buttonText: loadMore,
                buttonType: ButtonType.Link,
                buttonSize: ButtonSize.XS,
                linkTypeBtnColor: ThemeColors.blue500,
                onPressed: _onPressed,
              ),
              SizedBox(height: 15.h),
            ],
          ),
      ],
    );
  }

  _onPressed() {
    if (currentItemsLength == 20) {
      if (maxLength - currentItemsLength > 20) {
        currentItemsLength = currentItemsLength + 20;
      } else {}
    }
    setState(() {});
  }
}

class _HorizontalMenu extends StatelessWidget {
  _HorizontalMenu({Key? key}) : super(key: key);

  int selectedMenuItem = 0;

  List<Widget> widgets = [];
  List<ItemListGroupsRes> itemGroupList = [];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          selectedMenuItem = state.inventoryState.selectedItemGroupId;
          itemGroupList = state.itemState.listGroups;

          widgets.add(SizedBox(width: 16.w));
          if (itemGroupList.isNotEmpty) {
            for (int i = 0; i < itemGroupList.length; i++) {
              widgets.add(
                TabsYollet(
                  onTap: () async {
                    if (selectedMenuItem != i) {
                      appStore.dispatch(
                          UpdateInventoryAction(selectedItemGroupId: i));
                      await appStore
                          .dispatch(GetWarehouseInventoryBalanceItemsAction);
                    }
                  },
                  radius: 24,
                  isActive: selectedMenuItem == i,
                  bgColor: selectedMenuItem == i ? ThemeColors.orange500 : null,
                  text: itemGroupList[i].name,
                ),
              );
              widgets.add(SizedBox(width: 24.w));
            }
          } else {
            widgets.add(const SizedText(
              text: "Нету групп",
              textStyle: ThemeTextRegular.lg5,
            ));
          }

          return Container(
            height: 103.h,
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: widgets),
            ),
          );
        });
  }
}

class CreateDialogContainer extends StatelessWidget {
  const CreateDialogContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            appStore
                .dispatch(NavigateToAction(to: AppRoutes.RouteToWARE_03_001));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 38.h, horizontal: 32.w),
            child: SizedText(
              text: 'Создать приемку',
              textStyle: ThemeTextRegular.xl2.copyWith(
                color: ThemeColors.coolgray900,
              ),
            ),
          ),
        ),
        const Divider(
          color: ThemeColors.coolgray300,
        ),
        InkWell(
          onTap: () {
            appStore
                .dispatch(NavigateToAction(to: AppRoutes.RouteToWARE_04_001));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 38.h, horizontal: 32.w),
            child: SizedText(
              text: 'Создать товар',
              textStyle: ThemeTextRegular.xl2.copyWith(
                color: ThemeColors.coolgray900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

const remains = 'Остатки';
const labelling = 'Маркировка';
const from = 'из';
const loadMore = 'Загрузить еще';

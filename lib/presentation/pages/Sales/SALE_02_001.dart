import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/models/item/list_groups_res.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class SALE_02_001 extends StatelessWidget {
  const SALE_02_001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onInit: (store) async {
          if (store.state.itemState.listGroups.isEmpty) {
            await appStore.dispatch(GetItemBestSellingListGroupsAction);
          }
        },
        onInitialBuild: (state) {},
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            showActionSearch: () {},
            showActionQr: () {},
            showActionAdd: () {},
            titleText: commonGoods,
            child: const _SALE02BodyWidget()));
  }
}

class _SALE02BodyWidget extends StatelessWidget {
  const _SALE02BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          if (state.itemState.listGroups.isEmpty) {
            return const Center(
                child: SizedText(
                    text: 'Empty group list', textStyle: ThemeTextRegular.xl));
          }
          return SingleChildScrollView(
            child: SpacedColumn(
                verticalSpace: 24,
                children: state.itemState.listGroups
                    .map<Widget>((e) => //TODO: CHANGE ID => imageUri
                        _categoryButton(e))
                    .toList()),
          );
        });
  }

  Widget _categoryButton(ItemListGroupsRes element) {
    return SizedBox(
      height: 124.h,
      child: InkWell(
        borderRadius: BorderRadius.circular(99),
        radius: 99,
        onTap: () async {
          appStore.dispatch(UpdateItemAction(currentCategory: element));
          appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToSALE_03_001));
          await appStore.dispatch(GetItemSearchListItemsAction);
        },
        child: SpacedRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            horizontalSpace: 32,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: SimpleImage()),
              SizedText(
                text: element.name,
                textStyle: ThemeTextSemibold.lg5,
              )
            ]),
      ),
    );
  }
}

const breads = 'Хлебо-булочные';
const sweets = 'Кондитерские изделия';
const drinks = 'Напитки';
const householdItems = 'Хозяйственные средства';

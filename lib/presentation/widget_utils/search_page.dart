import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:simple_pay_flutter/mgr/fsm/search_fsm.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

import '../../mgr/models/model_exporter.dart';

typedef SearchFilter<T> = List<String?> Function(T t);
typedef ResultBuilder<T> = Widget Function(T t);

/// This class helps to implement a search view, using [SearchDelegate].
/// It can show suggestion & unsuccessful-search widgets.
class SearchPage<T> extends SearchDelegate<T?> {
  /// Set this to true to display the complete list instead of the [suggestion].
  /// This is useful to give your users the chance to explore all the items in the
  /// list without knowing what so search for.
  bool showItemsOnEmpty;

  /// Widget that is built when current query is empty.
  /// Suggests the user what's possible to do.
  Widget suggestion;

  /// Widget built when there's no item in [items] that
  /// matches current query.
  Widget failure;

  /// Method that builds a widget for each item that matches
  /// the current query parameter entered by the user.
  ///
  /// If no builder is provided by the user, the package will try
  /// to display a [ListTile] for each child, with a string
  /// representation of itself as the title.
  //  ResultBuilder<T> builder;

  /// Method that returns the specific parameters intrinsic
  /// to a [T] instance.
  ///
  /// For example, filter a person by its name & age parameters:
  /// filter: (person) => [
  ///   person.name,
  ///   person.age.toString(),
  /// ]
  ///
  /// Al parameters to filter through must be [String] instances.

  /// This text will be shown in the [AppBar] when
  /// current query is empty.
  // String? searchLabel;

  /// List of items where the search is going to take place on.
  /// They have [T] on run time.

  /// Theme that would be used in the [AppBar] widget, inside
  /// the search view.
  ThemeData? barTheme;

  /// Provided queries only matches with the begining of each
  /// string item's representation.
  bool itemStartsWith;

  /// Provided queries only matches with the end of each
  /// string item's representation.
  bool itemEndsWith;

  /// Functions that gets called when the screen performs a search operation.
  get onQueryUpdate => (val) async {
        if (val.isNotEmpty) {
          appStore.dispatch(GetSearchingAction(val));
        } else {
          appStore.dispatch(GetInitSearchAction());
        }
      };

  /// The style of the [searchFieldLabel] text widget.
  TextStyle? searchStyle;

  SearchPage({
    this.suggestion = const Center(
      child: Text('Filter'),
    ),
    this.failure = const Center(
      child: Text('Empty List :('),
    ),
    this.showItemsOnEmpty = false,
    this.itemStartsWith = false,
    this.itemEndsWith = false,
    this.searchStyle,
  }) : super(
            searchFieldLabel: GETSTATE.searchState.searchLabel,
            searchFieldStyle: searchStyle);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return barTheme ??
        Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.copyWith(
                headline6: ThemeTextRegular.lg4
                    .copyWith(color: ThemeColors.coolgray900),
              ),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            filled: true,
            fillColor: ThemeColors.white,
            hintStyle:
                ThemeTextRegular.lg4.copyWith(color: ThemeColors.coolgray400),
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.r),
              borderSide:
                  BorderSide(color: ThemeColors.coolgray100, width: 1.w),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24.r)),
                borderSide:
                    BorderSide(color: ThemeColors.coolgray100, width: 1.w)),
            border: InputBorder.none,
          ),
        );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (GETSTATE.searchState.searchType != SearchType.RETN_SEARCH)
        IconButton(
          icon: SimplePayIcon(PayIcons.scanSp, size: 44.h),
          onPressed: () {
            //TODO: ACT ON QR
          },
        )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Creates a default back button as the leading widget.
    // It's aware of targeted platform.
    // Used to close the view.
    switch (GETSTATE.searchState.searchType) {
      case SearchType.SALE_SEARCH:
        return IconButton(
          icon: SimplePayIcon(PayIcons.chevronLeft, size: 46.h),
          onPressed: _dispose,
        );
      case SearchType.RETN_SEARCH:
        return IconButton(
            icon: SimplePayIcon(PayIcons.x, size: 46.h), onPressed: _dispose);
      case SearchType.WARE_SEARCH:
        return IconButton(
            icon: SimplePayIcon(PayIcons.chevronLeft, size: 46.h),
            onPressed: _dispose);
      case SearchType.REVN_SEARCH:
        return IconButton(
            icon: SimplePayIcon(PayIcons.chevronLeft, size: 46.h),
            onPressed: _dispose);
      case SearchType.SALE_CAT_SEARCH:
        return IconButton(
            icon: SimplePayIcon(PayIcons.chevronLeft, size: 46.h),
            onPressed: _dispose);
    }
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Calles the 'onQueryUpdated' functions at the start of the operation
    onQueryUpdate(query);

    return WillPopScope(
      onWillPop: () async {
        _dispose();
        return Future.value(true);
      },
      child: StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        onInit: _initializer,
        builder: (context, state) => SearchDefaultBody(
            paddingHorizontal: state.searchState.searchType ==
                        SearchType.SALE_SEARCH ||
                    state.searchState.searchType == SearchType.SALE_CAT_SEARCH
                ? 24
                : 0,
            paddingTop: 16,
            footerHeight: 221,
            footer: state.basketState.cartList.isNotEmpty
                ? SalesFooterWidget(
                    hasInnButton: false,
                    hasDiscountBtn: false,
                    button: PrimaryButton(
                      buttonText: viewCart,
                      icon: PayIcons.shoppingCart,
                      linkTypeBtnColor: ThemeColors.white,
                      onPressed: () {
                        appStore.dispatch(
                            NavigateToAction(to: AppRoutes.RouteToSALE_00_001));
                      },
                    ))
                : null,
            child: _getSearchChild(state)),
      ),
    );
  }

  _dispose() {
    // appStore.dispatch(UpdateItemAction(
    //     currentCategory: ItemListGroupsRes(name: '', id: '', itemName: null),
    //     listItems: [],
    //     listGroups: []));
    appStore.dispatch(UpdateSearchAction(
        searchType: SearchType.SALE_CAT_SEARCH,
        searchFSMState: "InitSearchState"));
    close(Get.context!, null);
  }

  _getSearchChild(AppState state) {
    switch (state.searchState.searchFSMState) {
      case 'SearchingSearchState':
        return ListView(
          children: _buildSuggestionWidgets(state.itemState.listItems),
        );
      case 'EmptySearchState':
        return const Center(child: Text('Nothing found :('));
      default:
        return _suggestionsInitWidgetBuilder(state.itemState.listGroups);
    }
  }

  _initializer(Store<AppState> store) async {
    appStore.dispatch(UpdateItemAction(
        currentCategory: ItemListGroupsRes(name: '', id: '', itemName: null)));
    switch (GETSTATE.searchState.searchType) {
      case SearchType.SALE_SEARCH:
      case SearchType.SALE_CAT_SEARCH:
        await appStore.dispatch(GetItemSearchListGroupsAction);
        break;
      case SearchType.RETN_SEARCH:
        break;
      case SearchType.WARE_SEARCH:
        break;
      case SearchType.REVN_SEARCH:
        break;
    }
  }
  //RES

  List<Widget> _buildSuggestionWidgets(List<ProductItemRes> searchItems) {
    List<Widget> list = [];
    for (int i = 0; i < searchItems.length; i++) {
      final resultItem = searchItems[i];
      switch (GETSTATE.searchState.searchType) {
        case SearchType.SALE_SEARCH:
          list.add(_saleTypeWidgetBuilder(resultItem));
          break;
        case SearchType.RETN_SEARCH:
          list.add(_retnTypeWidgetBuilder(resultItem));
          break;
        case SearchType.WARE_SEARCH:
          if (i == 0) {
            list.add(_wareTypeCatWidgetBuilder());
          }
          list.add(_wareTypeWidgetBuilder(resultItem));
          break;
        case SearchType.REVN_SEARCH:
          list.add(_revnTypeWidgetBuilder(resultItem));
          break;
        case SearchType.SALE_CAT_SEARCH:
          list.add(_saleTypeWidgetBuilder(resultItem));
          break;
      }
    }
    return list;
  }

  Widget _saleTypeWidgetBuilder(ProductItemRes e) {
    return ItemProductsPageWidget(
        product: OrderItemRes(
            price: e.price, qty: 0, itemId: e.itemId, id: '', name: e.name));
  }

  Widget _retnTypeWidgetBuilder(item) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            appStore
                .dispatch(NavigateToAction(to: AppRoutes.RouteToRETN_02_001));
          },
          child: Container(
            height: 176.h,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            color: ThemeColors.white,
            child: SpacedRow(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpacedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedText(
                          text: item.name,
                          textStyle: ThemeTextSemibold.xl
                              .copyWith(color: ThemeColors.coolgray900)),
                      SizedText(
                        text: currencyFormatter(item.age),
                        textStyle: ThemeTextRegular.xl
                            .copyWith(color: ThemeColors.coolgray900),
                      ),
                      SizedText(
                        text: item.name,
                        textStyle: ThemeTextRegular.xl
                            .copyWith(color: ThemeColors.coolgray600),
                      )
                    ]),
                SpacedColumn(children: [
                  SizedText(
                    text: '#200: -600 ₸',
                    textStyle: ThemeTextRegular.lg2
                        .copyWith(color: ThemeColors.red300),
                  ),
                  SizedText(
                    text: '#201: -400 ₸',
                    textStyle: ThemeTextRegular.lg2
                        .copyWith(color: ThemeColors.red300),
                  ),
                  SizedText(
                    text: '#200: -200...',
                    textStyle: ThemeTextRegular.lg2
                        .copyWith(color: ThemeColors.red300),
                  ),
                ])
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _wareTypeWidgetBuilder(item) {
    return Column(
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
      ],
    );
  }

  Widget _wareTypeCatWidgetBuilder() {
    List<Widget> widgets = [];
    widgets.add(SizedBox(width: 16.w));
    // for (int i = 0; i < menuItemList.length; i++) {
    widgets.add(
      TabsYollet(
          onTap: () {}, radius: 24, isActive: false, text: "menuItemList[i]"),
    );
    widgets.add(SizedBox(width: 24.w));
    // }
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 26.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: widgets),
      ),
    );
  }

  Widget _revnTypeWidgetBuilder(item) {
    return Column(
      children: [
        _wareTypeCatWidgetBuilder(),
        SizedBox(height: 16.h),
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
      ],
    );
  }

  //INIT

  Widget _suggestionsInitWidgetBuilder(List<ItemListGroupsRes> searchCats) {
    switch (GETSTATE.searchState.searchType) {
      case SearchType.SALE_SEARCH:
        return SingleChildScrollView(
          child: SpacedColumn(
            verticalSpace: 24,
            children:
                searchCats.map<Widget>((e) => _categoryButton(e)).toList(),
          ),
        );
      case SearchType.SALE_CAT_SEARCH:
        return SingleChildScrollView(
          child: SpacedColumn(
            verticalSpace: 24,
            children:
                searchCats.map<Widget>((e) => _categoryButton(e)).toList(),
          ),
        );
      case SearchType.RETN_SEARCH:
        return SingleChildScrollView(
          child: SpacedColumn(
            verticalSpace: 16,
            children: [
              _buildRetnItem('№200', -3000, '16.11.2021 13:56:38'),
              _buildRetnItem('№201', -3000, '16.11.2021 13:56:38'),
              _buildRetnItem('№202', -3000, '16.11.2021 13:56:38'),
              _buildRetnItem('№203', -3000, '16.11.2021 13:56:38'),
              _buildRetnItem('№204', -3000, '16.11.2021 13:56:38'),
              _buildRetnItem('№206', -3000, '16.11.2021 13:56:38'),
            ],
          ),
        );
      case SearchType.WARE_SEARCH:
        return SingleChildScrollView(
          child: SpacedColumn(
            verticalSpace: 16,
            children: [
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
            ],
          ),
        );
      case SearchType.REVN_SEARCH:
        return SingleChildScrollView(
          child: SpacedColumn(
            verticalSpace: 16,
            children: [
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
              // _wareTypeWidgetBuilder(item),
            ],
          ),
        );
    }
  }

  Widget _buildRetnItem(String saleNumber, num amount, String timeDetails) {
    return GestureDetector(
      onTap: () {
        appStore.dispatch(NavigateToAction(to: AppRoutes.RouteToRETN_02_001));
      },
      child: Container(
        height: 176.h,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        color: ThemeColors.white,
        child: SpacedRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpacedColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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

  Widget _categoryButton(ItemListGroupsRes element) {
    return SizedBox(
      height: 124.h,
      child: InkWell(
        borderRadius: BorderRadius.circular(99),
        radius: 99,
        onTap: () async {
          appStore.dispatch(UpdateItemAction(currentCategory: element));
          appStore
              .dispatch(UpdateSearchAction(searchType: SearchType.SALE_SEARCH));
          appStore.dispatch(GetSearchingAction(''));
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

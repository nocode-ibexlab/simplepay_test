import 'dart:async';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/format/number_format.dart';

class WARE_04_001 extends StatelessWidget {
  WARE_04_001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
              paddingBottom: 0,
              paddingTop: 24,
              paddingHorizontal: 32,
              showLeadingBack: true,
              titleText: 'Шоколад Казахстан',
              showActionDelete: () {
                _buildDeletePopup();
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: SpacedColumn(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    verticalSpace: 32,
                    children: [
                      SpacedColumn(verticalSpace: 24, children: [
                        _photoRowContainer(),
                        _buildInputField(
                            labelName: productName,
                            controller: state
                                .inventoryState.warehouseItemNameController,
                            keyBoardType: TextInputType.name),
                        _buildInputField(
                            labelName: barcode,
                            controller:
                                state.inventoryState.warehouseBarcodeController,
                            keyBoardType: TextInputType.number),
                        _buildInputField(
                            addPrefix: true,
                            labelName: purchasePrice,
                            controller: state.inventoryState
                                .warehousePurchasePriceController,
                            keyBoardType: TextInputType.number),
                        _buildInputField(
                            addPrefix: true,
                            labelName: sellingPrice,
                            controller: state
                                .inventoryState.warehouseSalePriceController,
                            keyBoardType: TextInputType.number),
                        _ToggleSections()
                      ]),
                      PrimaryButton(
                          buttonText: 'Добавить',
                          onPressed: () {},
                          buttonType: _checkControllers(
                                  salePrice: state.inventoryState
                                      .warehouseSalePriceController.text,
                                  name: state.inventoryState
                                      .warehouseItemNameController.text,
                                  purchasePrice: state.inventoryState
                                      .warehousePurchasePriceController.text)
                              ? ButtonType.Main
                              : ButtonType.Disabled),
                      SizedBox(
                        height: 32.h,
                      )
                    ],
                  ),
                ),
              ),
            ));
  }

  bool _checkControllers(
      {required String name,
      required String salePrice,
      required String purchasePrice}) {
    bool checked = false;
    if (name.isNotEmpty && salePrice.isNotEmpty && purchasePrice.isNotEmpty) {
      checked = true;
    }
    return checked;
  }

  Widget _photoRowContainer() => SpacedRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        horizontalSpace: 32,
        children: [
          _photoContainer(),
          PrimaryButton(
            buttonText: 'Загрузить фото',
            onPressed: _onUploadPhoto,
            buttonSize: ButtonSize.S,
            buttonType: ButtonType.Link,
            linkTypeBtnColor: ThemeColors.blue500,
          )
        ],
      );

  _onUploadPhoto() {
    showSimpleDialog(
        borderRadius: 24,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
              child: GestureDetector(
                  child: SpacedRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                horizontalSpace: 24,
                children: [
                  SimplePayIcon(
                    PayIcons.camera,
                    color: ThemeColors.coolgray900,
                    size: 46.h,
                  ),
                  SizedText(
                    text: shootOnCamera,
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray900),
                  ),
                ],
              )),
            ),
            Divider(
                thickness: 1.w, height: 1.w, color: ThemeColors.coolgray400),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
              child: GestureDetector(
                  child: SpacedRow(
                crossAxisAlignment: CrossAxisAlignment.center,
                horizontalSpace: 24,
                children: [
                  SimplePayIcon(
                    PayIcons.photograph,
                    color: ThemeColors.coolgray900,
                    size: 46.h,
                  ),
                  SizedText(
                    text: loadFromGallery,
                    textStyle: ThemeTextRegular.xl
                        .copyWith(color: ThemeColors.coolgray900),
                  ),
                ],
              )),
            ),
          ],
        ));
  }

  Widget _photoContainer() => Container(
        padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 21.h),
        child: SimplePayIcon(PayIcons.camera,
            size: 64.h, color: ThemeColors.coolgray600),
        decoration: BoxDecoration(
            color: ThemeColors.coolgray200,
            borderRadius: BorderRadius.circular(4.r)),
      );

  Widget _buildInputField(
      {bool addPrefix = false,
      required String labelName,
      required TextEditingController controller,
      required TextInputType keyBoardType}) {
    return SpacedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalSpace: 16,
      children: [
        InputFieldYolletAppLabel(label: labelName),
        InputFieldYolletApp(
          prefixText: addPrefix ? '₸ ' : '',
          inputSize: InputSize.L,
          controller: controller,
          keyboardType: keyBoardType,
        ),
      ],
    );
  }

  _buildDeletePopup() {
    return showAlertDialog(
      titleText: "Вы точно хотите удалить  товар Шоколад Казахстан",
      rightBtnText: "Удалить",
      rightBtnPress: () {},
    );
  }
}

class _ToggleSections extends StatefulWidget {
  _ToggleSections({Key? key}) : super(key: key);

  @override
  State<_ToggleSections> createState() => _ToggleSectionsState();
}

class _ToggleSectionsState extends State<_ToggleSections> {
  bool isAddTofrequentOrder = false;

  bool isMarkedGoods = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => SpacedColumn(
              verticalSpace: 32,
              children: [
                SpacedRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedText(
                      text: addToFrequentGoods,
                      textStyle: ThemeTextRegular.xl.copyWith(
                        color: ThemeColors.coolgray600,
                      ),
                    ),
                    DefaultToggle(
                      value: isAddTofrequentOrder,
                      onToggle: (value) {
                        setState(() {
                          isAddTofrequentOrder = value;
                          state.inventoryState.warehouseFavoriteController
                              .text = '$isAddTofrequentOrder';
                        });
                      },
                    ),
                  ],
                ),
                SpacedRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedText(
                      text: markGoods,
                      textStyle: ThemeTextRegular.xl.copyWith(
                        color: ThemeColors.coolgray600,
                      ),
                    ),
                    DefaultToggle(
                      value: isMarkedGoods,
                      onToggle: (value) {
                        setState(() {
                          isMarkedGoods = value;
                          state.inventoryState.warehouseMarkingController.text =
                              '$isMarkedGoods';
                        });
                      },
                    )
                  ],
                )
              ],
            ));
  }
}

const loadFromGallery = 'Загрузить из галереи';
const shootOnCamera = 'Снять на камеру';
const markGoods = 'Маркированный товар';
const addToFrequentGoods = 'Добавить в частые товары';

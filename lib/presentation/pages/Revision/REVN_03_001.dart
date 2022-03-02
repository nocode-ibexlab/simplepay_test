import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class REVN_03_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            bgColor: ThemeColors.white,
            showActionSearch: () {},
            showActionQr: () {},
            paddingTop: 22,
            paddingHorizontal: 24,
            showLeadingBack: true,
            titleText: createRevision,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedText(
                  text: 'Ревизия #12',
                  textStyle: ThemeTextRegular.xl
                      .copyWith(color: ThemeColors.coolgray400),
                ),
                Flexible(
                  child: Center(
                    child: SpacedColumn(
                      mainAxisAlignment: MainAxisAlignment.center,
                      verticalSpace: 32,
                      children: [
                        SizedText(
                          text: inOrderToRevise,
                          textStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.coolgray400),
                        ),
                        PrimaryButton(
                            buttonSize: ButtonSize.M,
                            buttonText: chooseProduct,
                            onPressed: () {
                              appStore.dispatch(NavigateToAction(
                                  to: AppRoutes.RouteToREVN_03_004));
                            })
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

const createRevision = 'Создание ревизии';
const chooseProduct = 'Выберите товар';
const inOrderToRevise = 'Чтобы начать ревизию';

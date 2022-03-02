import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class MainExitPopup extends StatelessWidget {
  const MainExitPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
            child: SpacedRow(
              crossAxisAlignment: CrossAxisAlignment.center,
              horizontalSpace: 32,
              children: [
                SimplePayIcon(PayIcons.arrowsExpand,
                    color: ThemeColors.coolgray900, size: 50.h),
                const SizedText(
                    text: 'Свернуть', textStyle: ThemeTextRegular.xl2),
              ],
            ),
          ),
        ),
        const Divider(),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
            child: SpacedRow(
              crossAxisAlignment: CrossAxisAlignment.center,
              horizontalSpace: 32,
              children: [
                SimplePayIcon(PayIcons.xCircle,
                    color: ThemeColors.coolgray900, size: 50.h),
                const SizedText(
                    text: 'Закрыть смену', textStyle: ThemeTextRegular.xl2),
              ],
            ),
          ),
        ),
        const Divider(),
        InkWell(
          onTap: () async {
            await appStore.dispatch(GetLoginClearAuthAction);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
            child: SpacedRow(
              crossAxisAlignment: CrossAxisAlignment.center,
              horizontalSpace: 32,
              children: [
                SimplePayIcon(PayIcons.logout,
                    color: ThemeColors.coolgray900, size: 50.h),
                const SizedText(text: 'Выйти', textStyle: ThemeTextRegular.xl2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

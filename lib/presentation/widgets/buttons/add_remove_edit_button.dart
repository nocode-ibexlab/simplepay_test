import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class AddRemoveEditButton extends StatelessWidget {
  VoidCallback onAdd;
  VoidCallback onRemove;
  int qty;
  AddRemoveEditButton({
    Key? key,
    this.qty = 0,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 209.w,
      height: 63.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onRemove,
            child: SimplePayIcon(
              PayIcons.minusSm,
              color: ThemeColors.coolgray900,
              size: 40.h,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 83.w,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: ThemeColors.coolgray200,
                ),
                borderRadius: BorderRadius.circular(24.r),
                color: ThemeColors.white),
            child: SizedText(
              text: qty.toString(),
              textStyle:
                  ThemeTextSemibold.xl.copyWith(color: ThemeColors.coolgray900),
            ),
          ),
          InkWell(
            onTap: onAdd,
            child: SimplePayIcon(
              PayIcons.plusSm,
              color: ThemeColors.coolgray900,
              size: 40.h,
            ),
          ),
        ],
      ),
    );
  }
}

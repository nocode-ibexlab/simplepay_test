import 'package:simple_pay_flutter/presentation/widgets/image_placeholder/image_placeholder.dart';

import '../../template/base/template.dart';

class InfoBanner extends StatelessWidget {
  String? imageUrl;
  String topText;
  String bottomText;
  Color topTextColor;
  Color bottomTextColor;
  Color backgroundColor;

  InfoBanner(
      {Key? key,
      this.topTextColor = ThemeColors.coolgray800,
      this.bottomTextColor = ThemeColors.coolgray500,
      this.backgroundColor = ThemeColors.white,
      this.imageUrl,
      required this.bottomText,
      required this.topText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        children: [
          ImagePlaceholder(imageUrl: imageUrl),
          SizedBox(width: 24.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedText(
                text: topText,
                textStyle: ThemeTextSemibold.lg4.apply(color: topTextColor),
              ),
              SizedText(
                text: bottomText,
                textStyle: ThemeTextRegular.lg2.apply(color: bottomTextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

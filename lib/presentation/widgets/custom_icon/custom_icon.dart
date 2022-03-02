import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class CustomIcon extends StatelessWidget {
  String imagePath;
  double? height;
  void Function()? onTap;
  CustomIcon({required this.imagePath, this.height, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        height: height,
      ),
    );
  }
}

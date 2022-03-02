import '../../template/base/template.dart';

class ImagePlaceholder extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double height;

  ImagePlaceholder({
    this.width = 98,
    this.height = 98,
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.w,
      child: Image.asset(imageUrl ?? 'assets/images/empty.png'),
    );
  }
}

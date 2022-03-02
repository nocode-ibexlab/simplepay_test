import 'package:simple_pay_api/simple_pay_api.dart';

import '../template/base/template.dart';

class SimpleImage extends StatelessWidget {
  String? url;
  SimpleImage({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url != null) {
      return S3Image(url, width: 124.w);
    }
    return Image.asset(
      'assets/img/no_image.png',
      width: 124.w,
      package: 'simple_pay_api',
    );
  }
}

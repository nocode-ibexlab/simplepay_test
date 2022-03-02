import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class DottedBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // Dashed line
      children: [
        for (int i = 0; i < 80; i++)
          Flexible(
            child: Container(
              width: 5,
              height: 1,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: i % 2 == 0
                        ? ThemeColors.coolgray400
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

import 'package:simple_pay_flutter/presentation/template/base/template.dart';

class DefaultCheckbox extends StatelessWidget {
  bool value;
  void Function(bool?)? onChanged;
  DefaultCheckbox({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      checkColor: Colors.white,
      value: value,
      onChanged: onChanged,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/core/utils/size_config.dart';

class horizontalspace extends StatelessWidget {
  const horizontalspace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeconfig.defaultsize! * value!,
    );
  }
}
class verticalspace extends StatelessWidget {
  const verticalspace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeconfig.defaultsize! * value!,
    );
  }
}
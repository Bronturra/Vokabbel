import 'package:flutter/material.dart';

import '../modules.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.labelText,
    required this.onPressedFunction
  });

  final String labelText;
  final Function() onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 8.0),
      child: ElevatedButton(
        style: universalElevatedButtonStyleForTheme(),
        onPressed: onPressedFunction,
        child: universalTextStyle(labelText, 16.0),
      ),
    );
  }
}
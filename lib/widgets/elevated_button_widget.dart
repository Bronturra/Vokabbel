import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  // Variables
  final String text;
  final Function() onPressedFunction;

  // Constructor
  const ElevatedButtonWidget({
    super.key,
    required this.text,
    required this.onPressedFunction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 8.0),
      child: ElevatedButton(
        onPressed: onPressedFunction,
        child: Text(
          text,
        ),
      ),
    );
  }
}
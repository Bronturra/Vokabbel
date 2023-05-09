import 'package:flutter/material.dart';

class SubHeadlineWidget extends StatelessWidget {
  // Variables
  final String text;

  // Constructor
  const SubHeadlineWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.indigoAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
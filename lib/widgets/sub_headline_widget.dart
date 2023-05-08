import 'package:flutter/material.dart';

class SubHeadlineWidget extends StatelessWidget {
  const SubHeadlineWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.indigoAccent,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class SubHeadlinePageWidget extends StatelessWidget {
  const SubHeadlinePageWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 10.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.indigoAccent,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }
}
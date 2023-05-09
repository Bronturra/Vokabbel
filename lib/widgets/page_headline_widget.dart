import 'package:flutter/material.dart';

class PageHeadlineWidget extends StatelessWidget {
  // Variables
  final String text;

  // Constructor
  const PageHeadlineWidget({
    super.key,
    required this.text,
  });

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
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CancelElevatedButtonWidget extends StatelessWidget {
  // Variables
  final String text;

  // Constructor
  const CancelElevatedButtonWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.indigoAccent,
            width: 2.0,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.indigoAccent,
          ),
        ),
      ),
    );
  }
}

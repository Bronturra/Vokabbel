import 'package:flutter/material.dart';


class ElevatedCancelButtonWidget extends StatelessWidget {
  const ElevatedCancelButtonWidget({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          //elevation: 8.0,
          padding: const EdgeInsets.all(20.0),
          minimumSize: const Size(200.0, 60.0),
          side: const BorderSide(
            color: Colors.indigoAccent,
            width: 2.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: const TextStyle(
            //fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),

        /// Navigates to the Project-Overview again
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          labelText,
          style: const TextStyle(
            color: Colors.indigoAccent,
            //fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}
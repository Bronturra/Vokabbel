import 'package:flutter/material.dart';
import '../algorithms/email_validator.dart';

class FormFieldWidget extends StatelessWidget {
  // Variables
  final GlobalKey<FormState> globalKey;
  final TextEditingController globalController;
  final String labelText;
  final String hintText;
  final String? errorMsg;
  final Icon prefixIcon;

  // Constructor
  const FormFieldWidget({
    super.key,
    required this.globalKey,
    required this.globalController,
    required this.labelText,
    required this.hintText,
    required this.errorMsg,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => Container(
        padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
        child: Form(
          key: globalKey,
          child: TextFormField(
            cursorColor: Colors.indigoAccent,
            controller: globalController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: labelText,
                hintText: hintText,
                errorText: errorMsg,
                labelStyle: TextStyle(
                  color: Colors.grey[700],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.indigoAccent, width: 1.5),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                prefixIcon: prefixIcon,
                suffixIcon: globalController.text.isEmpty
                    ? Container(width: 0) // Icon not visible
                    : IconButton(
                  onPressed: () {
                    globalController.clear();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.redAccent,
                  ),
                )),
            textInputAction: TextInputAction.done,
            validator: (source) {
              return EmailValidator.validate(source!);
            }
          ),
        ),
      ),
    );
  }
}
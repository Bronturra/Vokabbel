import 'package:flutter/material.dart';
import 'package:hello/algorithms/password_validator.dart';

class PasswordFormFieldWidget extends StatelessWidget {
  // Variables
  final GlobalKey<FormState> globalKey;
  final TextEditingController globalController;
  final String labelText;
  final String hintText;
  final String? errorMsg;
  final Icon prefixIcon;
  bool isPasswordObscured = true;

  // Constructor
  PasswordFormFieldWidget({
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
                borderSide:
                    const BorderSide(color: Colors.indigoAccent, width: 1.5),
                borderRadius: BorderRadius.circular(16.0),
              ),
              prefixIcon: prefixIcon,
              suffixIcon: IconButton(
                icon: isPasswordObscured
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                color: Colors.indigoAccent,
                onPressed: () {
                  setState(() {
                    isPasswordObscured = !isPasswordObscured;
                  });
                },
              ),
            ),
            textInputAction: TextInputAction.done,
            obscureText: isPasswordObscured,
            validator: (source) {
              return PasswordValidator.validate(source!);
            },
          ),
        ),
      ),
    );
  }
}

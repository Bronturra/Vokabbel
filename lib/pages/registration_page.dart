import 'package:flutter/material.dart';
import 'package:hello/widgets/elevated_button_widget.dart';
import 'package:hello/widgets/elevated_cancel_button_widget.dart';
import 'package:hello/widgets/form_field_widget.dart';
import 'package:hello/widgets/password_form_field_widget.dart';
import 'package:hello/widgets/sub_headline_page_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);
  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  // Variables
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordControllerSecond = TextEditingController();
  final emailGlobalKey = GlobalKey<FormState>();
  final passwordGlobalKey = GlobalKey<FormState>();
  final passwordGlobalKeySecond = GlobalKey<FormState>();
  String? errorMsg;

  @override
  void initState() {
    emailController.addListener(() => setState(() {}));
    passwordController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Vokabbel",
        ),
      ),
      body: Column(
        children: [
          const SubHeadlineWidget(text: "Spielerisch Sprachen lernen"),
          const SubHeadlinePageWidget(text: "Registrieren"),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                FormFieldWidget(
                    globalKey: emailGlobalKey,
                    globalController: emailController,
                    labelText: "E-Mail:",
                    hintText: "name@example.com",
                    errorMsg: errorMsg,
                    prefixIcon:
                        const Icon(Icons.mail, color: Colors.indigoAccent)),
                PasswordFormFieldWidget(
                    globalKey: passwordGlobalKey,
                    globalController: passwordController,
                    labelText: "Passwort:",
                    hintText: "Dein Passwort...",
                    errorMsg: errorMsg,
                    prefixIcon:
                        const Icon(Icons.vpn_key, color: Colors.indigoAccent)),
                PasswordFormFieldWidget(
                    globalKey: passwordGlobalKeySecond,
                    globalController: passwordControllerSecond,
                    labelText: "Passwort wiederholen:",
                    hintText: "Dein Passwort wiederholen...",
                    errorMsg: errorMsg,
                    prefixIcon:
                        const Icon(Icons.vpn_key, color: Colors.indigoAccent)),
                ElevatedButtonWidget(
                    labelText: "Registrieren",
                    onPressedFunction: () => onPressedLogin()),
                const ElevatedCancelButtonWidget(labelText: "Abbrechen"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Function that handles login process
  void onPressedLogin() {
    // Widget Variables
    final emailForm = emailGlobalKey.currentState!;
    final passwordForm = passwordGlobalKey.currentState!;
    final passwordFormSecond = passwordGlobalKeySecond.currentState!;

    // Checks if the currently entered e-mail and password are valid
    if (emailForm.validate() &&
        passwordForm.validate() &&
        passwordFormSecond.validate()) {
      setState(() => errorMsg = null);
      if (passwordController.text.compareTo(passwordControllerSecond.text) !=
          0) {
        setState(() => errorMsg = "Die Passwörter stimmen nicht überein.");
      } else {
        Navigator.pushNamed(context, '/vocabularySets');
      }
    }
  }
}

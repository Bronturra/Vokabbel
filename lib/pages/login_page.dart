import 'package:flutter/material.dart';
import 'package:hello/widgets/elevated_button_widget.dart';
import 'package:hello/widgets/form_field_widget.dart';
import 'package:hello/widgets/password_form_field_widget.dart';
import 'package:hello/widgets/page_headline_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variables
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailGlobalKey = GlobalKey<FormState>();
  final passwordGlobalKey = GlobalKey<FormState>();
  String? errorMsg;

  @override
  void initState() {
    emailController.addListener(() => setState(() {}));
    emailController.text = "example@test.de"; // TODO: REMOVE
    passwordController.addListener(() => setState(() {}));
    passwordController.text = "123456"; // TODO: REMOVE
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
          const PageHeadlineWidget(text: "Anmelden"),
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
                ElevatedButtonWidget(
                    text: "Anmelden",
                    onPressedFunction: () => onPressedLogin()),
                ElevatedButtonWidget(
                    text: "Registrieren",
                    onPressedFunction: () => onPressedRegistration()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPressedLogin() {
    // Variables
    final emailForm = emailGlobalKey.currentState!;
    final passwordForm = passwordGlobalKey.currentState!;

    // Check if e-mail and password are valid
    if (emailForm.validate() && passwordForm.validate()) {
      setState(() => errorMsg = null);
      Navigator.pushNamed(context, "/vocabularySets");
    }
  }

  void onPressedRegistration() {
    Navigator.pushNamed(context, "/register");
  }
}

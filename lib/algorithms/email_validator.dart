
class EmailValidator {
  static final RegExp _emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
    multiLine: false,
  );

  static String? validate(String email) {
    if (email.isEmpty) {
      return 'Bitte geben Sie Ihre E-Mail ein.';
    } else if (!_emailRegExp.hasMatch(email)) {
      return 'Bitte geben Sie eine gültige E-Mail ein.';
    } else {
      return null;
    }
  }
}

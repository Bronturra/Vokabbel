
class PasswordValidator {

  static String? validate(String password) {
    if (password.isEmpty) {
      return 'Geben Sie ein Passwort ein.';
    } else if (password.length <= 5) {
      return 'Geben Sie 6 Zeichen oder mehr ein.';
    } else {
      return null;
    }
  }
}

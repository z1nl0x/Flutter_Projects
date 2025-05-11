
class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'E-mail é requido para o login!';
    }

    final emailRegExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");

    if (!emailRegExp.hasMatch(value)) {
      return 'Endereço de E-mail inválido!';
    }

    return null;
  }


  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'A senha é requida para o login!';
    }

    if (value.length < 6) {
      return 'A senha precisa ter no mínimo 6 caracteres!';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'A senha precisa ter no mínimo um caractere maíusculo!';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'A senha precisa ter no mínimo um número!';
    }

    return null;
  }

  static validatePhoneNumber(String? value) {

   if (value == null || value.isEmpty) {
    return 'O número telefonico é requerido!';
   }

   return null;

  }

}
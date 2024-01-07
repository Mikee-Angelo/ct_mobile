class RegisterModel {
  final String message;
  final Errors errors;

  const RegisterModel({
    required this.message,
    required this.errors,
  });
}

class Errors {
  final List<String> phone;
  final List<String> password;

  const Errors({
    required this.phone,
    required this.password,
  });
}

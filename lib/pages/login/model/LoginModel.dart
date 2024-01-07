class LoginModel {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String error;

  const LoginModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.error,
  });
}

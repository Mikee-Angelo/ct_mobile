class LoginParamsEntity {
  const LoginParamsEntity({
    required this.email,
    required this.password,
    required this.deviceId,
  });

  final String email;
  final String password;
  final String deviceId;
}

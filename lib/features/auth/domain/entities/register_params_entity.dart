class RegisterParamsEntity {
  const RegisterParamsEntity({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.address,
    required this.deviceId,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String passwordConfirmation;
  final String address;
  final String deviceId;
}

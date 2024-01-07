import 'package:scanner/features/auth/domain/entities/user_entity.dart';

class RegisterEntity {
  const RegisterEntity({
    required this.message,
    required this.token,
    required this.user,
  });

  final String message;
  final String token;
  final UserEntity user;
}

import 'package:equatable/equatable.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';

class LogoutEntity extends Equatable {
  const LogoutEntity({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

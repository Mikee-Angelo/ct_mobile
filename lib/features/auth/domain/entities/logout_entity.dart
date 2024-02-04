import 'package:equatable/equatable.dart';

class LogoutEntity extends Equatable {
  const LogoutEntity({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

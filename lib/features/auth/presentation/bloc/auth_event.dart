part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class OnLogin extends AuthEvent {
  OnLogin(this.req);
  final LoginParamsModel req;

  @override
  List<Object?> get props => [req];
}

class OnRegister extends AuthEvent {
  OnRegister(this.req);

  final RegisterParamsModel req;

  @override
  List<Object?> get props => [req];
}

class OnCheckToken extends AuthEvent {
  @override
  List<Object?> get props => [];
}

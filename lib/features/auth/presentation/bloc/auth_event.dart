part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class OnLogin extends AuthEvent {
  OnLogin(this.req);
  final LoginParamsModel req;
  
  @override
  List<Object?> get props => [req];
}

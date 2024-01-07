part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {}

class GotLogin extends AuthState {
  GotLogin(this.res);

  final LoginEntity res;

  @override
  List<Object?> get props => [res];
}

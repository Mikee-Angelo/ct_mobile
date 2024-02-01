part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {}

class GotLogin extends AuthState {
  GotLogin(this.res);

  final LoginEntity res;

  @override
  List<Object?> get props => [res];
}

class GotRegister extends AuthState {
  GotRegister(this.res);

  final RegisterEntity res;

  @override
  List<Object?> get props => [res];
}

class GotCheckToken extends AuthState {
  GotCheckToken(this.res);

  final LoginEntity res;

  @override
  List<Object?> get props => [res];
}

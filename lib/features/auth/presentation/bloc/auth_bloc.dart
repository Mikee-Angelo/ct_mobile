import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/data/models/register_params_model.dart';
import 'package:scanner/features/auth/domain/domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._login,
    this._register,
    this._checkToken,
    this._logout,
  ) : super(InitialState()) {
    on<OnLogin>(_onLogin);
    on<OnRegister>(_onRegister);
    on<OnCheckToken>(_onCheckToken);
    on<OnLogout>(_onLogout);
  }

  final LoginUsecase _login;
  final RegisterUsecase _register;
  final CheckTokenUsecase _checkToken;
  final LogoutUsecase _logout;

  FutureOr<void> _onLogin(
    OnLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(LoadingState());

    final res = await _login(event.req);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotLogin(r)),
    );
  }

  FutureOr<void> _onRegister(
    OnRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(LoadingState());

    final res = await _register(event.req);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotRegister(r)),
    );
  }

  FutureOr<void> _onCheckToken(
    OnCheckToken event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _checkToken(NoParams());

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotCheckToken(r)),
    );
  }

  FutureOr<void> _onLogout(
    OnLogout event,
    Emitter<AuthState> emit,
  ) async {
    emit(LoadingState());

    final res = await _logout(NoParams());

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotLogout(r)),
    );
  }
}

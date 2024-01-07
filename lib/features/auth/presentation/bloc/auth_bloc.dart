import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/data/models/register_params_model.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';
import 'package:scanner/features/auth/domain/entities/register_entity.dart';
import 'package:scanner/features/auth/domain/usecases/login_use_case.dart';
import 'package:scanner/features/auth/domain/usecases/register_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._login, this._register) : super(InitialState()) {
    on<OnLogin>(_onLogin);
    on<OnRegister>(_onRegister);
  }

  final LoginUsecase _login;
  final RegisterUsecase _register;

  FutureOr<void> _onLogin(OnLogin event, Emitter<AuthState> emit) async {
    emit(LoadingState());

    final res = await _login(event.req);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotLogin(r)),
    );
  }

  FutureOr<void> _onRegister(OnRegister event, Emitter<AuthState> emit) async {
    emit(LoadingState());

    final res = await _register(event.req);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotRegister(r)),
    );
  }
}

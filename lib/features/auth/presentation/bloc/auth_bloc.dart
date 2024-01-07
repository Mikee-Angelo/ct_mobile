import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';
import 'package:scanner/features/auth/domain/usecases/login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._login) : super(InitialState()) {
    on<OnLogin>(_onLogin);
  }

  final LoginUsecase _login;

  FutureOr<void> _onLogin(OnLogin event, Emitter<AuthState> emit) async {
    emit(LoadingState());

    final res = await _login(event.req);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotLogin(r)),
    );
  }
}

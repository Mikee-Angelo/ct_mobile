import 'package:equatable/equatable.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';

abstract class BaseState extends Equatable implements AuthState {}

class InitialState extends BaseState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends BaseState {
  @override
  List<Object?> get props => [];
}

class RetryState extends BaseState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends BaseState {
  ErrorState(this.error);

  final Failure error;

  @override
  List<Object> get props => [error];
}

class NoInternetConnectionState extends BaseState {
  @override
  List<Object?> get props => [];
}
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class StorageFailure extends Failure {
  const StorageFailure(super.message);

  @override
  List<Object?> get props => [message];
}

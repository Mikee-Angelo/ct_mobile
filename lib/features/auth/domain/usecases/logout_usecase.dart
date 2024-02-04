import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/auth/domain/domain.dart';

class LogoutUsecase extends Usecase<LogoutEntity, NoParams> {
  LogoutUsecase(this._repo);

  final AuthRepository _repo;

  @override
  Future<Either<Failure, LogoutEntity>> call(NoParams params) {
    return _repo.logout();
  }
}

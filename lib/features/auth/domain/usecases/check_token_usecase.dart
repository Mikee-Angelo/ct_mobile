import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/auth/domain/domain.dart';

class CheckTokenUsecase extends Usecase<LoginEntity, NoParams> {
  CheckTokenUsecase(this._repo);

  final AuthRepository _repo;

  @override
  Future<Either<Failure, LoginEntity>> call(NoParams params) {
    return _repo.checkToken();
  }
}

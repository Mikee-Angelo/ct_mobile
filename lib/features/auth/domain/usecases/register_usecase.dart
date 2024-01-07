import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/auth/data/models/register_params_model.dart';
import 'package:scanner/features/auth/domain/entities/register_entity.dart';
import 'package:scanner/features/auth/domain/repositories/auth_repository.dart';

class RegisterUsecase extends Usecase<RegisterEntity, RegisterParamsModel> {
  RegisterUsecase(this._repo);

  final AuthRepository _repo;

  @override
  Future<Either<Failure, RegisterEntity>> call(params) {
    return _repo.register(params);
  }
}

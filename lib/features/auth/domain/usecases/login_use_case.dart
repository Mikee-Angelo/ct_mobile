import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';
import 'package:scanner/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase extends Usecase<LoginEntity, LoginParamsModel> {
  LoginUsecase(this._repo);

  final AuthRepository _repo;

  @override
  Future<Either<Failure, LoginEntity>> call(LoginParamsModel params)  async {
    return await _repo.login(params);
  }
}

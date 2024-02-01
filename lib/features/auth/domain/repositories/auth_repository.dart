import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/auth/data/data.dart';
import 'package:scanner/features/auth/domain/domain.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginEntity>> login(LoginParamsModel params);
  Future<Either<Failure, RegisterEntity>> register(RegisterParamsModel params);
  Future<Either<Failure, LoginEntity>> checkToken();
}

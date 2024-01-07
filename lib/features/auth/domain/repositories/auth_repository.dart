import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';

abstract class AuthRepository { 
  Future<Either<Failure, LoginEntity>> login(LoginParamsModel params);
}
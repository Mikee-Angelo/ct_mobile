import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:scanner/core/errors/exception.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/services/storage_service.dart';
import 'package:scanner/features/auth/data/datasources/auth_remote.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';
import 'package:scanner/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._remote, this._storage);

  final AuthRemote _remote;
  final StorageService _storage;

  @override
  Future<Either<Failure, LoginEntity>> login(LoginParamsModel params) async {
    try {
      final res = await _remote.login(params.toJson());
      await _storage.setStorageValue('token', jsonEncode(res.toJson()));
      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }
}
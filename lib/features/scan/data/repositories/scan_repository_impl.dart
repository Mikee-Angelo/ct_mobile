import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/scan/data/datasources/datasources.dart';
import 'package:scanner/features/scan/domain/entities/scan_entity.dart';
import 'package:scanner/features/scan/domain/repositories/repositories.dart';

class ScanRepositoryImpl extends ScanRepository {
  ScanRepositoryImpl(this._remote);

  final ScanRemote _remote;

  @override
  Future<Either<Failure, ScanEntity>> scan(String params) async {
    try {
      final res = await _remote.scan({'code': params});

      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    }
  }
}

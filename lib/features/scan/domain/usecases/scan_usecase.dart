import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';
import 'package:scanner/features/scan/domain/repositories/repositories.dart';

class ScanUsecase extends Usecase<ScanEntity, String> {
  ScanUsecase(this._repo);

  final ScanRepository _repo;

  @override
  Future<Either<Failure, ScanEntity>> call(String params) {
    return _repo.scan(params);
  }
}

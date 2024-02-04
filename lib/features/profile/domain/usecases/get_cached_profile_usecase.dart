import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/profile/domain/entities/entities.dart';
import 'package:scanner/features/profile/domain/repositories/repositories.dart';

class GetCachedProfileUsecase extends Usecase<ProfileEntity, NoParams> {
  GetCachedProfileUsecase(this._repo);

  final ProfileRepository _repo;

  @override
  Future<Either<Failure, ProfileEntity>> call(NoParams params) {
    return _repo.getCachedProfile();
  }
}

import 'package:scanner/features/auth/domain/entities/entities.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';

class ScanEntity {
  const ScanEntity({this.establishment, this.user});

  final EstablishmentEntity? establishment;
  final UserEntity? user;
}

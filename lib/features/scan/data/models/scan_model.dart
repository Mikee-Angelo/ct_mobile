import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/auth/data/models/models.dart';
import 'package:scanner/features/scan/data/models/models.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';

part 'scan_model.freezed.dart';
part 'scan_model.g.dart';

@freezed
class ScanModel with _$ScanModel implements ScanEntity {
  factory ScanModel({
    UserModel? user,
    EstablishmentModel? establishment,
  }) = _ScanModel;

  factory ScanModel.fromJson(Map<String, Object?> json) =>
      _$ScanModelFromJson(json);
}

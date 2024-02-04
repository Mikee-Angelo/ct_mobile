// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';

part 'establishment_model.freezed.dart';
part 'establishment_model.g.dart';

@freezed
class EstablishmentModel
    with _$EstablishmentModel
    implements EstablishmentEntity {
  factory EstablishmentModel({
    int? id,
    @JsonKey(name: 'establishment_code') String? establishmentCode,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email_address') String? emailAddress,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'establishment_name') String? establishmentName,
    String? address,
    String? baranggay,
    String? city,
    String? lng,
    String? lat,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _EstablishmentModel;

  factory EstablishmentModel.fromJson(Map<String, Object?> json) =>
      _$EstablishmentModelFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/auth/domain/entities/register_params_entity.dart';

part 'register_params_model.freezed.dart';
part 'register_params_model.g.dart';

@freezed
class RegisterParamsModel
    with _$RegisterParamsModel
    implements RegisterParamsEntity {
  const factory RegisterParamsModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
    required String address,
    @JsonKey(name: 'device_id') required String deviceId,
  }) = _RegisterParamsModel;

  factory RegisterParamsModel.fromJson(Map<String, Object?> json) =>
      _$RegisterParamsModelFromJson(json);
}

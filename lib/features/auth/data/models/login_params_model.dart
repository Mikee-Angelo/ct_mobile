// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/auth/domain/entities/login_params_entity.dart';

part 'login_params_model.freezed.dart';
part 'login_params_model.g.dart';

@freezed
class LoginParamsModel with _$LoginParamsModel implements LoginParamsEntity {
  const factory LoginParamsModel({
    required String email,
    required String password,
    @JsonKey(name: 'device_id') required String deviceId,
  }) = _LoginParamsModel;

  factory LoginParamsModel.fromJson(Map<String, Object?> json) =>
      _$LoginParamsModelFromJson(json);
}

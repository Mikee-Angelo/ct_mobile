import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/auth/domain/entities/login_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel implements LoginEntity {
  factory LoginModel({
    required String message,
    required String token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, Object?> json) =>
      _$LoginModelFromJson(json);
}

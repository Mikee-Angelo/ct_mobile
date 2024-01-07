import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/auth/data/models/user_model.dart';
import 'package:scanner/features/auth/domain/entities/register_entity.dart';

part 'register_model.freezed.dart'; 
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel implements RegisterEntity {
  const factory RegisterModel({
    required String message,
    required String token,
    required UserModel user,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, Object?> json) =>
      _$RegisterModelFromJson(json);
}

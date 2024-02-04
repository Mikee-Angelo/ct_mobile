import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scanner/features/auth/domain/domain.dart';

part 'logout_model.g.dart';

@JsonSerializable()
class LogoutModel extends LogoutEntity {
  const LogoutModel({required super.message});

  factory LogoutModel.fromJson(Map<String, Object?> json) =>
      _$LogoutModelFromJson(json);
}

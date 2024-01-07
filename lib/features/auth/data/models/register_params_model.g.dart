// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterParamsModelImpl _$$RegisterParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterParamsModelImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      address: json['address'] as String,
      deviceId: json['device_id'] as String,
    );

Map<String, dynamic> _$$RegisterParamsModelImplToJson(
        _$RegisterParamsModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'address': instance.address,
      'device_id': instance.deviceId,
    };

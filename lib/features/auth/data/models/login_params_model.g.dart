// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginParamsModelImpl _$$LoginParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginParamsModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      deviceId: json['device_id'] as String,
    );

Map<String, dynamic> _$$LoginParamsModelImplToJson(
        _$LoginParamsModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'device_id': instance.deviceId,
    };

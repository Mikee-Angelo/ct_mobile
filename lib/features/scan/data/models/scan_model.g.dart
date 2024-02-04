// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScanModelImpl _$$ScanModelImplFromJson(Map<String, dynamic> json) =>
    _$ScanModelImpl(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      establishment: json['establishment'] == null
          ? null
          : EstablishmentModel.fromJson(
              json['establishment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScanModelImplToJson(_$ScanModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'establishment': instance.establishment,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EstablishmentModelImpl _$$EstablishmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EstablishmentModelImpl(
      id: json['id'] as int?,
      establishmentCode: json['establishment_code'] as String?,
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      emailAddress: json['email_address'] as String?,
      contactNumber: json['contact_number'] as String?,
      establishmentName: json['establishment_name'] as String?,
      address: json['address'] as String?,
      baranggay: json['baranggay'] as String?,
      city: json['city'] as String?,
      lng: json['lng'] as String?,
      lat: json['lat'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$EstablishmentModelImplToJson(
        _$EstablishmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'establishment_code': instance.establishmentCode,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'email_address': instance.emailAddress,
      'contact_number': instance.contactNumber,
      'establishment_name': instance.establishmentName,
      'address': instance.address,
      'baranggay': instance.baranggay,
      'city': instance.city,
      'lng': instance.lng,
      'lat': instance.lat,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

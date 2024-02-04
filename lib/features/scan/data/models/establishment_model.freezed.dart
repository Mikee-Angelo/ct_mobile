// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'establishment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstablishmentModel _$EstablishmentModelFromJson(Map<String, dynamic> json) {
  return _EstablishmentModel.fromJson(json);
}

/// @nodoc
mixin _$EstablishmentModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'establishment_code')
  String? get establishmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_address')
  String? get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_number')
  String? get contactNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'establishment_name')
  String? get establishmentName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get baranggay => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstablishmentModelCopyWith<EstablishmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstablishmentModelCopyWith<$Res> {
  factory $EstablishmentModelCopyWith(
          EstablishmentModel value, $Res Function(EstablishmentModel) then) =
      _$EstablishmentModelCopyWithImpl<$Res, EstablishmentModel>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$EstablishmentModelCopyWithImpl<$Res, $Val extends EstablishmentModel>
    implements $EstablishmentModelCopyWith<$Res> {
  _$EstablishmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? establishmentCode = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? contactNumber = freezed,
    Object? establishmentName = freezed,
    Object? address = freezed,
    Object? baranggay = freezed,
    Object? city = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      establishmentCode: freezed == establishmentCode
          ? _value.establishmentCode
          : establishmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      establishmentName: freezed == establishmentName
          ? _value.establishmentName
          : establishmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      baranggay: freezed == baranggay
          ? _value.baranggay
          : baranggay // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EstablishmentModelImplCopyWith<$Res>
    implements $EstablishmentModelCopyWith<$Res> {
  factory _$$EstablishmentModelImplCopyWith(_$EstablishmentModelImpl value,
          $Res Function(_$EstablishmentModelImpl) then) =
      __$$EstablishmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$EstablishmentModelImplCopyWithImpl<$Res>
    extends _$EstablishmentModelCopyWithImpl<$Res, _$EstablishmentModelImpl>
    implements _$$EstablishmentModelImplCopyWith<$Res> {
  __$$EstablishmentModelImplCopyWithImpl(_$EstablishmentModelImpl _value,
      $Res Function(_$EstablishmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? establishmentCode = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? contactNumber = freezed,
    Object? establishmentName = freezed,
    Object? address = freezed,
    Object? baranggay = freezed,
    Object? city = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EstablishmentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      establishmentCode: freezed == establishmentCode
          ? _value.establishmentCode
          : establishmentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      establishmentName: freezed == establishmentName
          ? _value.establishmentName
          : establishmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      baranggay: freezed == baranggay
          ? _value.baranggay
          : baranggay // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EstablishmentModelImpl implements _EstablishmentModel {
  _$EstablishmentModelImpl(
      {this.id,
      @JsonKey(name: 'establishment_code') this.establishmentCode,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'middle_name') this.middleName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email_address') this.emailAddress,
      @JsonKey(name: 'contact_number') this.contactNumber,
      @JsonKey(name: 'establishment_name') this.establishmentName,
      this.address,
      this.baranggay,
      this.city,
      this.lng,
      this.lat,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$EstablishmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EstablishmentModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'establishment_code')
  final String? establishmentCode;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email_address')
  final String? emailAddress;
  @override
  @JsonKey(name: 'contact_number')
  final String? contactNumber;
  @override
  @JsonKey(name: 'establishment_name')
  final String? establishmentName;
  @override
  final String? address;
  @override
  final String? baranggay;
  @override
  final String? city;
  @override
  final String? lng;
  @override
  final String? lat;
  @override
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EstablishmentModel(id: $id, establishmentCode: $establishmentCode, firstName: $firstName, middleName: $middleName, lastName: $lastName, emailAddress: $emailAddress, contactNumber: $contactNumber, establishmentName: $establishmentName, address: $address, baranggay: $baranggay, city: $city, lng: $lng, lat: $lat, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstablishmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.establishmentCode, establishmentCode) ||
                other.establishmentCode == establishmentCode) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.establishmentName, establishmentName) ||
                other.establishmentName == establishmentName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.baranggay, baranggay) ||
                other.baranggay == baranggay) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      establishmentCode,
      firstName,
      middleName,
      lastName,
      emailAddress,
      contactNumber,
      establishmentName,
      address,
      baranggay,
      city,
      lng,
      lat,
      status,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EstablishmentModelImplCopyWith<_$EstablishmentModelImpl> get copyWith =>
      __$$EstablishmentModelImplCopyWithImpl<_$EstablishmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstablishmentModelImplToJson(
      this,
    );
  }
}

abstract class _EstablishmentModel implements EstablishmentModel {
  factory _EstablishmentModel(
          {final int? id,
          @JsonKey(name: 'establishment_code') final String? establishmentCode,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'middle_name') final String? middleName,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'email_address') final String? emailAddress,
          @JsonKey(name: 'contact_number') final String? contactNumber,
          @JsonKey(name: 'establishment_name') final String? establishmentName,
          final String? address,
          final String? baranggay,
          final String? city,
          final String? lng,
          final String? lat,
          final String? status,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$EstablishmentModelImpl;

  factory _EstablishmentModel.fromJson(Map<String, dynamic> json) =
      _$EstablishmentModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'establishment_code')
  String? get establishmentCode;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'middle_name')
  String? get middleName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'email_address')
  String? get emailAddress;
  @override
  @JsonKey(name: 'contact_number')
  String? get contactNumber;
  @override
  @JsonKey(name: 'establishment_name')
  String? get establishmentName;
  @override
  String? get address;
  @override
  String? get baranggay;
  @override
  String? get city;
  @override
  String? get lng;
  @override
  String? get lat;
  @override
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$EstablishmentModelImplCopyWith<_$EstablishmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

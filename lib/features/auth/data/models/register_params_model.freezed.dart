// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterParamsModel _$RegisterParamsModelFromJson(Map<String, dynamic> json) {
  return _RegisterParamsModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterParamsModel {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterParamsModelCopyWith<RegisterParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamsModelCopyWith<$Res> {
  factory $RegisterParamsModelCopyWith(
          RegisterParamsModel value, $Res Function(RegisterParamsModel) then) =
      _$RegisterParamsModelCopyWithImpl<$Res, RegisterParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation,
      String address,
      @JsonKey(name: 'device_id') String deviceId});
}

/// @nodoc
class _$RegisterParamsModelCopyWithImpl<$Res, $Val extends RegisterParamsModel>
    implements $RegisterParamsModelCopyWith<$Res> {
  _$RegisterParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? address = null,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterParamsModelImplCopyWith<$Res>
    implements $RegisterParamsModelCopyWith<$Res> {
  factory _$$RegisterParamsModelImplCopyWith(_$RegisterParamsModelImpl value,
          $Res Function(_$RegisterParamsModelImpl) then) =
      __$$RegisterParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation,
      String address,
      @JsonKey(name: 'device_id') String deviceId});
}

/// @nodoc
class __$$RegisterParamsModelImplCopyWithImpl<$Res>
    extends _$RegisterParamsModelCopyWithImpl<$Res, _$RegisterParamsModelImpl>
    implements _$$RegisterParamsModelImplCopyWith<$Res> {
  __$$RegisterParamsModelImplCopyWithImpl(_$RegisterParamsModelImpl _value,
      $Res Function(_$RegisterParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? address = null,
    Object? deviceId = null,
  }) {
    return _then(_$RegisterParamsModelImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterParamsModelImpl implements _RegisterParamsModel {
  const _$RegisterParamsModelImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.email,
      required this.password,
      @JsonKey(name: 'password_confirmation')
      required this.passwordConfirmation,
      required this.address,
      @JsonKey(name: 'device_id') required this.deviceId});

  factory _$RegisterParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterParamsModelImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  @override
  final String address;
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;

  @override
  String toString() {
    return 'RegisterParamsModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, address: $address, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParamsModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      password, passwordConfirmation, address, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParamsModelImplCopyWith<_$RegisterParamsModelImpl> get copyWith =>
      __$$RegisterParamsModelImplCopyWithImpl<_$RegisterParamsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterParamsModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterParamsModel implements RegisterParamsModel {
  const factory _RegisterParamsModel(
          {@JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          required final String email,
          required final String password,
          @JsonKey(name: 'password_confirmation')
          required final String passwordConfirmation,
          required final String address,
          @JsonKey(name: 'device_id') required final String deviceId}) =
      _$RegisterParamsModelImpl;

  factory _RegisterParamsModel.fromJson(Map<String, dynamic> json) =
      _$RegisterParamsModelImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation;
  @override
  String get address;
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$RegisterParamsModelImplCopyWith<_$RegisterParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

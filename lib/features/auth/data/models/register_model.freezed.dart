// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  String get message => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call({String message, String token, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterModelImplCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$RegisterModelImplCopyWith(
          _$RegisterModelImpl value, $Res Function(_$RegisterModelImpl) then) =
      __$$RegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String token, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterModelImplCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$RegisterModelImpl>
    implements _$$RegisterModelImplCopyWith<$Res> {
  __$$RegisterModelImplCopyWithImpl(
      _$RegisterModelImpl _value, $Res Function(_$RegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$RegisterModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterModelImpl implements _RegisterModel {
  const _$RegisterModelImpl(
      {required this.message, required this.token, required this.user});

  factory _$RegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterModelImplFromJson(json);

  @override
  final String message;
  @override
  final String token;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'RegisterModel(message: $message, token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterModelImplCopyWith<_$RegisterModelImpl> get copyWith =>
      __$$RegisterModelImplCopyWithImpl<_$RegisterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
      {required final String message,
      required final String token,
      required final UserModel user}) = _$RegisterModelImpl;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$RegisterModelImpl.fromJson;

  @override
  String get message;
  @override
  String get token;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$RegisterModelImplCopyWith<_$RegisterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
